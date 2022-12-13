LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni57/uni57_010_b20.domino
-- User graph: UNI57_010_B20
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveTimerModifier.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAIRequestGroup.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/BinkPlayer_v6.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/EntityTagListener_v4.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RandomInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[ui\singleplayer\video\uni057_010_hacking_screen.bik]], "CBinkResource");
        cboxRes:LoadResource([[4191871888.bnk]], "CSoundResource");
        cboxRes:LoadResource([[450392956.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1882778709.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2101643416.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4290997843.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1950074743.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2917645984.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2788499.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1109364896.bnk]], "CSoundResource");
        cboxRes:LoadResource([[ui\singleplayer\video\uni057_010_hacking_stopped_loop.bik]], "CBinkResource");
        cboxRes:LoadResource([[3861787819.bnk]], "CSoundResource");
        cboxRes:LoadResource([[819018627.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3662793236.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3363441374.bnk]], "CSoundResource");
        cboxRes:LoadResource([[762119956.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1396653569.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1554834398.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1910602247.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3256203016.bnk]], "CSoundResource");
        cboxRes:LoadResource([[904714768.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1804353231.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI57/UNI57_010_B20.UNI57_010_B20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua")] = {
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
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "b_CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "b_EntityIsProximityTrigger",
                type = "bool",
            },
            [2] = {
                name = "b_SkipObjectiveFlow",
                type = "bool",
            },
            [3] = {
                name = "e_EntityToInteractWith",
                type = "entity",
            },
            [4] = {
                name = "e_ObjectiveMarker",
                type = "entity",
            },
            [5] = {
                name = "InteractionHUD",
                type = "oasis",
            },
            [6] = {
                name = "o_ObjectiveText",
                type = "oasis",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua")] = {
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
                name = "Detected",
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
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "group",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveTimerListener.lua")] = {
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
                name = "OnTime",
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
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveTimerModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ModifyTime",
            },
            [1] = {
                name = "Pause",
            },
            [2] = {
                name = "Restart",
            },
            [3] = {
                name = "Resume",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Paused",
                delayed = false,
            },
            [1] = {
                name = "Restarted",
                delayed = false,
            },
            [2] = {
                name = "Resumed",
                delayed = false,
            },
            [3] = {
                name = "TimeModified",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Time",
                type = "float",
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
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "User",
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
    metadataTable[GetPathID("Domino/System/AI/SpawnAIRequestGroup.lua")] = {
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
    metadataTable[GetPathID("Domino/System/EntityTagListener_v4.lua")] = {
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
                name = "Discovered",
                delayed = true,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "ObjectInFocus",
                delayed = true,
            },
            [4] = {
                name = "ObjectInFrame",
                delayed = true,
            },
            [5] = {
                name = "ObjectOutOfFocus",
                delayed = true,
            },
            [6] = {
                name = "ObjectOutOfFrame",
                delayed = true,
            },
            [7] = {
                name = "Tagged",
                delayed = true,
            },
            [8] = {
                name = "Untagged",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "id",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
            },
            [1] = {
                name = "playerID",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/RandomInteger_v2.lua")] = {
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
                type = "int",
            },
            [1] = {
                name = "Min",
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
    metadataTable[GetPathID("Domino/System/SetFloat_v2.lua")] = {
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
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "Target",
                type = "float",
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
    self._name = "UNI57_010_B20";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20";
    self.MembersLeft = 0;
    self.fComputerReactivationDelay = 65;
    self.Is_hack_finished = false;
    self.HasFistLineBeenSaid = false;
    self.FirstPauseDone = false;
    self.SecondPauseDone = false;
    self.AreAllGuysDead = false;
    self.IsPlayerDetected = false;
    self.IS10SecTimerStarted = false;
    self.Wave_Cleaned = false;
    self.box_PlayDialog_v6_114 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|7836378");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_114_Finished,
    });
    self.box_MultipleOR_90 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|24910867");
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
    self.box_SoundModifier_v2_19 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|30405996");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_19_Finished,
        -- Started,
        [1] = self.f_box_SoundModifier_v2_19_Started,
    });
    self.box_Gate_v3_150 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|46514321");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_150_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_150_Opened,
    });
    self.box_IndexList_v2_60 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|82599690");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_60_Output_0,
                [1] = self.f_box_IndexList_v2_60_Output_1,
            },
            count = 2,
        },
    });
    self.box_RemoveEntity_v2_183 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|129499702");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_183_Out,
    });
    self.box_PlayDialog_v6_85 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|130061150");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_85_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_85_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_85_QueueCancelled,
    });
    self.box_MultipleAND_v2_173 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|134146719");
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
        [0] = self.f_box_MultipleAND_v2_173_Out,
    });
    self.box_Gate_v3_148 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|165701002");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_148_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_148_Opened,
    });
    self.box_SpawnAI_12 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|204568227");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_12_Spawned,
    });
    self.box_SpawnAI_Wave_v2_33 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|214290419");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_33_NextWave,
    });
    self.box_RequestPhoneCall_v2_129 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|221055151");
    l0:SetConnections({
    });
    self.box_MultipleOR_176 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|274229501");
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
    self.box_StateListener_v2_54 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|275000772");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_54_StateStart,
    });
    self.box_SpawnAI_Wave_v2_36 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|282410791");
    l0:SetConnections({
        -- LastWave_Cleanup,
        [1] = self.f_box_SpawnAI_Wave_v2_36_LastWave_Cleanup,
    });
    self.box_MultipleOR_88 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|284618479");
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
        [0] = self.f_box_MultipleOR_88_Out,
    });
    self.box_RequestPhoneCall_v2_24 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|291365787");
    l0:SetConnections({
    });
    self.box_StateListener_v2_51 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|309031851");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_51_StateStart,
    });
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|368297454");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_PlayDialog_v6_55 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|399080392");
    l0:SetConnections({
    });
    self.box_Delay_v5_44 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|401209977");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_44_TimeElapsed,
    });
    self.box_IndexList_v2_64 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|401433502");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_64_Output_0,
                [1] = self.f_box_IndexList_v2_64_Output_1,
                [2] = self.f_box_IndexList_v2_64_Output_2,
                [3] = self.f_box_IndexList_v2_64_Output_3,
            },
            count = 5,
        },
    });
    self.box_RequestPhoneCall_v2_41 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|408343959");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_41_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_41_Failed,
    });
    self.box_MultipleOR_92 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|446015297");
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
        [0] = self.f_box_MultipleOR_92_Out,
    });
    self.box_GroupSizeListener_v5_161 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|449073338");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_161_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_161_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_161_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_161_MemberRemoved,
    });
    self.box_PlayDialog_v6_67 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|462325706");
    l0:SetConnections({
    });
    self.box_Delay_v5_130 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|521184902");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_130_TimeElapsed,
    });
    self.box_SoundModifier_v2_170 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|541814538");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_170_Started,
    });
    self.box_SpawnAI_111 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|544307973");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_111_Spawned,
    });
    self.box_RemoveEntity_v2_98 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|548141878");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_98_Out,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|556652457");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|581670636");
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
        [0] = self.f_box_MultipleOR_53_Out,
    });
    self.box_RemoveEntity_v2_101 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|588752549");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_101_Out,
    });
    self.box_MultipleOR_144 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|622626895");
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
        [0] = self.f_box_MultipleOR_144_Out,
    });
    self.box_VisibilityModifier_99 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|630594188");
    l0:SetConnections({
    });
    self.box_MultipleOR_96 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|634819456");
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
        [0] = self.f_box_MultipleOR_96_Out,
    });
    self.box_ContextualActionListener_136 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|639012465");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_136_Enabled,
        -- Start,
        [8] = self.f_box_ContextualActionListener_136_Start,
    });
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|648818555");
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
        [0] = self.f_box_MultipleOR_31_Out,
    });
    self.box_MultipleOR_181 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|655310956");
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
    self.box_StateListener_v2_71 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|664200247");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_71_StateStart,
    });
    self.box_RequestPhoneCall_v2_110 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|669807742");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_110_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_110_Failed,
    });
    self.box_VisibilityModifier_97 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|676077469");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_97_Enabled,
    });
    self.box_OnceOnly_v3_93 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|685122311");
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
                [0] = self.f_box_OnceOnly_v3_93_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_158 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|687194338");
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
                [0] = self.f_box_OnceOnly_v3_158_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_95 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|701523740");
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
                [0] = self.f_box_OnceOnly_v3_95_Out_0,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_23 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|701618757");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_23_Started,
    });
    self.box_MultipleOR_120 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|714896258");
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
    self.box_ActivityObjectiveTimerListener_17 = cbox:CreateBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
    l0 = self.box_ActivityObjectiveTimerListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveTimerListener_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|752819715");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveTimerListener_17_Enabled,
        -- OnTime,
        [2] = self.f_box_ActivityObjectiveTimerListener_17_OnTime,
    });
    self.box_Gate_v3_147 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|777687321");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_147_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_147_Opened,
    });
    self.box_MultipleOR_192 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|817489403");
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
        [0] = self.f_box_MultipleOR_192_Out,
    });
    self.box_GroupSizeListener_v5_26 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|833209159");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_26_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_26_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_26_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_26_MemberRemoved,
    });
    self.box_PlayDialog_v6_57 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|866063730");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_57_Finished,
    });
    self.box_ProximityTrigger_v2_8 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|907840498");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_8_Enter,
    });
    self.box_StateListener_v2_49 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|933286460");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_49_StateStart,
    });
    self.box_BinkPlayer_v6_106 = cbox:CreateBox("Domino/System/BinkPlayer_v6.lua");
    l0 = self.box_BinkPlayer_v6_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayer_v6_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|938284091");
    l0:SetConnections({
        -- Played,
        [0] = self.f_box_BinkPlayer_v6_106_Played,
    });
    self.box_RemoveEntity_v2_61 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|963433336");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_61_Out,
    });
    self.box_PlayDialog_v6_113 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|979575585");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_113_Finished,
    });
    self.box_PhoneCallExclusivityModifier_186 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|985902314");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhoneCallExclusivityModifier_186_Disabled,
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_186_Enabled,
    });
    self.box_ContextualActionListener_135 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1006293785");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_135_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_135_End,
    });
    self.box_SoundModifier_v2_168 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1113368154");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_168_Started,
    });
    self.box_ActivityInitialized_34 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1128307046");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_34_Out,
    });
    self.box_StateListener_v2_143 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1128878341");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_143_StateStart,
    });
    self.box_ContextualActionListener_27 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1141861845");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_27_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_27_End,
    });
    self.box_PhoneCallExclusivityModifier_188 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1154753960");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhoneCallExclusivityModifier_188_Disabled,
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_188_Enabled,
    });
    self.box_PlayDialog_v6_56 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1156406182");
    l0:SetConnections({
    });
    self.box_Brick_Endure_CORE_v3_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua");
    l0 = self.box_Brick_Endure_CORE_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Endure_CORE_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1175763457");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Endure_CORE_v3_9_Fail,
        -- Waves,
        [3] = self.f_box_Brick_Endure_CORE_v3_9_Waves,
    });
    self.box_BinkPlayer_v6_184 = cbox:CreateBox("Domino/System/BinkPlayer_v6.lua");
    l0 = self.box_BinkPlayer_v6_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayer_v6_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1187028365");
    l0:SetConnections({
        -- Played,
        [0] = self.f_box_BinkPlayer_v6_184_Played,
    });
    self.box_SpawnAI_Wave_v2_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1193194787");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_3_NextWave,
    });
    self.box_SpawnAIRequestGroup_79 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup.lua");
    l0 = self.box_SpawnAIRequestGroup_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1204854250");
    l0:SetConnections({
        -- RequestSpawned,
        [3] = self.f_box_SpawnAIRequestGroup_79_RequestSpawned,
    });
    self.box_ContextualActionListener_80 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1241353209");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_80_Start,
    });
    self.box_ContextualActionListener_118 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1274080099");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_118_Start,
    });
    self.box_PlayDialog_v6_69 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1282464798");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_167 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1361836977");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_167_Out,
    });
    self.box_EntityStatusListener_190 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1375505260");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_190_Loaded,
    });
    self.box_PlayerFullyDetected_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1393432969");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_22_Detected,
    });
    self.box_SoundModifier_v2_4 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1411078043");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_4_Started,
    });
    self.box_MultipleOR_138 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1431992718");
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
        [0] = self.f_box_MultipleOR_138_Out,
    });
    self.box_PlayDialog_v6_83 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1441181116");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_83_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_83_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_83_QueueCancelled,
    });
    self.box_MultipleAND_v2_127 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1454297085");
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
        [0] = self.f_box_MultipleAND_v2_127_Out,
    });
    self.box_ActivityObjectiveTimerListener_164 = cbox:CreateBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
    l0 = self.box_ActivityObjectiveTimerListener_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveTimerListener_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1488561010");
    l0:SetConnections({
        -- OnTime,
        [2] = self.f_box_ActivityObjectiveTimerListener_164_OnTime,
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1503021584");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_ContextualActionListener_82 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1531857975");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_82_Start,
    });
    self.box_SoundModifier_v2_45 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1534200890");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_45_Finished,
    });
    self.box_OnceOnly_v3_117 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1564528176");
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
                [0] = self.f_box_OnceOnly_v3_117_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_63 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1588715156");
    l0:SetConnections({
    });
    self.box_Brick_Interact_With_Object_V5_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1591283602");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_10_Success,
    });
    self.box_MultipleOR_159 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1624660450");
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
    self.box_VisibilityModifier_103 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1641609561");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_103_Disabled,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1674453747");
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
    self.box_OnceOnly_v3_91 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1689924670");
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
                [0] = self.f_box_OnceOnly_v3_91_Out_0,
            },
            count = 2,
        },
    });
    self.box_VisibilityModifier_109 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1730491823");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_109_Disabled,
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_109_Enabled,
    });
    self.box_Gate_v3_149 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1757023979");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_149_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_149_Opened,
    });
    self.box_OnceOnly_v3_94 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1765441919");
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
                [0] = self.f_box_OnceOnly_v3_94_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_77 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1782707221");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_77_TimeElapsed,
    });
    self.box_MultipleOR_187 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1846683366");
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
        [0] = self.f_box_MultipleOR_187_Out,
    });
    self.box_PlayDialog_v6_84 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1851419322");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_84_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_84_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_84_QueueCancelled,
    });
    self.box_MultipleOR_140 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1855084317");
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
        [0] = self.f_box_MultipleOR_140_Out,
    });
    self.box_Delay_v5_115 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1877763784");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_115_TimeElapsed,
    });
    self.box_MultipleAND_v2_107 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1883778677");
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
        [0] = self.f_box_MultipleAND_v2_107_Out,
    });
    self.box_PlayDialog_v6_68 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1901088172");
    l0:SetConnections({
    });
    self.box_Gate_v3_146 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1904886994");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_146_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_146_Opened,
    });
    self.box_Delay_v5_47 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1907287690");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_47_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_47_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_38 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1953649043");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_38_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_38_Reloaded,
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1972239682");
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_Brick_Interact_With_Object_V5_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1996646516");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_2_Success,
    });
    self.box_VisibilityModifier_189 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1997353316");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_189_Enabled,
    });
    self.box_SoundModifier_v2_5 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2013103954");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_5_Started,
    });
    self.box_Delay_v5_112 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2053420853");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_112_TimeElapsed,
    });
    self.box_RemoveEntity_v2_145 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2054534824");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_145_Out,
    });
    self.box_EntityTagListener_v4_134 = cbox:CreateBox("Domino/System/EntityTagListener_v4.lua");
    l0 = self.box_EntityTagListener_v4_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityTagListener_v4_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2064592895");
    l0:SetConnections({
        -- Tagged,
        [7] = self.f_box_EntityTagListener_v4_134_Tagged,
    });
    self.box_PlayDialog_v6_119 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2094736184");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_119_Finished,
    });
    self.box_SoundModifier_v2_21 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2109986353");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_21_Started,
    });
    self.box_StateListener_v2_58 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2145584831");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_58_StateStart,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_191();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|865152060", "865152060", "UNI57_010_B20", "In", "box_OutputOrder_v2_191.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|256006421", "256006421", "UNI57_010_B20", "OnLeaveZone", "box_ActivityRetry_6.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_182_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|380358132", "380358132", "UNI57_010_B20", "box_Simple_Node_182.Out", "box_MultipleOR_181.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_157_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_148();
    l0 = self.box_Gate_v3_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|872251009", "872251009", "UNI57_010_B20", "box_Simple_Node_157.Out", "box_Gate_v3_148.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_150();
    l0 = self.box_Gate_v3_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1472210744", "1472210744", "UNI57_010_B20", "box_Simple_Node_157.Out", "box_Gate_v3_150.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_149();
    l0 = self.box_Gate_v3_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|570466074", "570466074", "UNI57_010_B20", "box_Simple_Node_157.Out", "box_Gate_v3_149.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_146();
    l0 = self.box_Gate_v3_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1676690398", "1676690398", "UNI57_010_B20", "box_Simple_Node_157.Out", "box_Gate_v3_146.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_147();
    l0 = self.box_Gate_v3_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|613378085", "613378085", "UNI57_010_B20", "box_Simple_Node_157.Out", "box_Gate_v3_147.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_70_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomInteger_v2_66();
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1336742107", "1336742107", "UNI57_010_B20", "box_Simple_Node_70.Out", "box_RandomInteger_v2_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_89_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1416353089", "1416353089", "UNI57_010_B20", "box_Simple_Node_89.Out", "box_MultipleOR_88.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|855413754", "855413754", "UNI57_010_B20", "box_Simple_Node_40.Out", "box_OutputOrder_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_124_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomInteger_v2_59();
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|320896546", "320896546", "UNI57_010_B20", "box_Simple_Node_124.Out", "box_RandomInteger_v2_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_114_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_113();
    l0 = self.box_PlayDialog_v6_114;
    l1 = self.box_PlayDialog_v6_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1307894397", "1307894397", "UNI57_010_B20", "box_PlayDialog_v6_114.Finished", "box_PlayDialog_v6_113.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_90_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_85();
    l0 = self.box_MultipleOR_90;
    l1 = self.box_PlayDialog_v6_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|430507915", "430507915", "UNI57_010_B20", "box_MultipleOR_90.Out", "box_PlayDialog_v6_85.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_19_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_23();
    l0 = self.box_SoundModifier_v2_19;
    l1 = self.box_SoundModifier_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|500666388", "500666388", "UNI57_010_B20", "box_SoundModifier_v2_19.Finished", "box_SoundModifier_v2_23.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_19_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = self.box_SoundModifier_v2_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1860917780", "1860917780", "UNI57_010_B20", "box_SoundModifier_v2_19.Started", "box_OutputOrder_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_150_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_155();
    l0 = self.box_Gate_v3_150;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|643392760", "643392760", "UNI57_010_B20", "box_Gate_v3_150.Closed", "box_Simple_Node_155.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_150_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_Gate_v3_150;
    l1 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|143725564", "143725564", "UNI57_010_B20", "box_Gate_v3_150.Opened", "box_Delay_v5_44.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_60_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_55();
    l0 = self.box_IndexList_v2_60;
    l1 = self.box_PlayDialog_v6_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|190473004", "190473004", "UNI57_010_B20", "box_IndexList_v2_60.Output", "box_PlayDialog_v6_55.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_60_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_56();
    l0 = self.box_IndexList_v2_60;
    l1 = self.box_PlayDialog_v6_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|977249729", "977249729", "UNI57_010_B20", "box_IndexList_v2_60.Output", "box_PlayDialog_v6_56.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_183_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_171();
    l0 = self.box_RemoveEntity_v2_183;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1003358089", "1003358089", "UNI57_010_B20", "box_RemoveEntity_v2_183.Out", "box_ActivityEnd_171.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_85_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_85;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1405347384", "1405347384", "UNI57_010_B20", "box_PlayDialog_v6_85.Finished", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_85_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_85;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1448798900", "1448798900", "UNI57_010_B20", "box_PlayDialog_v6_85.FinishedInterrupted", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_85_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_85;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1182957191", "1182957191", "UNI57_010_B20", "box_PlayDialog_v6_85.QueueCancelled", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleAND_v2_173_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_173;
    l1 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1074466993", "1074466993", "UNI57_010_B20", "box_MultipleAND_v2_173.Out", "box_MultipleOR_181.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_148_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_153();
    l0 = self.box_Gate_v3_148;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1821118161", "1821118161", "UNI57_010_B20", "box_Gate_v3_148.Closed", "box_Simple_Node_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_148_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_Gate_v3_148;
    l1 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1531214238", "1531214238", "UNI57_010_B20", "box_Gate_v3_148.Opened", "box_Delay_v5_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_39_Out()
    self:OnExit_box_SetBoolean_v2_39_Out();
