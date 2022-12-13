LUACO -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni45/uni45_020_b10.domino
-- User graph: UNI45_020_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveTimerModifier.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MetaBreakableModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/CameraShakeAndRumble_V2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayRandomDialog.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetValueNil.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_020_B10.UNI45_020_B10_STP_Listener.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[751549086.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1482143644.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1899417335.bnk]], "CSoundResource");
        cboxRes:LoadResource([[207669918.bnk]], "CSoundResource");
        cboxRes:LoadResource([[346131725.bnk]], "CSoundResource");
        cboxRes:LoadResource([[362083938.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1785706206.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3703649389.bnk]], "CSoundResource");
        cboxRes:LoadResource([[46902298.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1143721494.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1251606610.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3750517508.bnk]], "CSoundResource");
        cboxRes:LoadResource([[326373864.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2369965562.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1730712832.bnk]], "CSoundResource");
        cboxRes:LoadResource([[402194838.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1216857213.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1526267627.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1798321108.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1093697960.bnk]], "CSoundResource");
        cboxRes:LoadResource([[669474376.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3464076855.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_020_B10.UNI45_020_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityFact.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetFact",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FactNotSet",
                delayed = false,
            },
            [1] = {
                name = "FactSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ActivityIDOrEncounterPrefabID",
                type = "genericdb",
            },
            [1] = {
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Coop/CoopActivePlayers.lua")] = {
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
                name = "OnePlayer",
                delayed = false,
            },
            [1] = {
                name = "PlayerAdded",
                delayed = true,
            },
            [2] = {
                name = "PlayerRemoved",
                delayed = true,
            },
            [3] = {
                name = "TwoPlayers",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Player1",
                type = "entity",
            },
            [1] = {
                name = "Player2",
                type = "entity",
            },
            [2] = {
                name = "PlayerAddedOrRemoved",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/PhysicsModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
            },
            [2] = {
                name = "StartPhysics",
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
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SendEvent",
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
                name = "EventName",
                type = "string",
            },
            [1] = {
                name = "IntensityModifier",
                type = "float",
            },
            [2] = {
                name = "pawns",
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
    metadataTable[GetPathID("Domino/System/PlayRandomDialog.lua")] = {
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
                name = "AllDone",
                delayed = true,
            },
            [1] = {
                name = "PlayOut",
                delayed = false,
            },
            [2] = {
                name = "StopOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "maxTime",
                type = "float",
            },
            [2] = {
                name = "minTime",
                type = "float",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
                dynamicType = 1,
            },
            [4] = {
                name = "TargetEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/SetValueNil.lua")] = {
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
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "bool",
                type = "bool",
            },
            [2] = {
                name = "ent",
                type = "entity",
            },
            [3] = {
                name = "float",
                type = "float",
            },
            [4] = {
                name = "group",
                type = "group",
            },
            [5] = {
                name = "int",
                type = "int",
            },
            [6] = {
                name = "oasis",
                type = "oasis",
            },
            [7] = {
                name = "sound",
                type = "Sound",
            },
            [8] = {
                name = "str",
                type = "string",
            },
        },
        dataOutCount = 9,
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
    metadataTable[GetPathID("Domino/System/StartCelebration.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
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
                name = "Preset",
                type = "genericdb",
            },
            [1] = {
                name = "TextId",
                type = "oasis",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/StimsEmitter_v2.lua")] = {
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
                name = "StimsEmitter",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_020_B10.UNI45_020_B10_STP_Listener.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "BombDefused",
                delayed = false,
            },
            [1] = {
                name = "DefuserStopped",
                delayed = false,
            },
            [2] = {
                name = "End",
                delayed = false,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
            [4] = {
                name = "Start",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "e_Marker",
                type = "entity",
            },
            [1] = {
                name = "eEntity",
                type = "entity",
            },
            [2] = {
                name = "eSTP",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "e_STP_Completed",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI45_020_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10";
    self.gPlayerGroup = nil;
    self.eDarnell = nil;
    self.machineBeat10 = nil;
    self.gmachineBeat10 = 0;
    self.i_MachineRemaining = 0;
    self.i_memberCount = 0;
    self.i_nbTurn = 0;
    self.e_targetEntity_1 = nil;
    self.e_targetEntity_2 = nil;
    self.e_targetEntity_3 = nil;
    self.e_targetEntity_4 = nil;
    self.f_Timer = 0;
    self.e_STP_Completed = nil;
    self.f_UpdatedTimer = 0;
    self.gAllPawns = nil;
    self.g_BlastTargets_P = nil;
    self.g_BlastTargets = nil;
    self.e_Target_P = nil;
    self.e_Target = nil;
    self.b_IsTimerEnded = false;
    self.i_RespawnersCount = 0;
    self.e_Player1 = nil;
    self.e_Player2 = nil;
    self.i_fleeingCultistsLeft = 0;
    self.box_Gate_v3_170 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|13672796");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_170_Out,
    });
    self.box_SoundModifier_v2_252 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_252;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_252");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|23694410");
    l0:SetConnections({
    });
    self.box_UNI45_020_B10_STP_Listener_41 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_020_B10.UNI45_020_B10_STP_Listener.debug.lua");
    l0 = self.box_UNI45_020_B10_STP_Listener_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI45_020_B10_STP_Listener_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|41638303");
    l0:SetConnections({
        -- BombDefused,
        [0] = self.f_box_UNI45_020_B10_STP_Listener_41_BombDefused,
        -- DefuserStopped,
        [1] = self.f_box_UNI45_020_B10_STP_Listener_41_DefuserStopped,
        -- End,
        [2] = self.f_box_UNI45_020_B10_STP_Listener_41_End,
        -- Out,
        [3] = self.f_box_UNI45_020_B10_STP_Listener_41_Out,
        -- Start,
        [4] = self.f_box_UNI45_020_B10_STP_Listener_41_Start,
    });
    self.box_SoundModifier_v2_257 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_257");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|48797469");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_82 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|81673366");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_82_Enabled,
    });
    self.box_Music_Quest_v2_262 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_262;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_262");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|102828096");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_174 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|105496601");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_174_Disabled,
    });
    self.box_MultipleOR_233 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|120335010");
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
        [0] = self.f_box_MultipleOR_233_Out,
    });
    self.box_MultipleOR_89 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|180066334");
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
    self.box_Delay_v5_118 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|183669557");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_118_TimeElapsed,
    });
    self.box_SpawnAI_162 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|197371627");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_162_Out,
    });
    self.box_ContextualActionListener_38 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|226910340");
    l0:SetConnections({
        -- Available,
        [0] = self.f_box_ContextualActionListener_38_Available,
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_38_Disabled,
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_38_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_38_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_38_Interrupt,
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_38_Markup1,
        -- Markup2,
        [6] = self.f_box_ContextualActionListener_38_Markup2,
        -- Select,
        [7] = self.f_box_ContextualActionListener_38_Select,
        -- Start,
        [8] = self.f_box_ContextualActionListener_38_Start,
    });
    self.box_SpawnAI_161 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|279337639");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_161_Out,
    });
    self.box_SpawnAI_138 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|289146375");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_138_Spawned,
    });
    self.box_Brick_Interact_With_Object_V5_103 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|325833792");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_103_Success,
    });
    self.box_Random_136 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|327512956");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Random_136_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_136_Output_0,
                [1] = self.f_box_Random_136_Output_1,
                [2] = self.f_box_Random_136_Output_2,
            },
            count = 3,
        },
    });
    self.box_OnceOnly_v3_270 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_270;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_270");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|338009914");
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
                [0] = self.f_box_OnceOnly_v3_270_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_172 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|339905535");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_172_Out,
    });
    self.box_ContextualActionListener_51 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|369368516");
    l0:SetConnections({
        -- Available,
        [0] = self.f_box_ContextualActionListener_51_Available,
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_51_Disabled,
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_51_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_51_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_51_Interrupt,
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_51_Markup1,
        -- Markup2,
        [6] = self.f_box_ContextualActionListener_51_Markup2,
        -- Select,
        [7] = self.f_box_ContextualActionListener_51_Select,
        -- Start,
        [8] = self.f_box_ContextualActionListener_51_Start,
    });
    self.box_Delay_v5_166 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|375888605");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_166_TimeElapsed,
    });
    self.box_MultipleOR_193 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|390840281");
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
    self.box_ProximityTrigger_v2_129 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|405022661");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_129_Enter,
    });
    self.box_SoundModifier_v2_254 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_254;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_254");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|409533126");
    l0:SetConnections({
    });
    self.box_ActivityObjectiveTimerListener_35 = cbox:CreateBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
    l0 = self.box_ActivityObjectiveTimerListener_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveTimerListener_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|416261377");
    l0:SetConnections({
        -- OnTime,
        [2] = self.f_box_ActivityObjectiveTimerListener_35_OnTime,
    });
    self.box_SoundModifier_v2_25 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|416584907");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_25_Started,
    });
    self.box_SpawnAI_Wave_v2_231 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|418081221");
    l0:SetConnections({
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|425179468");
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
    self.box_EntityStatusListener_62 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|440467083");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_62_Loaded,
    });
    self.box_MultipleOR_165 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|570389910");
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
        [0] = self.f_box_MultipleOR_165_Out,
    });
    self.box_PhysicsModifier_191 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|604686190");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_191_Disabled,
    });
    self.box_SoundModifier_v2_196 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|627155764");
    l0:SetConnections({
    });
    self.box_SpawnAI_Wave_v2_228 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|630325585");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_228_NextWave,
    });
    self.box_SoundModifier_v2_250 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_250");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|662790546");
    l0:SetConnections({
    });
    self.box_MultipleOR_139 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|667403337");
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
        [0] = self.f_box_MultipleOR_139_Out,
    });
    self.box_Gate_v3_171 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|682588020");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_171_Out,
    });
    self.box_MultipleOR_273 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_273;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_273");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|685239074");
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
        [0] = self.f_box_MultipleOR_273_Out,
    });
    self.box_Delay_v5_84 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|693061368");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_84_TimeElapsed,
    });
    self.box_Delay_v5_201 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|698988428");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_201_TimeElapsed,
    });
    self.box_Delay_v5_64 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|718896880");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_64_TimeElapsed,
    });
    self.box_Music_Quest_v2_268 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_268;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_268");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|746935618");
    l0:SetConnections({
    });
    self.box_ActivityObjectiveTimerListener_167 = cbox:CreateBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
    l0 = self.box_ActivityObjectiveTimerListener_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveTimerListener_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|775612350");
    l0:SetConnections({
        -- OnTime,
        [2] = self.f_box_ActivityObjectiveTimerListener_167_OnTime,
    });
    self.box_Delay_v5_88 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|790603844");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_88_TimeElapsed,
    });
    self.box_SoundModifier_v2_197 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|791929237");
    l0:SetConnections({
    });
    self.box_Gate_v3_173 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|799305630");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_173_Out,
    });
    self.box_SpawnAI_137 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|829128545");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_137_Spawned,
    });
    self.box_EntityStatusListener_77 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|831224764");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_77_Loaded,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|849462465");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_PlayDialog_v6_87 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|850538992");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_87_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_87_FinishedInterrupted,
    });
    self.box_SoundModifier_v2_248 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_248");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|861343564");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_264 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_264;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_264");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|894543581");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_247 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_247");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|899686325");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_243 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_243");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|899708103");
    l0:SetConnections({
    });
    self.box_SpawnAI_Wave_v2_230 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|904975920");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_230_NextWave,
    });
    self.box_MetaBreakableModifier_v2_23 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|916779194");
    l0:SetConnections({
    });
    self.box_Delay_v5_190 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|968826080");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_190_TimeElapsed,
    });
    self.box_Delay_v5_234 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|970606657");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_234_TimeElapsed,
    });
    self.box_SpawnAI_135 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|973410736");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_135_Spawned,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|984413167");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_SoundModifier_v2_94 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|988437784");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_94_Started,
    });
    self.box_VisibilityModifier_34 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1031696616");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_34_Disabled,
    });
    self.box_VisibilityModifier_175 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1068623356");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_74 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1121356728");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_74_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_74_Completed,
        -- Out,
        [3] = self.f_box_RequestPhoneCall_v2_74_Out,
    });
    self.box_Brick_Interact_With_Object_V5_102 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1141754440");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_102_Success,
    });
    self.box_RequestPhoneCall_v2_232 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1142341192");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_232_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_232_Completed,
        -- Out,
        [3] = self.f_box_RequestPhoneCall_v2_232_Out,
    });
    self.box_Delay_v5_158 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1151851670");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_158_TimeElapsed,
    });
    self.box_MultipleOR_132 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1157331029");
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
        [0] = self.f_box_MultipleOR_132_Out,
    });
    self.box_Delay_v5_90 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1194153567");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_90_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_163 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1208173375");
    l0:SetConnections({
    });
    self.box_ContextualActionListener_8 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1219131991");
    l0:SetConnections({
        -- Available,
        [0] = self.f_box_ContextualActionListener_8_Available,
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_8_Disabled,
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_8_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_8_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_8_Interrupt,
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_8_Markup1,
        -- Markup2,
        [6] = self.f_box_ContextualActionListener_8_Markup2,
        -- Select,
        [7] = self.f_box_ContextualActionListener_8_Select,
        -- Start,
        [8] = self.f_box_ContextualActionListener_8_Start,
    });
    self.box_RequestPhoneCall_v2_43 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1224070439");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_43_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_43_Completed,
    });
    self.box_ProximityRadiusListener_v3_181 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1265161481");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_181_AllNear,
    });
    self.box_PhysicsModifier_188 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1284655738");
    l0:SetConnections({
    });
    self.box_MultipleOR_260 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_260");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1304975989");
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
        [0] = self.f_box_MultipleOR_260_Out,
    });
    self.box_VisibilityModifier_157 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1308945008");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_157_Disabled,
    });
    self.box_VisibilityModifier_42 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1309507666");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_42_Disabled,
    });
    self.box_SoundModifier_v2_20 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1340794684");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_20_Started,
    });
    self.box_SoundModifier_v2_244 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_244");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1345328628");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_255 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_255");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1346891477");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_189 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1347763337");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_189_Disabled,
    });
    self.box_VisibilityModifier_180 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1371710014");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_180_Disabled,
    });
    self.box_ExitZoneWarningListener_v3_164 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1402842003");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_164_FailingZoneEntered,
    });
    self.box_Delay_v5_112 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1403395740");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_112_TimeElapsed,
    });
    self.box_LookAtTrigger_v2_271 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_271;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_271");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1476260808");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_271_EnterFOV,
    });
    self.box_OnceOnly_v3_274 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_274;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_274");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1499133518");
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
                [0] = self.f_box_OnceOnly_v3_274_Out_0,
            },
            count = 2,
        },
    });
    self.box_StartCelebration_12 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1517625022");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_12_Ended,
    });
    self.box_PlayRandomDialog_235 = cbox:CreateBox("Domino/System/PlayRandomDialog.lua");
    l0 = self.box_PlayRandomDialog_235;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayRandomDialog_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1524440953");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
        },
        dataIn = {
            [3] = 8,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- AllDone,
        [0] = self.f_box_PlayRandomDialog_235_AllDone,
        -- StopOut,
        [2] = self.f_box_PlayRandomDialog_235_StopOut,
    });
    self.box_Brick_Interact_With_Object_V5_100 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1526414915");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_100_Success,
    });
    self.box_MultipleOR_86 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1526813550");
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
        [0] = self.f_box_MultipleOR_86_Out,
    });
    self.box_VisibilityModifier_176 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1542850790");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_176_Disabled,
    });
    self.box_OnceOnly_v3_205 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1547904102");
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
                [0] = self.f_box_OnceOnly_v3_205_Out_0,
            },
            count = 2,
        },
    });
    self.box_VisibilityModifier_177 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1590219413");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_177_Disabled,
    });
    self.box_Brick_Interact_With_Object_V5_101 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1595406039");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_101_Success,
    });
    self.box_Delay_v5_276 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_276;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_276");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1666385812");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_276_TimeElapsed,
    });
    self.box_Delay_v5_159 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1701671533");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_159_TimeElapsed,
    });
    self.box_SoundModifier_v2_198 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1707855094");
    l0:SetConnections({
    });
    self.box_Delay_v5_206 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1714693578");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_206_TimeElapsed,
    });
    self.box_UNI45_020_B10_STP_Listener_50 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_020_B10.UNI45_020_B10_STP_Listener.debug.lua");
    l0 = self.box_UNI45_020_B10_STP_Listener_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI45_020_B10_STP_Listener_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1746414372");
    l0:SetConnections({
        -- BombDefused,
        [0] = self.f_box_UNI45_020_B10_STP_Listener_50_BombDefused,
        -- DefuserStopped,
        [1] = self.f_box_UNI45_020_B10_STP_Listener_50_DefuserStopped,
        -- End,
        [2] = self.f_box_UNI45_020_B10_STP_Listener_50_End,
        -- Out,
        [3] = self.f_box_UNI45_020_B10_STP_Listener_50_Out,
        -- Start,
        [4] = self.f_box_UNI45_020_B10_STP_Listener_50_Start,
    });
    self.box_UNI45_020_B10_STP_Listener_14 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_020_B10.UNI45_020_B10_STP_Listener.debug.lua");
    l0 = self.box_UNI45_020_B10_STP_Listener_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI45_020_B10_STP_Listener_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1746779328");
    l0:SetConnections({
        -- BombDefused,
        [0] = self.f_box_UNI45_020_B10_STP_Listener_14_BombDefused,
        -- DefuserStopped,
        [1] = self.f_box_UNI45_020_B10_STP_Listener_14_DefuserStopped,
        -- End,
        [2] = self.f_box_UNI45_020_B10_STP_Listener_14_End,
        -- Out,
        [3] = self.f_box_UNI45_020_B10_STP_Listener_14_Out,
        -- Start,
        [4] = self.f_box_UNI45_020_B10_STP_Listener_14_Start,
    });
    self.box_EntityStatusListener_76 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1785287539");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_76_Loaded,
    });
    self.box_GroupSizeListener_v5_131 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1811813371");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_131_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_131_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_131_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_131_MemberRemoved,
    });
    self.box_RemoveEntity_v2_215 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1847439119");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_187 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1868751694");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_242 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_242;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_242");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1902896724");
    l0:SetConnections({
    });
    self.box_MultipleOR_134 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1916741901");
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
    self.box_OnceOnly_v3_85 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1933631273");
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
                [0] = self.f_box_OnceOnly_v3_85_Out_0,
            },
            count = 2,
        },
    });
    self.box_CoopActivePlayers_272 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_272;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_272");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1937821161");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_272_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_272_PlayerAdded,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_272_TwoPlayers,
    });
    self.box_ContextualActionListener_57 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1942135448");
    l0:SetConnections({
        -- Available,
        [0] = self.f_box_ContextualActionListener_57_Available,
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_57_Disabled,
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_57_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_57_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_57_Interrupt,
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_57_Markup1,
        -- Markup2,
        [6] = self.f_box_ContextualActionListener_57_Markup2,
        -- Select,
        [7] = self.f_box_ContextualActionListener_57_Select,
        -- Start,
        [8] = self.f_box_ContextualActionListener_57_Start,
    });
    self.box_SpawnAI_Wave_v2_227 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1983896271");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_227_NextWave,
    });
    self.box_Delay_v5_78 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1995689238");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_78_TimeElapsed,
    });
    self.box_PlayDialog_v6_16 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1996539595");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_16_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_16_FinishedInterrupted,
    });
    self.box_EntityStatusListener_75 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2004546145");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_75_Loaded,
    });
    self.box_OnceOnly_v3_18 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2013223704");
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
                [0] = self.f_box_OnceOnly_v3_18_Out_0,
            },
            count = 2,
        },
    });
    self.box_PhoneCallExclusivityModifier_83 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2020780573");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_245 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_245;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_245");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2040725376");
    l0:SetConnections({
    });
    self.box_MultipleOR_128 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2043539366");
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
    self.box_SpawnAI_Wave_v2_229 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_229;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2047501926");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_229_NextWave,
    });
    self.box_Delay_v5_60 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2072512710");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_60_TimeElapsed,
    });
    self.box_UNI45_020_B10_STP_Listener_55 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_020_B10.UNI45_020_B10_STP_Listener.debug.lua");
    l0 = self.box_UNI45_020_B10_STP_Listener_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI45_020_B10_STP_Listener_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2080416797");
    l0:SetConnections({
        -- BombDefused,
        [0] = self.f_box_UNI45_020_B10_STP_Listener_55_BombDefused,
        -- DefuserStopped,
        [1] = self.f_box_UNI45_020_B10_STP_Listener_55_DefuserStopped,
        -- End,
        [2] = self.f_box_UNI45_020_B10_STP_Listener_55_End,
        -- Out,
        [3] = self.f_box_UNI45_020_B10_STP_Listener_55_Out,
        -- Start,
        [4] = self.f_box_UNI45_020_B10_STP_Listener_55_Start,
    });
    self.box_SoundModifier_v2_200 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2085975139");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_200_Started,
    });
    self.box_SoundModifier_v2_199 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2088200086");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_253 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_253;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_253");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2096993540");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_202 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2100074867");
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
                [0] = self.f_box_OnceOnly_v3_202_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_32 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2105593407");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_32_Out,
    });
    self.box_GroupSizeListener_v5_236 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2109921927");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_236_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_236_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_236_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_236_MemberRemoved,
    });
    self.box_SoundModifier_v2_249 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_249");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2129072889");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1326764578", "1326764578", "UNI45_020_B10", "In", "box_OutputOrder_v2_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_263();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|666534692", "666534692", "UNI45_020_B10", "OnLeaveZone", "box_OutputOrder_v2_263.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_258_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_257();
    l0 = self.box_SoundModifier_v2_257;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|552322675", "552322675", "UNI45_020_B10", "box_Simple_Node_258.Out", "box_SoundModifier_v2_257.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_266_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_264();
    l0 = self.box_Music_Quest_v2_264;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|685066063", "685066063", "UNI45_020_B10", "box_Simple_Node_266.Out", "box_Music_Quest_v2_264.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_57();
    l0 = self.box_ContextualActionListener_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1321289066", "1321289066", "UNI45_020_B10", "box_Simple_Node_29.Out", "box_ContextualActionListener_57.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ContextualActionListener_38();
    l0 = self.box_ContextualActionListener_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1156902278", "1156902278", "UNI45_020_B10", "box_Simple_Node_29.Out", "box_ContextualActionListener_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ContextualActionListener_51();
    l0 = self.box_ContextualActionListener_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1107938199", "1107938199", "UNI45_020_B10", "box_Simple_Node_29.Out", "box_ContextualActionListener_51.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ContextualActionListener_8();
    l0 = self.box_ContextualActionListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1325353965", "1325353965", "UNI45_020_B10", "box_Simple_Node_29.Out", "box_ContextualActionListener_8.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_152_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_141();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1885047302", "1885047302", "UNI45_020_B10", "box_Simple_Node_152.Out", "box_StimsEmitter_v2_141.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_StimsEmitter_v2_142();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|152068231", "152068231", "UNI45_020_B10", "box_Simple_Node_152.Out", "box_StimsEmitter_v2_142.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_StimsEmitter_v2_143();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1329986747", "1329986747", "UNI45_020_B10", "box_Simple_Node_152.Out", "box_StimsEmitter_v2_143.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_StimsEmitter_v2_140();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1901632325", "1901632325", "UNI45_020_B10", "box_Simple_Node_152.Out", "box_StimsEmitter_v2_140.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_246_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveTimerListener_167();
    l0 = self.box_ActivityObjectiveTimerListener_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1293267637", "1293267637", "UNI45_020_B10", "box_Simple_Node_246.Out", "box_ActivityObjectiveTimerListener_167.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_241_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_236();
    l0 = self.box_GroupSizeListener_v5_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1912117218", "1912117218", "UNI45_020_B10", "box_Simple_Node_241.Out", "box_GroupSizeListener_v5_236.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_185_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_251();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|707737001", "707737001", "UNI45_020_B10", "box_Simple_Node_185.Out", "box_OutputOrder_v2_251.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_260;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|347176307", "347176307", "UNI45_020_B10", "box_Simple_Node_185.Out", "box_MultipleOR_260.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_ExitZoneWarningListener_v3_164();
    l0 = self.box_ExitZoneWarningListener_v3_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|790789253", "790789253", "UNI45_020_B10", "box_Simple_Node_185.Out", "box_ExitZoneWarningListener_v3_164.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_256();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|740795305", "740795305", "UNI45_020_B10", "box_Simple_Node_185.Out", "box_OutputOrder_v2_256.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Delay_v5_112();
    l0 = self.box_Delay_v5_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|431582305", "431582305", "UNI45_020_B10", "box_Simple_Node_185.Out", "box_Delay_v5_112.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_VisibilityModifier_174();
    l0 = self.box_VisibilityModifier_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|353239158", "353239158", "UNI45_020_B10", "box_Simple_Node_185.Out", "box_VisibilityModifier_174.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_80_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_68();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2067708055", "2067708055", "UNI45_020_B10", "box_Simple_Node_80.Out", "box_TriggerState_v2_68.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_EntityStatusListener_76();
    l0 = self.box_EntityStatusListener_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1682262198", "1682262198", "UNI45_020_B10", "box_Simple_Node_80.Out", "box_EntityStatusListener_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_265_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_262();
    l0 = self.box_Music_Quest_v2_262;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|371686502", "371686502", "UNI45_020_B10", "box_Simple_Node_265.Out", "box_Music_Quest_v2_262.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_192_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_84();
    l0 = self.box_Delay_v5_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1365438528", "1365438528", "UNI45_020_B10", "box_Simple_Node_192.Out", "box_Delay_v5_84.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_153_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|519459477", "519459477", "UNI45_020_B10", "box_Simple_Node_153.Out", "box_MultipleOR_132.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_151_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_207();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|975529147", "975529147", "UNI45_020_B10", "box_Simple_Node_151.Out", "box_UseContextualActionModifier_v3_207.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ActivityObjectiveTimerModifier_30();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveTimerModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|649868731", "649868731", "UNI45_020_B10", "box_Simple_Node_151.Out", "box_ActivityObjectiveTimerModifier_30.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_280_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_268();
    l0 = self.box_Music_Quest_v2_268;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1952569983", "1952569983", "UNI45_020_B10", "box_Simple_Node_280.Out", "box_Music_Quest_v2_268.Start_Reset_MIS_Attacked", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_Reset_MIS_Attacked
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1746789885", "1746789885", "UNI45_020_B10", "box_Simple_Node_44.Out", "box_OutputOrder_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_150_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveTimerModifier_59();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveTimerModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|878628889", "878628889", "UNI45_020_B10", "box_Simple_Node_150.Out", "box_ActivityObjectiveTimerModifier_59.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_146_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_173();
    l0 = self.box_Gate_v3_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1783002800", "1783002800", "UNI45_020_B10", "box_Simple_Node_146.Out", "box_Gate_v3_173.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_170();
    l0 = self.box_Gate_v3_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|642282914", "642282914", "UNI45_020_B10", "box_Simple_Node_146.Out", "box_Gate_v3_170.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1330885743", "1330885743", "UNI45_020_B10", "box_Simple_Node_146.Out", "box_MultipleOR_132.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_Gate_v3_171();
    l0 = self.box_Gate_v3_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1220851312", "1220851312", "UNI45_020_B10", "box_Simple_Node_146.Out", "box_Gate_v3_171.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|232668689", "232668689", "UNI45_020_B10", "box_Simple_Node_146.Out", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_125();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|650176435", "650176435", "UNI45_020_B10", "box_Simple_Node_146.Out", "box_OutputOrder_v2_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Gate_v3_172();
    l0 = self.box_Gate_v3_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1176406896", "1176406896", "UNI45_020_B10", "box_Simple_Node_146.Out", "box_Gate_v3_172.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_127_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_232();
    l0 = self.box_RequestPhoneCall_v2_232;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|35297172", "35297172", "UNI45_020_B10", "box_OutputOrder_v2_127.Out", "box_RequestPhoneCall_v2_232.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_127_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_90();
    l0 = self.box_Delay_v5_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1166126061", "1166126061", "UNI45_020_B10", "box_OutputOrder_v2_127.Out", "box_Delay_v5_90.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Gate_v3_170_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_151();
    l0 = self.box_Gate_v3_170;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|806046825", "806046825", "UNI45_020_B10", "box_Gate_v3_170.Out", "box_Simple_Node_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_256_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_258();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|934657545", "934657545", "UNI45_020_B10", "box_OutputOrder_v2_256.Out", "box_Simple_Node_258.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_256_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_182();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1774047260", "1774047260", "UNI45_020_B10", "box_OutputOrder_v2_256.Out", "box_ParticleSystem_v3_182.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_258();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|592896072", "592896072", "UNI45_020_B10", "box_OutputOrder_v2_69.Out", "box_Simple_Node_258.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_179();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1332825224", "1332825224", "UNI45_020_B10", "box_OutputOrder_v2_69.Out", "box_ParticleSystem_v3_179.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_278();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|790716862", "790716862", "UNI45_020_B10", "box_OutputOrder_v2_69.Out", "box_CameraShakeAndRumble_V2_278.SendEvent", clone:GetLuaBox(), l0:GetLuaBox());
    -- SendEvent
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveTimerModifier_30_Paused()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveTimerModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_37();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|104302266", "104302266", "UNI45_020_B10", "box_ActivityObjectiveTimerModifier_30.Paused", "box_UseContextualActionModifier_v3_37.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UNI45_020_B10_STP_Listener_41_BombDefused()
    local params, l0, l1;
    self:OnExit_box_UNI45_020_B10_STP_Listener_41_BombDefused();
    params = self:OnEnter_box_Gate_v3_171();
    l0 = self.box_UNI45_020_B10_STP_Listener_41;
    l1 = self.box_Gate_v3_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1209240716", "1209240716", "UNI45_020_B10", "box_UNI45_020_B10_STP_Listener_41.BombDefused", "box_Gate_v3_171.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UNI45_020_B10_STP_Listener_41_DefuserStopped()
    local params, l0, l1;
    self:OnExit_box_UNI45_020_B10_STP_Listener_41_DefuserStopped();
    params = self:OnEnter_box_UseContextualActionModifier_v3_39();
    l0 = self.box_UNI45_020_B10_STP_Listener_41;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1517646035", "1517646035", "UNI45_020_B10", "box_UNI45_020_B10_STP_Listener_41.DefuserStopped", "box_UseContextualActionModifier_v3_39.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI45_020_B10_STP_Listener_41_End()
    self:OnExit_box_UNI45_020_B10_STP_Listener_41_End();
