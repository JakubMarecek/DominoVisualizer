LUACC} -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_020/key01_020_b20.domino
-- User graph: KEY01_020_B20
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3156696279.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4038286052.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3803663897.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2298376833.bnk]], "CSoundResource");
        cboxRes:LoadResource([[718941428.bnk]], "CSoundResource");
        cboxRes:LoadResource([[827730951.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3686801021.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3300022845.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_020/KEY01_020_B20.KEY01_020_B20.debug.lua")] = {
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
                name = "WaitForMusicStatePriorityOver",
                type = "int",
            },
            [10] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [11] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/GetPawnVehicleInfo.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "InVehicle",
                delayed = false,
            },
            [1] = {
                name = "NotInVehicle",
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
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "seatType",
                type = "string",
            },
            [2] = {
                name = "vehicle",
                type = "entity",
            },
            [3] = {
                name = "vehicleType",
                type = "string",
            },
        },
        dataOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/PawnInvincibleState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetInvincible",
            },
            [1] = {
                name = "UnsetInvincible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSet",
                delayed = false,
            },
            [1] = {
                name = "OnUnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/VehicleDamageListener_v2.lua")] = {
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
                name = "BoxDisabled",
                delayed = false,
            },
            [1] = {
                name = "Broken",
                delayed = true,
            },
            [2] = {
                name = "Destroyed",
                delayed = true,
            },
            [3] = {
                name = "Disabled",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "MajorDamage",
                delayed = true,
            },
            [6] = {
                name = "MinorDamage",
                delayed = true,
            },
            [7] = {
                name = "Mint",
                delayed = true,
            },
            [8] = {
                name = "OnFire",
                delayed = true,
            },
            [9] = {
                name = "Perfect",
                delayed = true,
            },
            [10] = {
                name = "StateChange",
                delayed = true,
            },
        },
        controlOutCount = 11,
        dataIn = {
            [0] = {
                name = "Vehicle",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "StateID",
                type = "int",
            },
        },
        dataOutCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "KEY01_020_B20";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20";
    self.gFriendlyPlayer = nil;
    self.eQuestGiver = nil;
    self.eNickPlane = nil;
    self.box_RequestPhoneCall_v2_17 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|19516699");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|72297364");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_46 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|102955836");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_46_Loaded,
    });
    self.box_EntityStatusListener_12 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|132395703");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_12_Loaded,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|304955302");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|385463240");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_23 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|401319149");
    l0:SetConnections({
    });
    self.box_SpawnAI_Wave_v2_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|518885380");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_7_NextWave,
    });
    self.box_EntityStatusListener_45 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|530978680");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_45_Loaded,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|584744276");
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
    self.box_EntityStatusListener_47 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|970553567");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_47_Loaded,
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1020645211");
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
    self.box_CharacterLoadedIdListener_19 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1102653111");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_19_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_19_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_19_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_19_LoadedIdReceived,
    });
    self.box_Delay_v5_32 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1169509498");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_32_TimeElapsed,
    });
    self.box_Brick_Endure_CORE_v3_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua");
    l0 = self.box_Brick_Endure_CORE_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Endure_CORE_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1215187069");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Endure_CORE_v3_1_Fail,
        -- Out,
        [1] = self.f_box_Brick_Endure_CORE_v3_1_Out,
        -- Success,
        [2] = self.f_box_Brick_Endure_CORE_v3_1_Success,
        -- Waves,
        [3] = self.f_box_Brick_Endure_CORE_v3_1_Waves,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1231644812");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_RequestPhoneCall_v2_54 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1298240497");
    l0:SetConnections({
    });
    self.box_VehicleDamageListener_v2_9 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1336209749");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_9_Destroyed,
    });
    self.box_Delay_v5_3 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1550955163");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_3_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_22 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1611824417");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_44 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1755499792");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_44_Out,
    });
    self.box_RequestPhoneCall_v2_15 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1854368759");
    l0:SetConnections({
    });
    self.box_Random_25 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1860040652");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
            [1] = 4,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_25_Output_0,
                [1] = self.f_box_Random_25_Output_1,
                [2] = self.f_box_Random_25_Output_2,
                [3] = self.f_box_Random_25_Output_3,
            },
            count = 4,
        },
    });
    self.box_SpawnAI_Wave_v2_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1907965394");
    l0:SetConnections({
        -- LastWave_Cleanup,
        [1] = self.f_box_SpawnAI_Wave_v2_8_LastWave_Cleanup,
    });
    self.box_RequestPhoneCall_v2_24 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1963539537");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_48 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|2006957391");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_48_Loaded,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1483692254", "1483692254", "KEY01_020_B20", "In", "box_ActivityAcknowledgeGate_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_51_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|2033711909", "2033711909", "KEY01_020_B20", "box_Simple_Node_51.Out", "box_Delay_v5_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_EntityStatusListener_12();
    l0 = self.box_EntityStatusListener_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1320525733", "1320525733", "KEY01_020_B20", "box_Simple_Node_51.Out", "box_EntityStatusListener_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1750978786", "1750978786", "KEY01_020_B20", "box_Simple_Node_37.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_53_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_7();
    l0 = self.box_SpawnAI_Wave_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1906411305", "1906411305", "KEY01_020_B20", "box_Simple_Node_53.Out", "box_SpawnAI_Wave_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_52_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_6();
    l0 = self.box_Music_Quest_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1672559272", "1672559272", "KEY01_020_B20", "box_Simple_Node_52.Out", "box_Music_Quest_v2_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_1();
    l0 = self.box_Brick_Endure_CORE_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|180793449", "180793449", "KEY01_020_B20", "box_Simple_Node_10.Out", "box_Brick_Endure_CORE_v3_1.LastWave_Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- LastWave_Cleanup
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_46_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_46;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1425193379", "1425193379", "KEY01_020_B20", "box_EntityStatusListener_46.Loaded", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_EntityStatusListener_12_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_32();
    l0 = self.box_EntityStatusListener_12;
    l1 = self.box_Delay_v5_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1839323701", "1839323701", "KEY01_020_B20", "box_EntityStatusListener_12.Loaded", "box_Delay_v5_32.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_8();
    l0 = self.box_SpawnAI_Wave_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|173741021", "173741021", "KEY01_020_B20", "box_OutputOrder_v2_28.Out", "box_SpawnAI_Wave_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_16();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|197248864", "197248864", "KEY01_020_B20", "box_OutputOrder_v2_28.Out", "box_VehicleModifier_v2_16.SetExplosion", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetExplosion
    l0:Exec(17, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|120257279", "120257279", "KEY01_020_B20", "box_OutputOrder_v2_28.Out", "box_OutputOrder_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = self.box_MultipleOR_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1622413987", "1622413987", "KEY01_020_B20", "box_MultipleOR_26.Out", "box_OutputOrder_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityMiscInfoModifier_v2_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_19();
    l0 = self.box_CharacterLoadedIdListener_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|3367113", "3367113", "KEY01_020_B20", "box_ActivityMiscInfoModifier_v2_21.Out", "box_CharacterLoadedIdListener_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_34;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1642302443", "1642302443", "KEY01_020_B20", "box_Delay_v5_34.TimeElapsed", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_Wave_v2_7_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_SpawnAI_Wave_v2_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1971909516", "1971909516", "KEY01_020_B20", "box_SpawnAI_Wave_v2_7.NextWave", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_45_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_45;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1244676332", "1244676332", "KEY01_020_B20", "box_EntityStatusListener_45.Loaded", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1789130855", "1789130855", "KEY01_020_B20", "box_MultipleOR_4.Out", "box_ActivityInitialized_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_25();
    l0 = self.box_Random_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|614017373", "614017373", "KEY01_020_B20", "box_OutputOrder_v2_13.Out", "box_Random_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_51();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|547181531", "547181531", "KEY01_020_B20", "box_OutputOrder_v2_13.Out", "box_Simple_Node_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_52();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1649340956", "1649340956", "KEY01_020_B20", "box_OutputOrder_v2_13.Out", "box_Simple_Node_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_37();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1144398126", "1144398126", "KEY01_020_B20", "box_OutputOrder_v2_13.Out", "box_Simple_Node_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_31_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_31_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_21();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1513824193", "1513824193", "KEY01_020_B20", "box_GetPlayerGroup_v2_31.Out", "box_ActivityMiscInfoModifier_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_1();
    l0 = self.box_Brick_Endure_CORE_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1504130891", "1504130891", "KEY01_020_B20", "box_OutputOrder_v2_30.Out", "box_Brick_Endure_CORE_v3_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_47_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_47;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1366735210", "1366735210", "KEY01_020_B20", "box_EntityStatusListener_47.Loaded", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_35();
    l0 = self.box_MultipleOR_27;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|2020147160", "2020147160", "KEY01_020_B20", "box_MultipleOR_27.Out", "box_GetPawnVehicleInfo_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_29();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1801933816", "1801933816", "KEY01_020_B20", "box_OutputOrder_v2_55.Out", "box_SetContextualStrategy_29.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_54();
    l0 = self.box_RequestPhoneCall_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|305630294", "305630294", "KEY01_020_B20", "box_OutputOrder_v2_55.Out", "box_RequestPhoneCall_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_19_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_19_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_CharacterLoadedIdListener_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|289029466", "289029466", "KEY01_020_B20", "box_CharacterLoadedIdListener_19.LoadedIdReceived", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_32_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_14();
    l0 = self.box_Delay_v5_32;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|930942862", "930942862", "KEY01_020_B20", "box_Delay_v5_32.TimeElapsed", "box_SetContextualStrategy_14.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Endure_CORE_v3_1_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_20();
    l0 = self.box_Brick_Endure_CORE_v3_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|188565876", "188565876", "KEY01_020_B20", "box_Brick_Endure_CORE_v3_1.Fail", "box_ActivityRetry_20.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Endure_CORE_v3_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_Brick_Endure_CORE_v3_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|438775227", "438775227", "KEY01_020_B20", "box_Brick_Endure_CORE_v3_1.Out", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Endure_CORE_v3_1_Success()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_11();
    l0 = self.box_Brick_Endure_CORE_v3_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|750799510", "750799510", "KEY01_020_B20", "box_Brick_Endure_CORE_v3_1.Success", "box_ActivityEnd_11.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Endure_CORE_v3_1_Waves()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_53();
    l0 = self.box_Brick_Endure_CORE_v3_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1171674965", "1171674965", "KEY01_020_B20", "box_Brick_Endure_CORE_v3_1.Waves", "box_Simple_Node_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1586599383", "1586599383", "KEY01_020_B20", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|305886916", "305886916", "KEY01_020_B20", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PawnInvincibleState_v2_18_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_36();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|842224734", "842224734", "KEY01_020_B20", "box_PawnInvincibleState_v2_18.OnSet", "box_VehicleModifier_v2_36.SetAsIndestructable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsIndestructable
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_9_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_15();
    l0 = self.box_VehicleDamageListener_v2_9;
    l1 = self.box_RequestPhoneCall_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1729909550", "1729909550", "KEY01_020_B20", "box_VehicleDamageListener_v2_9.Destroyed", "box_RequestPhoneCall_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_48();
    l0 = self.box_EntityStatusListener_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1096874567", "1096874567", "KEY01_020_B20", "box_OutputOrder_v2_49.Out", "box_EntityStatusListener_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_45();
    l0 = self.box_EntityStatusListener_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|87539536", "87539536", "KEY01_020_B20", "box_OutputOrder_v2_49.Out", "box_EntityStatusListener_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_46();
    l0 = self.box_EntityStatusListener_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|2115703688", "2115703688", "KEY01_020_B20", "box_OutputOrder_v2_49.Out", "box_EntityStatusListener_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_47();
    l0 = self.box_EntityStatusListener_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1293640411", "1293640411", "KEY01_020_B20", "box_OutputOrder_v2_49.Out", "box_EntityStatusListener_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_3_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_9();
    l0 = self.box_Delay_v5_3;
    l1 = self.box_VehicleDamageListener_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1712938794", "1712938794", "KEY01_020_B20", "box_Delay_v5_3.TimeElapsed", "box_VehicleDamageListener_v2_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_35_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_35_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_18();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1466452891", "1466452891", "KEY01_020_B20", "box_GetPawnVehicleInfo_35.InVehicle", "box_PawnInvincibleState_v2_18.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_35_NotInVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_35_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1364569379", "1364569379", "KEY01_020_B20", "box_GetPawnVehicleInfo_35.NotInVehicle", "box_Delay_v5_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetPawnVehicleInfo_35_Out()
    self:OnExit_box_GetPawnVehicleInfo_35_Out();
end;

function export:f_box_ActivityInitialized_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_31();
    l0 = self.box_ActivityInitialized_44;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|174870626", "174870626", "KEY01_020_B20", "box_ActivityInitialized_44.Out", "box_GetPlayerGroup_v2_31.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_25_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_17();
    l0 = self.box_Random_25;
    l1 = self.box_RequestPhoneCall_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|168195773", "168195773", "KEY01_020_B20", "box_Random_25.Output", "box_RequestPhoneCall_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_25_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_22();
    l0 = self.box_Random_25;
    l1 = self.box_RequestPhoneCall_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1360451008", "1360451008", "KEY01_020_B20", "box_Random_25.Output", "box_RequestPhoneCall_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_25_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_23();
    l0 = self.box_Random_25;
    l1 = self.box_RequestPhoneCall_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|882668689", "882668689", "KEY01_020_B20", "box_Random_25.Output", "box_RequestPhoneCall_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_25_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_24();
    l0 = self.box_Random_25;
    l1 = self.box_RequestPhoneCall_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1160150179", "1160150179", "KEY01_020_B20", "box_Random_25.Output", "box_RequestPhoneCall_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_Wave_v2_8_LastWave_Cleanup()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_10();
    l0 = self.box_SpawnAI_Wave_v2_8;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1755611239", "1755611239", "KEY01_020_B20", "box_SpawnAI_Wave_v2_8.LastWave_Cleanup", "box_Simple_Node_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_48_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_48;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1947252001", "1947252001", "KEY01_020_B20", "box_EntityStatusListener_48.Loaded", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|@nChosenPlaneDowned");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_51_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|@nDogFightManager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|@nHangarSecure");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_53_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|@nMusicManager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_52_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|@nWaveCleared");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_17()
    local params;
    DrawTextToScreen("Comment: Deputy, they're attacking the hangar.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Deputy, they're attacking the hangar.");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3686801021",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_6()
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
        [6] = "827730951",
        -- StopEvent,
        [7] = "3300022845",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_46()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103292381561369968",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103482527831307731",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|168292523");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
                [2] = self.f_box_OutputOrder_v2_28_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|297949701");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103509694986352678",
        -- Group,
        [1] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|307723318");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_21_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_23()
    local params;
    DrawTextToScreen("Comment: My hangar's under attack, Deputy. Get in there, I'll cover you.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: My hangar's under attack, Deputy. Get in there, I'll cover you.");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "718941428",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|406274228");
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