end;

function export:f_box_SpawnAI_12_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_12;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|18626688", "18626688", "UNI57_010_B20", "box_SpawnAI_12.Spawned", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_Wave_v2_33_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_150();
    l0 = self.box_SpawnAI_Wave_v2_33;
    l1 = self.box_Gate_v3_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1970934024", "1970934024", "UNI57_010_B20", "box_SpawnAI_Wave_v2_33.NextWave", "box_Gate_v3_150.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_81_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_81();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2023191536", "2023191536", "UNI57_010_B20", "box_UseContextualActionModifier_v3_81.Enabled", "box_UseContextualActionModifier_v3_81.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_81_UseCalled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|591791368", "591791368", "UNI57_010_B20", "box_UseContextualActionModifier_v3_81.UseCalled", "box_OnceOnly_v3_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_142_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityTagListener_v4_134();
    l0 = self.box_EntityTagListener_v4_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1899562085", "1899562085", "UNI57_010_B20", "box_UseContextualActionModifier_v3_142.Disabled", "box_EntityTagListener_v4_134.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetFloat_v2_50_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_50_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1038628443", "1038628443", "UNI57_010_B20", "box_SetFloat_v2_50.Out", "box_Delay_v5_47.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_MultipleOR_176_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_170();
    l0 = self.box_MultipleOR_176;
    l1 = self.box_SoundModifier_v2_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|57426950", "57426950", "UNI57_010_B20", "box_MultipleOR_176.Out", "box_SoundModifier_v2_170.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_54_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_StateListener_v2_54;
    l1 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2139168918", "2139168918", "UNI57_010_B20", "box_StateListener_v2_54.StateStart", "box_Delay_v5_47.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_179_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_179_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_9();
    l0 = self.box_Brick_Endure_CORE_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1106404294", "1106404294", "UNI57_010_B20", "box_SetBoolean_v2_179.Out", "box_Brick_Endure_CORE_v3_9.LastWave_Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- LastWave_Cleanup
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_Wave_v2_36_LastWave_Cleanup()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_179();
    l0 = self.box_SpawnAI_Wave_v2_36;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1233892363", "1233892363", "UNI57_010_B20", "box_SpawnAI_Wave_v2_36.LastWave_Cleanup", "box_SetBoolean_v2_179.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_80();
    l0 = self.box_MultipleOR_88;
    l1 = self.box_ContextualActionListener_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1586931668", "1586931668", "UNI57_010_B20", "box_MultipleOR_88.Out", "box_ContextualActionListener_80.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_105_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_131();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|714484552", "714484552", "UNI57_010_B20", "box_OutputOrder_v2_105.Out", "box_SetBoolean_v2_131.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_105_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_108();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|76684786", "76684786", "UNI57_010_B20", "box_OutputOrder_v2_105.Out", "box_Simple_Node_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_126_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_127();
    l0 = self.box_MultipleAND_v2_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|668429888", "668429888", "UNI57_010_B20", "box_Compare_Boolean_126.A_is_True", "box_MultipleAND_v2_127.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_StateListener_v2_51_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_StateListener_v2_51;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1688063821", "1688063821", "UNI57_010_B20", "box_StateListener_v2_51.StateStart", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_122();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|420734321", "420734321", "UNI57_010_B20", "box_OutputOrder_v2_62.Out", "box_Compare_Boolean_122.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_123();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1715762804", "1715762804", "UNI57_010_B20", "box_OutputOrder_v2_62.Out", "box_Compare_Boolean_123.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1532555949", "1532555949", "UNI57_010_B20", "box_OutputOrder_v2_62.Out", "box_MultipleOR_53.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1019144349", "1019144349", "UNI57_010_B20", "box_OutputOrder_v2_13.Out", "box_ActivityInitialized_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_8();
    l0 = self.box_ProximityTrigger_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1303120585", "1303120585", "UNI57_010_B20", "box_OutputOrder_v2_13.Out", "box_ProximityTrigger_v2_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_149();
    l0 = self.box_Delay_v5_43;
    l1 = self.box_Gate_v3_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1468859283", "1468859283", "UNI57_010_B20", "box_Delay_v5_43.TimeElapsed", "box_Gate_v3_149.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_44_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_146();
    l0 = self.box_Delay_v5_44;
    l1 = self.box_Gate_v3_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|12795473", "12795473", "UNI57_010_B20", "box_Delay_v5_44.TimeElapsed", "box_Gate_v3_146.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_64_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_63();
    l0 = self.box_IndexList_v2_64;
    l1 = self.box_PlayDialog_v6_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|48531401", "48531401", "UNI57_010_B20", "box_IndexList_v2_64.Output", "box_PlayDialog_v6_63.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_64_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_69();
    l0 = self.box_IndexList_v2_64;
    l1 = self.box_PlayDialog_v6_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|621459156", "621459156", "UNI57_010_B20", "box_IndexList_v2_64.Output", "box_PlayDialog_v6_69.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_64_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_67();
    l0 = self.box_IndexList_v2_64;
    l1 = self.box_PlayDialog_v6_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1058882776", "1058882776", "UNI57_010_B20", "box_IndexList_v2_64.Output", "box_PlayDialog_v6_67.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_64_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_68();
    l0 = self.box_IndexList_v2_64;
    l1 = self.box_PlayDialog_v6_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|632750726", "632750726", "UNI57_010_B20", "box_IndexList_v2_64.Output", "box_PlayDialog_v6_68.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_41_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_41;
    l1 = self.box_MultipleOR_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1240255575", "1240255575", "UNI57_010_B20", "box_RequestPhoneCall_v2_41.Completed", "box_MultipleOR_187.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_41_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_41;
    l1 = self.box_MultipleOR_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|537764535", "537764535", "UNI57_010_B20", "box_RequestPhoneCall_v2_41.Failed", "box_MultipleOR_187.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityObjectiveTimerModifier_35_Paused()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveTimerModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|390350944", "390350944", "UNI57_010_B20", "box_ActivityObjectiveTimerModifier_35.Paused", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_92_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_92;
    l1 = self.box_OnceOnly_v3_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|450321059", "450321059", "UNI57_010_B20", "box_MultipleOR_92.Out", "box_OnceOnly_v3_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_161_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_161_Enabled();
    l0 = self.box_GroupSizeListener_v5_161;
    l1 = self.box_MultipleOR_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1454773784", "1454773784", "UNI57_010_B20", "box_GroupSizeListener_v5_161.Enabled", "box_MultipleOR_159.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_161_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_161_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_161_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_161_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_161;
    l1 = self.box_MultipleOR_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1096479073", "1096479073", "UNI57_010_B20", "box_GroupSizeListener_v5_161.MemberRemoved", "box_MultipleOR_159.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_132_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_9();
    l0 = self.box_Brick_Endure_CORE_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1424668866", "1424668866", "UNI57_010_B20", "box_Compare_Boolean_132.A_is_False", "box_Brick_Endure_CORE_v3_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_132_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_133();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|17114371", "17114371", "UNI57_010_B20", "box_Compare_Boolean_132.A_is_True", "box_Simple_Node_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_7_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveTimerListener_17();
    l0 = self.box_ActivityObjectiveTimerListener_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|921900140", "921900140", "UNI57_010_B20", "box_AddActivityObjective_v2_7.Out", "box_ActivityObjectiveTimerListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_172_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_167();
    l0 = self.box_RemoveEntity_v2_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|972008456", "972008456", "UNI57_010_B20", "box_UseContextualActionModifier_v3_172.Disabled", "box_RemoveEntity_v2_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_130_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_132();
    l0 = self.box_Delay_v5_130;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1939181791", "1939181791", "UNI57_010_B20", "box_Delay_v5_130.TimeElapsed", "box_Compare_Boolean_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_177_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_177_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1044757429", "1044757429", "UNI57_010_B20", "box_SetBoolean_v2_177.Out", "box_MultipleOR_176.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SoundModifier_v2_170_Started()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_163();
    l0 = self.box_SoundModifier_v2_170;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|195779667", "195779667", "UNI57_010_B20", "box_SoundModifier_v2_170.Started", "box_AddActivityObjective_v2_163.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_111_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_115();
    l0 = self.box_SpawnAI_111;
    l1 = self.box_Delay_v5_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|596632995", "596632995", "UNI57_010_B20", "box_SpawnAI_111.Spawned", "box_Delay_v5_115.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_98_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_183();
    l0 = self.box_RemoveEntity_v2_98;
    l1 = self.box_RemoveEntity_v2_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2080477266", "2080477266", "UNI57_010_B20", "box_RemoveEntity_v2_98.Out", "box_RemoveEntity_v2_183.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_18();
    l0 = self.box_MultipleOR_25;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|557940851", "557940851", "UNI57_010_B20", "box_MultipleOR_25.Out", "box_Compare_Integers_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_169_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_166();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|516552554", "516552554", "UNI57_010_B20", "box_EndActivityObjective_v2_169.Out", "box_OutputOrder_v2_166.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_27();
    l0 = self.box_MultipleOR_53;
    l1 = self.box_ContextualActionListener_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1886864424", "1886864424", "UNI57_010_B20", "box_MultipleOR_53.Out", "box_ContextualActionListener_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_101_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_61();
    l0 = self.box_RemoveEntity_v2_101;
    l1 = self.box_RemoveEntity_v2_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|61975317", "61975317", "UNI57_010_B20", "box_RemoveEntity_v2_101.Out", "box_RemoveEntity_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_123_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_124();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2090642538", "2090642538", "UNI57_010_B20", "box_Compare_Boolean_123.A_is_True", "box_Simple_Node_124.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_144_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_12();
    l0 = self.box_MultipleOR_144;
    l1 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1472004960", "1472004960", "UNI57_010_B20", "box_MultipleOR_144.Out", "box_SpawnAI_12.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_96_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_86();
    l0 = self.box_MultipleOR_96;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|712931725", "712931725", "UNI57_010_B20", "box_MultipleOR_96.Out", "box_UseContextualActionModifier_v3_86.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_136_Enabled()
    local l0, l1;
    l0 = self.box_ContextualActionListener_136;
    l1 = self.box_MultipleOR_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|478128598", "478128598", "UNI57_010_B20", "box_ContextualActionListener_136.Enabled", "box_MultipleOR_140.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_136_Start()
    local l0, l1;
    l0 = self.box_ContextualActionListener_136;
    l1 = self.box_MultipleOR_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2085092777", "2085092777", "UNI57_010_B20", "box_ContextualActionListener_136.Start", "box_MultipleOR_140.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_73();
    l0 = self.box_MultipleOR_31;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1955851251", "1955851251", "UNI57_010_B20", "box_MultipleOR_31.Out", "box_Compare_Boolean_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_181_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_177();
    l0 = self.box_MultipleOR_181;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1214509777", "1214509777", "UNI57_010_B20", "box_MultipleOR_181.Out", "box_SetBoolean_v2_177.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_71_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_71;
    l1 = self.box_MultipleOR_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1041782932", "1041782932", "UNI57_010_B20", "box_StateListener_v2_71.StateStart", "box_MultipleOR_144.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_110_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_110;
    l1 = self.box_MultipleOR_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1236645440", "1236645440", "UNI57_010_B20", "box_RequestPhoneCall_v2_110.Completed", "box_MultipleOR_192.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_110_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_110;
    l1 = self.box_MultipleOR_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1200795142", "1200795142", "UNI57_010_B20", "box_RequestPhoneCall_v2_110.Failed", "box_MultipleOR_192.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VisibilityModifier_97_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_30();
    l0 = self.box_VisibilityModifier_97;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1519532083", "1519532083", "UNI57_010_B20", "box_VisibilityModifier_97.Enabled", "box_EndActivityObjective_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomInteger_v2_66_Out()
    local params, l0;
    self:OnExit_box_RandomInteger_v2_66_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_64();
    l0 = self.box_IndexList_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2079833186", "2079833186", "UNI57_010_B20", "box_RandomInteger_v2_66.Out", "box_IndexList_v2_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_93_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_81();
    l0 = self.box_OnceOnly_v3_93;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1727459275", "1727459275", "UNI57_010_B20", "box_OnceOnly_v3_93.Out", "box_UseContextualActionModifier_v3_81.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_158_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_130();
    l0 = self.box_OnceOnly_v3_158;
    l1 = self.box_Delay_v5_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1408758187", "1408758187", "UNI57_010_B20", "box_OnceOnly_v3_158.Out", "box_Delay_v5_130.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_95_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_84();
    l0 = self.box_OnceOnly_v3_95;
    l1 = self.box_PlayDialog_v6_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1616543220", "1616543220", "UNI57_010_B20", "box_OnceOnly_v3_95.Out", "box_PlayDialog_v6_84.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_23_Started()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_7();
    l0 = self.box_SoundModifier_v2_23;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1081162608", "1081162608", "UNI57_010_B20", "box_SoundModifier_v2_23.Started", "box_AddActivityObjective_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_120_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_114();
    l0 = self.box_MultipleOR_120;
    l1 = self.box_PlayDialog_v6_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1961420099", "1961420099", "UNI57_010_B20", "box_MultipleOR_120.Out", "box_PlayDialog_v6_114.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_54();
    l0 = self.box_StateListener_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1490699868", "1490699868", "UNI57_010_B20", "box_OutputOrder_v2_48.Out", "box_StateListener_v2_54.Idle_RelaxCautious", clone:GetLuaBox(), l0:GetLuaBox());
    -- Idle_RelaxCautious
    l0:Exec(4, params);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_51();
    l0 = self.box_StateListener_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1039074378", "1039074378", "UNI57_010_B20", "box_OutputOrder_v2_48.Out", "box_StateListener_v2_51.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_48_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_49();
    l0 = self.box_StateListener_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1141899247", "1141899247", "UNI57_010_B20", "box_OutputOrder_v2_48.Out", "box_StateListener_v2_49.Alert", clone:GetLuaBox(), l0:GetLuaBox());
    -- Alert
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_178_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_19();
    l0 = self.box_SoundModifier_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2016116100", "2016116100", "UNI57_010_B20", "box_Compare_Boolean_178.A_is_False", "box_SoundModifier_v2_19.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_178_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1168829997", "1168829997", "UNI57_010_B20", "box_Compare_Boolean_178.A_is_True", "box_MultipleOR_176.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityObjectiveTimerListener_17_Enabled()
    local l0, l1;
    l0 = self.box_ActivityObjectiveTimerListener_17;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|91691159", "91691159", "UNI57_010_B20", "box_ActivityObjectiveTimerListener_17.Enabled", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityObjectiveTimerListener_17_OnTime()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_5();
    l0 = self.box_ActivityObjectiveTimerListener_17;
    l1 = self.box_SoundModifier_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2023348565", "2023348565", "UNI57_010_B20", "box_ActivityObjectiveTimerListener_17.OnTime", "box_SoundModifier_v2_5.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_147_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_152();
    l0 = self.box_Gate_v3_147;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|75357317", "75357317", "UNI57_010_B20", "box_Gate_v3_147.Closed", "box_Simple_Node_152.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_147_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_3();
    l0 = self.box_Gate_v3_147;
    l1 = self.box_SpawnAI_Wave_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1699881081", "1699881081", "UNI57_010_B20", "box_Gate_v3_147.Opened", "box_SpawnAI_Wave_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_121_Out()
    self:OnExit_box_SetBoolean_v2_121_Out();