end;

function export:f_box_UNI45_020_B10_STP_Listener_41_Out()
    self:OnExit_box_UNI45_020_B10_STP_Listener_41_Out();
end;

function export:f_box_UNI45_020_B10_STP_Listener_41_Start()
    local params, l0, l1;
    self:OnExit_box_UNI45_020_B10_STP_Listener_41_Start();
    params = self:OnEnter_box_UseContextualActionModifier_v3_39();
    l0 = self.box_UNI45_020_B10_STP_Listener_41;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1645492363", "1645492363", "UNI45_020_B10", "box_UNI45_020_B10_STP_Listener_41.Start", "box_UseContextualActionModifier_v3_39.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_82_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_194();
    l0 = self.box_PhoneCallExclusivityModifier_82;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1953819206", "1953819206", "UNI45_020_B10", "box_PhoneCallExclusivityModifier_82.Enabled", "box_GetActivityFact_194.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_221_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_113();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|405928938", "405928938", "UNI45_020_B10", "box_ParticleSystem_v3_221.Started", "box_OutputOrder_v2_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_174_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_176();
    l0 = self.box_VisibilityModifier_174;
    l1 = self.box_VisibilityModifier_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1739055415", "1739055415", "UNI45_020_B10", "box_VisibilityModifier_174.Disabled", "box_VisibilityModifier_176.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_233_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_233;
    l1 = self.box_OnceOnly_v3_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|550207498", "550207498", "UNI45_020_B10", "box_MultipleOR_233.Out", "box_OnceOnly_v3_85.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_130_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_131();
    l0 = self.box_GroupSizeListener_v5_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1557044122", "1557044122", "UNI45_020_B10", "box_Compare_Boolean_130.A_is_False", "box_GroupSizeListener_v5_131.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_130_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_131();
    l0 = self.box_GroupSizeListener_v5_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|838051543", "838051543", "UNI45_020_B10", "box_Compare_Boolean_130.A_is_True", "box_GroupSizeListener_v5_131.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StimsEmitter_v2_143_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_42();
    l0 = self.box_VisibilityModifier_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|949592486", "949592486", "UNI45_020_B10", "box_StimsEmitter_v2_143.Enabled", "box_VisibilityModifier_42.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_263_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_265();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1367082371", "1367082371", "UNI45_020_B10", "box_OutputOrder_v2_263.Out", "box_Simple_Node_265.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_263_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|435335297", "435335297", "UNI45_020_B10", "box_OutputOrder_v2_263.Out", "box_ActivityRetry_4.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_89_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_88();
    l0 = self.box_MultipleOR_89;
    l1 = self.box_Delay_v5_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1982354657", "1982354657", "UNI45_020_B10", "box_MultipleOR_89.Out", "box_Delay_v5_88.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_118_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_152();
    l0 = self.box_Delay_v5_118;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1678619255", "1678619255", "UNI45_020_B10", "box_Delay_v5_118.TimeElapsed", "box_Simple_Node_152.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_162_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_162;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2036186295", "2036186295", "UNI45_020_B10", "box_SpawnAI_162.Out", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TriggerState_v2_28_OnSetUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_67();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1695399591", "1695399591", "UNI45_020_B10", "box_TriggerState_v2_28.OnSetUnusable", "box_TriggerState_v2_67.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetValueNil_110_Out()
    local params, l0;
    self:OnExit_box_SetValueNil_110_Out();
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_150();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|775864989", "775864989", "UNI45_020_B10", "box_SetValueNil_110.Out", "box_Simple_Node_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_38_End()
    self:OnExit_box_ContextualActionListener_38_End();