function export:OnEnter_box_SpawnAI_Wave_v2_7()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 1,
        -- AttackerSpawner_1,
        [1] = "2103277182575991793",
        -- CoreNPCGroup,
        [2] = "#BF2EFBD3",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2103277192061410405",
        -- opt_AttackerSpawner_3,
        [6] = "2103277193867058305",
        -- opt_AttackerSpawner_5,
        [8] = "2103277195530099866",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_45()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103376228141504781",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|646102556");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
                [2] = self.f_box_OutputOrder_v2_13_Out_2,
                [3] = self.f_box_OutputOrder_v2_13_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|723473842");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_31_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|733602963");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_47()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103376188842973289",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1031405888");
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

function export:OnEnter_box_CharacterLoadedIdListener_19()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015184054185563",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_32()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Brick_Endure_CORE_v3_1()
    local params;
    params = {
        -- Attacker_Group,
        [0] = "#BF2EFBD3",
        -- bRequiresObjective,
        [1] = false,
        -- CompletePreviousObjective,
        [2] = false,
        -- FailArea,
        [3] = "2101658705736007824",
        -- Marker,
        [4] = "2097458467460621844",
        -- Objective,
        [5] = {
            section = "Objectives",
            item = "KEY01_020_B20_OBJ_V2",
            id = "812496",
        },
        -- opt_ObjectiveFail,
        [6] = {
            section = "BRICK_Endure_Waves",
            item = "BRICK_Endure_ExitWarning",
            id = "426332",
        },
        -- WarningArea,
        [7] = "2103085156186214077",
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1256171924");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleState_v2_18_OnSet,
    });
    params = {
        -- Pawn,
        [0] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_54()
    local params;
    params = {
        -- Delay,
        [2] = 2,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "4038286052",
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_9()
    local params;
    params = {
        -- Vehicle,
        [0] = "2103482527831307731",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1407736011");
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
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
                [2] = self.f_box_OutputOrder_v2_49_Out_2,
                [3] = self.f_box_OutputOrder_v2_49_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_3()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_22()
    local params;
    DrawTextToScreen("Comment: Hangar! They're at the hangar!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Hangar! They're at the hangar!");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2298376833",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1643419843");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1643588918");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_35_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_35_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_35_Out,
    });
    params = {
        -- pawn,
        [0] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1734845201");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2103482527831307731",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1737338919");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103585202977649520",
        -- Group,
        [1] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_15()
    local params;
    DrawTextToScreen("Comment: [prolonged grunting] YEAAAAAH! Oh my God! I did it! I got one. Haaaaaa haaaa, Chosen my ass!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: [prolonged grunting] YEAAAAAH! Oh my God! I did it! I got one. Haaaaaa haaaa, Chosen my ass!");
    params = {
        -- Delay,
        [2] = 5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3156696279",
    };
    return params;
end;

function export:OnEnter_box_Random_25()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_8()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2103292373275522164",
        -- CoreNPCGroup,
        [2] = "#BF2EFBD3",
        -- IsLastWave,
        [3] = true,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2103292381550884199",
        -- opt_AttackerSpawner_3,
        [6] = "2104135174429119500",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_24()
    local params;
    DrawTextToScreen("Comment: There's more of 'em comin' down the runway!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: There's more of 'em comin' down the runway!");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3803663897",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_020\\KEY01_020_B20.domino|@KEY01_020_B20|1990768142");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = self.eNickPlane,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_48()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103292376414958917",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_19_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_19;
    self.eQuestGiver = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_35_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eNickPlane = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_35_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eNickPlane = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_35_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eNickPlane = l0:GetDataOutValue(2);
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