end;

function export:f_box_MultipleOR_192_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_192;
    l1 = self.box_PhoneCallExclusivityModifier_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1267047336", "1267047336", "UNI57_010_B20", "box_MultipleOR_192.Out", "box_PhoneCallExclusivityModifier_188.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_GroupSizeListener_v5_26_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_26_Enabled();
    l0 = self.box_GroupSizeListener_v5_26;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|806020111", "806020111", "UNI57_010_B20", "box_GroupSizeListener_v5_26.Enabled", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_26_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_26_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_26_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_26_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_26;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2097233388", "2097233388", "UNI57_010_B20", "box_GroupSizeListener_v5_26.MemberRemoved", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_57_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_121();
    l0 = self.box_PlayDialog_v6_57;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|403694534", "403694534", "UNI57_010_B20", "box_PlayDialog_v6_57.Finished", "box_SetBoolean_v2_121.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_8_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_24();
    l0 = self.box_ProximityTrigger_v2_8;
    l1 = self.box_RequestPhoneCall_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1480424781", "1480424781", "UNI57_010_B20", "box_ProximityTrigger_v2_8.Enter", "box_RequestPhoneCall_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_137_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_136();
    l0 = self.box_ContextualActionListener_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|383642462", "383642462", "UNI57_010_B20", "box_UseContextualActionModifier_v3_137.Disabled", "box_ContextualActionListener_136.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_151();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1153475436", "1153475436", "UNI57_010_B20", "box_EndActivityObjective_v2_14.Out", "box_OutputOrder_v2_151.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_49_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_49;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1289633757", "1289633757", "UNI57_010_B20", "box_StateListener_v2_49.StateStart", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BinkPlayer_v6_106_Played()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_107();
    l0 = self.box_BinkPlayer_v6_106;
    l1 = self.box_MultipleAND_v2_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1026933187", "1026933187", "UNI57_010_B20", "box_BinkPlayer_v6_106.Played", "box_MultipleAND_v2_107.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_166_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_165();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|337050135", "337050135", "UNI57_010_B20", "box_OutputOrder_v2_166.Out", "box_SetBoolean_v2_165.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_166_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_157();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|837372454", "837372454", "UNI57_010_B20", "box_OutputOrder_v2_166.Out", "box_Simple_Node_157.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_61_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_16();
    l0 = self.box_RemoveEntity_v2_61;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|780967896", "780967896", "UNI57_010_B20", "box_RemoveEntity_v2_61.Out", "box_ActivityEnd_16.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_113_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_119();
    l0 = self.box_PlayDialog_v6_113;
    l1 = self.box_PlayDialog_v6_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1870500649", "1870500649", "UNI57_010_B20", "box_PlayDialog_v6_113.Finished", "box_PlayDialog_v6_119.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_186_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_1();
    l0 = self.box_PhoneCallExclusivityModifier_186;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|853933358", "853933358", "UNI57_010_B20", "box_PhoneCallExclusivityModifier_186.Disabled", "box_SetBoolean_v2_1.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_186_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_41();
    l0 = self.box_PhoneCallExclusivityModifier_186;
    l1 = self.box_RequestPhoneCall_v2_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1812771905", "1812771905", "UNI57_010_B20", "box_PhoneCallExclusivityModifier_186.Enabled", "box_RequestPhoneCall_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_135_Enabled()
    local l0, l1;
    l0 = self.box_ContextualActionListener_135;
    l1 = self.box_MultipleOR_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1851148755", "1851148755", "UNI57_010_B20", "box_ContextualActionListener_135.Enabled", "box_MultipleOR_138.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_135_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_135;
    l1 = self.box_MultipleOR_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1546728364", "1546728364", "UNI57_010_B20", "box_ContextualActionListener_135.End", "box_MultipleOR_138.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SoundModifier_v2_168_Started()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_169();
    l0 = self.box_SoundModifier_v2_168;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1061322969", "1061322969", "UNI57_010_B20", "box_SoundModifier_v2_168.Started", "box_EndActivityObjective_v2_169.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_26();
    l0 = self.box_GroupSizeListener_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2129174046", "2129174046", "UNI57_010_B20", "box_OutputOrder_v2_20.Out", "box_GroupSizeListener_v5_26.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_71();
    l0 = self.box_StateListener_v2_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2055534307", "2055534307", "UNI57_010_B20", "box_OutputOrder_v2_20.Out", "box_StateListener_v2_71.Investigate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Investigate
    l0:Exec(5, params);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_143();
    l0 = self.box_StateListener_v2_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1353126751", "1353126751", "UNI57_010_B20", "box_OutputOrder_v2_20.Out", "box_StateListener_v2_143.Alert", clone:GetLuaBox(), l0:GetLuaBox());
    -- Alert
    l0:Exec(0, params);