end;

function export:f_box_ContextualActionListener_38_Interrupt()
    self:OnExit_box_ContextualActionListener_38_Interrupt();
end;

function export:f_box_ContextualActionListener_38_Markup1()
    self:OnExit_box_ContextualActionListener_38_Markup1();
end;

function export:f_box_ContextualActionListener_38_Markup2()
    self:OnExit_box_ContextualActionListener_38_Markup2();
end;

function export:f_box_ContextualActionListener_38_Select()
    local params, l0, l1;
    self:OnExit_box_ContextualActionListener_38_Select();
    params = self:OnEnter_box_UNI45_020_B10_STP_Listener_41();
    l0 = self.box_ContextualActionListener_38;
    l1 = self.box_UNI45_020_B10_STP_Listener_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1386505321", "1386505321", "UNI45_020_B10", "box_ContextualActionListener_38.Select", "box_UNI45_020_B10_STP_Listener_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ContextualActionListener_38_Start()
    self:OnExit_box_ContextualActionListener_38_Start();
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_206();
    l0 = self.box_Delay_v5_206;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1738201421", "1738201421", "UNI45_020_B10", "box_OutputOrder_v2_15.Out", "box_Delay_v5_206.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_136();
    l0 = self.box_Random_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|159459539", "159459539", "UNI45_020_B10", "box_OutputOrder_v2_15.Out", "box_Random_136.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|682474050", "682474050", "UNI45_020_B10", "box_OutputOrder_v2_15.Out", "box_OnceOnly_v3_205.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_SpawnAI_161_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_162();
    l0 = self.box_SpawnAI_161;
    l1 = self.box_SpawnAI_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1996093429", "1996093429", "UNI45_020_B10", "box_SpawnAI_161.Out", "box_SpawnAI_162.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_CameraShakeAndRumble_V2_277_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_26();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|770443487", "770443487", "UNI45_020_B10", "box_CameraShakeAndRumble_V2_277.Out", "box_HealthModifier_v2_26.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_138_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_153();
    l0 = self.box_SpawnAI_138;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|204193105", "204193105", "UNI45_020_B10", "box_SpawnAI_138.Spawned", "box_Simple_Node_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_96_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_101();
    l0 = self.box_Brick_Interact_With_Object_V5_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|811032471", "811032471", "UNI45_020_B10", "box_Compare_Entity_96.Equal", "box_Brick_Interact_With_Object_V5_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_54_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_56();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|810144504", "810144504", "UNI45_020_B10", "box_UseContextualActionModifier_v3_54.Disabled", "box_UseContextualActionModifier_v3_56.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_54_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_56();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2006472617", "2006472617", "UNI45_020_B10", "box_UseContextualActionModifier_v3_54.Enabled", "box_UseContextualActionModifier_v3_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_67_OnSetUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_27();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1735779108", "1735779108", "UNI45_020_B10", "box_TriggerState_v2_67.OnSetUnusable", "box_TriggerState_v2_27.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_5_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_71();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|167542512", "167542512", "UNI45_020_B10", "box_GetPlayerGroup_v2_5.Out", "box_SetBoolean_v2_71.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_66_OnSetUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_104();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|711216177", "711216177", "UNI45_020_B10", "box_TriggerState_v2_66.OnSetUnusable", "box_TriggerState_v2_104.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V5_103_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SetValueNil_22();
    l0 = self.box_Brick_Interact_With_Object_V5_103;
    l1 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|836488707", "836488707", "UNI45_020_B10", "box_Brick_Interact_With_Object_V5_103.Success", "box_SetValueNil_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_136_None()
    local l0, l1;
    l0 = self.box_Random_136;
    l1 = self.box_OnceOnly_v3_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1429493666", "1429493666", "UNI45_020_B10", "box_Random_136.None", "box_OnceOnly_v3_205.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_136_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_135();
    l0 = self.box_Random_136;
    l1 = self.box_SpawnAI_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2128599139", "2128599139", "UNI45_020_B10", "box_Random_136.Output", "box_SpawnAI_135.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_136_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_137();
    l0 = self.box_Random_136;
    l1 = self.box_SpawnAI_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1847373565", "1847373565", "UNI45_020_B10", "box_Random_136.Output", "box_SpawnAI_137.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_136_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_138();
    l0 = self.box_Random_136;
    l1 = self.box_SpawnAI_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|208089891", "208089891", "UNI45_020_B10", "box_Random_136.Output", "box_SpawnAI_138.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_49_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_52();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1581299625", "1581299625", "UNI45_020_B10", "box_UseContextualActionModifier_v3_49.Disabled", "box_UseContextualActionModifier_v3_52.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_49_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_52();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1814560600", "1814560600", "UNI45_020_B10", "box_UseContextualActionModifier_v3_49.Enabled", "box_UseContextualActionModifier_v3_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_270_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_195();
    l0 = self.box_OnceOnly_v3_270;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|326567431", "326567431", "UNI45_020_B10", "box_OnceOnly_v3_270.Out", "box_SetActivityFact_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_172_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_151();
    l0 = self.box_Gate_v3_172;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1176861660", "1176861660", "UNI45_020_B10", "box_Gate_v3_172.Out", "box_Simple_Node_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_195_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_127();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1362146583", "1362146583", "UNI45_020_B10", "box_SetActivityFact_195.Out", "box_OutputOrder_v2_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_97_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_102();
    l0 = self.box_Brick_Interact_With_Object_V5_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|963808663", "963808663", "UNI45_020_B10", "box_Compare_Entity_97.Equal", "box_Brick_Interact_With_Object_V5_102.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ContextualActionListener_51_End()
    self:OnExit_box_ContextualActionListener_51_End();
end;

function export:f_box_ContextualActionListener_51_Interrupt()
    self:OnExit_box_ContextualActionListener_51_Interrupt();
end;

function export:f_box_ContextualActionListener_51_Markup1()
    self:OnExit_box_ContextualActionListener_51_Markup1();
end;

function export:f_box_ContextualActionListener_51_Markup2()
    self:OnExit_box_ContextualActionListener_51_Markup2();
end;

function export:f_box_ContextualActionListener_51_Select()
    local params, l0, l1;
    self:OnExit_box_ContextualActionListener_51_Select();
    params = self:OnEnter_box_UNI45_020_B10_STP_Listener_50();
    l0 = self.box_ContextualActionListener_51;
    l1 = self.box_UNI45_020_B10_STP_Listener_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1755102290", "1755102290", "UNI45_020_B10", "box_ContextualActionListener_51.Select", "box_UNI45_020_B10_STP_Listener_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ContextualActionListener_51_Start()
    self:OnExit_box_ContextualActionListener_51_Start();
end;

