LUAC�` -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni50/uni50_020/uni50_020_b10.domino
-- User graph: UNI50_020_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_ExtraMaker_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Free_Hostages_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/AlarmModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/MobileAlarmListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DiplayTextModifier_v6.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/EntityTagListener_v4.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v2.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GivePlayerReward.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetSound_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_020/UNI50_020_B10.DETECTED_BY_CULT.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_020/UNI50_020_B10.HostageManagement.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_020/UNI50_020_B10.PhoneCalls.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_020/UNI50_020_B10.SpawnOnAcknowledge.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_020/UNI50_020_B10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1898818737.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1981672122.bnk]], "CSoundResource");
        cboxRes:LoadResource([[144496211.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3959662965.bnk]], "CSoundResource");
        cboxRes:LoadResource([[861812616.bnk]], "CSoundResource");
        cboxRes:LoadResource([[492691704.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2420425539.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.UNI50_020_B10 = nil;
    Globals.UNI50_020_B10 = {
        IsWaveStarted = false,
        bPriestessSpawned = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_020/UNI50_020_B10.UNI50_020_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "extraMarker",
                delayed = false,
            },
            [1] = {
                name = "Failed",
                delayed = false,
            },
            [2] = {
                name = "PlayerDetected",
                delayed = true,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bPlayerDetection",
                type = "bool",
            },
            [2] = {
                name = "eGuardsCS",
                type = "entity",
            },
            [3] = {
                name = "eTargetCS",
                type = "entity",
            },
            [4] = {
                name = "Objective",
                type = "oasis",
            },
            [5] = {
                name = "sDamageType",
                type = "string",
            },
            [6] = {
                name = "TargetGroup",
                type = "group",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "eNumberOfEscaped",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_ExtraMaker_v2.debug.lua")] = {
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
                name = "Damaged",
                delayed = false,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Killed",
                delayed = false,
            },
            [3] = {
                name = "NextMarker",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "Mobile_Marker",
                type = "entity",
            },
            [2] = {
                name = "Objective",
                type = "oasis",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "sDamageSourceType",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Free_Hostages_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
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
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjectives",
                type = "bool",
            },
            [1] = {
                name = "bMinimunHostagesCompletion",
                type = "bool",
            },
            [2] = {
                name = "bShowObjective",
                type = "bool",
            },
            [3] = {
                name = "Hostage_group",
                type = "group",
            },
            [4] = {
                name = "HostagesToSave",
                type = "int",
            },
            [5] = {
                name = "Objective",
                type = "oasis",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "HostagesSaved",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [2] = {
                name = "eMarkerObjectiveArea",
                type = "entity",
            },
            [3] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [4] = {
                name = "Objective",
                type = "oasis",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/AI/AlarmModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Destroy",
            },
            [3] = {
                name = "Disable",
            },
        },
        controlInCount = 4,
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
                name = "Destroyed",
                delayed = false,
            },
            [3] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "AlarmGroup",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/MobileAlarmListener.lua")] = {
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
                name = "AlarmActivated",
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
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Pawn",
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
    metadataTable[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")] = {
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
                name = "Entities",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/DiplayTextModifier_v6.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ClearText",
            },
            [1] = {
                name = "DisplayText",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "TextCleared",
                delayed = false,
            },
            [1] = {
                name = "TextDisplayed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "displayOverCinematic",
                type = "bool",
            },
            [1] = {
                name = "displayTimer",
                type = "float",
            },
            [2] = {
                name = "forceInstantDisplay",
                type = "bool",
            },
            [3] = {
                name = "isKarmaEvent",
                type = "bool",
            },
            [4] = {
                name = "textId",
                type = "oasis",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v2.lua")] = {
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
                name = "Pawn",
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
    metadataTable[GetPathID("Domino/System/Player/GivePlayerReward.lua")] = {
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
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "RewardObject",
                type = "genericdb",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/SetSound_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromSound",
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
                name = "SoundID",
                type = "Sound",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "Sound",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_020/UNI50_020_B10.DETECTED_BY_CULT.debug.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_020/UNI50_020_B10.HostageManagement.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "StopHostDialog",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_020/UNI50_020_B10.PhoneCalls.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "StopHostDialog",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_020/UNI50_020_B10.SpawnOnAcknowledge.debug.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI50_020_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10";
    self.Hostages_Alive = 0;
    self.PlayerGroup = nil;
    self.Player_Group = nil;
    self.iPhonecall = 0;
    self.Door_Left_Loc_Open = {
    };
    self.Door_Left_Rot_Open = {
    };
    self.Player_detected = false;
    self.ady1 = {
    };
    self.AreHostageSaved = false;
    self.PriestessKilled = false;
    self.IsWaveStarted = false;
    self.IsWaveFinished = false;
    self.HOSTAGE_BEAT_DONE = false;
    self.BoatRemaining = 0;
    self.active_hostage = 0;
    self.saved_hostages = 0;
    self.hostage_remaining = 0;
    self.Has_alarm_Been_activated_but_Not_called = false;
    self.Is_Area_Secured_in_mission = false;
    self.AreHostageDead = false;
    self.HasBeenDetectedByPriestess = false;
    self.AreObjectiveCompleted = false;
    self.IsPlayerAway = false;
    self.Has7MinutePriestessCame = false;
    self.sEndCall = "492691704";
    self.box_MultipleOR_113 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|35603272");
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
        [0] = self.f_box_MultipleOR_113_Out,
    });
    self.box_SpawnAI_95 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|58707793");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_95_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_95_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_95_Success,
    });
    self.box_Brick_Kill_Target_CORE_v2_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua");
    l0 = self.box_Brick_Kill_Target_CORE_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Kill_Target_CORE_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|64604568");
    l0:SetConnections({
        -- extraMarker,
        [0] = self.f_box_Brick_Kill_Target_CORE_v2_13_extraMarker,
        -- Started,
        [3] = self.f_box_Brick_Kill_Target_CORE_v2_13_Started,
        -- Success,
        [4] = self.f_box_Brick_Kill_Target_CORE_v2_13_Success,
    });
    self.box_PlayerFullyDetected_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|65914155");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_24_Detected,
        -- Disabled,
        [1] = self.f_box_PlayerFullyDetected_24_Disabled,
    });
    self.box_MultipleOR_137 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|66648668");
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
        [0] = self.f_box_MultipleOR_137_Out,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|74443209");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_MultipleOR_98 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|74464471");
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
        [0] = self.f_box_MultipleOR_98_Out,
    });
    self.box_EntityTagListener_v4_11 = cbox:CreateBox("Domino/System/EntityTagListener_v4.lua");
    l0 = self.box_EntityTagListener_v4_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityTagListener_v4_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|74907530");
    l0:SetConnections({
        -- Tagged,
        [7] = self.f_box_EntityTagListener_v4_11_Tagged,
    });
    self.box_VisibilityModifier_200 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|132856761");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_7 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|228189442");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_7_Out,
    });
    self.box_MultipleAND_v2_126 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|252703674");
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
        [0] = self.f_box_MultipleAND_v2_126_Out,
    });
    self.box_Delay_v5_47 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|256245876");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_47_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_47_TimeElapsed,
    });
    self.box_Music_Quest_v2_248 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_248");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|263911147");
    l0:SetConnections({
    });
    self.box_Delay_v5_251 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_251");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|272933048");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_251_TimeElapsed,
    });
    self.box_Delay_v5_103 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|331635451");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_103_TimeElapsed,
    });
    self.box_EntityStatusListener_249 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_249");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|380680974");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_249_Loaded,
    });
    self.box_OnceOnly_v3_149 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|383381757");
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
                [0] = self.f_box_OnceOnly_v3_149_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleAND_v2_190 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|397997955");
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
        [0] = self.f_box_MultipleAND_v2_190_Out,
    });
    self.box_EntityStatusListener_250 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_250");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|420130612");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_250_Loaded,
    });
    self.box_OnceOnly_v3_215 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|480287894");
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
                [0] = self.f_box_OnceOnly_v3_215_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_81 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|503938438");
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
        [0] = self.f_box_MultipleOR_81_Out,
    });
    self.box_SpawnOnAcknowledge_9 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_020/UNI50_020_B10.SpawnOnAcknowledge.debug.lua");
    l0 = self.box_SpawnOnAcknowledge_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnOnAcknowledge_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|507804902");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SpawnOnAcknowledge_9_Out,
    });
    self.box_PhoneCallExclusivityModifier_35 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|544948141");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_35_Enabled,
    });
    self.box_OnceOnly_v3_174 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|552591035");
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
                [0] = self.f_box_OnceOnly_v3_174_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_153 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|554354119");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_153_TimeElapsed,
    });
    self.box_GroupSizeListener_v5_96 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|562494709");
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
    self.box_OnceOnly_v3_117 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|621793034");
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
    self.box_MultipleAND_v2_147 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|650836797");
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
        [0] = self.f_box_MultipleAND_v2_147_Out,
    });
    self.box_MultipleOR_50 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|714078029");
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
        [0] = self.f_box_MultipleOR_50_Out,
    });
    self.box_VisibilityModifier_164 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|752456988");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_19 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|756583540");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_19_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_19_Failed,
    });
    self.box_OnceOnly_v3_79 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|779292276");
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
                [0] = self.f_box_OnceOnly_v3_79_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_157 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|805277418");
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
                [0] = self.f_box_OnceOnly_v3_157_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_76 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|811340163");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_76_Enter,
    });
    self.box_SpawnAI_182 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|823133532");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_182_Out,
    });
    self.box_OnceOnly_v3_227 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|863739613");
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
                [0] = self.f_box_OnceOnly_v3_227_Out_0,
            },
            count = 2,
        },
    });
    self.box_VisibilityModifier_166 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|881405177");
    l0:SetConnections({
    });
    self.box_Delay_v5_55 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|892636269");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_55_TimeElapsed,
    });
    self.box_Delay_v5_189 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|938624005");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_189_TimeElapsed,
    });
    self.box_Music_Quest_v2_244 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_244");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1005546337");
    l0:SetConnections({
    });
    self.box_MultipleOR_146 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1148194969");
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
        [0] = self.f_box_MultipleOR_146_Out,
    });
    self.box_Music_Quest_v2_240 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1178457972");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v5_139 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1183721763");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_139_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_139_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_139_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_139_MemberRemoved,
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1188499456");
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
        [0] = self.f_box_MultipleOR_45_Out,
    });
    self.box_MultipleOR_128 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1224971873");
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
    self.box_PhoneCalls_27 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_020/UNI50_020_B10.PhoneCalls.debug.lua");
    l0 = self.box_PhoneCalls_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCalls_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1234334858");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v5_230 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1240807371");
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
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1242997866");
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
        [0] = self.f_box_MultipleOR_42_Out,
    });
    self.box_Brick_Free_Hostages_v2_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Free_Hostages_v2.debug.lua");
    l0 = self.box_Brick_Free_Hostages_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Free_Hostages_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1250362760");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Free_Hostages_v2_4_Fail,
        -- Started,
        [1] = self.f_box_Brick_Free_Hostages_v2_4_Started,
        -- Success,
        [2] = self.f_box_Brick_Free_Hostages_v2_4_Success,
    });
    self.box_MobileAlarmListener_26 = cbox:CreateBox("Domino/System/AI/MobileAlarmListener.lua");
    l0 = self.box_MobileAlarmListener_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MobileAlarmListener_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1264539753");
    l0:SetConnections({
        -- AlarmActivated,
        [0] = self.f_box_MobileAlarmListener_26_AlarmActivated,
    });
    self.box_EntityStatusListener_204 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1299818381");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_204_Loaded,
    });
    self.box_GroupSizeListener_v5_196 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1312944003");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_196_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_196_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_196_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_196_MemberRemoved,
    });
    self.box_MultipleOR_172 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1330925544");
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
        [0] = self.f_box_MultipleOR_172_Out,
    });
    self.box_MultipleOR_222 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1361412157");
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
        [0] = self.f_box_MultipleOR_222_Out,
    });
    self.box_PlayDialog_v6_68 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1386192487");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_245 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_245;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_245");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1453323619");
    l0:SetConnections({
    });
    self.box_MultipleOR_225 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1483362664");
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
        [0] = self.f_box_MultipleOR_225_Out,
    });
    self.box_MultipleOR_218 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1504091442");
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
        [0] = self.f_box_MultipleOR_218_Out,
    });
    self.box_LookAtTrigger_v2_12 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1505450310");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_12_EnterFOV,
    });
    self.box_MultipleAND_v2_229 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_229;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1508579539");
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
        [0] = self.f_box_MultipleAND_v2_229_Out,
    });
    self.box_Music_Quest_v2_243 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_243");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1523703703");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v5_75 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1573744032");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_75_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_75_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_75_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_75_MemberRemoved,
    });
    self.box_HostageManagement_38 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_020/UNI50_020_B10.HostageManagement.debug.lua");
    l0 = self.box_HostageManagement_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HostageManagement_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1574796331");
    l0:SetConnections({
        -- StopHostDialog,
        [0] = self.f_box_HostageManagement_38_StopHostDialog,
    });
    self.box_OnceOnly_v3_29 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1581257100");
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
                [0] = self.f_box_OnceOnly_v3_29_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayerFullyDetected_46 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1592782629");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_46_Detected,
        -- Enabled,
        [2] = self.f_box_PlayerFullyDetected_46_Enabled,
    });
    self.box_Delay_v5_221 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1593435038");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_221_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1600818961");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_OnceOnly_v3_72 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1605130269");
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
                [0] = self.f_box_OnceOnly_v3_72_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_60 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1643134190");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_60_TimeElapsed,
    });
    self.box_VisibilityModifier_201 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1645304699");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_173 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1645672358");
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
                [0] = self.f_box_OnceOnly_v3_173_Out_0,
            },
            count = 2,
        },
    });
    self.box_GroupSizeListener_v5_224 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1652247492");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_224_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_224_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_224_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_224_MemberRemoved,
    });
    self.box_ProximityTrigger_v2_57 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1662403847");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_57_Enter,
    });
    self.box_Brick_Kill_Target_ExtraMaker_v2_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_ExtraMaker_v2.debug.lua");
    l0 = self.box_Brick_Kill_Target_ExtraMaker_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Kill_Target_ExtraMaker_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1663865629");
    l0:SetConnections({
        -- Killed,
        [2] = self.f_box_Brick_Kill_Target_ExtraMaker_v2_1_Killed,
    });
    self.box_OnceOnly_v3_231 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1670430343");
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
                [0] = self.f_box_OnceOnly_v3_231_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_207 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1701246680");
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
        [0] = self.f_box_MultipleOR_207_Out,
    });
    self.box_DETECTED_BY_CULT_15 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_020/UNI50_020_B10.DETECTED_BY_CULT.debug.lua");
    l0 = self.box_DETECTED_BY_CULT_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DETECTED_BY_CULT_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1701701712");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_DETECTED_BY_CULT_15_Out,
    });
    self.box_MultipleOR_115 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1707413546");
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
        [0] = self.f_box_MultipleOR_115_Out,
    });
    self.box_RequestPhoneCall_v2_51 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1720148829");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_197 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1728506343");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_238 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1791255694");
    l0:SetConnections({
    });
    self.box_MultipleOR_40 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1818026372");
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
        [0] = self.f_box_MultipleOR_40_Out,
    });
    self.box_GroupSizeListener_v5_99 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1822377155");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_99_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_99_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_99_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_99_MemberRemoved,
    });
    self.box_Music_Quest_v2_237 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1843610261");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_176 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1844529161");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_43 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1848037123");
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
        [0] = self.f_box_MultipleAND_v2_43_Out,
    });
    self.box_OnceOnly_v3_212 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1850111510");
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
                [0] = self.f_box_OnceOnly_v3_212_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_170 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1862894495");
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
        [0] = self.f_box_MultipleOR_170_Out,
    });
    self.box_RemoveEntity_v2_177 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1897760988");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_177_Out,
    });
    self.box_OnceOnly_v3_175 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1900285028");
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
                [0] = self.f_box_OnceOnly_v3_175_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_140 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1908606329");
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
    self.box_OnceOnly_v3_127 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1914951737");
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
                [0] = self.f_box_OnceOnly_v3_127_Out_0,
            },
            count = 2,
        },
    });
    self.box_RequestPhoneCall_v2_56 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1940200408");
    l0:SetConnections({
    });
    self.box_Brick_Secure_Area_v5_122 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
    l0 = self.box_Brick_Secure_Area_v5_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Secure_Area_v5_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1942248037");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Brick_Secure_Area_v5_122_Success,
    });
    self.box_OnceOnly_v3_141 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1950615062");
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
                [0] = self.f_box_OnceOnly_v3_141_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_179 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1958358887");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_179_Enter,
    });
    self.box_MultipleAND_v2_132 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1961818008");
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
        [0] = self.f_box_MultipleAND_v2_132_Out,
    });
    self.box_Delay_v5_58 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2052046242");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_58_TimeElapsed,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2063961410");
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
    self.box_StartCelebration_8 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2074701100");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_8_Ended,
    });
    self.box_SpawnAI_3 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2127021280");
    l0:SetConnections({
    });
    self.box_Delay_v5_148 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2127503400");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_148_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_220();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1351845001", "1351845001", "UNI50_020_B10", "In", "box_OutputOrder_v2_220.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_86();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1547911925", "1547911925", "UNI50_020_B10", "OnLeaveZone", "box_OutputOrder_v2_86.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_160_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1142986283", "1142986283", "UNI50_020_B10", "box_Simple_Node_160.Out", "box_MultipleOR_50.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_PlayerFullyDetected_46();
    l0 = self.box_PlayerFullyDetected_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|306794835", "306794835", "UNI50_020_B10", "box_Simple_Node_160.Out", "box_PlayerFullyDetected_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MultipleAND_v2_43();
    l0 = self.box_MultipleAND_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|147630988", "147630988", "UNI50_020_B10", "box_Simple_Node_160.Out", "box_MultipleAND_v2_43.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_118_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1609678570", "1609678570", "UNI50_020_B10", "box_Simple_Node_118.Out", "box_MultipleOR_115.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_151();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|15509729", "15509729", "UNI50_020_B10", "box_Simple_Node_22.Out", "box_Compare_Boolean_151.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1491350748", "1491350748", "UNI50_020_B10", "box_Simple_Node_22.Out", "box_MultipleOR_81.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_219_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|753928168", "753928168", "UNI50_020_B10", "box_Simple_Node_219.Out", "box_MultipleOR_113.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Simple_Node_123_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_125();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1382398372", "1382398372", "UNI50_020_B10", "box_Simple_Node_123.Out", "box_OutputOrder_v2_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_107_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1693622403", "1693622403", "UNI50_020_B10", "box_Simple_Node_107.Out", "box_MultipleOR_81.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_129_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_129_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_153();
    l0 = self.box_Delay_v5_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1409083103", "1409083103", "UNI50_020_B10", "box_SetBoolean_v2_129.Out", "box_Delay_v5_153.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_209_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_24();
    l0 = self.box_PlayerFullyDetected_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|358264608", "358264608", "UNI50_020_B10", "box_Simple_Node_209.Out", "box_PlayerFullyDetected_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_253_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_238();
    l0 = self.box_Music_Quest_v2_238;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1306550555", "1306550555", "UNI50_020_B10", "box_Simple_Node_253.Out", "box_Music_Quest_v2_238.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_254_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_249();
    l0 = self.box_EntityStatusListener_249;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|925518782", "925518782", "UNI50_020_B10", "box_Simple_Node_254.Out", "box_EntityStatusListener_249.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_83_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|220765407", "220765407", "UNI50_020_B10", "box_Simple_Node_83.Out", "box_MultipleOR_50.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1431252960", "1431252960", "UNI50_020_B10", "box_Simple_Node_20.Out", "box_MultipleOR_115.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_171_Out()
    self:OnExit_box_SetBoolean_v2_171_Out();
end;

function export:f_box_MultipleOR_113_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_113;
    l1 = self.box_OnceOnly_v3_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1361901373", "1361901373", "UNI50_020_B10", "box_MultipleOR_113.Out", "box_OnceOnly_v3_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_95_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_95;
    l1 = self.box_MultipleOR_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|979553653", "979553653", "UNI50_020_B10", "box_SpawnAI_95.Out", "box_MultipleOR_172.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_95_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_95;
    l1 = self.box_MultipleOR_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|794685056", "794685056", "UNI50_020_B10", "box_SpawnAI_95.Spawned", "box_MultipleOR_172.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SpawnAI_95_Success()
    local l0, l1;
    l0 = self.box_SpawnAI_95;
    l1 = self.box_MultipleOR_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|738102506", "738102506", "UNI50_020_B10", "box_SpawnAI_95.Success", "box_MultipleOR_172.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Kill_Target_CORE_v2_13_extraMarker()
    local l0, l1;
    l0 = self.box_Brick_Kill_Target_CORE_v2_13;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1334503852", "1334503852", "UNI50_020_B10", "box_Brick_Kill_Target_CORE_v2_13.extraMarker", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Kill_Target_CORE_v2_13_Started()
    local l0, l1;
    l0 = self.box_Brick_Kill_Target_CORE_v2_13;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1423392684", "1423392684", "UNI50_020_B10", "box_Brick_Kill_Target_CORE_v2_13.Started", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Kill_Target_CORE_v2_13_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_20();
    l0 = self.box_Brick_Kill_Target_CORE_v2_13;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1790980522", "1790980522", "UNI50_020_B10", "box_Brick_Kill_Target_CORE_v2_13.Success", "box_Simple_Node_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerFullyDetected_24_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_PlayerFullyDetected_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1588085554", "1588085554", "UNI50_020_B10", "box_PlayerFullyDetected_24.Detected", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerFullyDetected_24_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_107();
    l0 = self.box_PlayerFullyDetected_24;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|353913058", "353913058", "UNI50_020_B10", "box_PlayerFullyDetected_24.Disabled", "box_Simple_Node_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_137_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_137;
    l1 = self.box_OnceOnly_v3_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1115911460", "1115911460", "UNI50_020_B10", "box_MultipleOR_137.Out", "box_OnceOnly_v3_175.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_MultipleOR_37;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|597774271", "597774271", "UNI50_020_B10", "box_MultipleOR_37.Out", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_98_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Kill_Target_ExtraMaker_v2_1();
    l0 = self.box_MultipleOR_98;
    l1 = self.box_Brick_Kill_Target_ExtraMaker_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|481954141", "481954141", "UNI50_020_B10", "box_MultipleOR_98.Out", "box_Brick_Kill_Target_ExtraMaker_v2_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityTagListener_v4_11_Tagged()
    local l0, l1;
    l0 = self.box_EntityTagListener_v4_11;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|226226157", "226226157", "UNI50_020_B10", "box_EntityTagListener_v4_11.Tagged", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_AddActivityObjective_v2_41_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_184();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|16902776", "16902776", "UNI50_020_B10", "box_AddActivityObjective_v2_41.Out", "box_ActivityObjectiveMarkerModifier_v3_184.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_181_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityTagListener_v4_11();
    l0 = self.box_EntityTagListener_v4_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|880059296", "880059296", "UNI50_020_B10", "box_OutputOrder_v2_181.Out", "box_EntityTagListener_v4_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_181_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_12();
    l0 = self.box_LookAtTrigger_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|504969755", "504969755", "UNI50_020_B10", "box_OutputOrder_v2_181.Out", "box_LookAtTrigger_v2_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_181_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_76();
    l0 = self.box_ProximityTrigger_v2_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|327401898", "327401898", "UNI50_020_B10", "box_OutputOrder_v2_181.Out", "box_ProximityTrigger_v2_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_202_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1257594508", "1257594508", "UNI50_020_B10", "box_Compare_Boolean_202.A_is_False", "box_Simple_Node_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_202_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_107();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|112809723", "112809723", "UNI50_020_B10", "box_Compare_Boolean_202.A_is_True", "box_Simple_Node_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_131_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1081624103", "1081624103", "UNI50_020_B10", "box_Simple_Node_131.Out", "box_MultipleOR_113.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_91_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_91_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_202();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1313481407", "1313481407", "UNI50_020_B10", "box_SetBoolean_v2_91.Out", "box_Compare_Boolean_202.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_234();
    l0 = self.box_ActivityInitialized_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|849345191", "849345191", "UNI50_020_B10", "box_ActivityInitialized_7.Out", "box_OutputOrder_v2_234.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_39_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_93();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|697470177", "697470177", "UNI50_020_B10", "box_Compare_Boolean_39.A_is_False", "box_EndActivityObjective_v2_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_39_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_187();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1784667545", "1784667545", "UNI50_020_B10", "box_Compare_Boolean_39.A_is_True", "box_EndActivityObjective_v2_187.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_126_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_126;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|121875782", "121875782", "UNI50_020_B10", "box_MultipleAND_v2_126.Out", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_47_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_47;
    l1 = self.box_MultipleOR_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1190749489", "1190749489", "UNI50_020_B10", "box_Delay_v5_47.Stopped", "box_MultipleOR_170.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_47_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_47;
    l1 = self.box_MultipleOR_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|869976374", "869976374", "UNI50_020_B10", "box_Delay_v5_47.TimeElapsed", "box_MultipleOR_170.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_251_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_252();
    l0 = self.box_Delay_v5_251;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|807679907", "807679907", "UNI50_020_B10", "box_Delay_v5_251.TimeElapsed", "box_MissionBlockLayer_252.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_192_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_186();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1829077673", "1829077673", "UNI50_020_B10", "box_OutputOrder_v2_192.Out", "box_OutputOrder_v2_186.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_103_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_56();
    l0 = self.box_Delay_v5_103;
    l1 = self.box_RequestPhoneCall_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2123218320", "2123218320", "UNI50_020_B10", "box_Delay_v5_103.TimeElapsed", "box_RequestPhoneCall_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_234_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayTextModifier_v6_235();
    l0 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1510578629", "1510578629", "UNI50_020_B10", "box_OutputOrder_v2_234.Out", "box_DisplayTextModifier_v6_235.DisplayText", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisplayText
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_234_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_18();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1718955069", "1718955069", "UNI50_020_B10", "box_OutputOrder_v2_234.Out", "box_GetPlayerGroup_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_205_Out()
    self:OnExit_box_SetBoolean_v2_205_Out();
end;

function export:f_box_EntityStatusListener_249_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_250();
    l0 = self.box_EntityStatusListener_249;
    l1 = self.box_EntityStatusListener_250;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|239931115", "239931115", "UNI50_020_B10", "box_EntityStatusListener_249.Loaded", "box_EntityStatusListener_250.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_149_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Kill_Target_CORE_v2_13();
    l0 = self.box_OnceOnly_v3_149;
    l1 = self.box_Brick_Kill_Target_CORE_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|678530523", "678530523", "UNI50_020_B10", "box_OnceOnly_v3_149.Out", "box_Brick_Kill_Target_CORE_v2_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_190_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerFullyDetected_24();
    l0 = self.box_MultipleAND_v2_190;
    l1 = self.box_PlayerFullyDetected_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1725989595", "1725989595", "UNI50_020_B10", "box_MultipleAND_v2_190.Out", "box_PlayerFullyDetected_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_AlarmModifier_v2_34_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_91();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1962848305", "1962848305", "UNI50_020_B10", "box_AlarmModifier_v2_34.Activated", "box_SetBoolean_v2_91.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_75();
    l0 = self.box_GroupSizeListener_v5_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1507778942", "1507778942", "UNI50_020_B10", "box_OutputOrder_v2_186.Out", "box_GroupSizeListener_v5_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_186_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_179();
    l0 = self.box_ProximityTrigger_v2_179;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1374445694", "1374445694", "UNI50_020_B10", "box_OutputOrder_v2_186.Out", "box_ProximityTrigger_v2_179.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_186_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_165();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|515028934", "515028934", "UNI50_020_B10", "box_OutputOrder_v2_186.Out", "box_OutputOrder_v2_165.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_254();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1554544888", "1554544888", "UNI50_020_B10", "box_OutputOrder_v2_186.Out", "box_Simple_Node_254.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_220_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_182();
    l0 = self.box_SpawnAI_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|830620624", "830620624", "UNI50_020_B10", "box_OutputOrder_v2_220.Out", "box_SpawnAI_182.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_220_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|482198110", "482198110", "UNI50_020_B10", "box_OutputOrder_v2_220.Out", "box_ActivityAcknowledgeGate_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_185_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_95();
    l0 = self.box_SpawnAI_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|720556086", "720556086", "UNI50_020_B10", "box_ActivityObjectiveMarkerModifier_v3_185.Disabled", "box_SpawnAI_95.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_250_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_251();
    l0 = self.box_EntityStatusListener_250;
    l1 = self.box_Delay_v5_251;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|497894511", "497894511", "UNI50_020_B10", "box_EntityStatusListener_250.Loaded", "box_Delay_v5_251.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Integers_108_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_147();
    l0 = self.box_MultipleAND_v2_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|967090249", "967090249", "UNI50_020_B10", "box_Compare_Integers_108.A_ge_B", "box_MultipleAND_v2_147.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Compare_Boolean_130_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_126();
    l0 = self.box_MultipleAND_v2_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|197478177", "197478177", "UNI50_020_B10", "box_Compare_Boolean_130.A_is_False", "box_MultipleAND_v2_126.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_EndActivityObjective_v2_159_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_185();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|495594623", "495594623", "UNI50_020_B10", "box_EndActivityObjective_v2_159.Out", "box_ActivityObjectiveMarkerModifier_v3_185.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_215_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_177();
    l0 = self.box_OnceOnly_v3_215;
    l1 = self.box_RemoveEntity_v2_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1614084960", "1614084960", "UNI50_020_B10", "box_OnceOnly_v3_215.Out", "box_RemoveEntity_v2_177.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_203_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_203_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_210();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1049018026", "1049018026", "UNI50_020_B10", "box_SetBoolean_v2_203.Out", "box_OutputOrder_v2_210.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_81_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_81;
    l1 = self.box_OnceOnly_v3_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|203167537", "203167537", "UNI50_020_B10", "box_MultipleOR_81.Out", "box_OnceOnly_v3_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnOnAcknowledge_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Secure_Area_v5_122();
    l0 = self.box_SpawnOnAcknowledge_9;
    l1 = self.box_Brick_Secure_Area_v5_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1863992161", "1863992161", "UNI50_020_B10", "box_SpawnOnAcknowledge_9.Out", "box_Brick_Secure_Area_v5_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PhoneCallExclusivityModifier_35_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_208();
    l0 = self.box_PhoneCallExclusivityModifier_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1433710875", "1433710875", "UNI50_020_B10", "box_PhoneCallExclusivityModifier_35.Enabled", "box_OutputOrder_v2_208.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_174_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_193();
    l0 = self.box_OnceOnly_v3_174;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1600829041", "1600829041", "UNI50_020_B10", "box_OnceOnly_v3_174.Out", "box_SetContextualStrategy_193.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_77();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1747157813", "1747157813", "UNI50_020_B10", "box_SetActivityFact_21.Out", "box_SetBoolean_v2_77.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_153_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_160();
    l0 = self.box_Delay_v5_153;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1800379747", "1800379747", "UNI50_020_B10", "box_Delay_v5_153.TimeElapsed", "box_Simple_Node_160.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_119_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_119_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|703147583", "703147583", "UNI50_020_B10", "box_SetBoolean_v2_119.Out", "box_OutputOrder_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_96_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_92();
    l0 = self.box_GroupSizeListener_v5_96;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|901285270", "901285270", "UNI50_020_B10", "box_GroupSizeListener_v5_96.MemberRemoved", "box_Compare_Integers_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_69_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_126();
    l0 = self.box_MultipleAND_v2_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|404802743", "404802743", "UNI50_020_B10", "box_Compare_Boolean_69.A_is_True", "box_MultipleAND_v2_126.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_OnceOnly_v3_117_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_206();
    l0 = self.box_OnceOnly_v3_117;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|393985797", "393985797", "UNI50_020_B10", "box_OnceOnly_v3_117.Out", "box_OutputOrder_v2_206.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetSound_v2_31_Out()
    local l0;
    self:OnExit_box_SetSound_v2_31_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1662153903", "1662153903", "UNI50_020_B10", "box_SetSound_v2_31.Out", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_195_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_105();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|609052436", "609052436", "UNI50_020_B10", "box_Compare_Integers_195.A_le_B", "box_OutputOrder_v2_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_147_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetSound_v2_31();
    l0 = self.box_MultipleAND_v2_147;
    l1 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|636492523", "636492523", "UNI50_020_B10", "box_MultipleAND_v2_147.Out", "box_SetSound_v2_31.FromSound", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromSound
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_223_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_229();
    l0 = self.box_MultipleAND_v2_229;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1529152251", "1529152251", "UNI50_020_B10", "box_Compare_Integers_223.A_eq_B", "box_MultipleAND_v2_229.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_94();
    l0 = self.box_MultipleOR_50;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|678645903", "678645903", "UNI50_020_B10", "box_MultipleOR_50.Out", "box_Compare_Boolean_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_92_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_107();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|954706098", "954706098", "UNI50_020_B10", "box_Compare_Integers_92.A_eq_B", "box_Simple_Node_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_19_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_19;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1441568374", "1441568374", "UNI50_020_B10", "box_RequestPhoneCall_v2_19.Completed", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_19_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_19;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|551720951", "551720951", "UNI50_020_B10", "box_RequestPhoneCall_v2_19.Failed", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RemoveFromGroup_v2_52_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_190();
    l0 = self.box_MultipleAND_v2_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|864169678", "864169678", "UNI50_020_B10", "box_RemoveFromGroup_v2_52.Out", "box_MultipleAND_v2_190.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OnceOnly_v3_79_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_133();
    l0 = self.box_OnceOnly_v3_79;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1228568125", "1228568125", "UNI50_020_B10", "box_OnceOnly_v3_79.Out", "box_SetBoolean_v2_133.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_157_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_247();
    l0 = self.box_OnceOnly_v3_157;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1126595890", "1126595890", "UNI50_020_B10", "box_OnceOnly_v3_157.Out", "box_OutputOrder_v2_247.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_76_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_76;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1074564637", "1074564637", "UNI50_020_B10", "box_ProximityTrigger_v2_76.Enter", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SpawnAI_182_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_204();
    l0 = self.box_SpawnAI_182;
    l1 = self.box_EntityStatusListener_204;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|358435609", "358435609", "UNI50_020_B10", "box_SpawnAI_182.Out", "box_EntityStatusListener_204.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_208_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_240();
    l0 = self.box_Music_Quest_v2_240;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1598798859", "1598798859", "UNI50_020_B10", "box_OutputOrder_v2_208.Out", "box_Music_Quest_v2_240.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_208_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_19();
    l0 = self.box_RequestPhoneCall_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1050181781", "1050181781", "UNI50_020_B10", "box_OutputOrder_v2_208.Out", "box_RequestPhoneCall_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_208_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_221();
    l0 = self.box_Delay_v5_221;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1766861152", "1766861152", "UNI50_020_B10", "box_OutputOrder_v2_208.Out", "box_Delay_v5_221.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_105_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_168();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1773346722", "1773346722", "UNI50_020_B10", "box_OutputOrder_v2_105.Out", "box_Compare_Boolean_168.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_105_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_169();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1998918053", "1998918053", "UNI50_020_B10", "box_OutputOrder_v2_105.Out", "box_Compare_Boolean_169.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_85_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_85_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_123();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1585098649", "1585098649", "UNI50_020_B10", "box_SetBoolean_v2_85.Out", "box_Simple_Node_123.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_227_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_227;
    l1 = self.box_MultipleOR_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1357737619", "1357737619", "UNI50_020_B10", "box_OnceOnly_v3_227.Out", "box_MultipleOR_222.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_80_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_144();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1639825316", "1639825316", "UNI50_020_B10", "box_OutputOrder_v2_80.Out", "box_SetBoolean_v2_144.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_80_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_51();
    l0 = self.box_RequestPhoneCall_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|457064171", "457064171", "UNI50_020_B10", "box_OutputOrder_v2_80.Out", "box_RequestPhoneCall_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_GroupAddToGroup_v2_102_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_14();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|937803851", "937803851", "UNI50_020_B10", "box_GroupAddToGroup_v2_102.Out", "box_SetBoolean_v2_14.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_55_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_82();
    l0 = self.box_Delay_v5_55;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1089570226", "1089570226", "UNI50_020_B10", "box_Delay_v5_55.TimeElapsed", "box_OutputOrder_v2_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_226_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_229();
    l0 = self.box_MultipleAND_v2_229;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1267337963", "1267337963", "UNI50_020_B10", "box_Compare_Integers_226.A_eq_B", "box_MultipleAND_v2_229.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_206_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GivePlayerReward_161();
    l0 = Boxes[GetPathID("Domino/System/Player/GivePlayerReward.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|315267962", "315267962", "UNI50_020_B10", "box_OutputOrder_v2_206.Out", "box_GivePlayerReward_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_206_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_205();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1576294123", "1576294123", "UNI50_020_B10", "box_OutputOrder_v2_206.Out", "box_SetBoolean_v2_205.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_189_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_189;
    l1 = self.box_PhoneCallExclusivityModifier_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1945028210", "1945028210", "UNI50_020_B10", "box_Delay_v5_189.TimeElapsed", "box_PhoneCallExclusivityModifier_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_97_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_89();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|280806241", "280806241", "UNI50_020_B10", "box_OutputOrder_v2_97.Out", "box_OutputOrder_v2_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_97_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_96();
    l0 = self.box_GroupSizeListener_v5_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|945707586", "945707586", "UNI50_020_B10", "box_OutputOrder_v2_97.Out", "box_GroupSizeListener_v5_96.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RemoveFromGroup_v2_213_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_190();
    l0 = self.box_MultipleAND_v2_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|483020879", "483020879", "UNI50_020_B10", "box_RemoveFromGroup_v2_213.Out", "box_MultipleAND_v2_190.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_EndActivityObjective_v2_187_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2120402717", "2120402717", "UNI50_020_B10", "box_EndActivityObjective_v2_187.Out", "box_MultipleOR_207.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_125_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_130();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|487197752", "487197752", "UNI50_020_B10", "box_OutputOrder_v2_125.Out", "box_Compare_Boolean_130.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_124();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1276545747", "1276545747", "UNI50_020_B10", "box_OutputOrder_v2_125.Out", "box_Compare_Boolean_124.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_69();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1208593488", "1208593488", "UNI50_020_B10", "box_OutputOrder_v2_125.Out", "box_Compare_Boolean_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_82_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_102();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|104995741", "104995741", "UNI50_020_B10", "box_OutputOrder_v2_82.Out", "box_GroupAddToGroup_v2_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_82_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_107();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1180800538", "1180800538", "UNI50_020_B10", "box_OutputOrder_v2_82.Out", "box_Simple_Node_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_101_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1889126732", "1889126732", "UNI50_020_B10", "box_Compare_Integers_101.A_eq_B", "box_MultipleOR_45.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_146_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_108();
    l0 = self.box_MultipleOR_146;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|835464887", "835464887", "UNI50_020_B10", "box_MultipleOR_146.Out", "box_Compare_Integers_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_152_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_152_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1728407509", "1728407509", "UNI50_020_B10", "box_SetBoolean_v2_152.Out", "box_OutputOrder_v2_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1585765324", "1585765324", "UNI50_020_B10", "box_OutputOrder_v2_86.Out", "box_Simple_Node_253.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_236();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1897590429", "1897590429", "UNI50_020_B10", "box_OutputOrder_v2_86.Out", "box_ActivityRetry_236.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_139_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_139;
    l1 = self.box_OnceOnly_v3_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2005852107", "2005852107", "UNI50_020_B10", "box_GroupSizeListener_v5_139.Enabled", "box_OnceOnly_v3_141.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_139_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_139;
    l1 = self.box_MultipleOR_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|638167318", "638167318", "UNI50_020_B10", "box_GroupSizeListener_v5_139.MemberRemoved", "box_MultipleOR_140.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_156();
    l0 = self.box_MultipleOR_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|586916755", "586916755", "UNI50_020_B10", "box_MultipleOR_45.Out", "box_OutputOrder_v2_156.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_210_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_55();
    l0 = self.box_Delay_v5_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2111632466", "2111632466", "UNI50_020_B10", "box_OutputOrder_v2_210.Out", "box_Delay_v5_55.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_210_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_209();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2043680207", "2043680207", "UNI50_020_B10", "box_OutputOrder_v2_210.Out", "box_Simple_Node_209.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_210_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_245();
    l0 = self.box_Music_Quest_v2_245;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|980575138", "980575138", "UNI50_020_B10", "box_OutputOrder_v2_210.Out", "box_Music_Quest_v2_245.Start_Reset_MIS_Attacked", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_Reset_MIS_Attacked
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_128_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_128;
    l1 = self.box_OnceOnly_v3_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1878044009", "1878044009", "UNI50_020_B10", "box_MultipleOR_128.Out", "box_OnceOnly_v3_157.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_230_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_230;
    l1 = self.box_OnceOnly_v3_231;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1427317357", "1427317357", "UNI50_020_B10", "box_GroupSizeListener_v5_230.Enabled", "box_OnceOnly_v3_231.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_230_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_230;
    l1 = self.box_MultipleOR_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2051666799", "2051666799", "UNI50_020_B10", "box_GroupSizeListener_v5_230.MemberRemoved", "box_MultipleOR_225.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_60();
    l0 = self.box_MultipleOR_42;
    l1 = self.box_Delay_v5_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|876325482", "876325482", "UNI50_020_B10", "box_MultipleOR_42.Out", "box_Delay_v5_60.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Free_Hostages_v2_4_Fail()
    local params, l0, l1;
    self:OnExit_box_Brick_Free_Hostages_v2_4_Fail();
    params = self:OnEnter_box_EndActivityObjective_v2_188();
    l0 = self.box_Brick_Free_Hostages_v2_4;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1870146470", "1870146470", "UNI50_020_B10", "box_Brick_Free_Hostages_v2_4.Fail", "box_EndActivityObjective_v2_188.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Free_Hostages_v2_4_Started()
    local l0, l1;
    self:OnExit_box_Brick_Free_Hostages_v2_4_Started();
    l0 = self.box_Brick_Free_Hostages_v2_4;
    l1 = self.box_HostageManagement_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1348964116", "1348964116", "UNI50_020_B10", "box_Brick_Free_Hostages_v2_4.Started", "box_HostageManagement_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Brick_Free_Hostages_v2_4_Success()
    local l0, l1;
    self:OnExit_box_Brick_Free_Hostages_v2_4_Success();
    l0 = self.box_Brick_Free_Hostages_v2_4;
    l1 = self.box_OnceOnly_v3_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|301019919", "301019919", "UNI50_020_B10", "box_Brick_Free_Hostages_v2_4.Success", "box_OnceOnly_v3_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsPawnAlive_v2_143_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_132();
    l0 = self.box_MultipleAND_v2_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1265406021", "1265406021", "UNI50_020_B10", "box_IsPawnAlive_v2_143.False", "box_MultipleAND_v2_132.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_IsPawnAlive_v2_143_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1727799998", "1727799998", "UNI50_020_B10", "box_IsPawnAlive_v2_143.True", "box_MultipleOR_137.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MobileAlarmListener_26_AlarmActivated()
    local params, l0, l1;
    params = self:OnEnter_box_AlarmModifier_v2_34();
    l0 = self.box_MobileAlarmListener_26;
    l1 = Boxes[GetPathID("Domino/System/AI/AlarmModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|563527684", "563527684", "UNI50_020_B10", "box_MobileAlarmListener_26.AlarmActivated", "box_AlarmModifier_v2_34.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_246_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_DETECTED_BY_CULT_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|312624368", "312624368", "UNI50_020_B10", "box_OutputOrder_v2_246.Out", "box_DETECTED_BY_CULT_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_246_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_244();
    l0 = self.box_Music_Quest_v2_244;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1903448661", "1903448661", "UNI50_020_B10", "box_OutputOrder_v2_246.Out", "box_Music_Quest_v2_244.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_184_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_110();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1080176313", "1080176313", "UNI50_020_B10", "box_ActivityObjectiveMarkerModifier_v3_184.Enabled", "box_OutputOrder_v2_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_14_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_148();
    l0 = self.box_Delay_v5_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1701408959", "1701408959", "UNI50_020_B10", "box_SetBoolean_v2_14.Out", "box_Delay_v5_148.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Boolean_49_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_41();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1118736886", "1118736886", "UNI50_020_B10", "box_Compare_Boolean_49.A_is_False", "box_AddActivityObjective_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_204_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_6();
    l0 = self.box_EntityStatusListener_204;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1990783454", "1990783454", "UNI50_020_B10", "box_EntityStatusListener_204.Loaded", "box_HealthModifier_v2_6.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_196_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_195();
    l0 = self.box_GroupSizeListener_v5_196;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|912836749", "912836749", "UNI50_020_B10", "box_GroupSizeListener_v5_196.MemberRemoved", "box_Compare_Integers_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_18_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_18_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_192();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1068995107", "1068995107", "UNI50_020_B10", "box_GetPlayerGroup_v2_18.Out", "box_OutputOrder_v2_192.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_124_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_126();
    l0 = self.box_MultipleAND_v2_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1996161203", "1996161203", "UNI50_020_B10", "box_Compare_Boolean_124.A_is_True", "box_MultipleAND_v2_126.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_172_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_203();
    l0 = self.box_MultipleOR_172;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1007735858", "1007735858", "UNI50_020_B10", "box_MultipleOR_172.Out", "box_SetBoolean_v2_203.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_168_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_83();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1087356076", "1087356076", "UNI50_020_B10", "box_Compare_Boolean_168.A_is_False", "box_Simple_Node_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_222_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_223();
    l0 = self.box_MultipleOR_222;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2107849986", "2107849986", "UNI50_020_B10", "box_MultipleOR_222.Out", "box_Compare_Integers_223.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GivePlayerReward_161_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GivePlayerReward.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_21();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1654120341", "1654120341", "UNI50_020_B10", "box_GivePlayerReward_161.Out", "box_SetActivityFact_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_217_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_219();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1526495877", "1526495877", "UNI50_020_B10", "box_Compare_Boolean_217.A_is_True", "box_Simple_Node_219.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_225_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_226();
    l0 = self.box_MultipleOR_225;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1847161840", "1847161840", "UNI50_020_B10", "box_MultipleOR_225.Out", "box_Compare_Integers_226.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_218_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_218;
    l1 = self.box_OnceOnly_v3_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|998308158", "998308158", "UNI50_020_B10", "box_MultipleOR_218.Out", "box_OnceOnly_v3_215.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_LookAtTrigger_v2_12_EnterFOV()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_12;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|8355627", "8355627", "UNI50_020_B10", "box_LookAtTrigger_v2_12.EnterFOV", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleAND_v2_229_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_229;
    l1 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|264248602", "264248602", "UNI50_020_B10", "box_MultipleAND_v2_229.Out", "box_MultipleOR_113.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_SpawnOnAcknowledge_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1878005914", "1878005914", "UNI50_020_B10", "box_OutputOrder_v2_17.Out", "box_SpawnOnAcknowledge_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Free_Hostages_v2_4();
    l0 = self.box_Brick_Free_Hostages_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1057543154", "1057543154", "UNI50_020_B10", "box_OutputOrder_v2_17.Out", "box_Brick_Free_Hostages_v2_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveFromGroup_v2_28();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1658870571", "1658870571", "UNI50_020_B10", "box_OutputOrder_v2_17.Out", "box_RemoveFromGroup_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveFromGroup_v2_52();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2062270092", "2062270092", "UNI50_020_B10", "box_OutputOrder_v2_17.Out", "box_RemoveFromGroup_v2_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveFromGroup_v2_213();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|466603969", "466603969", "UNI50_020_B10", "box_OutputOrder_v2_17.Out", "box_RemoveFromGroup_v2_213.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveFromGroup_v2_214();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1894510936", "1894510936", "UNI50_020_B10", "box_OutputOrder_v2_17.Out", "box_RemoveFromGroup_v2_214.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v2_135_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_132();
    l0 = self.box_MultipleAND_v2_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|312580766", "312580766", "UNI50_020_B10", "box_IsPawnAlive_v2_135.False", "box_MultipleAND_v2_132.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 3);
end;

function export:f_box_IsPawnAlive_v2_135_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|386249369", "386249369", "UNI50_020_B10", "box_IsPawnAlive_v2_135.True", "box_MultipleOR_137.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_RemoveFromGroup_v2_214_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_190();
    l0 = self.box_MultipleAND_v2_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2011427274", "2011427274", "UNI50_020_B10", "box_RemoveFromGroup_v2_214.Out", "box_MultipleAND_v2_190.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 3);
end;

function export:f_box_GroupSizeListener_v5_75_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_101();
    l0 = self.box_GroupSizeListener_v5_75;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1732331743", "1732331743", "UNI50_020_B10", "box_GroupSizeListener_v5_75.MemberRemoved", "box_Compare_Integers_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HostageManagement_38_StopHostDialog()
    local l0, l1;
    l0 = self.box_HostageManagement_38;
    l1 = self.box_PhoneCalls_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1748093401", "1748093401", "UNI50_020_B10", "box_HostageManagement_38.StopHostDialog", "box_PhoneCalls_27.StopHostDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- StopHostDialog
    l1:Exec(1, {
    });
end;

function export:f_box_OnceOnly_v3_29_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_68();
    l0 = self.box_OnceOnly_v3_29;
    l1 = self.box_PlayDialog_v6_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|18562745", "18562745", "UNI50_020_B10", "box_OnceOnly_v3_29.Out", "box_PlayDialog_v6_68.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayerFullyDetected_46_Detected()
    local l0, l1;
    l0 = self.box_PlayerFullyDetected_46;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|975199006", "975199006", "UNI50_020_B10", "box_PlayerFullyDetected_46.Detected", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayerFullyDetected_46_Enabled()
    local l0, l1;
    l0 = self.box_PlayerFullyDetected_46;
    l1 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1136063463", "1136063463", "UNI50_020_B10", "box_PlayerFullyDetected_46.Enabled", "box_MultipleOR_50.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_221_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_221;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1540119409", "1540119409", "UNI50_020_B10", "box_Delay_v5_221.TimeElapsed", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|595862534", "595862534", "UNI50_020_B10", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|58585870", "58585870", "UNI50_020_B10", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_72_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_3();
    l0 = self.box_OnceOnly_v3_72;
    l1 = self.box_SpawnAI_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|985143489", "985143489", "UNI50_020_B10", "box_OnceOnly_v3_72.Out", "box_SpawnAI_3.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_144_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_144_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_152();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|815052243", "815052243", "UNI50_020_B10", "box_SetBoolean_v2_144.Out", "box_SetBoolean_v2_152.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_151_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_246();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1523159722", "1523159722", "UNI50_020_B10", "box_Compare_Boolean_151.A_is_False", "box_OutputOrder_v2_246.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_60_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_39();
    l0 = self.box_Delay_v5_60;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1049583483", "1049583483", "UNI50_020_B10", "box_Delay_v5_60.TimeElapsed", "box_Compare_Boolean_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_173_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_OnceOnly_v3_173;
    l1 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1903635754", "1903635754", "UNI50_020_B10", "box_OnceOnly_v3_173.Out", "box_Delay_v5_47.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_RemoveFromGroup_v2_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_190();
    l0 = self.box_MultipleAND_v2_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|646299148", "646299148", "UNI50_020_B10", "box_RemoveFromGroup_v2_28.Out", "box_MultipleAND_v2_190.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_GroupSizeListener_v5_224_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_224;
    l1 = self.box_OnceOnly_v3_227;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|388231960", "388231960", "UNI50_020_B10", "box_GroupSizeListener_v5_224.Enabled", "box_OnceOnly_v3_227.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_224_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_224;
    l1 = self.box_MultipleOR_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|484622668", "484622668", "UNI50_020_B10", "box_GroupSizeListener_v5_224.MemberRemoved", "box_MultipleOR_222.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_133_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_133_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetSound_v2_16();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1439347722", "1439347722", "UNI50_020_B10", "box_SetBoolean_v2_133.Out", "box_SetSound_v2_16.FromSound", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromSound
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_57_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_57;
    l1 = self.box_OnceOnly_v3_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1215871456", "1215871456", "UNI50_020_B10", "box_ProximityTrigger_v2_57.Enter", "box_OnceOnly_v3_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Kill_Target_ExtraMaker_v2_1_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_44();
    l0 = self.box_Brick_Kill_Target_ExtraMaker_v2_1;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1104966955", "1104966955", "UNI50_020_B10", "box_Brick_Kill_Target_ExtraMaker_v2_1.Killed", "box_SetBoolean_v2_44.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|673791263", "673791263", "UNI50_020_B10", "box_OutputOrder_v2_74.Out", "box_Delay_v5_47.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_97();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1505180517", "1505180517", "UNI50_020_B10", "box_OutputOrder_v2_74.Out", "box_OutputOrder_v2_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_231_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_231;
    l1 = self.box_MultipleOR_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1550279252", "1550279252", "UNI50_020_B10", "box_OnceOnly_v3_231.Out", "box_MultipleOR_225.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_188_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_171();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|554018099", "554018099", "UNI50_020_B10", "box_EndActivityObjective_v2_188.Out", "box_SetBoolean_v2_171.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_207_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_189();
    l0 = self.box_MultipleOR_207;
    l1 = self.box_Delay_v5_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|921007106", "921007106", "UNI50_020_B10", "box_MultipleOR_207.Out", "box_Delay_v5_189.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DETECTED_BY_CULT_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_118();
    l0 = self.box_DETECTED_BY_CULT_15;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2097972783", "2097972783", "UNI50_020_B10", "box_DETECTED_BY_CULT_15.Out", "box_Simple_Node_118.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_93_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|7149770", "7149770", "UNI50_020_B10", "box_EndActivityObjective_v2_93.Out", "box_MultipleOR_207.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_115_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_43();
    l0 = self.box_MultipleOR_115;
    l1 = self.box_MultipleAND_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1405828007", "1405828007", "UNI50_020_B10", "box_MultipleOR_115.Out", "box_MultipleAND_v2_43.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_110_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_58();
    l0 = self.box_Delay_v5_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1366704145", "1366704145", "UNI50_020_B10", "box_OutputOrder_v2_110.Out", "box_Delay_v5_58.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_110_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_103();
    l0 = self.box_Delay_v5_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|350742121", "350742121", "UNI50_020_B10", "box_OutputOrder_v2_110.Out", "box_Delay_v5_103.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Boolean_169_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_107();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1439169722", "1439169722", "UNI50_020_B10", "box_Compare_Boolean_169.A_is_True", "box_Simple_Node_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_44_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_44_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_20();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1028540653", "1028540653", "UNI50_020_B10", "box_SetBoolean_v2_44.Out", "box_Simple_Node_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_94_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1700117008", "1700117008", "UNI50_020_B10", "box_Compare_Boolean_94.A_is_False", "box_MultipleOR_128.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_94_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1651279574", "1651279574", "UNI50_020_B10", "box_Compare_Boolean_94.A_is_True", "box_MultipleOR_37.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_142_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_147();
    l0 = self.box_MultipleAND_v2_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2133266371", "2133266371", "UNI50_020_B10", "box_Compare_Integers_142.A_eq_B", "box_MultipleAND_v2_147.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_40_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_40;
    l1 = self.box_OnceOnly_v3_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1851483069", "1851483069", "UNI50_020_B10", "box_MultipleOR_40.Out", "box_OnceOnly_v3_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_143();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2125277545", "2125277545", "UNI50_020_B10", "box_OutputOrder_v2_54.Out", "box_IsPawnAlive_v2_143.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_138();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|315152036", "315152036", "UNI50_020_B10", "box_OutputOrder_v2_54.Out", "box_IsPawnAlive_v2_138.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_134();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|959269536", "959269536", "UNI50_020_B10", "box_OutputOrder_v2_54.Out", "box_IsPawnAlive_v2_134.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_135();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|92761843", "92761843", "UNI50_020_B10", "box_OutputOrder_v2_54.Out", "box_IsPawnAlive_v2_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_248();
    l0 = self.box_Music_Quest_v2_248;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1239122384", "1239122384", "UNI50_020_B10", "box_OutputOrder_v2_54.Out", "box_Music_Quest_v2_248.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v2_138_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_132();
    l0 = self.box_MultipleAND_v2_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1633194822", "1633194822", "UNI50_020_B10", "box_IsPawnAlive_v2_138.False", "box_MultipleAND_v2_132.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_IsPawnAlive_v2_138_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2050976270", "2050976270", "UNI50_020_B10", "box_IsPawnAlive_v2_138.True", "box_MultipleOR_137.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_99_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_99;
    l1 = self.box_OnceOnly_v3_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|357395917", "357395917", "UNI50_020_B10", "box_GroupSizeListener_v5_99.Enabled", "box_OnceOnly_v3_127.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_99_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_99;
    l1 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1760430749", "1760430749", "UNI50_020_B10", "box_GroupSizeListener_v5_99.MemberRemoved", "box_MultipleOR_146.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_77_Out()
    self:OnExit_box_SetBoolean_v2_77_Out();
end;

function export:f_box_MultipleAND_v2_43_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_43;
    l1 = self.box_OnceOnly_v3_212;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1447827147", "1447827147", "UNI50_020_B10", "box_MultipleAND_v2_43.Out", "box_OnceOnly_v3_212.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_212_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_116();
    l0 = self.box_OnceOnly_v3_212;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|19336079", "19336079", "UNI50_020_B10", "box_OnceOnly_v3_212.Out", "box_OutputOrder_v2_116.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetSound_v2_16_Out()
    local l0;
    self:OnExit_box_SetSound_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|621754447", "621754447", "UNI50_020_B10", "box_SetSound_v2_16.Out", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_170_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_170;
    l1 = self.box_OnceOnly_v3_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1990576193", "1990576193", "UNI50_020_B10", "box_MultipleOR_170.Out", "box_OnceOnly_v3_174.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntity_v2_177_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_8();
    l0 = self.box_RemoveEntity_v2_177;
    l1 = self.box_StartCelebration_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|780904945", "780904945", "UNI50_020_B10", "box_RemoveEntity_v2_177.Out", "box_StartCelebration_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_175_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_216();
    l0 = self.box_OnceOnly_v3_175;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|338460712", "338460712", "UNI50_020_B10", "box_OnceOnly_v3_175.Out", "box_AddActivityObjective_v2_216.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_140_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_142();
    l0 = self.box_MultipleOR_140;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|869574639", "869574639", "UNI50_020_B10", "box_MultipleOR_140.Out", "box_Compare_Integers_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_127_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_127;
    l1 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|554161761", "554161761", "UNI50_020_B10", "box_OnceOnly_v3_127.Out", "box_MultipleOR_146.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_165_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_57();
    l0 = self.box_ProximityTrigger_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1085129682", "1085129682", "UNI50_020_B10", "box_OutputOrder_v2_165.Out", "box_ProximityTrigger_v2_57.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_165_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_80();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1131765866", "1131765866", "UNI50_020_B10", "box_OutputOrder_v2_165.Out", "box_OutputOrder_v2_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_165_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_164();
    l0 = self.box_VisibilityModifier_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|155432768", "155432768", "UNI50_020_B10", "box_OutputOrder_v2_165.Out", "box_VisibilityModifier_164.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_165_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_166();
    l0 = self.box_VisibilityModifier_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|560743165", "560743165", "UNI50_020_B10", "box_OutputOrder_v2_165.Out", "box_VisibilityModifier_166.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_165_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_200();
    l0 = self.box_VisibilityModifier_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|222607702", "222607702", "UNI50_020_B10", "box_OutputOrder_v2_165.Out", "box_VisibilityModifier_200.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_165_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_197();
    l0 = self.box_VisibilityModifier_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1742558872", "1742558872", "UNI50_020_B10", "box_OutputOrder_v2_165.Out", "box_VisibilityModifier_197.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_165_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_201();
    l0 = self.box_VisibilityModifier_201;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1474253689", "1474253689", "UNI50_020_B10", "box_OutputOrder_v2_165.Out", "box_VisibilityModifier_201.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_165_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_176();
    l0 = self.box_VisibilityModifier_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1694695489", "1694695489", "UNI50_020_B10", "box_OutputOrder_v2_165.Out", "box_VisibilityModifier_176.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_165_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_237();
    l0 = self.box_Music_Quest_v2_237;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1032351371", "1032351371", "UNI50_020_B10", "box_OutputOrder_v2_165.Out", "box_Music_Quest_v2_237.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Brick_Secure_Area_v5_122_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_129();
    l0 = self.box_Brick_Secure_Area_v5_122;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2121248576", "2121248576", "UNI50_020_B10", "box_Brick_Secure_Area_v5_122.Success", "box_SetBoolean_v2_129.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_141_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_141;
    l1 = self.box_MultipleOR_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2087785752", "2087785752", "UNI50_020_B10", "box_OnceOnly_v3_141.Out", "box_MultipleOR_140.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_179_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_179;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|259182044", "259182044", "UNI50_020_B10", "box_ProximityTrigger_v2_179.Enter", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleAND_v2_132_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_131();
    l0 = self.box_MultipleAND_v2_132;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|582579784", "582579784", "UNI50_020_B10", "box_MultipleAND_v2_132.Out", "box_Simple_Node_131.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_216_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_228();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2003305508", "2003305508", "UNI50_020_B10", "box_AddActivityObjective_v2_216.Out", "box_OutputOrder_v2_228.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_156_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_178();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|659976434", "659976434", "UNI50_020_B10", "box_OutputOrder_v2_156.Out", "box_SoundPointModifier_178.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_156_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_167();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1719938694", "1719938694", "UNI50_020_B10", "box_OutputOrder_v2_156.Out", "box_SoundPointModifier_167.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_58_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_159();
    l0 = self.box_Delay_v5_58;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2088074209", "2088074209", "UNI50_020_B10", "box_Delay_v5_58.TimeElapsed", "box_EndActivityObjective_v2_159.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ActivityInitialized_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|573402560", "573402560", "UNI50_020_B10", "box_MultipleOR_5.Out", "box_ActivityInitialized_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_StartCelebration_8_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_10();
    l0 = self.box_StartCelebration_8;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1231698372", "1231698372", "UNI50_020_B10", "box_StartCelebration_8.Ended", "box_ActivityEnd_10.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_116_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_119();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|832360030", "832360030", "UNI50_020_B10", "box_OutputOrder_v2_116.Out", "box_SetBoolean_v2_119.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_116_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_107();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|206178791", "206178791", "UNI50_020_B10", "box_OutputOrder_v2_116.Out", "box_Simple_Node_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_116_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_217();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|798009208", "798009208", "UNI50_020_B10", "box_OutputOrder_v2_116.Out", "box_Compare_Boolean_217.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v2_134_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_132();
    l0 = self.box_MultipleAND_v2_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1911926678", "1911926678", "UNI50_020_B10", "box_IsPawnAlive_v2_134.False", "box_MultipleAND_v2_132.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_IsPawnAlive_v2_134_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|840355732", "840355732", "UNI50_020_B10", "box_IsPawnAlive_v2_134.True", "box_MultipleOR_137.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_228_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_139();
    l0 = self.box_GroupSizeListener_v5_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|263080651", "263080651", "UNI50_020_B10", "box_OutputOrder_v2_228.Out", "box_GroupSizeListener_v5_139.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_228_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_99();
    l0 = self.box_GroupSizeListener_v5_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|787710543", "787710543", "UNI50_020_B10", "box_OutputOrder_v2_228.Out", "box_GroupSizeListener_v5_99.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_228_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_230();
    l0 = self.box_GroupSizeListener_v5_230;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|160178066", "160178066", "UNI50_020_B10", "box_OutputOrder_v2_228.Out", "box_GroupSizeListener_v5_230.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_228_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_224();
    l0 = self.box_GroupSizeListener_v5_224;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|804295566", "804295566", "UNI50_020_B10", "box_OutputOrder_v2_228.Out", "box_GroupSizeListener_v5_224.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_89_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_181();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1761945034", "1761945034", "UNI50_020_B10", "box_OutputOrder_v2_89.Out", "box_OutputOrder_v2_181.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|320078384", "320078384", "UNI50_020_B10", "box_OutputOrder_v2_89.Out", "box_OutputOrder_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCalls_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1332178490", "1332178490", "UNI50_020_B10", "box_OutputOrder_v2_89.Out", "box_PhoneCalls_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Delay_v5_148_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_148;
    l1 = self.box_OnceOnly_v3_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|280311059", "280311059", "UNI50_020_B10", "box_Delay_v5_148.TimeElapsed", "box_OnceOnly_v3_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_247_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_49();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1013263031", "1013263031", "UNI50_020_B10", "box_OutputOrder_v2_247.Out", "box_Compare_Boolean_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_247_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_243();
    l0 = self.box_Music_Quest_v2_243;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1599457027", "1599457027", "UNI50_020_B10", "box_OutputOrder_v2_247.Out", "box_Music_Quest_v2_243.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_193_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_196();
    l0 = self.box_GroupSizeListener_v5_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1895729932", "1895729932", "UNI50_020_B10", "box_SetContextualStrategy_193.Out", "box_GroupSizeListener_v5_196.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_85();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1786342668", "1786342668", "UNI50_020_B10", "box_OutputOrder_v2_30.Out", "box_SetBoolean_v2_85.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MobileAlarmListener_26();
    l0 = self.box_MobileAlarmListener_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1563442067", "1563442067", "UNI50_020_B10", "box_OutputOrder_v2_30.Out", "box_MobileAlarmListener_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|@AREA_SECURED");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_160_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|@CULT_PRIESTEST_KILLED");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_118_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|@DETECTED_BY_CULT");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|@FAIL HOSTAGE");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_219_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|@Failsafe");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_123_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|@HIDE");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_107_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|@Is_Area_Secured");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_129_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|@LadyIsHere");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_209_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|@n_OnLeaveZone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_253_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|@Ragdoll_Loading");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_254_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|@STEALTH_SPAWN_PRIESTESS");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_83_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|@TARGET_KILLED_STEALTH");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_20_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|19746171");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_171_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_252()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_252");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|27657889");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "18152987122742282",
        -- missionLayerId,
        [1] = "27160259376098343",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_95()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103721329850073185",
    };
    return params;
end;

function export:OnEnter_box_Brick_Kill_Target_CORE_v2_13()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bPlayerDetection,
        [1] = false,
        -- Objective,
        [4] = {
            section = "Objective",
            item = "UNI50_020_Kill_VIP",
            id = "856061",
        },
        -- TargetGroup,
        [6] = "#466F2FFC",
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_24()
    local params;
    params = {
        -- group,
        [0] = "#CD5DD709",
    };
    return params;
end;

function export:OnEnter_box_EntityTagListener_v4_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- id,
        [1] = "#741D96D4",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|87664877");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_41_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI50_020_CALL_OBJ_prepare_your_ambush",
            id = "838267",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|109531368");
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
                [0] = self.f_box_OutputOrder_v2_181_Out_0,
                [1] = self.f_box_OutputOrder_v2_181_Out_1,
                [2] = self.f_box_OutputOrder_v2_181_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_200()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103028459472171067",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|137811195");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_202_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_202_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Has7MinutePriestessCame,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|191283140");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_131_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|224116066");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_91_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|248131352");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_39_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_39_A_is_True,
    });
    params = {
        -- A,
        [0] = self.AreHostageDead,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_126()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_47()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 420,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_248()
    local params;
    DrawTextToScreen("Comment: MUS Save remaining hostages", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Music_Quest_v2')-- Comment: MUS Save remaining hostages");
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
        [6] = "861812616",
        -- StopEvent,
        [7] = "144496211",
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

function export:OnEnter_box_Delay_v5_251()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|288021817");
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
                [0] = self.f_box_OutputOrder_v2_192_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_103()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|336856810");
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
                [0] = self.f_box_OutputOrder_v2_234_Out_0,
                [1] = self.f_box_OutputOrder_v2_234_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|366872613");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_205_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_249()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103015679316746506",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_190()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_AlarmModifier_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AlarmModifier_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|400653156");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_AlarmModifier_v2_34_Activated,
    });
    params = {
        -- AlarmGroup,
        [0] = "#05554349",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|406555016");
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
                [0] = self.f_box_OutputOrder_v2_186_Out_0,
                [1] = self.f_box_OutputOrder_v2_186_Out_1,
                [2] = self.f_box_OutputOrder_v2_186_Out_2,
                [3] = self.f_box_OutputOrder_v2_186_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|408953869");
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

function export:OnEnter_box_OutputOrder_v2_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|411464587");
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|418148274");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_185_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2104742418438966078",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI50_020_CALL_OBJ_prepare_your_ambush",
            id = "838267",
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_250()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103015673165799688",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|444336356");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_108_A_ge_B,
    });
    l0 = self.box_GroupSizeListener_v5_99;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|453992626");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_130_A_is_False,
    });
    params = {
        -- A,
        [0] = Globals.UNI50_020_B10.IsWaveStarted,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|477506894");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_159_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI50_020_CALL_OBJ_prepare_your_ambush",
            id = "838267",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|496067130");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_203_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|553072015");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_21_Out,
    });
    params = {
        -- Fact,
        [0] = "DredgeHostageSaved",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_153()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|555177705");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_119_Out,
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
        [1] = "#0216E4EC",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|587159776");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_69_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Has_alarm_Been_activated_but_Not_called,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|629877414");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_31_Out,
    });
    params = {
        -- SoundID,
        [0] = "492691704",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|643391411");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2104464858079588487",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|644619246");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_195_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_196;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_147()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|684191213");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_223_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v5_224;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|745941705");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_92_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v5_96;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_164()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103775398073517757",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_19()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = self.sEndCall,
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|767558064");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveFromGroup_v2_52_Out,
    });
    params = {
        -- Entities,
        [0] = "2099877315409356397",
        -- Group,
        [1] = "#05554349",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_76()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102682936580044821",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_182()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104563552445606826",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|828270931");
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
                [0] = self.f_box_OutputOrder_v2_208_Out_0,
                [1] = self.f_box_OutputOrder_v2_208_Out_1,
                [2] = self.f_box_OutputOrder_v2_208_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|832846775");
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

function export:OnEnter_box_DisplayTextModifier_v6_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayTextModifier_v6_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|851412741");
    l0:SetConnections({
    });
    params = {
        -- displayOverCinematic,
        [0] = false,
        -- displayTimer,
        [1] = 12,
        -- forceInstantDisplay,
        [2] = true,
        -- isKarmaEvent,
        [3] = false,
        -- textId,
        [4] = {
            section = "Hints & Tutorials",
            item = "HINT_BINOCULARS",
            id = "852191",
        },
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|856825170");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_85_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|880518230");
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
                [0] = self.f_box_OutputOrder_v2_80_Out_0,
                [1] = self.f_box_OutputOrder_v2_80_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_166()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103775386115557051",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|892007834");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_102_Out,
    });
    params = {
        -- FromGroup,
        [0] = "2103721365273068071",
        -- ToGroup,
        [1] = "#466F2FFC",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_55()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|908147124");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_226_A_eq_B,
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

function export:OnEnter_box_OutputOrder_v2_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|921695753");
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

function export:OnEnter_box_Delay_v5_189()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|959182363");
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
                [0] = self.f_box_OutputOrder_v2_97_Out_0,
                [1] = self.f_box_OutputOrder_v2_97_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_244()
    local params;
    DrawTextToScreen("Comment: MUS Detected by Cult", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Music_Quest_v2')-- Comment: MUS Detected by Cult");
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
        [6] = "861812616",
        -- StopEvent,
        [7] = "144496211",
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

function export:OnEnter_box_HealthModifier_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1012026955");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "2104563555738135524",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1020620831");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveFromGroup_v2_213_Out,
    });
    params = {
        -- Entities,
        [0] = "2100029271331319352",
        -- Group,
        [1] = "#05554349",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1021278506");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_187_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI50_020_B10_OBJ",
            id = "560706",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1045493691");
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
                [0] = self.f_box_OutputOrder_v2_125_Out_0,
                [1] = self.f_box_OutputOrder_v2_125_Out_1,
                [2] = self.f_box_OutputOrder_v2_125_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1062795423");
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
                [0] = self.f_box_OutputOrder_v2_82_Out_0,
                [1] = self.f_box_OutputOrder_v2_82_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1138623981");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_101_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v5_75;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1151538009");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_152_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1166609287");
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

function export:OnEnter_box_Music_Quest_v2_240()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 3,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "861812616",
        -- StopEvent,
        [7] = "144496211",
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

function export:OnEnter_box_GroupSizeListener_v5_139()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#B1671BB1",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1193645652");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2104464850911522949",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1209719683");
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
                [0] = self.f_box_OutputOrder_v2_210_Out_0,
                [1] = self.f_box_OutputOrder_v2_210_Out_1,
                [2] = self.f_box_OutputOrder_v2_210_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_230()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#B1671BB1",
    };
    return params;
end;

function export:OnEnter_box_Brick_Free_Hostages_v2_4()
    local params;
    params = {
        -- bCompletePreviousObjectives,
        [0] = false,
        -- bMinimunHostagesCompletion,
        [1] = false,
        -- bShowObjective,
        [2] = false,
        -- Hostage_group,
        [3] = "#B1671BB1",
        -- HostagesToSave,
        [4] = 1,
        -- Objective,
        [5] = {
            section = "Description",
            item = "D1_CultLocation_01_QUEST_MAIN",
            id = "589798",
        },
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1255836130");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsPawnAlive_v2_143_False,
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_143_True,
    });
    params = {
        -- Pawn,
        [0] = "2099877308350342605",
    };
    return params;
end;

function export:OnEnter_box_MobileAlarmListener_26()
    local params;
    params = {
        -- Group,
        [0] = "#CD5DD709",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_246");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1270424050");
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1273629472");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_184_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2104742418438966078",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI50_020_CALL_OBJ_prepare_your_ambush",
            id = "838267",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1276323084");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1276655618");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1296059786");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_49_A_is_False,
    });
    params = {
        -- A,
        [0] = Globals.UNI50_020_B10.bPriestessSpawned,
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
        [2] = "2104563555738135524",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_196()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#AD6D2E39",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1314606869");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1315767215");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_124_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Is_Area_Secured_in_mission,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1337773775");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_168_A_is_False,
    });
    params = {
        -- A,
        [0] = self.Player_detected,
    };
    return params;
end;

function export:OnEnter_box_GivePlayerReward_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GivePlayerReward.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GivePlayerReward_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1374595089");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GivePlayerReward_161_Out,
    });
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- RewardObject,
        [1] = "9015217323976138",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_68()
    local params;
    params = {
        -- Group,
        [0] = self.PlayerGroup,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2420425539",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_217()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1396593179");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_217_A_is_True,
    });
    params = {
        -- A,
        [0] = self.AreHostageDead,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_245()
    local params;
    DrawTextToScreen("Comment: MUS Priestess here", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Music_Quest_v2')-- Comment: MUS Priestess here");
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
        [6] = "861812616",
        -- StopEvent,
        [7] = "144496211",
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

function export:OnEnter_box_LookAtTrigger_v2_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2102682893829601274",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_229()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_243()
    local params;
    DrawTextToScreen("Comment: MUS Ambush Priestess", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Music_Quest_v2')-- Comment: MUS Ambush Priestess");
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 1,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "861812616",
        -- StopEvent,
        [7] = "144496211",
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

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1534701060");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
                [3] = self.f_box_OutputOrder_v2_17_Out_3,
                [4] = self.f_box_OutputOrder_v2_17_Out_4,
                [5] = self.f_box_OutputOrder_v2_17_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1546178582");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsPawnAlive_v2_135_False,
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_135_True,
    });
    params = {
        -- Pawn,
        [0] = "2100679163666010217",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1546784701");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveFromGroup_v2_214_Out,
    });
    params = {
        -- Entities,
        [0] = "2100030074504873889",
        -- Group,
        [1] = "#05554349",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_75()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#B1671BB1",
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_46()
    local params;
    params = {
        -- group,
        [0] = "#741D96D4",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_221()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1622689531");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_144_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1641022753");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_151_A_is_False,
    });
    params = {
        -- A,
        [0] = self.HasBeenDetectedByPriestess,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_60()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_201()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104934905765983044",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1651088247");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveFromGroup_v2_28_Out,
    });
    params = {
        -- Entities,
        [0] = "2099877314232854103",
        -- Group,
        [1] = "#05554349",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_224()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#AD6D2E39",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1659642648");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_133_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_57()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103789631007888741",
    };
    return params;
end;

function export:OnEnter_box_Brick_Kill_Target_ExtraMaker_v2_1()
    local params;
    params = {
        -- Entity,
        [0] = "2103721365273068071",
        -- Mobile_Marker,
        [1] = "2103749834679784437",
        -- Objective,
        [2] = {
            section = "Objective",
            item = "UNI50_020_Kill_VIP",
            id = "856061",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1668774798");
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
                [0] = self.f_box_OutputOrder_v2_74_Out_0,
                [1] = self.f_box_OutputOrder_v2_74_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1700830354");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_188_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI50_020_B10_OBJ",
            id = "560706",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1704637991");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_93_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI50_020_B10_OBJ",
            id = "560706",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1718076036");
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
                [0] = self.f_box_OutputOrder_v2_110_Out_0,
                [1] = self.f_box_OutputOrder_v2_110_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_51()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = self.PlayerGroup,
        -- SoundId,
        [5] = "1981672122",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1720774217");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_169_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Player_detected,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_197()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104934900458091324",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1734252674");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1771172205");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_94_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_94_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Player_detected,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_238()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 3,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "861812616",
        -- StopEvent,
        [7] = "144496211",
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

function export:OnEnter_box_Compare_Integers_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1803064157");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_142_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v5_139;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1819290330");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
                [2] = self.f_box_OutputOrder_v2_54_Out_2,
                [3] = self.f_box_OutputOrder_v2_54_Out_3,
                [4] = self.f_box_OutputOrder_v2_54_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1819936011");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsPawnAlive_v2_138_False,
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_138_True,
    });
    params = {
        -- Pawn,
        [0] = "2103222195688859091",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_99()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#AD6D2E39",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1840566308");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_77_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_237()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 3,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "861812616",
        -- StopEvent,
        [7] = "144496211",
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

function export:OnEnter_box_VisibilityModifier_176()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104367810823079780",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_43()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1862620443");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_16_Out,
    });
    params = {
        -- SoundID,
        [0] = "1898818737",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_177()
    local params;
    params = {
        -- Group,
        [0] = "2102307118628508710",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|1930698470");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 10,
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
                [2] = self.f_box_OutputOrder_v2_165_Out_2,
                [3] = self.f_box_OutputOrder_v2_165_Out_3,
                [4] = self.f_box_OutputOrder_v2_165_Out_4,
                [5] = self.f_box_OutputOrder_v2_165_Out_5,
                [6] = self.f_box_OutputOrder_v2_165_Out_6,
                [7] = self.f_box_OutputOrder_v2_165_Out_7,
                [9] = self.f_box_OutputOrder_v2_165_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_56()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = self.PlayerGroup,
        -- SoundId,
        [5] = "3959662965",
    };
    return params;
end;

function export:OnEnter_box_Brick_Secure_Area_v5_122()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bRequiresObjective,
        [1] = true,
        -- gEnemyGroup,
        [3] = "#0216E4EC",
        -- Objective,
        [4] = {
            section = "Objective",
            item = "UNI50_020_Secure_Area",
            id = "856060",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_179()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103789631007888741",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_132()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2008907655");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_216_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI50_020_B10_OBJ",
            id = "560706",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2036932153");
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

function export:OnEnter_box_Delay_v5_58()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_8()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2090915356");
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
                [0] = self.f_box_OutputOrder_v2_116_Out_0,
                [1] = self.f_box_OutputOrder_v2_116_Out_1,
                [2] = self.f_box_OutputOrder_v2_116_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2099706732");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsPawnAlive_v2_134_False,
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_134_True,
    });
    params = {
        -- Pawn,
        [0] = "2102293485932522886",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2102810031");
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
                [0] = self.f_box_OutputOrder_v2_228_Out_0,
                [1] = self.f_box_OutputOrder_v2_228_Out_1,
                [2] = self.f_box_OutputOrder_v2_228_Out_2,
                [3] = self.f_box_OutputOrder_v2_228_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2103154027");
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
                [0] = self.f_box_OutputOrder_v2_89_Out_0,
                [1] = self.f_box_OutputOrder_v2_89_Out_1,
                [2] = self.f_box_OutputOrder_v2_89_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_3()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099877311982609961",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_148()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_247()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_247");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2129256709");
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

function export:OnEnter_box_SetContextualStrategy_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2134783612");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_193_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101246327689057046",
        -- Group,
        [1] = "#0216E4EC",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_020\\UNI50_020_B10.domino|@UNI50_020_B10|2137714559");
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
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_129_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Is_Area_Secured_in_mission = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_171_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.AreHostageDead = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_91_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Player_detected = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_205_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.AreHostageDead = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_203_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Has7MinutePriestessCame = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_119_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.AreObjectiveCompleted = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sEndCall = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_85_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Has_alarm_Been_activated_but_Not_called = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_152_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.HasBeenDetectedByPriestess = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Free_Hostages_v2_4_Fail()
    local l0;
    l0 = self.box_Brick_Free_Hostages_v2_4;
    self.Hostages_Alive = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Free_Hostages_v2_4_Started()
    local l0;
    l0 = self.box_Brick_Free_Hostages_v2_4;
    self.Hostages_Alive = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Free_Hostages_v2_4_Success()
    local l0;
    l0 = self.box_Brick_Free_Hostages_v2_4;
    self.Hostages_Alive = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.UNI50_020_B10.bPriestessSpawned = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_144_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.AreHostageDead = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_133_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.AreHostageDead = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.PriestessKilled = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_77_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.AreHostageSaved = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sEndCall = l0:GetDataOutValue(0);
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