end;

function export:f_box_ActivityInitialized_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_105();
    l0 = self.box_ActivityInitialized_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|909039696", "909039696", "UNI57_010_B20", "box_ActivityInitialized_34.Out", "box_OutputOrder_v2_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_143_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_143;
    l1 = self.box_MultipleOR_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1058302413", "1058302413", "UNI57_010_B20", "box_StateListener_v2_143.StateStart", "box_MultipleOR_144.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_27_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_29();
    l0 = self.box_ContextualActionListener_27;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1000661427", "1000661427", "UNI57_010_B20", "box_ContextualActionListener_27.Enabled", "box_UseContextualActionModifier_v3_29.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_27_End()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_76();
    l0 = self.box_ContextualActionListener_27;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1024195225", "1024195225", "UNI57_010_B20", "box_ContextualActionListener_27.End", "box_Compare_Boolean_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_174_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_174_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|99780494", "99780494", "UNI57_010_B20", "box_SetBoolean_v2_174.Out", "box_OnceOnly_v3_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PhoneCallExclusivityModifier_188_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_39();
    l0 = self.box_PhoneCallExclusivityModifier_188;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|560148884", "560148884", "UNI57_010_B20", "box_PhoneCallExclusivityModifier_188.Disabled", "box_SetBoolean_v2_39.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_188_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_110();
    l0 = self.box_PhoneCallExclusivityModifier_188;
    l1 = self.box_RequestPhoneCall_v2_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|147006139", "147006139", "UNI57_010_B20", "box_PhoneCallExclusivityModifier_188.Enabled", "box_RequestPhoneCall_v2_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_76_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_29();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|689408357", "689408357", "UNI57_010_B20", "box_Compare_Boolean_76.A_is_False", "box_UseContextualActionModifier_v3_29.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_191_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1577245531", "1577245531", "UNI57_010_B20", "box_OutputOrder_v2_191.Out", "box_ActivityAcknowledgeGate_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_191_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_190();
    l0 = self.box_EntityStatusListener_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1241456617", "1241456617", "UNI57_010_B20", "box_OutputOrder_v2_191.Out", "box_EntityStatusListener_190.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Endure_CORE_v3_9_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_11();
    l0 = self.box_Brick_Endure_CORE_v3_9;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1569041122", "1569041122", "UNI57_010_B20", "box_Brick_Endure_CORE_v3_9.Fail", "box_ActivityRetry_11.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Endure_CORE_v3_9_Waves()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_147();
    l0 = self.box_Brick_Endure_CORE_v3_9;
    l1 = self.box_Gate_v3_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1911939151", "1911939151", "UNI57_010_B20", "box_Brick_Endure_CORE_v3_9.Waves", "box_Gate_v3_147.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_BinkPlayer_v6_184_Played()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_107();
    l0 = self.box_BinkPlayer_v6_184;
    l1 = self.box_MultipleAND_v2_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1886349947", "1886349947", "UNI57_010_B20", "box_BinkPlayer_v6_184.Played", "box_MultipleAND_v2_107.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_SpawnAI_Wave_v2_3_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_148();
    l0 = self.box_SpawnAI_Wave_v2_3;
    l1 = self.box_Gate_v3_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1672205791", "1672205791", "UNI57_010_B20", "box_SpawnAI_Wave_v2_3.NextWave", "box_Gate_v3_148.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_SpawnAIRequestGroup_79_RequestSpawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_77();
    l0 = self.box_SpawnAIRequestGroup_79;
    l1 = self.box_Delay_v5_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|319981254", "319981254", "UNI57_010_B20", "box_SpawnAIRequestGroup_79.RequestSpawned", "box_Delay_v5_77.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_86_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_87();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1740472333", "1740472333", "UNI57_010_B20", "box_UseContextualActionModifier_v3_86.Disabled", "box_UseContextualActionModifier_v3_87.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_80_Start()
    local l0, l1;
    l0 = self.box_ContextualActionListener_80;
    l1 = self.box_OnceOnly_v3_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1734382095", "1734382095", "UNI57_010_B20", "box_ContextualActionListener_80.Start", "box_OnceOnly_v3_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_162_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_175();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2057291780", "2057291780", "UNI57_010_B20", "box_OutputOrder_v2_162.Out", "box_Compare_Boolean_175.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_162_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_161();
    l0 = self.box_GroupSizeListener_v5_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|256660361", "256660361", "UNI57_010_B20", "box_OutputOrder_v2_162.Out", "box_GroupSizeListener_v5_161.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_162_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_97();
    l0 = self.box_VisibilityModifier_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|989228008", "989228008", "UNI57_010_B20", "box_OutputOrder_v2_162.Out", "box_VisibilityModifier_97.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_ContextualActionListener_118_Start()
    local l0, l1;
    l0 = self.box_ContextualActionListener_118;
    l1 = self.box_OnceOnly_v3_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1093491676", "1093491676", "UNI57_010_B20", "box_ContextualActionListener_118.Start", "box_OnceOnly_v3_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_178();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|922411900", "922411900", "UNI57_010_B20", "box_EndActivityObjective_v2_30.Out", "box_Compare_Boolean_178.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_163_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveTimerListener_164();
    l0 = self.box_ActivityObjectiveTimerListener_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|568372116", "568372116", "UNI57_010_B20", "box_AddActivityObjective_v2_163.Out", "box_ActivityObjectiveTimerListener_164.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_167_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_98();
    l0 = self.box_RemoveEntity_v2_167;
    l1 = self.box_RemoveEntity_v2_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1110293366", "1110293366", "UNI57_010_B20", "box_RemoveEntity_v2_167.Out", "box_RemoveEntity_v2_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_165_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_165_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_172();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|387833726", "387833726", "UNI57_010_B20", "box_SetBoolean_v2_165.Out", "box_UseContextualActionModifier_v3_172.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_160_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_173();
    l0 = self.box_MultipleAND_v2_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|6242662", "6242662", "UNI57_010_B20", "box_Compare_Integers_160.A_eq_B", "box_MultipleAND_v2_173.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_EntityStatusListener_190_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_99();
    l0 = self.box_EntityStatusListener_190;
    l1 = self.box_VisibilityModifier_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|733959030", "733959030", "UNI57_010_B20", "box_EntityStatusListener_190.Loaded", "box_VisibilityModifier_99.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|6179197", "6179197", "UNI57_010_B20", "box_OutputOrder_v2_65.Out", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_70();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|482397938", "482397938", "UNI57_010_B20", "box_OutputOrder_v2_65.Out", "box_Simple_Node_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_72_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|879844358", "879844358", "UNI57_010_B20", "box_Compare_Boolean_72.A_is_True", "box_PhoneCallExclusivityModifier_188.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_Compare_Boolean_175_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_173();
    l0 = self.box_MultipleAND_v2_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2141374298", "2141374298", "UNI57_010_B20", "box_Compare_Boolean_175.A_is_False", "box_MultipleAND_v2_173.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_PlayerFullyDetected_22_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_174();
    l0 = self.box_PlayerFullyDetected_22;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|106703314", "106703314", "UNI57_010_B20", "box_PlayerFullyDetected_22.Detected", "box_SetBoolean_v2_174.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_4_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_SoundModifier_v2_4;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1602353700", "1602353700", "UNI57_010_B20", "box_SoundModifier_v2_4.Started", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_138_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_137();
    l0 = self.box_MultipleOR_138;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|69091564", "69091564", "UNI57_010_B20", "box_MultipleOR_138.Out", "box_UseContextualActionModifier_v3_137.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_83_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_83;
    l1 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|258743543", "258743543", "UNI57_010_B20", "box_PlayDialog_v6_83.Finished", "box_MultipleOR_92.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_83_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_83;
    l1 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|629440683", "629440683", "UNI57_010_B20", "box_PlayDialog_v6_83.FinishedInterrupted", "box_MultipleOR_92.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_83_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_83;
    l1 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2094780052", "2094780052", "UNI57_010_B20", "box_PlayDialog_v6_83.QueueCancelled", "box_MultipleOR_92.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleAND_v2_127_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_129();
    l0 = self.box_MultipleAND_v2_127;
    l1 = self.box_RequestPhoneCall_v2_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1654582503", "1654582503", "UNI57_010_B20", "box_MultipleAND_v2_127.Out", "box_RequestPhoneCall_v2_129.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RandomInteger_v2_59_Out()
    local params, l0;
    self:OnExit_box_RandomInteger_v2_59_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_60();
    l0 = self.box_IndexList_v2_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1057893923", "1057893923", "UNI57_010_B20", "box_RandomInteger_v2_59.Out", "box_IndexList_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_116_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_116();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|876653596", "876653596", "UNI57_010_B20", "box_UseContextualActionModifier_v3_116.Enabled", "box_UseContextualActionModifier_v3_116.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_116_UseCalled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|363524367", "363524367", "UNI57_010_B20", "box_UseContextualActionModifier_v3_116.UseCalled", "box_MultipleOR_120.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityObjectiveTimerListener_164_OnTime()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_168();
    l0 = self.box_ActivityObjectiveTimerListener_164;
    l1 = self.box_SoundModifier_v2_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1569048282", "1569048282", "UNI57_010_B20", "box_ActivityObjectiveTimerListener_164.OnTime", "box_SoundModifier_v2_168.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerFullyDetected_22();
    l0 = self.box_MultipleOR_32;
    l1 = self.box_PlayerFullyDetected_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|624534568", "624534568", "UNI57_010_B20", "box_MultipleOR_32.Out", "box_PlayerFullyDetected_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_46_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_145();
    l0 = self.box_RemoveEntity_v2_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1607351281", "1607351281", "UNI57_010_B20", "box_UseContextualActionModifier_v3_46.Disabled", "box_RemoveEntity_v2_145.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_109();
    l0 = self.box_VisibilityModifier_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|618126522", "618126522", "UNI57_010_B20", "box_OutputOrder_v2_28.Out", "box_VisibilityModifier_109.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1786467587", "1786467587", "UNI57_010_B20", "box_OutputOrder_v2_28.Out", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_131_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_131_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1654133765", "1654133765", "UNI57_010_B20", "box_SetBoolean_v2_131.Out", "box_OutputOrder_v2_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_82_Start()
    local l0, l1;
    l0 = self.box_ContextualActionListener_82;
    l1 = self.box_OnceOnly_v3_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1123421632", "1123421632", "UNI57_010_B20", "box_ContextualActionListener_82.Start", "box_OnceOnly_v3_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SoundModifier_v2_45_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_4();
    l0 = self.box_SoundModifier_v2_45;
    l1 = self.box_SoundModifier_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|579920782", "579920782", "UNI57_010_B20", "box_SoundModifier_v2_45.Finished", "box_SoundModifier_v2_4.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_180_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_162();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|109082838", "109082838", "UNI57_010_B20", "box_Compare_Boolean_180.A_is_False", "box_OutputOrder_v2_162.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_180_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_182();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1169823881", "1169823881", "UNI57_010_B20", "box_Compare_Boolean_180.A_is_True", "box_Simple_Node_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_74_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_74_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_46();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1233429659", "1233429659", "UNI57_010_B20", "box_SetBoolean_v2_74.Out", "box_UseContextualActionModifier_v3_46.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_117_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_116();
    l0 = self.box_OnceOnly_v3_117;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1172990559", "1172990559", "UNI57_010_B20", "box_OnceOnly_v3_117.Out", "box_UseContextualActionModifier_v3_116.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V5_10_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_180();
    l0 = self.box_Brick_Interact_With_Object_V5_10;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1125340689", "1125340689", "UNI57_010_B20", "box_Brick_Interact_With_Object_V5_10.Success", "box_Compare_Boolean_180.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_159_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_160();
    l0 = self.box_MultipleOR_159;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1586158639", "1586158639", "UNI57_010_B20", "box_MultipleOR_159.Out", "box_Compare_Integers_160.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_103_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayer_v6_106();
    l0 = self.box_VisibilityModifier_103;
    l1 = self.box_BinkPlayer_v6_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1549575910", "1549575910", "UNI57_010_B20", "box_VisibilityModifier_103.Disabled", "box_BinkPlayer_v6_106.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_75_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_75_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_10();
    l0 = self.box_Brick_Interact_With_Object_V5_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1807680541", "1807680541", "UNI57_010_B20", "box_SetBoolean_v2_75.Out", "box_Brick_Interact_With_Object_V5_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_MultipleOR_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|535000940", "535000940", "UNI57_010_B20", "box_MultipleOR_15.Out", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_73_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2061325106", "2061325106", "UNI57_010_B20", "box_Compare_Boolean_73.A_is_False", "box_OutputOrder_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_141_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_139();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1076969455", "1076969455", "UNI57_010_B20", "box_OutputOrder_v2_141.Out", "box_UseContextualActionModifier_v3_139.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_141_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_139();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1004938810", "1004938810", "UNI57_010_B20", "box_OutputOrder_v2_141.Out", "box_UseContextualActionModifier_v3_139.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_91_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_83();
    l0 = self.box_OnceOnly_v3_91;
    l1 = self.box_PlayDialog_v6_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1689926", "1689926", "UNI57_010_B20", "box_OnceOnly_v3_91.Out", "box_PlayDialog_v6_83.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_151_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_74();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|313086779", "313086779", "UNI57_010_B20", "box_OutputOrder_v2_151.Out", "box_SetBoolean_v2_74.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_151_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_157();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|478332864", "478332864", "UNI57_010_B20", "box_OutputOrder_v2_151.Out", "box_Simple_Node_157.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_109_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveTimerModifier_35();
    l0 = self.box_VisibilityModifier_109;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveTimerModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|760837532", "760837532", "UNI57_010_B20", "box_VisibilityModifier_109.Disabled", "box_ActivityObjectiveTimerModifier_35.Pause", l0:GetLuaBox(), l1:GetLuaBox());
    -- Pause
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_109_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveTimerModifier_35();
    l0 = self.box_VisibilityModifier_109;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveTimerModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1918142441", "1918142441", "UNI57_010_B20", "box_VisibilityModifier_109.Enabled", "box_ActivityObjectiveTimerModifier_35.Resume", l0:GetLuaBox(), l1:GetLuaBox());
    -- Resume
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_125_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_127();
    l0 = self.box_MultipleAND_v2_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|256196671", "256196671", "UNI57_010_B20", "box_Compare_Boolean_125.A_is_True", "box_MultipleAND_v2_127.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_189();
    l0 = self.box_VisibilityModifier_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|23340267", "23340267", "UNI57_010_B20", "box_OutputOrder_v2_104.Out", "box_VisibilityModifier_189.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_104_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_103();
    l0 = self.box_VisibilityModifier_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1935505536", "1935505536", "UNI57_010_B20", "box_OutputOrder_v2_104.Out", "box_VisibilityModifier_103.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_149_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_154();
    l0 = self.box_Gate_v3_149;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1050651550", "1050651550", "UNI57_010_B20", "box_Gate_v3_149.Closed", "box_Simple_Node_154.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_149_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_33();
    l0 = self.box_Gate_v3_149;
    l1 = self.box_SpawnAI_Wave_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|379267025", "379267025", "UNI57_010_B20", "box_Gate_v3_149.Opened", "box_SpawnAI_Wave_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_94_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_82();
    l0 = self.box_OnceOnly_v3_94;
    l1 = self.box_ContextualActionListener_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|615131098", "615131098", "UNI57_010_B20", "box_OnceOnly_v3_94.Out", "box_ContextualActionListener_82.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_29_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_109();
    l0 = self.box_VisibilityModifier_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1098143885", "1098143885", "UNI57_010_B20", "box_UseContextualActionModifier_v3_29.Disabled", "box_VisibilityModifier_109.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_77_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_77;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|83841786", "83841786", "UNI57_010_B20", "box_Delay_v5_77.TimeElapsed", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1213266934", "1213266934", "UNI57_010_B20", "box_OutputOrder_v2_42.Out", "box_PhoneCallExclusivityModifier_186.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_72();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1649427456", "1649427456", "UNI57_010_B20", "box_OutputOrder_v2_42.Out", "box_Compare_Boolean_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_128();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1122536251", "1122536251", "UNI57_010_B20", "box_OutputOrder_v2_42.Out", "box_OutputOrder_v2_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_21();
    l0 = self.box_SoundModifier_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1790722389", "1790722389", "UNI57_010_B20", "box_OutputOrder_v2_42.Out", "box_SoundModifier_v2_21.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_26();
    l0 = self.box_GroupSizeListener_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1488213841", "1488213841", "UNI57_010_B20", "box_OutputOrder_v2_37.Out", "box_GroupSizeListener_v5_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1443882316", "1443882316", "UNI57_010_B20", "box_OutputOrder_v2_37.Out", "box_MultipleOR_32.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_1_Out()
    self:OnExit_box_SetBoolean_v2_1_Out();