function export:f_box_Delay_v5_166_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_145();
    l0 = self.box_Delay_v5_166;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1968766461", "1968766461", "UNI45_020_B10", "box_Delay_v5_166.TimeElapsed", "box_UseContextualActionModifier_v3_145.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_10();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1883389534", "1883389534", "UNI45_020_B10", "box_OutputOrder_v2_19.Out", "box_SetFloat_v2_10.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_164();
    l0 = self.box_ExitZoneWarningListener_v3_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1981410401", "1981410401", "UNI45_020_B10", "box_OutputOrder_v2_19.Out", "box_ExitZoneWarningListener_v3_164.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2027696732", "2027696732", "UNI45_020_B10", "box_OutputOrder_v2_19.Out", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1086936837", "1086936837", "UNI45_020_B10", "box_OutputOrder_v2_19.Out", "box_Simple_Node_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_159();
    l0 = self.box_Delay_v5_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1297705042", "1297705042", "UNI45_020_B10", "box_OutputOrder_v2_19.Out", "box_Delay_v5_159.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_19_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_66();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1111895542", "1111895542", "UNI45_020_B10", "box_OutputOrder_v2_19.Out", "box_TriggerState_v2_66.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_246();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|674735710", "674735710", "UNI45_020_B10", "box_OutputOrder_v2_19.Out", "box_Simple_Node_246.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_280();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|198331373", "198331373", "UNI45_020_B10", "box_OutputOrder_v2_19.Out", "box_Simple_Node_280.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_145_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_114();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|138093254", "138093254", "UNI45_020_B10", "box_UseContextualActionModifier_v3_145.Disabled", "box_UseContextualActionModifier_v3_114.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_193_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayRandomDialog_235();
    l0 = self.box_MultipleOR_193;
    l1 = self.box_PlayRandomDialog_235;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1481572405", "1481572405", "UNI45_020_B10", "box_MultipleOR_193.Out", "box_PlayRandomDialog_235.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_156_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_123();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|114335154", "114335154", "UNI45_020_B10", "box_UseContextualActionModifier_v3_156.Enabled", "box_UseContextualActionModifier_v3_123.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_129_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_275();
    l0 = self.box_ProximityTrigger_v2_129;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|204999205", "204999205", "UNI45_020_B10", "box_ProximityTrigger_v2_129.Enter", "box_OutputOrder_v2_275.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_124_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_129();
    l0 = self.box_ProximityTrigger_v2_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|759065005", "759065005", "UNI45_020_B10", "box_ActivityObjectiveMarkerModifier_v3_124.Enabled", "box_ProximityTrigger_v2_129.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveTimerListener_35_OnTime()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_111();
    l0 = self.box_ActivityObjectiveTimerListener_35;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1871150416", "1871150416", "UNI45_020_B10", "box_ActivityObjectiveTimerListener_35.OnTime", "box_EndActivityObjective_v2_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_25_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_248();
    l0 = self.box_SoundModifier_v2_25;
    l1 = self.box_SoundModifier_v2_248;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|903500686", "903500686", "UNI45_020_B10", "box_SoundModifier_v2_25.Started", "box_SoundModifier_v2_248.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1912482659", "1912482659", "UNI45_020_B10", "box_MultipleOR_6.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_EntityStatusListener_62_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_23();
    l0 = self.box_EntityStatusListener_62;
    l1 = self.box_MetaBreakableModifier_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|404224049", "404224049", "UNI45_020_B10", "box_EntityStatusListener_62.Loaded", "box_MetaBreakableModifier_v2_23.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_ParticleSystem_v3_214_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_241();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|368817074", "368817074", "UNI45_020_B10", "box_ParticleSystem_v3_214.Started", "box_Simple_Node_241.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_105_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_106();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|97066526", "97066526", "UNI45_020_B10", "box_UseContextualActionModifier_v3_105.Enabled", "box_UseContextualActionModifier_v3_106.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_160_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_155();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1826077741", "1826077741", "UNI45_020_B10", "box_UseContextualActionModifier_v3_160.Enabled", "box_UseContextualActionModifier_v3_155.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_116_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_230();
    l0 = self.box_SpawnAI_Wave_v2_230;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2095422194", "2095422194", "UNI45_020_B10", "box_Compare_Boolean_116.A_is_True", "box_SpawnAI_Wave_v2_230.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_StimsEmitter_v2_142_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_217();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1374651796", "1374651796", "UNI45_020_B10", "box_StimsEmitter_v2_142.Enabled", "box_ParticleSystem_v3_217.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_165_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_160();
    l0 = self.box_MultipleOR_165;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1905840836", "1905840836", "UNI45_020_B10", "box_MultipleOR_165.Out", "box_UseContextualActionModifier_v3_160.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_120_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_141();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|257923786", "257923786", "UNI45_020_B10", "box_OutputOrder_v2_120.Out", "box_StimsEmitter_v2_141.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_120_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_143();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1583344156", "1583344156", "UNI45_020_B10", "box_OutputOrder_v2_120.Out", "box_StimsEmitter_v2_143.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_120_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_118();
    l0 = self.box_Delay_v5_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1075299287", "1075299287", "UNI45_020_B10", "box_OutputOrder_v2_120.Out", "box_Delay_v5_118.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_120_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_178();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1016679417", "1016679417", "UNI45_020_B10", "box_OutputOrder_v2_120.Out", "box_MissionBlockLayer_178.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_216_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_12();
    l0 = self.box_StartCelebration_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1015011000", "1015011000", "UNI45_020_B10", "box_OutputOrder_v2_216.Out", "box_StartCelebration_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_216_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_215();
    l0 = self.box_RemoveEntity_v2_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|966823660", "966823660", "UNI45_020_B10", "box_OutputOrder_v2_216.Out", "box_RemoveEntity_v2_215.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_PhysicsModifier_191_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_218();
    l0 = self.box_PhysicsModifier_191;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1069424839", "1069424839", "UNI45_020_B10", "box_PhysicsModifier_191.Disabled", "box_ParticleSystem_v3_218.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_119_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_60();
    l0 = self.box_Delay_v5_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1025773176", "1025773176", "UNI45_020_B10", "box_OutputOrder_v2_119.Out", "box_Delay_v5_60.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_119_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_140();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|486377280", "486377280", "UNI45_020_B10", "box_OutputOrder_v2_119.Out", "box_StimsEmitter_v2_140.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_119_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_34();
    l0 = self.box_VisibilityModifier_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|321111705", "321111705", "UNI45_020_B10", "box_OutputOrder_v2_119.Out", "box_VisibilityModifier_34.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_8();
    l0 = self.box_ContextualActionListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1394413727", "1394413727", "UNI45_020_B10", "box_OutputOrder_v2_40.Out", "box_ContextualActionListener_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_38();
    l0 = self.box_ContextualActionListener_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|238909206", "238909206", "UNI45_020_B10", "box_OutputOrder_v2_40.Out", "box_ContextualActionListener_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_40_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_51();
    l0 = self.box_ContextualActionListener_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1790018223", "1790018223", "UNI45_020_B10", "box_OutputOrder_v2_40.Out", "box_ContextualActionListener_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_40_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_57();
    l0 = self.box_ContextualActionListener_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1301207199", "1301207199", "UNI45_020_B10", "box_OutputOrder_v2_40.Out", "box_ContextualActionListener_57.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_Wave_v2_228_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_117();
    l0 = self.box_SpawnAI_Wave_v2_228;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1527712178", "1527712178", "UNI45_020_B10", "box_SpawnAI_Wave_v2_228.NextWave", "box_Compare_Boolean_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_212_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_214();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1588881919", "1588881919", "UNI45_020_B10", "box_ParticleSystem_v3_212.Started", "box_ParticleSystem_v3_214.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_139_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_139;
    l1 = self.box_OnceOnly_v3_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1428097974", "1428097974", "UNI45_020_B10", "box_MultipleOR_139.Out", "box_OnceOnly_v3_202.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_208_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_209();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2010943291", "2010943291", "UNI45_020_B10", "box_UseContextualActionModifier_v3_208.Disabled", "box_UseContextualActionModifier_v3_209.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_171_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_151();
    l0 = self.box_Gate_v3_171;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1928233295", "1928233295", "UNI45_020_B10", "box_Gate_v3_171.Out", "box_Simple_Node_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_273_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_273;
    l1 = self.box_OnceOnly_v3_270;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1150663280", "1150663280", "UNI45_020_B10", "box_MultipleOR_273.Out", "box_OnceOnly_v3_270.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetValueNil_22_Out()
    local params, l0;
    self:OnExit_box_SetValueNil_22_Out();
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_150();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1344316420", "1344316420", "UNI45_020_B10", "box_SetValueNil_22.Out", "box_Simple_Node_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_84_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_43();
    l0 = self.box_Delay_v5_84;
    l1 = self.box_RequestPhoneCall_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2058574604", "2058574604", "UNI45_020_B10", "box_Delay_v5_84.TimeElapsed", "box_RequestPhoneCall_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_201_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_201;
    l1 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1406538524", "1406538524", "UNI45_020_B10", "box_Delay_v5_201.TimeElapsed", "box_MultipleOR_139.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_64_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_185();
    l0 = self.box_Delay_v5_64;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|914625702", "914625702", "UNI45_020_B10", "box_Delay_v5_64.TimeElapsed", "box_Simple_Node_185.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveTimerListener_35();
    l0 = self.box_ActivityObjectiveTimerListener_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1786449129", "1786449129", "UNI45_020_B10", "box_AddActivityObjective_v2_63.Out", "box_ActivityObjectiveTimerListener_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveTimerListener_167_OnTime()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_168();
    l0 = self.box_ActivityObjectiveTimerListener_167;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|531000521", "531000521", "UNI45_020_B10", "box_ActivityObjectiveTimerListener_167.OnTime", "box_OutputOrder_v2_168.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_267_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_272;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|594151512", "594151512", "UNI45_020_B10", "box_OutputOrder_v2_267.Out", "box_CoopActivePlayers_272.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_267_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_266();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|564274822", "564274822", "UNI45_020_B10", "box_OutputOrder_v2_267.Out", "box_Simple_Node_266.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_88_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_87();
    l0 = self.box_Delay_v5_88;
    l1 = self.box_PlayDialog_v6_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|946074599", "946074599", "UNI45_020_B10", "box_Delay_v5_88.TimeElapsed", "box_PlayDialog_v6_87.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_173_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_151();
    l0 = self.box_Gate_v3_173;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2137232612", "2137232612", "UNI45_020_B10", "box_Gate_v3_173.Out", "box_Simple_Node_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_70_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_70_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_144();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|473995042", "473995042", "UNI45_020_B10", "box_SetBoolean_v2_70.Out", "box_OutputOrder_v2_144.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_137_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_153();
    l0 = self.box_SpawnAI_137;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|367957016", "367957016", "UNI45_020_B10", "box_SpawnAI_137.Spawned", "box_Simple_Node_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_77_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_75();
    l0 = self.box_EntityStatusListener_77;
    l1 = self.box_EntityStatusListener_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1110864617", "1110864617", "UNI45_020_B10", "box_EntityStatusListener_77.Loaded", "box_EntityStatusListener_75.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_239_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_238();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1255116444", "1255116444", "UNI45_020_B10", "box_OutputOrder_v2_239.Out", "box_ActivityForceAndLockTracking_238.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_239_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|834577406", "834577406", "UNI45_020_B10", "box_OutputOrder_v2_239.Out", "box_PhoneCallExclusivityModifier_83.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_239_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|586276213", "586276213", "UNI45_020_B10", "box_OutputOrder_v2_239.Out", "box_ActivityEnd_11.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|411511238", "411511238", "UNI45_020_B10", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|612154482", "612154482", "UNI45_020_B10", "box_ActivityAcknowledgeGate_3.Reloaded", "box_OutputOrder_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_87_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_87;
    l1 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1439163610", "1439163610", "UNI45_020_B10", "box_PlayDialog_v6_87.Finished", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_87_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_87;
    l1 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|920730087", "920730087", "UNI45_020_B10", "box_PlayDialog_v6_87.FinishedInterrupted", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_39_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_47();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|205636578", "205636578", "UNI45_020_B10", "box_UseContextualActionModifier_v3_39.Disabled", "box_UseContextualActionModifier_v3_47.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_39_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_47();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1930839004", "1930839004", "UNI45_020_B10", "box_UseContextualActionModifier_v3_39.Enabled", "box_UseContextualActionModifier_v3_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_213_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_212();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1865042505", "1865042505", "UNI45_020_B10", "box_ParticleSystem_v3_213.Started", "box_ParticleSystem_v3_212.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_230_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_204();
    l0 = self.box_SpawnAI_Wave_v2_230;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|353080831", "353080831", "UNI45_020_B10", "box_SpawnAI_Wave_v2_230.NextWave", "box_Compare_Boolean_204.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_121_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_228();
    l0 = self.box_SpawnAI_Wave_v2_228;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|157679279", "157679279", "UNI45_020_B10", "box_Compare_Boolean_121.A_is_True", "box_SpawnAI_Wave_v2_228.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_144_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|421344773", "421344773", "UNI45_020_B10", "box_OutputOrder_v2_144.Out", "box_Simple_Node_146.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_144_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_29();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1861928314", "1861928314", "UNI45_020_B10", "box_OutputOrder_v2_144.Out", "box_Simple_Node_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_144_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_166();
    l0 = self.box_Delay_v5_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|81194603", "81194603", "UNI45_020_B10", "box_OutputOrder_v2_144.Out", "box_Delay_v5_166.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Boolean_72_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_227();
    l0 = self.box_SpawnAI_Wave_v2_227;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1347818008", "1347818008", "UNI45_020_B10", "box_Compare_Boolean_72.A_is_True", "box_SpawnAI_Wave_v2_227.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_190_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_184();
    l0 = self.box_Delay_v5_190;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|774918157", "774918157", "UNI45_020_B10", "box_Delay_v5_190.TimeElapsed", "box_ParticleSystem_v3_184.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_234_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_234;
    l1 = self.box_MultipleOR_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|492227486", "492227486", "UNI45_020_B10", "box_Delay_v5_234.TimeElapsed", "box_MultipleOR_233.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SpawnAI_135_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_153();
    l0 = self.box_SpawnAI_135;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1922858512", "1922858512", "UNI45_020_B10", "box_SpawnAI_135.Spawned", "box_Simple_Node_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_237();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|320201728", "320201728", "UNI45_020_B10", "box_ActivityInitialized_2.Out", "box_ActivityForceAndLockTracking_237.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_94_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_247();
    l0 = self.box_SoundModifier_v2_94;
    l1 = self.box_SoundModifier_v2_247;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1013948968", "1013948968", "UNI45_020_B10", "box_SoundModifier_v2_94.Started", "box_SoundModifier_v2_247.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_111_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2051499350", "2051499350", "UNI45_020_B10", "box_EndActivityObjective_v2_111.Out", "box_OnceOnly_v3_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VisibilityModifier_34_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_188();
    l0 = self.box_VisibilityModifier_34;
    l1 = self.box_PhysicsModifier_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2010540167", "2010540167", "UNI45_020_B10", "box_VisibilityModifier_34.Disabled", "box_PhysicsModifier_188.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_126_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_124();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1458204998", "1458204998", "UNI45_020_B10", "box_AddActivityObjective_v2_126.Out", "box_ActivityObjectiveMarkerModifier_v3_124.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_141_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_157();
    l0 = self.box_VisibilityModifier_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1733511290", "1733511290", "UNI45_020_B10", "box_StimsEmitter_v2_141.Enabled", "box_VisibilityModifier_157.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_155_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_156();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|741867631", "741867631", "UNI45_020_B10", "box_UseContextualActionModifier_v3_155.Enabled", "box_UseContextualActionModifier_v3_156.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_226_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_119();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2095734863", "2095734863", "UNI45_020_B10", "box_ParticleSystem_v3_226.Started", "box_OutputOrder_v2_119.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_113_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_78();
    l0 = self.box_Delay_v5_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1489386638", "1489386638", "UNI45_020_B10", "box_OutputOrder_v2_113.Out", "box_Delay_v5_78.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_113_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_142();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1593472356", "1593472356", "UNI45_020_B10", "box_OutputOrder_v2_113.Out", "box_StimsEmitter_v2_142.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_113_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_180();
    l0 = self.box_VisibilityModifier_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1595164839", "1595164839", "UNI45_020_B10", "box_OutputOrder_v2_113.Out", "box_VisibilityModifier_180.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_113_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_277();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1486785699", "1486785699", "UNI45_020_B10", "box_OutputOrder_v2_113.Out", "box_CameraShakeAndRumble_V2_277.SendEvent", clone:GetLuaBox(), l0:GetLuaBox());
    -- SendEvent
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_194_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_163();
    l0 = self.box_RequestPhoneCall_v2_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1199876301", "1199876301", "UNI45_020_B10", "box_GetActivityFact_194.FactNotSet", "box_RequestPhoneCall_v2_163.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_74_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_74;
    l1 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|186429376", "186429376", "UNI45_020_B10", "box_RequestPhoneCall_v2_74.Canceled", "box_MultipleOR_139.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_74_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_74;
    l1 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1086559374", "1086559374", "UNI45_020_B10", "box_RequestPhoneCall_v2_74.Completed", "box_MultipleOR_139.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_201();
    l0 = self.box_RequestPhoneCall_v2_74;
    l1 = self.box_Delay_v5_201;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1155288310", "1155288310", "UNI45_020_B10", "box_RequestPhoneCall_v2_74.Out", "box_Delay_v5_201.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_TriggerState_v2_104_OnSetUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_13();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|635540995", "635540995", "UNI45_020_B10", "box_TriggerState_v2_104.OnSetUnusable", "box_TriggerState_v2_13.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_47_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_48();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|477732265", "477732265", "UNI45_020_B10", "box_UseContextualActionModifier_v3_47.Disabled", "box_UseContextualActionModifier_v3_48.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_47_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_48();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|452493717", "452493717", "UNI45_020_B10", "box_UseContextualActionModifier_v3_47.Enabled", "box_UseContextualActionModifier_v3_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V5_102_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SetValueNil_109();
    l0 = self.box_Brick_Interact_With_Object_V5_102;
    l1 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|146887926", "146887926", "UNI45_020_B10", "box_Brick_Interact_With_Object_V5_102.Success", "box_SetValueNil_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_232_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_232;
    l1 = self.box_MultipleOR_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1298560605", "1298560605", "UNI45_020_B10", "box_RequestPhoneCall_v2_232.Canceled", "box_MultipleOR_233.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_232_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_232;
    l1 = self.box_MultipleOR_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1661390866", "1661390866", "UNI45_020_B10", "box_RequestPhoneCall_v2_232.Completed", "box_MultipleOR_233.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_232_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_234();
    l0 = self.box_RequestPhoneCall_v2_232;
    l1 = self.box_Delay_v5_234;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|639574487", "639574487", "UNI45_020_B10", "box_RequestPhoneCall_v2_232.Out", "box_Delay_v5_234.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_222_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_190();
    l0 = self.box_Delay_v5_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1555610598", "1555610598", "UNI45_020_B10", "box_ParticleSystem_v3_222.Started", "box_Delay_v5_190.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_158_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_72();
    l0 = self.box_Delay_v5_158;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|210203906", "210203906", "UNI45_020_B10", "box_Delay_v5_158.TimeElapsed", "box_Compare_Boolean_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_224_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_226();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|194149252", "194149252", "UNI45_020_B10", "box_ParticleSystem_v3_224.Started", "box_ParticleSystem_v3_226.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_158();
    l0 = self.box_Delay_v5_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|110137583", "110137583", "UNI45_020_B10", "box_OutputOrder_v2_9.Out", "box_Delay_v5_158.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_192();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|668421387", "668421387", "UNI45_020_B10", "box_OutputOrder_v2_9.Out", "box_Simple_Node_192.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_132_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_130();
    l0 = self.box_MultipleOR_132;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1713768624", "1713768624", "UNI45_020_B10", "box_MultipleOR_132.Out", "box_Compare_Boolean_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_259_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_260;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1772405176", "1772405176", "UNI45_020_B10", "box_Compare_Integers_259.A_le_B", "box_MultipleOR_260.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_90_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_33();
    l0 = self.box_Delay_v5_90;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1955642169", "1955642169", "UNI45_020_B10", "box_Delay_v5_90.TimeElapsed", "box_EndActivityObjective_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_8_End()
    self:OnExit_box_ContextualActionListener_8_End();