end;

function export:f_box_MultipleOR_187_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_187;
    l1 = self.box_PhoneCallExclusivityModifier_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1205934241", "1205934241", "UNI57_010_B20", "box_MultipleOR_187.Out", "box_PhoneCallExclusivityModifier_186.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_PlayDialog_v6_84_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_84;
    l1 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1821022623", "1821022623", "UNI57_010_B20", "box_PlayDialog_v6_84.Finished", "box_MultipleOR_90.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_84_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_84;
    l1 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|18227215", "18227215", "UNI57_010_B20", "box_PlayDialog_v6_84.FinishedInterrupted", "box_MultipleOR_90.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_84_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_84;
    l1 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1716171645", "1716171645", "UNI57_010_B20", "box_PlayDialog_v6_84.QueueCancelled", "box_MultipleOR_90.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_140_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_141();
    l0 = self.box_MultipleOR_140;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|283167815", "283167815", "UNI57_010_B20", "box_MultipleOR_140.Out", "box_OutputOrder_v2_141.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_115_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_118();
    l0 = self.box_Delay_v5_115;
    l1 = self.box_ContextualActionListener_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1281911520", "1281911520", "UNI57_010_B20", "box_Delay_v5_115.TimeElapsed", "box_ContextualActionListener_118.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_107_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = self.box_MultipleAND_v2_107;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1582161855", "1582161855", "UNI57_010_B20", "box_MultipleAND_v2_107.Out", "box_OutputOrder_v2_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_146_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_156();
    l0 = self.box_Gate_v3_146;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|353505072", "353505072", "UNI57_010_B20", "box_Gate_v3_146.Closed", "box_Simple_Node_156.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_146_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_36();
    l0 = self.box_Gate_v3_146;
    l1 = self.box_SpawnAI_Wave_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2009211713", "2009211713", "UNI57_010_B20", "box_Gate_v3_146.Opened", "box_SpawnAI_Wave_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_47_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_47;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|197919689", "197919689", "UNI57_010_B20", "box_Delay_v5_47.Stopped", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_47_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = self.box_Delay_v5_47;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|830609384", "830609384", "UNI57_010_B20", "box_Delay_v5_47.TimeElapsed", "box_OutputOrder_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_87_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|427274637", "427274637", "UNI57_010_B20", "box_UseContextualActionModifier_v3_87.ForceNormalEndCalled", "box_Simple_Node_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_38_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_38;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1440013400", "1440013400", "UNI57_010_B20", "box_ActivityAcknowledgeGate_38.Acknowledged", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_38_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_38;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|121626728", "121626728", "UNI57_010_B20", "box_ActivityAcknowledgeGate_38.Reloaded", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetFloat_v2_50();
    l0 = self.box_MultipleOR_52;
    l1 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|429510844", "429510844", "UNI57_010_B20", "box_MultipleOR_52.Out", "box_SetFloat_v2_50.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_128_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_125();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|970046710", "970046710", "UNI57_010_B20", "box_OutputOrder_v2_128.Out", "box_Compare_Boolean_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_128_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_126();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1696130222", "1696130222", "UNI57_010_B20", "box_OutputOrder_v2_128.Out", "box_Compare_Boolean_126.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V5_2_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_45();
    l0 = self.box_Brick_Interact_With_Object_V5_2;
    l1 = self.box_SoundModifier_v2_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|831843302", "831843302", "UNI57_010_B20", "box_Brick_Interact_With_Object_V5_2.Success", "box_SoundModifier_v2_45.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_189_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayer_v6_184();
    l0 = self.box_VisibilityModifier_189;
    l1 = self.box_BinkPlayer_v6_184;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1101124954", "1101124954", "UNI57_010_B20", "box_VisibilityModifier_189.Enabled", "box_BinkPlayer_v6_184.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_5_Started()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_14();
    l0 = self.box_SoundModifier_v2_5;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1112808745", "1112808745", "UNI57_010_B20", "box_SoundModifier_v2_5.Started", "box_EndActivityObjective_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_75();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|235767410", "235767410", "UNI57_010_B20", "box_OutputOrder_v2_78.Out", "box_SetBoolean_v2_75.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAIRequestGroup_79();
    l0 = self.box_SpawnAIRequestGroup_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1348304465", "1348304465", "UNI57_010_B20", "box_OutputOrder_v2_78.Out", "box_SpawnAIRequestGroup_79.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_111();
    l0 = self.box_SpawnAI_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1898378726", "1898378726", "UNI57_010_B20", "box_OutputOrder_v2_78.Out", "box_SpawnAI_111.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_142();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1269458338", "1269458338", "UNI57_010_B20", "box_OutputOrder_v2_78.Out", "box_UseContextualActionModifier_v3_142.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1806186912", "1806186912", "UNI57_010_B20", "box_OutputOrder_v2_78.Out", "box_MultipleOR_32.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_112_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_112;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1016721033", "1016721033", "UNI57_010_B20", "box_Delay_v5_112.TimeElapsed", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RemoveEntity_v2_145_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_101();
    l0 = self.box_RemoveEntity_v2_145;
    l1 = self.box_RemoveEntity_v2_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2092223768", "2092223768", "UNI57_010_B20", "box_RemoveEntity_v2_145.Out", "box_RemoveEntity_v2_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityTagListener_v4_134_Tagged()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_135();
    l0 = self.box_EntityTagListener_v4_134;
    l1 = self.box_ContextualActionListener_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2051979498", "2051979498", "UNI57_010_B20", "box_EntityTagListener_v4_134.Tagged", "box_ContextualActionListener_135.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_119_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_112();
    l0 = self.box_PlayDialog_v6_119;
    l1 = self.box_Delay_v5_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|667257695", "667257695", "UNI57_010_B20", "box_PlayDialog_v6_119.Finished", "box_Delay_v5_112.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SoundModifier_v2_21_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_2();
    l0 = self.box_SoundModifier_v2_21;
    l1 = self.box_Brick_Interact_With_Object_V5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|442996820", "442996820", "UNI57_010_B20", "box_SoundModifier_v2_21.Started", "box_Brick_Interact_With_Object_V5_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_122_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_58();
    l0 = self.box_StateListener_v2_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1735335085", "1735335085", "UNI57_010_B20", "box_Compare_Boolean_122.A_is_False", "box_StateListener_v2_58.Idle_RelaxCautious", clone:GetLuaBox(), l0:GetLuaBox());
    -- Idle_RelaxCautious
    l0:Exec(4, params);
end;

function export:f_box_StateListener_v2_58_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_57();
    l0 = self.box_StateListener_v2_58;
    l1 = self.box_PlayDialog_v6_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1375637306", "1375637306", "UNI57_010_B20", "box_StateListener_v2_58.StateStart", "box_PlayDialog_v6_57.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_18_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|593123606", "593123606", "UNI57_010_B20", "box_Compare_Integers_18.A_le_B", "box_OutputOrder_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|@Bypass");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_182_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|@Cancel_waves");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_157_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|@Combat_Shortcut");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_70_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|@Convo_restart");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_89_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|@Nothing Happens");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|@Restart");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_40_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|@start");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|@Start_LINE2_or_LINE3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_124_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_114()
    local params;
    params = {
        -- Group,
        [0] = "2101050026085064455",
        -- RelevancyTime,
        [1] = 6,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4191871888",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_19()
    local params;
    params = {
        -- Pawns,
        [0] = "2101063785272850106",
        -- SoundId,
        [1] = "1554834398",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_150()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    params = {
        -- Index,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|102800722");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_183()
    local params;
    params = {
        -- Group,
        [0] = "2105542697921072740",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_85()
    local params;
    params = {
        -- Group,
        [0] = "#F62E3778",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2101643416",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_173()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_148()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|171588859");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|171933533");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_39_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_12()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100842828163746951",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_33()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 2,
        -- AttackerSpawner_1,
        [1] = "2100484789478903448",
        -- CoreNPCGroup,
        [2] = "#5D1234D4",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2100484907156394633",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_129()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "904714768",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|222521341");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_81_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_81_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103677257114467735",
        -- Entity,
        [1] = "2101050034500935713",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|248706575");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_142_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101049885116599583",
        -- Entity,
        [1] = "2101050018612911576",
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|267926464");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_50_Out,
    });
    params = {
        -- Float,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_6()
    local params, l0;
    DrawTextToScreen("Comment: SILENT FAIL - RETRY LATER", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ActivityRetry')-- Comment: SILENT FAIL - RETRY LATER");
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|269248632");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_54()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#CB3D66FD",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|281028332");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_179_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_36()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2100484795373997861",
        -- CoreNPCGroup,
        [2] = "#5D1234D4",
        -- IsLastWave,
        [3] = true,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2100484914211214127",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_24()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1396653569",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|295328515");
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
                [0] = self.f_box_OutputOrder_v2_105_Out_0,
                [1] = self.f_box_OutputOrder_v2_105_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|300602311");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_126_A_is_True,
    });
    params = {
        -- A,
        [0] = self.SecondPauseDone,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_51()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#CB3D66FD",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|321029581");
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
                [0] = self.f_box_OutputOrder_v2_62_Out_0,
                [1] = self.f_box_OutputOrder_v2_62_Out_1,
                [2] = self.f_box_OutputOrder_v2_62_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|350469075");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|351052586");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_43()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 35,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_55()
    local params;
    params = {
        -- Group,
        [0] = "#CB3D66FD",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "450392956",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_44()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 35,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    params = {
        -- Index,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_41()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1882778709",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveTimerModifier_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveTimerModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveTimerModifier_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|439491548");
    l0:SetConnections({
        -- Paused,
        [0] = self.f_box_ActivityObjectiveTimerModifier_35_Paused,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI57_010_B20_OBJ_DefendTheComputer",
            id = "563871",
        },
        -- Time,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_161()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#741D96D4",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_67()
    local params;
    params = {
        -- Group,
        [0] = "#CB3D66FD",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2788499",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|475285633");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_132_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_132_A_is_True,
    });
    params = {
        -- A,
        [0] = self.AreAllGuysDead,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|476541497");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_7_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI57_010_B20_OBJ_DefendTheComputer",
            id = "563871",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 90,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|482777354");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_172_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100955806106139725",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_130()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|539560435");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_177_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_170()
    local params;
    params = {
        -- Pawns,
        [0] = "2101063785272850106",
        -- SoundId,
        [1] = "1950074743",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_111()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101050024432508435",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_98()
    local params;
    params = {
        -- Group,
        [0] = "2103691561880531745",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|562229663");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_169_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI57_010_B20_OBJ_DefendTheComputer",
            id = "563871",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_101()
    local params;
    params = {
        -- Group,
        [0] = "2105542697921072740",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|617084177");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_123_A_is_True,
    });
    params = {
        -- A,
        [0] = self.HasFistLineBeenSaid,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_99()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103691561880531745",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_136()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2101049885116599583",
        -- UserFilter,
        [1] = "2101050018612911576",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_71()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#741D96D4",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_110()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "762119956",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_97()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2105542697921072740",
    };
    return params;
end;

function export:OnEnter_box_RandomInteger_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomInteger_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|681967006");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomInteger_v2_66_Out,
    });
    params = {
        -- Max,
        [0] = 4,
        -- Min,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_23()
    local params;
    params = {
        -- Pawns,
        [0] = "2101063785272850106",
        -- SoundId,
        [1] = "1950074743",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|720171940");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
                [2] = self.f_box_OutputOrder_v2_48_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|733339021");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_178_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_178_A_is_True,
    });
    params = {
        -- A,
        [0] = self.IS10SecTimerStarted,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveTimerListener_17()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI57_010_B20_OBJ_DefendTheComputer",
            id = "563871",
        },
        -- Time,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_147()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|786535953");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_121_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_26()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#741D96D4",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_57()
    local params;
    params = {
        -- Group,
        [0] = "#CB3D66FD",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3363441374",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102003368676313978",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|909078411");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_137_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101063881003644873",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|930091328");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_14_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI57_010_B20_OBJ_DefendTheComputer",
            id = "563871",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_49()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#CB3D66FD",
    };
    return params;
end;

function export:OnEnter_box_BinkPlayer_v6_106()
    local params;
    params = {
        -- BinkPathID,
        [2] = [[ui\singleplayer\video\uni057_010_hacking_screen.bik]],
        -- BinkSoundFade,
        [6] = 0,
        -- BinkVolumePercent,
        [8] = 0,
        -- Loop,
        [9] = true,
        -- MaterialName,
        [10] = "BinkInvisible",
        -- ScreenEntity,
        [11] = "2105542697921072740",
        -- TCR_Music,
        [12] = true,
        -- WaitAvailableBinding,
        [13] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|943680303");
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
                [0] = self.f_box_OutputOrder_v2_166_Out_0,
                [1] = self.f_box_OutputOrder_v2_166_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_61()
    local params;
    params = {
        -- Group,
        [0] = "2103691561880531745",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_113()
    local params;
    params = {
        -- Group,
        [0] = "2101050026085064455",
        -- RelevancyTime,
        [1] = 6,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3861787819",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_135()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2101063881003644873",
        -- UserFilter,
        [1] = "2101050018612911576",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1083653483");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_168()
    local params;
    params = {
        -- Pawns,
        [0] = "2101063785272850106",
        -- SoundId,
        [1] = "3256203016",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1116753930");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1119307095");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
                [2] = self.f_box_OutputOrder_v2_20_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_143()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#741D96D4",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_27()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2100955806106139725",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1150988671");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_174_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_56()
    local params;
    params = {
        -- Group,
        [0] = "#CB3D66FD",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1804353231",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1156750233");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_76_A_is_False,
    });
    params = {
        -- A,
        [0] = self.Is_hack_finished,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1158089494");
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
                [0] = self.f_box_OutputOrder_v2_191_Out_0,
                [1] = self.f_box_OutputOrder_v2_191_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Endure_CORE_v3_9()
    local params;
    params = {
        -- Attacker_Group,
        [0] = "#CB3D66FD",
        -- bRequiresObjective,
        [1] = false,
        -- CompletePreviousObjective,
        [2] = false,
        -- FailArea,
        [3] = nil,
        -- Marker,
        [4] = nil,
        -- Objective,
        [5] = {
            section = "BRICK_Endure_Waves",
            item = "BRICK_Endure_Waves",
            id = "425830",
        },
        -- opt_ObjectiveFail,
        [6] = {
            section = "BRICK_Endure_Waves",
            item = "BRICK_Endure_ExitWarning",
            id = "426332",
        },
        -- WarningArea,
        [7] = nil,
    };
    return params;
end;

function export:OnEnter_box_BinkPlayer_v6_184()
    local params;
    params = {
        -- BinkPathID,
        [2] = [[ui\singleplayer\video\uni057_010_hacking_stopped_loop.bik]],
        -- BinkSoundFade,
        [6] = 0,
        -- BinkVolumePercent,
        [8] = 0,
        -- Loop,
        [9] = true,
        -- MaterialName,
        [10] = "BinkInvisible",
        -- ScreenEntity,
        [11] = "2103691561880531745",
        -- TCR_Music,
        [12] = true,
        -- WaitAvailableBinding,
        [13] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_3()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 2,
        -- AttackerSpawner_1,
        [1] = "2100484697233574588",
        -- CoreNPCGroup,
        [2] = "#5D1234D4",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2100484930076169416",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_79()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "uni57_010_b20_scott",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1206559582");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_86_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103677257114467735",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_80()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2103677282882174417",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1265801512");
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
                [0] = self.f_box_OutputOrder_v2_162_Out_0,
                [1] = self.f_box_OutputOrder_v2_162_Out_1,
                [2] = self.f_box_OutputOrder_v2_162_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_118()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2103938610364437901",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_69()
    local params;
    params = {
        -- Group,
        [0] = "#CB3D66FD",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2917645984",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1292723433");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_30_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI57_010_B10_OBJ_HackThePC",
            id = "563868",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1354824418");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_163_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI57_010_B20_OBJ_DefendTheComputer",
            id = "563871",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 10,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_167()
    local params;
    params = {
        -- Group,
        [0] = "2103981751849247902",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1370425118");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_165_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1373223760");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_160_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.MembersLeft,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_190()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103691561880531745",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1383134916");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1386944397");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_72_A_is_True,
    });
    params = {
        -- A,
        [0] = self.FirstPauseDone,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1388925022");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_175_A_is_False,
    });
    params = {
        -- A,
        [0] = self.IsPlayerDetected,
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_22()
    local params;
    params = {
        -- group,
        [0] = "#741D96D4",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_4()
    local params;
    params = {
        -- Pawns,
        [0] = "2101063785272850106",
        -- SoundId,
        [1] = "1950074743",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_83()
    local params;
    params = {
        -- Group,
        [0] = "#F62E3778",
        -- RelevancyTime,
        [1] = 6,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3662793236",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_127()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_RandomInteger_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomInteger_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1456529375");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomInteger_v2_59_Out,
    });
    params = {
        -- Max,
        [0] = 2,
        -- Min,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1476730407");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1481703519");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_116_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_116_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103938610364437901",
        -- Entity,
        [1] = "2101050026085064455",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveTimerListener_164()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI57_010_B20_OBJ_DefendTheComputer",
            id = "563871",
        },
        -- Time,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1504812318");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_46_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100955806106139725",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1510964628");
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