end;

function export:f_box_ContextualActionListener_8_Interrupt()
    self:OnExit_box_ContextualActionListener_8_Interrupt();
end;

function export:f_box_ContextualActionListener_8_Markup1()
    self:OnExit_box_ContextualActionListener_8_Markup1();
end;

function export:f_box_ContextualActionListener_8_Markup2()
    self:OnExit_box_ContextualActionListener_8_Markup2();
end;

function export:f_box_ContextualActionListener_8_Select()
    local params, l0, l1;
    self:OnExit_box_ContextualActionListener_8_Select();
    params = self:OnEnter_box_UNI45_020_B10_STP_Listener_14();
    l0 = self.box_ContextualActionListener_8;
    l1 = self.box_UNI45_020_B10_STP_Listener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|559795254", "559795254", "UNI45_020_B10", "box_ContextualActionListener_8.Select", "box_UNI45_020_B10_STP_Listener_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ContextualActionListener_8_Start()
    self:OnExit_box_ContextualActionListener_8_Start();
end;

function export:f_box_RequestPhoneCall_v2_43_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_43;
    l1 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|561066300", "561066300", "UNI45_020_B10", "box_RequestPhoneCall_v2_43.Canceled", "box_MultipleOR_89.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_43_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_43;
    l1 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1369750299", "1369750299", "UNI45_020_B10", "box_RequestPhoneCall_v2_43.Completed", "box_MultipleOR_89.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_99_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_91();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1671997779", "1671997779", "UNI45_020_B10", "box_OutputOrder_v2_99.Out", "box_Compare_Entity_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_96();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|820622474", "820622474", "UNI45_020_B10", "box_OutputOrder_v2_99.Out", "box_Compare_Entity_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_99_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_97();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1740118151", "1740118151", "UNI45_020_B10", "box_OutputOrder_v2_99.Out", "box_Compare_Entity_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_99_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_98();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|723692187", "723692187", "UNI45_020_B10", "box_OutputOrder_v2_99.Out", "box_Compare_Entity_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_210_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_208();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1673585153", "1673585153", "UNI45_020_B10", "box_UseContextualActionModifier_v3_210.Disabled", "box_UseContextualActionModifier_v3_208.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_181_AllNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_181;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1856267612", "1856267612", "UNI45_020_B10", "box_ProximityRadiusListener_v3_181.AllNear", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityObjectiveTimerModifier_59_Resumed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveTimerModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_107();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|300328262", "300328262", "UNI45_020_B10", "box_ActivityObjectiveTimerModifier_59.Resumed", "box_UseContextualActionModifier_v3_107.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_260_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayRandomDialog_235();
    l0 = self.box_MultipleOR_260;
    l1 = self.box_PlayRandomDialog_235;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|308144478", "308144478", "UNI45_020_B10", "box_MultipleOR_260.Out", "box_PlayRandomDialog_235.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_157_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_189();
    l0 = self.box_VisibilityModifier_157;
    l1 = self.box_PhysicsModifier_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1872271268", "1872271268", "UNI45_020_B10", "box_VisibilityModifier_157.Disabled", "box_PhysicsModifier_189.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_42_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_191();
    l0 = self.box_VisibilityModifier_42;
    l1 = self.box_PhysicsModifier_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1586448479", "1586448479", "UNI45_020_B10", "box_VisibilityModifier_42.Disabled", "box_PhysicsModifier_191.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_SetFloat_v2_10_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_63();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|593855458", "593855458", "UNI45_020_B10", "box_SetFloat_v2_10.Out", "box_AddActivityObjective_v2_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_258();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|993193266", "993193266", "UNI45_020_B10", "box_OutputOrder_v2_24.Out", "box_Simple_Node_258.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_183();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|117191483", "117191483", "UNI45_020_B10", "box_OutputOrder_v2_24.Out", "box_ParticleSystem_v3_183.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_20_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_249();
    l0 = self.box_SoundModifier_v2_20;
    l1 = self.box_SoundModifier_v2_249;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|411872727", "411872727", "UNI45_020_B10", "box_SoundModifier_v2_20.Started", "box_SoundModifier_v2_249.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_223_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_221();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1602535723", "1602535723", "UNI45_020_B10", "box_ParticleSystem_v3_223.Started", "box_ParticleSystem_v3_221.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhysicsModifier_189_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_220();
    l0 = self.box_PhysicsModifier_189;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|715649791", "715649791", "UNI45_020_B10", "box_PhysicsModifier_189.Disabled", "box_ParticleSystem_v3_220.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_180_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_187();
    l0 = self.box_VisibilityModifier_180;
    l1 = self.box_PhysicsModifier_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1054234114", "1054234114", "UNI45_020_B10", "box_VisibilityModifier_180.Disabled", "box_PhysicsModifier_187.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_154();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|640284172", "640284172", "UNI45_020_B10", "box_EndActivityObjective_v2_33.Out", "box_ActivityObjectiveMarkerModifier_v3_154.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_71_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_71_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1446570073", "1446570073", "UNI45_020_B10", "box_SetBoolean_v2_71.Out", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_37_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|959589584", "959589584", "UNI45_020_B10", "box_UseContextualActionModifier_v3_37.Disabled", "box_OutputOrder_v2_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_258();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|931202514", "931202514", "UNI45_020_B10", "box_OutputOrder_v2_81.Out", "box_Simple_Node_258.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_120();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|879835278", "879835278", "UNI45_020_B10", "box_OutputOrder_v2_81.Out", "box_OutputOrder_v2_120.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_279();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1962587932", "1962587932", "UNI45_020_B10", "box_OutputOrder_v2_81.Out", "box_CameraShakeAndRumble_V2_279.SendEvent", clone:GetLuaBox(), l0:GetLuaBox());
    -- SendEvent
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_164_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_169();
    l0 = self.box_ExitZoneWarningListener_v3_164;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|891898549", "891898549", "UNI45_020_B10", "box_ExitZoneWarningListener_v3_164.FailingZoneEntered", "box_ActivityRetry_169.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_112_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_74();
    l0 = self.box_Delay_v5_112;
    l1 = self.box_RequestPhoneCall_v2_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|221089359", "221089359", "UNI45_020_B10", "box_Delay_v5_112.TimeElapsed", "box_RequestPhoneCall_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_36_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_45();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1107909395", "1107909395", "UNI45_020_B10", "box_UseContextualActionModifier_v3_36.Disabled", "box_UseContextualActionModifier_v3_45.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_36_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_45();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2071741757", "2071741757", "UNI45_020_B10", "box_UseContextualActionModifier_v3_36.Enabled", "box_UseContextualActionModifier_v3_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1655323578", "1655323578", "UNI45_020_B10", "box_OutputOrder_v2_7.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|634719681", "634719681", "UNI45_020_B10", "box_OutputOrder_v2_7.Out", "box_ActivityAcknowledgeGate_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_168_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_245();
    l0 = self.box_SoundModifier_v2_245;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|465982058", "465982058", "UNI45_020_B10", "box_OutputOrder_v2_168.Out", "box_SoundModifier_v2_245.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_168_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_244();
    l0 = self.box_SoundModifier_v2_244;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|647038099", "647038099", "UNI45_020_B10", "box_OutputOrder_v2_168.Out", "box_SoundModifier_v2_244.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_168_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_242();
    l0 = self.box_SoundModifier_v2_242;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|714283251", "714283251", "UNI45_020_B10", "box_OutputOrder_v2_168.Out", "box_SoundModifier_v2_242.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_168_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_243();
    l0 = self.box_SoundModifier_v2_243;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|648734149", "648734149", "UNI45_020_B10", "box_OutputOrder_v2_168.Out", "box_SoundModifier_v2_243.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_184_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1039968143", "1039968143", "UNI45_020_B10", "box_ParticleSystem_v3_184.Started", "box_OutputOrder_v2_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_225_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_222();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|381850003", "381850003", "UNI45_020_B10", "box_ParticleSystem_v3_225.Started", "box_ParticleSystem_v3_222.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_271_EnterFOV()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_271;
    l1 = self.box_MultipleOR_273;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|874442022", "874442022", "UNI45_020_B10", "box_LookAtTrigger_v2_271.EnterFOV", "box_MultipleOR_273.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_274_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_267();
    l0 = self.box_OnceOnly_v3_274;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|59597893", "59597893", "UNI45_020_B10", "box_OnceOnly_v3_274.Out", "box_OutputOrder_v2_267.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_45_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_46();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1455490029", "1455490029", "UNI45_020_B10", "box_UseContextualActionModifier_v3_45.Disabled", "box_UseContextualActionModifier_v3_46.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_45_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_46();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|89590992", "89590992", "UNI45_020_B10", "box_UseContextualActionModifier_v3_45.Enabled", "box_UseContextualActionModifier_v3_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_12_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_239();
    l0 = self.box_StartCelebration_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2120999495", "2120999495", "UNI45_020_B10", "box_StartCelebration_12.Ended", "box_OutputOrder_v2_239.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_179_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_225();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2101177063", "2101177063", "UNI45_020_B10", "box_ParticleSystem_v3_179.Started", "box_ParticleSystem_v3_225.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayRandomDialog_235_AllDone()
    local l0, l1;
    l0 = self.box_PlayRandomDialog_235;
    l1 = self.box_MultipleOR_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1580524246", "1580524246", "UNI45_020_B10", "box_PlayRandomDialog_235.AllDone", "box_MultipleOR_193.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayRandomDialog_235_StopOut()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_236();
    l0 = self.box_PlayRandomDialog_235;
    l1 = self.box_GroupSizeListener_v5_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1803733657", "1803733657", "UNI45_020_B10", "box_PlayRandomDialog_235.StopOut", "box_GroupSizeListener_v5_236.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Brick_Interact_With_Object_V5_100_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SetValueNil_110();
    l0 = self.box_Brick_Interact_With_Object_V5_100;
    l1 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|809993606", "809993606", "UNI45_020_B10", "box_Brick_Interact_With_Object_V5_100.Success", "box_SetValueNil_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_86_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_16();
    l0 = self.box_MultipleOR_86;
    l1 = self.box_PlayDialog_v6_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1090637244", "1090637244", "UNI45_020_B10", "box_MultipleOR_86.Out", "box_PlayDialog_v6_16.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_207_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_210();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1350408881", "1350408881", "UNI45_020_B10", "box_UseContextualActionModifier_v3_207.Disabled", "box_UseContextualActionModifier_v3_210.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_176_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_177();
    l0 = self.box_VisibilityModifier_176;
    l1 = self.box_VisibilityModifier_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1602135829", "1602135829", "UNI45_020_B10", "box_VisibilityModifier_176.Disabled", "box_VisibilityModifier_177.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_205_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_OnceOnly_v3_205;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1499394787", "1499394787", "UNI45_020_B10", "box_OnceOnly_v3_205.Out", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_108_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1207810513", "1207810513", "UNI45_020_B10", "box_UseContextualActionModifier_v3_108.Enabled", "box_Simple_Node_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_126();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1676804436", "1676804436", "UNI45_020_B10", "box_OutputOrder_v2_125.Out", "box_AddActivityObjective_v2_126.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_122();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1063045947", "1063045947", "UNI45_020_B10", "box_OutputOrder_v2_125.Out", "box_SetContextualStrategy_122.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|220435805", "220435805", "UNI45_020_B10", "box_OutputOrder_v2_125.Out", "box_PhoneCallExclusivityModifier_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_125_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_211();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|352182268", "352182268", "UNI45_020_B10", "box_OutputOrder_v2_125.Out", "box_ParticleSystem_v3_211.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_114_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_61();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2039678865", "2039678865", "UNI45_020_B10", "box_UseContextualActionModifier_v3_114.Disabled", "box_UseContextualActionModifier_v3_61.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_177_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_175();
    l0 = self.box_VisibilityModifier_177;
    l1 = self.box_VisibilityModifier_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|353852685", "353852685", "UNI45_020_B10", "box_VisibilityModifier_177.Disabled", "box_VisibilityModifier_175.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_Brick_Interact_With_Object_V5_101_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SetValueNil_65();
    l0 = self.box_Brick_Interact_With_Object_V5_101;
    l1 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1954155514", "1954155514", "UNI45_020_B10", "box_Brick_Interact_With_Object_V5_101.Success", "box_SetValueNil_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_68_OnSetUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_28();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2009081773", "2009081773", "UNI45_020_B10", "box_TriggerState_v2_68.OnSetUnusable", "box_TriggerState_v2_28.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_276_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_276;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1759343153", "1759343153", "UNI45_020_B10", "box_Delay_v5_276.TimeElapsed", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_159_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_159;
    l1 = self.box_MultipleOR_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1822334934", "1822334934", "UNI45_020_B10", "box_Delay_v5_159.TimeElapsed", "box_MultipleOR_132.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_206_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_153();
    l0 = self.box_Delay_v5_206;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|848353998", "848353998", "UNI45_020_B10", "box_Delay_v5_206.TimeElapsed", "box_Simple_Node_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_140_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_219();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1408108493", "1408108493", "UNI45_020_B10", "box_StimsEmitter_v2_140.Enabled", "box_ParticleSystem_v3_219.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_200();
    l0 = self.box_SoundModifier_v2_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|770074436", "770074436", "UNI45_020_B10", "box_OutputOrder_v2_21.Out", "box_SoundModifier_v2_200.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_25();
    l0 = self.box_SoundModifier_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|110829655", "110829655", "UNI45_020_B10", "box_OutputOrder_v2_21.Out", "box_SoundModifier_v2_25.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_20();
    l0 = self.box_SoundModifier_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|254938634", "254938634", "UNI45_020_B10", "box_OutputOrder_v2_21.Out", "box_SoundModifier_v2_20.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_94();
    l0 = self.box_SoundModifier_v2_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1227206833", "1227206833", "UNI45_020_B10", "box_OutputOrder_v2_21.Out", "box_SoundModifier_v2_94.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_UNI45_020_B10_STP_Listener_50_BombDefused()
    local params, l0, l1;
    self:OnExit_box_UNI45_020_B10_STP_Listener_50_BombDefused();
    params = self:OnEnter_box_Gate_v3_172();
    l0 = self.box_UNI45_020_B10_STP_Listener_50;
    l1 = self.box_Gate_v3_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|989421793", "989421793", "UNI45_020_B10", "box_UNI45_020_B10_STP_Listener_50.BombDefused", "box_Gate_v3_172.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UNI45_020_B10_STP_Listener_50_DefuserStopped()
    local params, l0, l1;
    self:OnExit_box_UNI45_020_B10_STP_Listener_50_DefuserStopped();
    params = self:OnEnter_box_UseContextualActionModifier_v3_53();
    l0 = self.box_UNI45_020_B10_STP_Listener_50;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1138246638", "1138246638", "UNI45_020_B10", "box_UNI45_020_B10_STP_Listener_50.DefuserStopped", "box_UseContextualActionModifier_v3_53.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI45_020_B10_STP_Listener_50_End()
    self:OnExit_box_UNI45_020_B10_STP_Listener_50_End();