function export:OnEnter_box_SetBoolean_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1518038585");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_131_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_82()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2103677257114467735",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_45()
    local params;
    params = {
        -- Pawns,
        [0] = "2101063785272850106",
        -- SoundId,
        [1] = "1554834398",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1539690412");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_180_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_180_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Wave_Cleaned,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1551176740");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_74_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_63()
    local params;
    params = {
        -- Group,
        [0] = "#CB3D66FD",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1910602247",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_10()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- b_SkipObjectiveFlow,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2101951688435830101",
        -- e_ObjectiveMarker,
        [4] = "2100482882131737263",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objective",
            item = "UNI57_010_B10_OBJ_HackThePC",
            id = "563868",
        },
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1616245060");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_103()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2105542697921072740",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1664951323");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_75_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1679535561");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_73_A_is_False,
    });
    params = {
        -- A,
        [0] = self.Is_hack_finished,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1683397246");
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

function export:OnEnter_box_OutputOrder_v2_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1690042498");
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

function export:OnEnter_box_VisibilityModifier_109()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2105542697921072740",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1735759573");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_125_A_is_True,
    });
    params = {
        -- A,
        [0] = self.FirstPauseDone,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1751667877");
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
                [0] = self.f_box_OutputOrder_v2_104_Out_0,
                [1] = self.f_box_OutputOrder_v2_104_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_149()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1767885930");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_29_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100955806106139725",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_77()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1794961881");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
                [2] = self.f_box_OutputOrder_v2_42_Out_2,
                [3] = self.f_box_OutputOrder_v2_42_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1806033602");
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
                [0] = self.f_box_OutputOrder_v2_37_Out_0,
                [1] = self.f_box_OutputOrder_v2_37_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1808632928");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_84()
    local params;
    params = {
        -- Group,
        [0] = "#25CFA829",
        -- RelevancyTime,
        [1] = 6,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1109364896",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1865727053");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2101049885116599583",
        -- Entity,
        [1] = "2101050018612911576",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_115()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
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

function export:OnEnter_box_PlayDialog_v6_68()
    local params;
    params = {
        -- Group,
        [0] = "#CB3D66FD",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "819018627",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_146()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_47()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.fComputerReactivationDelay,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1920366503");
    l0:SetConnections({
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_87_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103677282882174417",
        -- Entity,
        [1] = "2101079966174154408",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_11()
    local params, l0;
    DrawTextToScreen("Comment: VISUAL FAIL - RETRY MISSION", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ActivityRetry')-- Comment: VISUAL FAIL - RETRY MISSION");
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1980481218");
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

function export:OnEnter_box_OutputOrder_v2_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|1986472674");
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

function export:OnEnter_box_Brick_Interact_With_Object_V5_2()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- b_SkipObjectiveFlow,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2101951688435830101",
        -- e_ObjectiveMarker,
        [4] = "2100553345702826371",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objective",
            item = "UNI57_010_B20_OBJ_ResumeTheHackingProcess",
            id = "619601",
        },
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_189()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103691561880531745",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_5()
    local params;
    params = {
        -- Pawns,
        [0] = "2101063785272850106",
        -- SoundId,
        [1] = "3256203016",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2025804294");
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
                [0] = self.f_box_OutputOrder_v2_78_Out_0,
                [1] = self.f_box_OutputOrder_v2_78_Out_1,
                [2] = self.f_box_OutputOrder_v2_78_Out_2,
                [3] = self.f_box_OutputOrder_v2_78_Out_3,
                [4] = self.f_box_OutputOrder_v2_78_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_112()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_145()
    local params;
    params = {
        -- Group,
        [0] = "2103981751849247902",
    };
    return params;
end;

function export:OnEnter_box_EntityTagListener_v4_134()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- id,
        [1] = "#BC1ECC90",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_119()
    local params;
    params = {
        -- Group,
        [0] = "2101050026085064455",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4290997843",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_21()
    local params;
    params = {
        -- Pawns,
        [0] = "2101063785272850106",
        -- SoundId,
        [1] = "3256203016",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2144087504");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_122_A_is_False,
    });
    params = {
        -- A,
        [0] = self.HasFistLineBeenSaid,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_58()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#CB3D66FD",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B20.domino|@UNI57_010_B20|2145831359");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_18_A_le_B,
    });
    params = {
        -- A,
        [0] = self.MembersLeft,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_39_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.SecondPauseDone = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_50_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.fComputerReactivationDelay = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_179_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Wave_Cleaned = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_161_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_161;
    self.MembersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_161_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_161;
    self.MembersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_161_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_161;
    self.MembersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetBoolean_v2_177_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.IS10SecTimerStarted = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomInteger_v2_66_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    l1 = self.box_IndexList_v2_64;
    l1:GetLuaBox().Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_121_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.HasFistLineBeenSaid = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_26_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_26;
    self.MembersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_26_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_26;
    self.MembersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_26_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_26;
    self.MembersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetBoolean_v2_174_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.IsPlayerDetected = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_165_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Is_hack_finished = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomInteger_v2_59_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomInteger_v2.lua")];
    l1 = self.box_IndexList_v2_60;
    l1:GetLuaBox().Index = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_131_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.AreAllGuysDead = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_74_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Is_hack_finished = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_75_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Is_hack_finished = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.FirstPauseDone = l0:GetDataOutValue(0);
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