end;

function export:f_box_UNI45_020_B10_STP_Listener_50_Out()
    self:OnExit_box_UNI45_020_B10_STP_Listener_50_Out();
end;

function export:f_box_UNI45_020_B10_STP_Listener_50_Start()
    local params, l0, l1;
    self:OnExit_box_UNI45_020_B10_STP_Listener_50_Start();
    params = self:OnEnter_box_UseContextualActionModifier_v3_53();
    l0 = self.box_UNI45_020_B10_STP_Listener_50;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1021757522", "1021757522", "UNI45_020_B10", "box_UNI45_020_B10_STP_Listener_50.Start", "box_UseContextualActionModifier_v3_53.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI45_020_B10_STP_Listener_14_BombDefused()
    local params, l0, l1;
    self:OnExit_box_UNI45_020_B10_STP_Listener_14_BombDefused();
    params = self:OnEnter_box_Gate_v3_170();
    l0 = self.box_UNI45_020_B10_STP_Listener_14;
    l1 = self.box_Gate_v3_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|782707095", "782707095", "UNI45_020_B10", "box_UNI45_020_B10_STP_Listener_14.BombDefused", "box_Gate_v3_170.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UNI45_020_B10_STP_Listener_14_DefuserStopped()
    local params, l0, l1;
    self:OnExit_box_UNI45_020_B10_STP_Listener_14_DefuserStopped();
    params = self:OnEnter_box_UseContextualActionModifier_v3_36();
    l0 = self.box_UNI45_020_B10_STP_Listener_14;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|137950933", "137950933", "UNI45_020_B10", "box_UNI45_020_B10_STP_Listener_14.DefuserStopped", "box_UseContextualActionModifier_v3_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI45_020_B10_STP_Listener_14_End()
    self:OnExit_box_UNI45_020_B10_STP_Listener_14_End();
end;

function export:f_box_UNI45_020_B10_STP_Listener_14_Out()
    self:OnExit_box_UNI45_020_B10_STP_Listener_14_Out();
end;

function export:f_box_UNI45_020_B10_STP_Listener_14_Start()
    local params, l0, l1;
    self:OnExit_box_UNI45_020_B10_STP_Listener_14_Start();
    params = self:OnEnter_box_UseContextualActionModifier_v3_36();
    l0 = self.box_UNI45_020_B10_STP_Listener_14;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|876022688", "876022688", "UNI45_020_B10", "box_UNI45_020_B10_STP_Listener_14.Start", "box_UseContextualActionModifier_v3_36.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetValueNil_109_Out()
    local params, l0;
    self:OnExit_box_SetValueNil_109_Out();
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_150();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|717238707", "717238707", "UNI45_020_B10", "box_SetValueNil_109.Out", "box_Simple_Node_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_91_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_103();
    l0 = self.box_Brick_Interact_With_Object_V5_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|632631930", "632631930", "UNI45_020_B10", "box_Compare_Entity_91.Equal", "box_Brick_Interact_With_Object_V5_103.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_76_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_77();
    l0 = self.box_EntityStatusListener_76;
    l1 = self.box_EntityStatusListener_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|890422817", "890422817", "UNI45_020_B10", "box_EntityStatusListener_76.Loaded", "box_EntityStatusListener_77.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityMiscInfoModifier_v2_240_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_5();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1964598159", "1964598159", "UNI45_020_B10", "box_ActivityMiscInfoModifier_v2_240.Out", "box_GetPlayerGroup_v2_5.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_131_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_261();
    l0 = self.box_GroupSizeListener_v5_131;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|286366515", "286366515", "UNI45_020_B10", "box_GroupSizeListener_v5_131.Disabled", "box_SetContextualStrategy_261.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_131_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_131_Enabled();
    l0 = self.box_GroupSizeListener_v5_131;
    l1 = self.box_MultipleOR_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1310314110", "1310314110", "UNI45_020_B10", "box_GroupSizeListener_v5_131.Enabled", "box_MultipleOR_134.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_131_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_131_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_131_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_131_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_131;
    l1 = self.box_MultipleOR_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|34914902", "34914902", "UNI45_020_B10", "box_GroupSizeListener_v5_131.MemberRemoved", "box_MultipleOR_134.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_183_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_224();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|313468747", "313468747", "UNI45_020_B10", "box_ParticleSystem_v3_183.Started", "box_ParticleSystem_v3_224.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_107_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_105();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|80649616", "80649616", "UNI45_020_B10", "box_UseContextualActionModifier_v3_107.Enabled", "box_UseContextualActionModifier_v3_105.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_32();
    l0 = self.box_SpawnAI_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1181289198", "1181289198", "UNI45_020_B10", "box_OutputOrder_v2_79.Out", "box_SpawnAI_32.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1975751378", "1975751378", "UNI45_020_B10", "box_OutputOrder_v2_79.Out", "box_Simple_Node_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_196();
    l0 = self.box_SoundModifier_v2_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|455446662", "455446662", "UNI45_020_B10", "box_OutputOrder_v2_79.Out", "box_SoundModifier_v2_196.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_79_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_197();
    l0 = self.box_SoundModifier_v2_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|471863572", "471863572", "UNI45_020_B10", "box_OutputOrder_v2_79.Out", "box_SoundModifier_v2_197.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_79_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_199();
    l0 = self.box_SoundModifier_v2_199;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|795039844", "795039844", "UNI45_020_B10", "box_OutputOrder_v2_79.Out", "box_SoundModifier_v2_199.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_79_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_198();
    l0 = self.box_SoundModifier_v2_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1619506278", "1619506278", "UNI45_020_B10", "box_OutputOrder_v2_79.Out", "box_SoundModifier_v2_198.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_61_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_115();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1135817689", "1135817689", "UNI45_020_B10", "box_UseContextualActionModifier_v3_61.Disabled", "box_UseContextualActionModifier_v3_115.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_251_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_255();
    l0 = self.box_SoundModifier_v2_255;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1978749022", "1978749022", "UNI45_020_B10", "box_OutputOrder_v2_251.Out", "box_SoundModifier_v2_255.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_251_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_254();
    l0 = self.box_SoundModifier_v2_254;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1574492811", "1574492811", "UNI45_020_B10", "box_OutputOrder_v2_251.Out", "box_SoundModifier_v2_254.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_251_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_253();
    l0 = self.box_SoundModifier_v2_253;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|206145109", "206145109", "UNI45_020_B10", "box_OutputOrder_v2_251.Out", "box_SoundModifier_v2_253.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_251_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_252();
    l0 = self.box_SoundModifier_v2_252;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1217883297", "1217883297", "UNI45_020_B10", "box_OutputOrder_v2_251.Out", "box_SoundModifier_v2_252.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_211_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_213();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1190662455", "1190662455", "UNI45_020_B10", "box_ParticleSystem_v3_211.Started", "box_ParticleSystem_v3_213.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_134_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_133();
    l0 = self.box_MultipleOR_134;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1871039681", "1871039681", "UNI45_020_B10", "box_MultipleOR_134.Out", "box_Compare_Integers_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_85_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_64();
    l0 = self.box_OnceOnly_v3_85;
    l1 = self.box_Delay_v5_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|842953107", "842953107", "UNI45_020_B10", "box_OnceOnly_v3_85.Out", "box_Delay_v5_64.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CoopActivePlayers_272_OnePlayer()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_271();
    l0 = self.box_CoopActivePlayers_272;
    l1 = self.box_LookAtTrigger_v2_271;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1414137618", "1414137618", "UNI45_020_B10", "box_CoopActivePlayers_272.OnePlayer", "box_LookAtTrigger_v2_271.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CoopActivePlayers_272_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_272;
    l1 = self.box_MultipleOR_273;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1528360035", "1528360035", "UNI45_020_B10", "box_CoopActivePlayers_272.PlayerAdded", "box_MultipleOR_273.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_CoopActivePlayers_272_TwoPlayers()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_272;
    l1 = self.box_MultipleOR_273;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1863473183", "1863473183", "UNI45_020_B10", "box_CoopActivePlayers_272.TwoPlayers", "box_MultipleOR_273.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_53_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_49();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1997359363", "1997359363", "UNI45_020_B10", "box_UseContextualActionModifier_v3_53.Disabled", "box_UseContextualActionModifier_v3_49.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_53_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_49();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1931035777", "1931035777", "UNI45_020_B10", "box_UseContextualActionModifier_v3_53.Enabled", "box_UseContextualActionModifier_v3_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_57_End()
    self:OnExit_box_ContextualActionListener_57_End();
end;

function export:f_box_ContextualActionListener_57_Interrupt()
    self:OnExit_box_ContextualActionListener_57_Interrupt();
end;

function export:f_box_ContextualActionListener_57_Markup1()
    self:OnExit_box_ContextualActionListener_57_Markup1();
end;

function export:f_box_ContextualActionListener_57_Markup2()
    self:OnExit_box_ContextualActionListener_57_Markup2();
end;

function export:f_box_ContextualActionListener_57_Select()
    local params, l0, l1;
    self:OnExit_box_ContextualActionListener_57_Select();
    params = self:OnEnter_box_UNI45_020_B10_STP_Listener_55();
    l0 = self.box_ContextualActionListener_57;
    l1 = self.box_UNI45_020_B10_STP_Listener_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2057617841", "2057617841", "UNI45_020_B10", "box_ContextualActionListener_57.Select", "box_UNI45_020_B10_STP_Listener_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ContextualActionListener_57_Start()
    self:OnExit_box_ContextualActionListener_57_Start();
end;

function export:f_box_ActivityForceAndLockTracking_237_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_240();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1432877334", "1432877334", "UNI45_020_B10", "box_ActivityForceAndLockTracking_237.Enabled", "box_ActivityMiscInfoModifier_v2_240.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_133_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_136();
    l0 = self.box_Random_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|30247684", "30247684", "UNI45_020_B10", "box_Compare_Integers_133.A_le_B", "box_Random_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_117_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_229();
    l0 = self.box_SpawnAI_Wave_v2_229;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|25839660", "25839660", "UNI45_020_B10", "box_Compare_Boolean_117.A_is_True", "box_SpawnAI_Wave_v2_229.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_275_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_181();
    l0 = self.box_ProximityRadiusListener_v3_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|670480433", "670480433", "UNI45_020_B10", "box_OutputOrder_v2_275.Out", "box_ProximityRadiusListener_v3_181.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_275_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_276();
    l0 = self.box_Delay_v5_276;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|510410247", "510410247", "UNI45_020_B10", "box_OutputOrder_v2_275.Out", "box_Delay_v5_276.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_Wave_v2_227_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_121();
    l0 = self.box_SpawnAI_Wave_v2_227;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1528166942", "1528166942", "UNI45_020_B10", "box_SpawnAI_Wave_v2_227.NextWave", "box_Compare_Boolean_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_13_OnSetUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_31();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1785585530", "1785585530", "UNI45_020_B10", "box_TriggerState_v2_13.OnSetUnusable", "box_TriggerState_v2_31.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_78_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_Delay_v5_78;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|418705178", "418705178", "UNI45_020_B10", "box_Delay_v5_78.TimeElapsed", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_16_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_16;
    l1 = self.box_MultipleOR_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1493239266", "1493239266", "UNI45_020_B10", "box_PlayDialog_v6_16.Finished", "box_MultipleOR_165.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_16_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_16;
    l1 = self.box_MultipleOR_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2024960091", "2024960091", "UNI45_020_B10", "box_PlayDialog_v6_16.FinishedInterrupted", "box_MultipleOR_165.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_75_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_62();
    l0 = self.box_EntityStatusListener_75;
    l1 = self.box_EntityStatusListener_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|171885002", "171885002", "UNI45_020_B10", "box_EntityStatusListener_75.Loaded", "box_EntityStatusListener_62.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_18_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_70();
    l0 = self.box_OnceOnly_v3_18;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1995162572", "1995162572", "UNI45_020_B10", "box_OnceOnly_v3_18.Out", "box_SetBoolean_v2_70.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_106_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_108();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|305086551", "305086551", "UNI45_020_B10", "box_UseContextualActionModifier_v3_106.Enabled", "box_UseContextualActionModifier_v3_108.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_98_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_100();
    l0 = self.box_Brick_Interact_With_Object_V5_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1894203716", "1894203716", "UNI45_020_B10", "box_Compare_Entity_98.Equal", "box_Brick_Interact_With_Object_V5_100.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_128_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_128;
    l1 = self.box_OnceOnly_v3_274;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|174845843", "174845843", "UNI45_020_B10", "box_MultipleOR_128.Out", "box_OnceOnly_v3_274.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_Wave_v2_229_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_116();
    l0 = self.box_SpawnAI_Wave_v2_229;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|131313515", "131313515", "UNI45_020_B10", "box_SpawnAI_Wave_v2_229.NextWave", "box_Compare_Boolean_116.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_204_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_231();
    l0 = self.box_SpawnAI_Wave_v2_231;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|530403731", "530403731", "UNI45_020_B10", "box_Compare_Boolean_204.A_is_True", "box_SpawnAI_Wave_v2_231.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_60_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = self.box_Delay_v5_60;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2080882154", "2080882154", "UNI45_020_B10", "box_Delay_v5_60.TimeElapsed", "box_OutputOrder_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI45_020_B10_STP_Listener_55_BombDefused()
    local params, l0, l1;
    self:OnExit_box_UNI45_020_B10_STP_Listener_55_BombDefused();
    params = self:OnEnter_box_Gate_v3_173();
    l0 = self.box_UNI45_020_B10_STP_Listener_55;
    l1 = self.box_Gate_v3_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|535315430", "535315430", "UNI45_020_B10", "box_UNI45_020_B10_STP_Listener_55.BombDefused", "box_Gate_v3_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UNI45_020_B10_STP_Listener_55_DefuserStopped()
    local params, l0, l1;
    self:OnExit_box_UNI45_020_B10_STP_Listener_55_DefuserStopped();
    params = self:OnEnter_box_UseContextualActionModifier_v3_54();
    l0 = self.box_UNI45_020_B10_STP_Listener_55;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1962713072", "1962713072", "UNI45_020_B10", "box_UNI45_020_B10_STP_Listener_55.DefuserStopped", "box_UseContextualActionModifier_v3_54.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI45_020_B10_STP_Listener_55_End()
    self:OnExit_box_UNI45_020_B10_STP_Listener_55_End();
end;

function export:f_box_UNI45_020_B10_STP_Listener_55_Out()
    self:OnExit_box_UNI45_020_B10_STP_Listener_55_Out();
end;

function export:f_box_UNI45_020_B10_STP_Listener_55_Start()
    local params, l0, l1;
    self:OnExit_box_UNI45_020_B10_STP_Listener_55_Start();
    params = self:OnEnter_box_UseContextualActionModifier_v3_54();
    l0 = self.box_UNI45_020_B10_STP_Listener_55;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1373642341", "1373642341", "UNI45_020_B10", "box_UNI45_020_B10_STP_Listener_55.Start", "box_UseContextualActionModifier_v3_54.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_200_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_250();
    l0 = self.box_SoundModifier_v2_200;
    l1 = self.box_SoundModifier_v2_250;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|812208697", "812208697", "UNI45_020_B10", "box_SoundModifier_v2_200.Started", "box_SoundModifier_v2_250.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_182_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_223();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|45062957", "45062957", "UNI45_020_B10", "box_ParticleSystem_v3_182.Started", "box_ParticleSystem_v3_223.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_202_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_216();
    l0 = self.box_OnceOnly_v3_202;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|181894275", "181894275", "UNI45_020_B10", "box_OnceOnly_v3_202.Out", "box_OutputOrder_v2_216.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_56_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_58();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1271364735", "1271364735", "UNI45_020_B10", "box_UseContextualActionModifier_v3_56.Disabled", "box_UseContextualActionModifier_v3_58.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_56_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_58();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|731829236", "731829236", "UNI45_020_B10", "box_UseContextualActionModifier_v3_56.Enabled", "box_UseContextualActionModifier_v3_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_161();
    l0 = self.box_SpawnAI_32;
    l1 = self.box_SpawnAI_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|56986222", "56986222", "UNI45_020_B10", "box_SpawnAI_32.Out", "box_SpawnAI_161.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_236_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_236_Enabled();
    l0 = self.box_GroupSizeListener_v5_236;
    l1 = self.box_MultipleOR_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|922992139", "922992139", "UNI45_020_B10", "box_GroupSizeListener_v5_236.Enabled", "box_MultipleOR_193.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_236_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_236_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_236_MemberRemoved()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_236_MemberRemoved();
    params = self:OnEnter_box_Compare_Integers_259();
    l0 = self.box_GroupSizeListener_v5_236;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|889430087", "889430087", "UNI45_020_B10", "box_GroupSizeListener_v5_236.MemberRemoved", "box_Compare_Integers_259.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetValueNil_65_Out()
    local params, l0;
    self:OnExit_box_SetValueNil_65_Out();
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_150();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|523044133", "523044133", "UNI45_020_B10", "box_SetValueNil_65.Out", "box_Simple_Node_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_258()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_258");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|@n_AudioExplosion");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_258_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_266()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_266");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|@n_CelebrationStarted");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_266_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|@n_cleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|@n_CleanUp_Blast");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_152_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_246");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|@n_CountdownAudioCheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_246_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_241()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_241");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|@n_CultistFleeBarks");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_241_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|@n_Explosion");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_185_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|@n_Machinery");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_80_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_265()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_265");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|@n_OnLeaveZone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_265_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|@n_Radio_PA");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_192_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|@n_Respawn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_153_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|@n_Restart_Bomb");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_151_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_280()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_280");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|@n_StartMusic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_280_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|@n_STPListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|@n_TimerUpdate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_150_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|@nEndSequence");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_146_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|8400145");
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
                [0] = self.f_box_OutputOrder_v2_127_Out_0,
                [1] = self.f_box_OutputOrder_v2_127_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_170()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_256");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|17705153");
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
                [0] = self.f_box_OutputOrder_v2_256_Out_0,
                [1] = self.f_box_OutputOrder_v2_256_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_252()
    local params;
    params = {
        -- Pawns,
        [0] = "2104136689898252503",
        -- SoundId,
        [1] = "1798321108",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|23762037");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102434425319987136",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|24405865");
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
                [0] = self.f_box_OutputOrder_v2_69_Out_0,
                [1] = self.f_box_OutputOrder_v2_69_Out_1,
                [2] = self.f_box_OutputOrder_v2_69_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_26()
    local params, l0;
    DrawTextToScreen("Comment: Finish off Snipers", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'HealthModifier_v2')-- Comment: Finish off Snipers");
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|28839835");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 16,
        -- pawns,
        [2] = "#B6BA8D36",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveTimerModifier_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveTimerModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveTimerModifier_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|32330011");
    l0:SetConnections({
        -- Paused,
        [0] = self.f_box_ActivityObjectiveTimerModifier_30_Paused,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI45_020_B10_OBJ_Clear",
            id = "639869",
        },
        -- Time,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_UNI45_020_B10_STP_Listener_41()
    local params;
    params = {
        -- e_Marker,
        [0] = "2103180604492232715",
        -- eEntity,
        [1] = self.e_targetEntity_2,
        -- eSTP,
        [2] = "2102434039345452861",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_257()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1093697960",
        -- SoundType,
        [2] = 10,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|87426640");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_221_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104394894213662200",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_262()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 4,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "751549086",
        -- StopEvent,
        [7] = "3703649389",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = true,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_174()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103552567576378404",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|175718454");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_130_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_130_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_IsTimerEnded,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|177362394");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_143_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2103803814325814314",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_263()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_263");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|177398406");
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
                [0] = self.f_box_OutputOrder_v2_263_Out_0,
                [1] = self.f_box_OutputOrder_v2_263_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_118()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_162()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103885023793938771",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|210254635");
    l0:SetConnections({
        -- OnSetUnusable,
        [2] = self.f_box_TriggerState_v2_28_OnSetUnusable,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2103207057241946237",
    };
    return params;
end;

function export:OnEnter_box_SetValueNil_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetValueNil_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|211142231");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetValueNil_110_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_38()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102434039345452861",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|240722298");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160246498175860",
        -- missionLayerId,
        [1] = "36167445752916852",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|271174910");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104273906847235408",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|278492383");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
                [2] = self.f_box_OutputOrder_v2_15_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_161()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103885020497215783",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_277()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_277");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|287607644");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CameraShakeAndRumble_V2_277_Out,
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 0.8,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_138()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103803528716764689",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|300030960");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_96_Equal,
    });
    params = {
        -- Entity1,
        [0] = "2102434039345452861",
        -- Entity2,
        [1] = self.e_STP_Completed,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|300598257");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_54_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_54_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102433937000240903",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|310311288");
    l0:SetConnections({
        -- OnSetUnusable,
        [2] = self.f_box_TriggerState_v2_67_OnSetUnusable,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2103207061104900225",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|313302123");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|321924670");
    l0:SetConnections({
        -- OnSetUnusable,
        [2] = self.f_box_TriggerState_v2_66_OnSetUnusable,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2103206320264985568",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_103()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- b_SkipObjectiveFlow,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2103206320264985568",
        -- e_ObjectiveMarker,
        [4] = "2099790571760524249",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objective",
            item = "UNI45_020_B05_OBJ_Reactivate",
            id = "845442",
        },
    };
    return params;
end;

function export:OnEnter_box_Random_136()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|336724914");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_49_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_49_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102434039345452861",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_172()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|361812102");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_195_Out,
    });
    params = {
        -- Fact,
        [0] = "uni45_020_playersInZone",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|368502460");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_97_Equal,
    });
    params = {
        -- Entity1,
        [0] = "2102434374287890341",
        -- Entity2,
        [1] = self.e_STP_Completed,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_51()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102434374287890341",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_166()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|378988177");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
                [3] = self.f_box_OutputOrder_v2_19_Out_3,
                [4] = self.f_box_OutputOrder_v2_19_Out_4,
                [5] = self.f_box_OutputOrder_v2_19_Out_5,
                [6] = self.f_box_OutputOrder_v2_19_Out_6,
                [7] = self.f_box_OutputOrder_v2_19_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|378991243");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2103207063466293381",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|390683975");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_145_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102433937000240903",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|393648337");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_156_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102434039345452861",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_129()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.gPlayerGroup,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103869449447693433",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_254()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017995058252521",
        -- SoundId,
        [1] = "1798321108",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|415581383");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_124_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2103869508878883995",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI45_020_B10_OBJ_GoTo",
            id = "846767",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveTimerListener_35()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI45_020_B10_OBJ_Clear",
            id = "639869",
        },
        -- Time,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_25()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017995058252521",
        -- SoundId,
        [1] = "346131725",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_231()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 3,
        -- AttackerSpawner_1,
        [1] = "2104259934676866923",
        -- CoreNPCGroup,
        [2] = "#8C9E09A0",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2104259965752465482",
        -- opt_AttackerSpawner_3,
        [6] = "2104259848087557574",
        -- opt_AttackerSpawner_5,
        [8] = "2104259955860199374",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|427974611");
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

function export:OnEnter_box_EntityStatusListener_62()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100983144506198767",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|442352385");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_214_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104273945545981270",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|443463990");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_105_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102434374287890341",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|460678376");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104273931247598930",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|469508564");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103870880451936422",
        -- Group,
        [1] = "#D60B0DDB",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|471698713");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_160_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102433937000240903",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|515242471");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_116_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_IsTimerEnded,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|558204396");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_142_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2103803812327228454",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|581160903");
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
                [0] = self.f_box_OutputOrder_v2_120_Out_0,
                [1] = self.f_box_OutputOrder_v2_120_Out_1,
                [2] = self.f_box_OutputOrder_v2_120_Out_2,
                [3] = self.f_box_OutputOrder_v2_120_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|595854963");
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
                [0] = self.f_box_OutputOrder_v2_216_Out_0,
                [1] = self.f_box_OutputOrder_v2_216_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_191()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2099323430298983580",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|606617139");
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
                [0] = self.f_box_OutputOrder_v2_119_Out_0,
                [1] = self.f_box_OutputOrder_v2_119_Out_1,
                [2] = self.f_box_OutputOrder_v2_119_Out_2,
            },
            count = 3,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|623885799");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
                [2] = self.f_box_OutputOrder_v2_40_Out_2,
                [3] = self.f_box_OutputOrder_v2_40_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_196()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017674475014885",
        -- SoundId,
        [1] = "1251606610",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_228()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 4,
        -- AttackerSpawner_1,
        [1] = "2102129496663538290",
        -- CoreNPCGroup,
        [2] = "#8C9E09A0",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2103274296741749128",
        -- opt_AttackerSpawner_3,
        [6] = "2103273599707124456",
        -- opt_AttackerSpawner_5,
        [8] = "2102486518915432709",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|658998171");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_212_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104273941095824724",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_250()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017674475014885",
        -- SoundId,
        [1] = "669474376",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|679123979");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_208_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102434039345452861",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_171()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetValueNil_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetValueNil_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|690250066");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetValueNil_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_84()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_201()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 40,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_64()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|739795415");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102434425319987136",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|743592858");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_63_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI45_020_B10_OBJ_Clear",
            id = "639869",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = self.f_Timer,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_268()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 4,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "751549086",
        -- StopEvent,
        [7] = "3703649389",
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

function export:OnEnter_box_ActivityObjectiveTimerListener_167()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI45_020_B10_OBJ_Clear",
            id = "639869",
        },
        -- Time,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_267()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_267");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|781423266");
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
                [0] = self.f_box_OutputOrder_v2_267_Out_0,
                [1] = self.f_box_OutputOrder_v2_267_Out_1,
            },
            count = 2,
        },
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
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_197()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017995058252521",
        -- SoundId,
        [1] = "1251606610",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_173()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|810618708");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_70_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_137()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103803231208489933",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_77()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099707929553802679",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_239()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|835960407");
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
                [0] = self.f_box_OutputOrder_v2_239_Out_0,
                [1] = self.f_box_OutputOrder_v2_239_Out_1,
                [2] = self.f_box_OutputOrder_v2_239_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_87()
    local params;
    DrawTextToScreen("Comment: PA line: custom VO for larger attenuation", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: PA line: custom VO for larger attenuation");
    params = {
        -- Group,
        [0] = "2104535484960087502",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1526267627",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_248()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017995058252521",
        -- SoundId,
        [1] = "669474376",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|877872596");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_39_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_39_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102433937000240903",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_264()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 0,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "751549086",
        -- StopEvent,
        [7] = "3703649389",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = true,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_247()
    local params;
    params = {
        -- Pawns,
        [0] = "2104136689898252503",
        -- SoundId,
        [1] = "669474376",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_243()
    local params;
    params = {
        -- Pawns,
        [0] = "2104136689898252503",
        -- SoundId,
        [1] = "1785706206",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|903844972");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_213_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104273931247598930",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_230()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 2,
        -- AttackerSpawner_1,
        [1] = "2102129189913114104",
        -- CoreNPCGroup,
        [2] = "#8C9E09A0",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2103274443494155308",
        -- opt_AttackerSpawner_3,
        [6] = "2103885069388120633",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|908643893");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_121_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_IsTimerEnded,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_23()
    local params;
    params = {
        -- targets,
        [0] = "#95544EFB",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|959988418");
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
                [0] = self.f_box_OutputOrder_v2_144_Out_0,
                [1] = self.f_box_OutputOrder_v2_144_Out_1,
                [2] = self.f_box_OutputOrder_v2_144_Out_2,
            },
            count = 3,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|967462238");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_72_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_IsTimerEnded,
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

function export:OnEnter_box_Delay_v5_234()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_135()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103803150617034949",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_94()
    local params;
    params = {
        -- Pawns,
        [0] = "2104136689898252503",
        -- SoundId,
        [1] = "346131725",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1011278892");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_111_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI45_020_B10_OBJ_Clear",
            id = "639869",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_34()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2100983144506198767",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1039154992");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_126_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI45_020_B10_OBJ_GoTo",
            id = "846767",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1039172536");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_141_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2103803772489729058",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1053518872");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_155_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102434374287890341",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1062753393");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objective",
            item = "UNI45_020_B10_FAILED_Machine",
            id = "744052",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1068045487");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_226_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104394969262343678",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_175()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103552572517268517",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_261()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_261");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1069961465");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103870880451936422",
        -- Group,
        [1] = "#B6BA8D36",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1070230601");
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
                [0] = self.f_box_OutputOrder_v2_113_Out_0,
                [1] = self.f_box_OutputOrder_v2_113_Out_1,
                [2] = self.f_box_OutputOrder_v2_113_Out_2,
                [3] = self.f_box_OutputOrder_v2_113_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1115755007");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_194_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015219882862722",
        -- Fact,
        [1] = "uni45_020_playersInZone",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_74()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "402194838",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1140403940");
    l0:SetConnections({
        -- OnSetUnusable,
        [2] = self.f_box_TriggerState_v2_104_OnSetUnusable,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2103207057241946237",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1141216420");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_47_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_47_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102434374287890341",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_102()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- b_SkipObjectiveFlow,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2103207061104900225",
        -- e_ObjectiveMarker,
        [4] = "2099790563453705173",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objective",
            item = "UNI45_020_B05_OBJ_Reactivate",
            id = "845442",
        },
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_232()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1143721494",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1149767885");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_222_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104394720842106358",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_158()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1154302431");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_224_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104394961192502780",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1155589911");
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

function export:OnEnter_box_Compare_Integers_259()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_259");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1191046909");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_259_A_le_B,
    });
    params = {
        -- A,
        [0] = self.i_fleeingCultistsLeft,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_90()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_163()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1216857213",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1218337546");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102434425319987136",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_8()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102433937000240903",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_43()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "207669918",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1252841742");
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
                [0] = self.f_box_OutputOrder_v2_99_Out_0,
                [1] = self.f_box_OutputOrder_v2_99_Out_1,
                [2] = self.f_box_OutputOrder_v2_99_Out_2,
                [3] = self.f_box_OutputOrder_v2_99_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1263380361");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_210_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102434374287890341",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_181()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- id2,
        [3] = "2103869508878883995",
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_188()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2100983144506198767",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveTimerModifier_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveTimerModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveTimerModifier_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1296462265");
    l0:SetConnections({
        -- Resumed,
        [2] = self.f_box_ActivityObjectiveTimerModifier_59_Resumed,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI45_020_B10_OBJ_Clear",
            id = "639869",
        },
        -- Time,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_157()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2099707929553802679",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_42()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2099323430298983580",
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1325784149");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_10_Out,
    });
    params = {
        -- Float,
        [0] = 240,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1333370549");
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

function export:OnEnter_box_SoundModifier_v2_20()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017735948831463",
        -- SoundId,
        [1] = "346131725",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1341381823");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_223_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104394920266581498",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_244()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017995058252521",
        -- SoundId,
        [1] = "1785706206",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_255()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017674475014885",
        -- SoundId,
        [1] = "1798321108",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_189()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2099707929553802679",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_180()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2099709006275679950",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1379926673");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_33_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI45_020_B10_OBJ_GoTo",
            id = "846767",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1380527431");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_71_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1391123650");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_37_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = self.e_STP_Completed,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1396919473");
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
                [0] = self.f_box_OutputOrder_v2_81_Out_0,
                [1] = self.f_box_OutputOrder_v2_81_Out_1,
                [2] = self.f_box_OutputOrder_v2_81_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_279()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_279");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1397141338");
    l0:SetConnections({
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 0.9,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_164()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2099790635438447591",
        -- WarningZoneTrigger,
        [3] = "2104037524369319614",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_112()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1403937901");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102434374287890341",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1406877897");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_36_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_36_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102434039345452861",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1416974775");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1423781740");
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
                [0] = self.f_box_OutputOrder_v2_168_Out_0,
                [1] = self.f_box_OutputOrder_v2_168_Out_1,
                [2] = self.f_box_OutputOrder_v2_168_Out_2,
                [3] = self.f_box_OutputOrder_v2_168_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1449931899");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102434425319987136",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1451560107");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_184_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104079364747474281",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1463510245");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_225_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104394663208175090",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1471557352");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2103207063466293381",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_271()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = self.gPlayerGroup,
        -- triggerId,
        [2] = "2103869493664046218",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1504562334");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102434425319987136",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1513205758");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_45_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_45_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102434374287890341",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_12()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1524199555");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_179_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104079307361006941",
    };
    return params;
end;

function export:OnEnter_box_PlayRandomDialog_235()
    local params;
    params = {
        -- Group,
        [0] = "#D60B0DDB",
        -- maxTime,
        [1] = 2,
        -- minTime,
        [2] = 1,
        -- SoundId,
        [3] = {
            connections = {
                [0] = "362083938",
                [1] = "1482143644",
                [2] = "1730712832",
                [3] = "46902298",
                [4] = "3464076855",
                [5] = "1899417335",
                [6] = "3750517508",
                [7] = "2369965562",
            },
            count = 8,
        },
        -- TargetEntity,
        [4] = nil,
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_100()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- b_SkipObjectiveFlow,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2103207063466293381",
        -- e_ObjectiveMarker,
        [4] = "2099790581606652897",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objective",
            item = "UNI45_020_B05_OBJ_Reactivate",
            id = "845442",
        },
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1535606158");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_207_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102433937000240903",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_176()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103552586926799911",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1548113861");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_108_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102434425319987136",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1549523097");
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
                [0] = self.f_box_OutputOrder_v2_125_Out_0,
                [1] = self.f_box_OutputOrder_v2_125_Out_1,
                [2] = self.f_box_OutputOrder_v2_125_Out_2,
                [3] = self.f_box_OutputOrder_v2_125_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1573467237");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_114_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102434039345452861",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_177()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103552583548288038",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_101()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- b_SkipObjectiveFlow,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2103207057241946237",
        -- e_ObjectiveMarker,
        [4] = "2099790547083336657",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objective",
            item = "UNI45_020_B05_OBJ_Reactivate",
            id = "845442",
        },
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_217()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1601140385");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104273941095824724",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1649422770");
    l0:SetConnections({
        -- OnSetUnusable,
        [2] = self.f_box_TriggerState_v2_68_OnSetUnusable,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2103206320264985568",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_276()
    local params;
    DrawTextToScreen("Comment: FAILSAFE DELAY", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Delay_v5')-- Comment: FAILSAFE DELAY");
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1671157617");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_159()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_198()
    local params;
    params = {
        -- Pawns,
        [0] = "2104136689898252503",
        -- SoundId,
        [1] = "1251606610",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_206()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1721298861");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_140_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2103803816146142254",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1727874118");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
                [2] = self.f_box_OutputOrder_v2_21_Out_2,
                [3] = self.f_box_OutputOrder_v2_21_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UNI45_020_B10_STP_Listener_50()
    local params;
    params = {
        -- e_Marker,
        [0] = "2103180611616258063",
        -- eEntity,
        [1] = self.e_targetEntity_3,
        -- eSTP,
        [2] = "2102434374287890341",
    };
    return params;
end;

function export:OnEnter_box_UNI45_020_B10_STP_Listener_14()
    local params;
    params = {
        -- e_Marker,
        [0] = "2103180620839532567",
        -- eEntity,
        [1] = self.e_targetEntity_1,
        -- eSTP,
        [2] = "2102433937000240903",
    };
    return params;
end;

function export:OnEnter_box_SetValueNil_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetValueNil_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1752029974");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetValueNil_109_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1764003206");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_91_Equal,
    });
    params = {
        -- Entity1,
        [0] = "2102433937000240903",
        -- Entity2,
        [1] = self.e_STP_Completed,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_76()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099323430298983580",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1790027674");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1805563010");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_240_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_131()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#B6BA8D36",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1833327518");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_183_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104079358321800551",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_215()
    local params;
    params = {
        -- Group,
        [0] = "2099804724325784694",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_187()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2099709006275679950",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1881888998");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104273945545981270",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1885594590");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_107_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102433937000240903",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1892132267");
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
                [0] = self.f_box_OutputOrder_v2_79_Out_0,
                [1] = self.f_box_OutputOrder_v2_79_Out_1,
                [2] = self.f_box_OutputOrder_v2_79_Out_2,
                [3] = self.f_box_OutputOrder_v2_79_Out_3,
                [4] = self.f_box_OutputOrder_v2_79_Out_4,
                [5] = self.f_box_OutputOrder_v2_79_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1900542142");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_61_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102434374287890341",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_242()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017735948831463",
        -- SoundId,
        [1] = "1785706206",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_251()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_251");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1910964876");
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
                [0] = self.f_box_OutputOrder_v2_251_Out_0,
                [1] = self.f_box_OutputOrder_v2_251_Out_1,
                [2] = self.f_box_OutputOrder_v2_251_Out_2,
                [3] = self.f_box_OutputOrder_v2_251_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1914342339");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_211_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104273906847235408",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1938475652");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_53_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_53_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102433937000240903",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_57()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102434425319987136",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_237()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1945171989");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_237_Enabled,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1952731092");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_133_A_le_B,
    });
    params = {
        -- A,
        [0] = self.i_RespawnersCount,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1969890815");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_117_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_IsTimerEnded,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_275()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_275");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1979652006");
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

function export:OnEnter_box_SpawnAI_Wave_v2_227()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 3,
        -- AttackerSpawner_1,
        [1] = "2103273740346332801",
        -- CoreNPCGroup,
        [2] = "#8C9E09A0",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2102513914293013269",
        -- opt_AttackerSpawner_3,
        [6] = "2102486329974619554",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1995080171");
    l0:SetConnections({
        -- OnSetUnusable,
        [2] = self.f_box_TriggerState_v2_13_OnSetUnusable,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2103207061104900225",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_78()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_16()
    local params;
    DrawTextToScreen("Comment: PA line: custom VO for larger attenuation", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: PA line: custom VO for larger attenuation");
    params = {
        -- Group,
        [0] = "2104535484960087502",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "326373864",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|1996752806");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "--- UNI45_020_BEAT10 - SCRIPT IS RUNNING ---",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_75()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099709006275679950",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2018441490");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_106_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102434039345452861",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2023164849");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_98_Equal,
    });
    params = {
        -- Entity1,
        [0] = "2102434425319987136",
        -- Entity2,
        [1] = self.e_STP_Completed,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_245()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017674475014885",
        -- SoundId,
        [1] = "1785706206",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_229()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 4,
        -- AttackerSpawner_1,
        [1] = "2103273946446047584",
        -- CoreNPCGroup,
        [2] = "#8C9E09A0",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2102129676903267955",
        -- opt_AttackerSpawner_3,
        [6] = "2103274545721926911",
        -- opt_AttackerSpawner_5,
        [8] = "2103885053632217492",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2054451769");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_204_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_IsTimerEnded,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_60()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UNI45_020_B10_STP_Listener_55()
    local params;
    params = {
        -- e_Marker,
        [0] = "2103180617704290323",
        -- eEntity,
        [1] = self.e_targetEntity_4,
        -- eSTP,
        [2] = "2102434425319987136",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_200()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017674475014885",
        -- SoundId,
        [1] = "346131725",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_199()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017735948831463",
        -- SoundId,
        [1] = "1251606610",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_253()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017735948831463",
        -- SoundId,
        [1] = "1798321108",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2098370081");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_182_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104079346265273701",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2100110159");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_56_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_56_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102434039345452861",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_32()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103885009002725579",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_236()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#D60B0DDB",
    };
    return params;
end;

function export:OnEnter_box_SetValueNil_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetValueNil_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2110324685");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetValueNil_65_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2112309466");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2103869508878883995",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI45_020_B10_OBJ_GoTo",
            id = "846767",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_249()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017735948831463",
        -- SoundId,
        [1] = "669474376",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2133977634");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102434425319987136",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_278()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_278");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B10.domino|@UNI45_020_B10|2139835429");
    l0:SetConnections({
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_41_BombDefused()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_41;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_41_DefuserStopped()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_41;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_41_End()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_41;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_41_Out()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_41;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_41_Start()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_41;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetValueNil_110_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    self.e_STP_Completed = l0:GetDataOutValue(2);
end;

function export:OnExit_box_ContextualActionListener_38_End()
    local l0;
    l0 = self.box_ContextualActionListener_38;
    self.e_targetEntity_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_38_Interrupt()
    local l0;
    l0 = self.box_ContextualActionListener_38;
    self.e_targetEntity_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_38_Markup1()
    local l0;
    l0 = self.box_ContextualActionListener_38;
    self.e_targetEntity_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_38_Markup2()
    local l0;
    l0 = self.box_ContextualActionListener_38;
    self.e_targetEntity_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_38_Select()
    local l0;
    l0 = self.box_ContextualActionListener_38;
    self.e_targetEntity_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_38_Start()
    local l0;
    l0 = self.box_ContextualActionListener_38;
    self.e_targetEntity_2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_51_End()
    local l0;
    l0 = self.box_ContextualActionListener_51;
    self.e_targetEntity_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_51_Interrupt()
    local l0;
    l0 = self.box_ContextualActionListener_51;
    self.e_targetEntity_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_51_Markup1()
    local l0;
    l0 = self.box_ContextualActionListener_51;
    self.e_targetEntity_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_51_Markup2()
    local l0;
    l0 = self.box_ContextualActionListener_51;
    self.e_targetEntity_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_51_Select()
    local l0;
    l0 = self.box_ContextualActionListener_51;
    self.e_targetEntity_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_51_Start()
    local l0;
    l0 = self.box_ContextualActionListener_51;
    self.e_targetEntity_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetValueNil_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    self.e_STP_Completed = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetBoolean_v2_70_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_IsTimerEnded = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_8_End()
    local l0;
    l0 = self.box_ContextualActionListener_8;
    self.e_targetEntity_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_8_Interrupt()
    local l0;
    l0 = self.box_ContextualActionListener_8;
    self.e_targetEntity_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_8_Markup1()
    local l0;
    l0 = self.box_ContextualActionListener_8;
    self.e_targetEntity_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_8_Markup2()
    local l0;
    l0 = self.box_ContextualActionListener_8;
    self.e_targetEntity_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_8_Select()
    local l0;
    l0 = self.box_ContextualActionListener_8;
    self.e_targetEntity_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_8_Start()
    local l0;
    l0 = self.box_ContextualActionListener_8;
    self.e_targetEntity_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.f_Timer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_71_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_IsTimerEnded = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_50_BombDefused()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_50;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_50_DefuserStopped()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_50;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_50_End()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_50;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_50_Out()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_50;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_50_Start()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_50;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_14_BombDefused()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_14;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_14_DefuserStopped()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_14;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_14_End()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_14;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_14_Out()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_14;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_14_Start()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_14;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetValueNil_109_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    self.e_STP_Completed = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GroupSizeListener_v5_131_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_131;
    self.i_RespawnersCount = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_131_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_131;
    self.i_RespawnersCount = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_131_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_131;
    self.i_RespawnersCount = l0:GetDataOutValue(1);
end;

function export:OnExit_box_ContextualActionListener_57_End()
    local l0;
    l0 = self.box_ContextualActionListener_57;
    self.e_targetEntity_4 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_57_Interrupt()
    local l0;
    l0 = self.box_ContextualActionListener_57;
    self.e_targetEntity_4 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_57_Markup1()
    local l0;
    l0 = self.box_ContextualActionListener_57;
    self.e_targetEntity_4 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_57_Markup2()
    local l0;
    l0 = self.box_ContextualActionListener_57;
    self.e_targetEntity_4 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_57_Select()
    local l0;
    l0 = self.box_ContextualActionListener_57;
    self.e_targetEntity_4 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_57_Start()
    local l0;
    l0 = self.box_ContextualActionListener_57;
    self.e_targetEntity_4 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_55_BombDefused()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_55;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_55_DefuserStopped()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_55;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_55_End()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_55;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_55_Out()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_55;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI45_020_B10_STP_Listener_55_Start()
    local l0;
    l0 = self.box_UNI45_020_B10_STP_Listener_55;
    self.e_STP_Completed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_236_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_236;
    self.i_fleeingCultistsLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_236_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_236;
    self.i_fleeingCultistsLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_236_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_236;
    self.i_fleeingCultistsLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetValueNil_65_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetValueNil.lua")];
    self.e_STP_Completed = l0:GetDataOutValue(2);
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
