LUAC�
 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni35/uni35_030/uni35_030_b20.domino
-- User graph: UNI35_030_B25
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_deliver_Corpse_To_Position.Brick_Deliver_Corpse_To_Position_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/InteractBodyListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnIsInWater.lua");
        cboxRes:RegisterBox("Domino/System/PawnWaterListener.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SendItemToStash.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UnlockDoor.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehiclePositionLockModifier.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_030/UNI35_030_B10.RemoveNPCs.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2222668405.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3733680580.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3796511576.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1078565421.bnk]], "CSoundResource");
        cboxRes:LoadResource([[350739722.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4258930805.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1783784504.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3669084596.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3517702556.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2990974824.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3100329793.bnk]], "CSoundResource");
        cboxRes:LoadResource([[272370895.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4193902880.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2050370346.bnk]], "CSoundResource");
        cboxRes:LoadResource([[503184883.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3398270563.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_030/UNI35_030_B20.UNI35_030_B25.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_deliver_Corpse_To_Position.Brick_Deliver_Corpse_To_Position_v3.debug.lua")] = {
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
                name = "Fail_TooFarFromCorpse",
                delayed = true,
            },
            [3] = {
                name = "Fail_TooFarFromTarget",
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
                name = "bDropCorpseForSuccess",
                type = "bool",
            },
            [1] = {
                name = "DistanceForSuccess_Opt",
                type = "float",
            },
            [2] = {
                name = "eCorpse",
                type = "entity",
            },
            [3] = {
                name = "eCorpseMarker",
                type = "entity",
            },
            [4] = {
                name = "eObjectiveMarker",
                type = "entity",
            },
            [5] = {
                name = "FailDistance_Opt",
                type = "float",
            },
            [6] = {
                name = "Objective",
                type = "oasis",
            },
            [7] = {
                name = "WarningDistance_Opt",
                type = "float",
            },
        },
        dataInCount = 8,
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
    metadataTable[GetPathID("Domino/System/InteractBodyListener_v2.lua")] = {
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
                name = "bodyDropped",
                delayed = true,
            },
            [1] = {
                name = "bodyPickUp",
                delayed = true,
            },
            [2] = {
                name = "outDisable",
                delayed = false,
            },
            [3] = {
                name = "outEnable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "outInteractor",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/PawnIsInWater.lua")] = {
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
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PawnWaterListener.lua")] = {
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
                name = "EnteredWater",
                delayed = true,
            },
            [3] = {
                name = "ExitedWater",
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
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/SendItemToStash.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SendToStash",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "players",
                type = "group",
            },
            [2] = {
                name = "quantity",
                type = "int",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/UnlockDoor.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Unlock",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "door",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")] = {
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
                name = "IsAI",
                type = "bool",
            },
            [1] = {
                name = "IsPlayer",
                type = "bool",
            },
            [2] = {
                name = "SeatIndex",
                type = "int",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_030/UNI35_030_B10.RemoveNPCs.debug.lua")] = {
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
    self._name = "UNI35_030_B25";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25";
    self.character = nil;
    self.iCeleb = "9015208488001815";
    self.FriendlyPlayers = nil;
    self.ePastorJerome = nil;
    self.iCultB25 = 0;
    self.b_IsCorpseInWater = false;
    self.e_BodyCarrier = nil;
    self.b_BodyCarried = false;
    self.l_ImpulseVector = {
    };
    self.e_PlayerInZone = nil;
    self.box_ProximityTrigger_v2_10 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|5468951");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_10_Enter,
    });
    self.box_SpawnAI_76 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|7082807");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_76_Out,
    });
    self.box_Bind_v4_129 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|11931533");
    l0:SetConnections({
    });
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|22632149");
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
        [0] = self.f_box_MultipleOR_42_Out,
    });
    self.box_PlayDialog_v6_99 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|37177438");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_99_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_99_FinishedInterrupted,
    });
    self.box_Delay_v5_107 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|47977014");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_107_TimeElapsed,
    });
    self.box_Delay_v5_136 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|48727723");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_136_TimeElapsed,
    });
    self.box_MultipleOR_103 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|103126597");
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
        [0] = self.f_box_MultipleOR_103_Out,
    });
    self.box_SpawnAI_35 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|120751678");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_35_Out,
    });
    self.box_ProximityTrigger_v2_83 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|125306948");
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
    self.box_Delay_v5_108 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|187128403");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_108_TimeElapsed,
    });
    self.box_Delay_v5_92 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|197182269");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_92_TimeElapsed,
    });
    self.box_SpawnAI_31 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|228669086");
    l0:SetConnections({
    });
    self.box_Delay_v5_38 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|308520785");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_38_TimeElapsed,
    });
    self.box_MultipleOR_144 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|309980076");
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
    self.box_MultipleOR_79 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|349506042");
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
        [0] = self.f_box_MultipleOR_79_Out,
    });
    self.box_EntityStatusListener_16 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|364659667");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_16_Loaded,
    });
    self.box_SpawnAI_112 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|386607402");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_112_Out,
    });
    self.box_SpawnAI_9 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|403001313");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_9_Out,
    });
    self.box_SpawnAI_4 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|474090008");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_4_Out,
    });
    self.box_ProximityRadiusListener_v3_118 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|484216010");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_118_SomeoneNear,
    });
    self.box_MultipleOR_102 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|500163726");
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
        [0] = self.f_box_MultipleOR_102_Out,
    });
    self.box_Delay_v5_78 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|548388392");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_78_TimeElapsed,
    });
    self.box_HealthListener_v6_115 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|609525993");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_115_Killed,
    });
    self.box_OnceOnly_v3_69 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|621648573");
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
                [0] = self.f_box_OnceOnly_v3_69_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_86 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|640214776");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_86_Loaded,
    });
    self.box_PlayDialog_v6_61 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|650492185");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_61_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_61_FinishedInterrupted,
    });
    self.box_MultipleOR_122 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|702573690");
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
        [0] = self.f_box_MultipleOR_122_Out,
    });
    self.box_Switch_101 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|715800730");
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
        -- None,
        [0] = self.f_box_Switch_101_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_101_Output_0,
                [1] = self.f_box_Switch_101_Output_1,
                [2] = self.f_box_Switch_101_Output_2,
                [3] = self.f_box_Switch_101_Output_3,
            },
            count = 4,
        },
    });
    self.box_MultipleOR_137 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|744747591");
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
        [0] = self.f_box_MultipleOR_137_Out,
    });
    self.box_Delay_v5_66 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|783256188");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_66_TimeElapsed,
    });
    self.box_PhysicsModifier_39 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|785978834");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_39_Disabled,
    });
    self.box_PlayDialog_v6_84 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|787322401");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_84_Finished,
    });
    self.box_Gate_v3_52 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|821397673");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_52_Out,
    });
    self.box_PlayDialog_v6_100 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|826313319");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_100_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_100_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_134 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|903209986");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_134_Finished,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|908720173");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_SpawnAI_28 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|935287304");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_28_Out,
    });
    self.box_Delay_v5_109 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1001762060");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_109_TimeElapsed,
    });
    self.box_ExitZoneWarningListener_v3_68 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1022859007");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_68_FailingZoneEntered,
    });
    self.box_EntityStatusListener_64 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1036187838");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_64_Loaded,
    });
    self.box_SpawnAI_75 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1064693578");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_75_Out,
    });
    self.box_Delay_v5_26 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1068580995");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_26_TimeElapsed,
    });
    self.box_ActivityInitialized_19 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1089316730");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_19_Out,
    });
    self.box_Music_Quest_v2_139 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1168617569");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_73 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1181807360");
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
                [0] = self.f_box_OnceOnly_v3_73_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_30 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1191516848");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_30_Out,
    });
    self.box_SendItemToStash_13 = cbox:CreateBox("Domino/System/SendItemToStash.lua");
    l0 = self.box_SendItemToStash_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SendItemToStash_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1193915733");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SendItemToStash_13_Out,
    });
    self.box_MultipleAND_v2_57 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1223280644");
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
        [0] = self.f_box_MultipleAND_v2_57_Out,
    });
    self.box_PlayDialog_v6_47 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1235995271");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_47_Finished,
    });
    self.box_MultipleOR_93 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1237169343");
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
        [0] = self.f_box_MultipleOR_93_Out,
    });
    self.box_ProximityTrigger_v2_123 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1246026704");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_123_OnOccupied,
    });
    self.box_PlayDialog_v6_98 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1269954491");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_98_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_98_FinishedInterrupted,
    });
    self.box_InteractBodyListener_v2_6 = cbox:CreateBox("Domino/System/InteractBodyListener_v2.lua");
    l0 = self.box_InteractBodyListener_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InteractBodyListener_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1278768935");
    l0:SetConnections({
        -- bodyDropped,
        [0] = self.f_box_InteractBodyListener_v2_6_bodyDropped,
        -- bodyPickUp,
        [1] = self.f_box_InteractBodyListener_v2_6_bodyPickUp,
        -- outDisable,
        [2] = self.f_box_InteractBodyListener_v2_6_outDisable,
        -- outEnable,
        [3] = self.f_box_InteractBodyListener_v2_6_outEnable,
    });
    self.box_RequestPhoneCall_v2_65 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1302288776");
    l0:SetConnections({
    });
    self.box_SpawnAI_29 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1308017758");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_29_Out,
    });
    self.box_Delay_v5_117 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1312626664");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_117_TimeElapsed,
    });
    self.box_Bind_v4_110 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1329482868");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_110_Bound,
    });
    self.box_SpawnAI_8 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1331421123");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_8_Out,
    });
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1366479770");
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
        [0] = self.f_box_MultipleOR_56_Out,
    });
    self.box_GroupSizeListener_v5_72 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1373575439");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_72_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_72_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_72_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_72_MemberRemoved,
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1381408215");
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
        [0] = self.f_box_MultipleOR_23_Out,
    });
    self.box_RemoveEntity_v2_116 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1415879410");
    l0:SetConnections({
    });
    self.box_MultipleOR_96 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1429762571");
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
        [0] = self.f_box_MultipleOR_96_Out,
    });
    self.box_PlayDialog_v6_132 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1447249316");
    l0:SetConnections({
    });
    self.box_MultipleOR_94 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1491133970");
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
        [0] = self.f_box_MultipleOR_94_Out,
    });
    self.box_ProximityRadiusListener_v3_60 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1546335231");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_60_SomeoneNear,
    });
    self.box_Random_50 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1554365229");
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
                [0] = self.f_box_Random_50_Output_0,
                [1] = self.f_box_Random_50_Output_1,
                [2] = self.f_box_Random_50_Output_2,
                [3] = self.f_box_Random_50_Output_3,
            },
            count = 4,
        },
    });
    self.box_PlayDialog_v6_80 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1592475553");
    l0:SetConnections({
    });
    self.box_Delay_v5_44 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1633366298");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_44_TimeElapsed,
    });
    self.box_MultipleOR_135 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1677281850");
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
        [0] = self.f_box_MultipleOR_135_Out,
    });
    self.box_ProximityTrigger_v2_67 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1700226315");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_67_Enter,
    });
    self.box_RequestPhoneCall_v2_55 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1733869491");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_55_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_55_Completed,
    });
    self.box_InteractBodyListener_v2_43 = cbox:CreateBox("Domino/System/InteractBodyListener_v2.lua");
    l0 = self.box_InteractBodyListener_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InteractBodyListener_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1778868091");
    l0:SetConnections({
        -- bodyPickUp,
        [1] = self.f_box_InteractBodyListener_v2_43_bodyPickUp,
    });
    self.box_SpawnAI_85 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1788563275");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_85_Out,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1807340357");
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
    self.box_EntityStatusListener_25 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1824861442");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_25_Loaded,
    });
    self.box_OnceOnly_v3_34 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1847061276");
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
                [0] = self.f_box_OnceOnly_v3_34_Out_0,
            },
            count = 2,
        },
    });
    self.box_StartCelebration_53 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1857727871");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_StartCelebration_53_Started,
    });
    self.box_RequestPhoneCall_v2_48 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1865341056");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_48_Completed,
    });
    self.box_Delay_v5_113 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1904528215");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_113_TimeElapsed,
    });
    self.box_SpawnAI_114 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1911241800");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_114_Spawned,
    });
    self.box_PlayDialog_v6_45 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1919008017");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_45_Finished,
    });
    self.box_OnceOnly_v3_120 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1927912376");
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
                [0] = self.f_box_OnceOnly_v3_120_Out_0,
            },
            count = 2,
        },
    });
    self.box_RemoveNPCs_27 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_030/UNI35_030_B10.RemoveNPCs.debug.lua");
    l0 = self.box_RemoveNPCs_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveNPCs_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1940053850");
    l0:SetConnections({
    });
    self.box_SpawnAI_77 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1944696839");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_95 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1981538598");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_95_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_95_FinishedInterrupted,
    });
    self.box_VehicleDamageListener_v2_41 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1991260491");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_41_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_41_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_41_Disabled,
    });
    self.box_WaterListener_87 = cbox:CreateBox("Domino/System/PawnWaterListener.lua");
    l0 = self.box_WaterListener_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WaterListener_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1996158012");
    l0:SetConnections({
        -- EnteredWater,
        [2] = self.f_box_WaterListener_87_EnteredWater,
    });
    self.box_GroupSizeListener_v5_70 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2028168384");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_70_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_70_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_70_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_70_MemberRemoved,
    });
    self.box_SpawnAI_36 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2046129312");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_36_Out,
    });
    self.box_Brick_Deliver_Corpse_To_Position_v3_32 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_deliver_Corpse_To_Position.Brick_Deliver_Corpse_To_Position_v3.debug.lua");
    l0 = self.box_Brick_Deliver_Corpse_To_Position_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Corpse_To_Position_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2048908996");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_Brick_Deliver_Corpse_To_Position_v3_32_Enabled,
        -- Fail_TooFarFromCorpse,
        [2] = self.f_box_Brick_Deliver_Corpse_To_Position_v3_32_Fail_TooFarFromCorpse,
        -- Fail_TooFarFromTarget,
        [3] = self.f_box_Brick_Deliver_Corpse_To_Position_v3_32_Fail_TooFarFromTarget,
        -- Success,
        [4] = self.f_box_Brick_Deliver_Corpse_To_Position_v3_32_Success,
    });
    self.box_GroupSizeListener_v5_11 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2136458136");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_11_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_11_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_11_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_11_MemberRemoved,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|466562749", "466562749", "UNI35_030_B25", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_141_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_139();
    l0 = self.box_Music_Quest_v2_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1818956598", "1818956598", "UNI35_030_B25", "box_Simple_Node_141.Out", "box_Music_Quest_v2_139.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_104_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_83();
    l0 = self.box_ProximityTrigger_v2_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|850557066", "850557066", "UNI35_030_B25", "box_Simple_Node_104.Out", "box_ProximityTrigger_v2_83.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_GroupSizeListener_v5_11();
    l0 = self.box_GroupSizeListener_v5_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|756416211", "756416211", "UNI35_030_B25", "box_Simple_Node_104.Out", "box_GroupSizeListener_v5_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_AddActivityObjective_v2_90();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|324505419", "324505419", "UNI35_030_B25", "box_Simple_Node_104.Out", "box_AddActivityObjective_v2_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_106_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_92();
    l0 = self.box_Delay_v5_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1151628493", "1151628493", "UNI35_030_B25", "box_Simple_Node_106.Out", "box_Delay_v5_92.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_10_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_36();
    l0 = self.box_ProximityTrigger_v2_10;
    l1 = self.box_SpawnAI_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|450893359", "450893359", "UNI35_030_B25", "box_ProximityTrigger_v2_10.Enter", "box_SpawnAI_36.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_77();
    l0 = self.box_SpawnAI_76;
    l1 = self.box_SpawnAI_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|588065", "588065", "UNI35_030_B25", "box_SpawnAI_76.Out", "box_SpawnAI_77.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_40();
    l0 = self.box_MultipleOR_42;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|333343843", "333343843", "UNI35_030_B25", "box_MultipleOR_42.Out", "box_ActivityRetry_40.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_99_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_99;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|491716251", "491716251", "UNI35_030_B25", "box_PlayDialog_v6_99.Finished", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_99_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_99;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1354347438", "1354347438", "UNI35_030_B25", "box_PlayDialog_v6_99.FinishedInterrupted", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_107_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_110();
    l0 = self.box_Delay_v5_107;
    l1 = self.box_Bind_v4_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1193917526", "1193917526", "UNI35_030_B25", "box_Delay_v5_107.TimeElapsed", "box_Bind_v4_110.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_136_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_136;
    l1 = self.box_MultipleOR_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2096437887", "2096437887", "UNI35_030_B25", "box_Delay_v5_136.TimeElapsed", "box_MultipleOR_135.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_140_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_109();
    l0 = self.box_Delay_v5_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|505579745", "505579745", "UNI35_030_B25", "box_OutputOrder_v2_140.Out", "box_Delay_v5_109.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_140_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_141();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|815355120", "815355120", "UNI35_030_B25", "box_OutputOrder_v2_140.Out", "box_Simple_Node_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_35();
    l0 = self.box_SpawnAI_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|973100198", "973100198", "UNI35_030_B25", "box_OutputOrder_v2_7.Out", "box_SpawnAI_35.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_15();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1150713659", "1150713659", "UNI35_030_B25", "box_OutputOrder_v2_7.Out", "box_UnlockDoor_15.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_103_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_101();
    l0 = self.box_MultipleOR_103;
    l1 = self.box_Switch_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2033373493", "2033373493", "UNI35_030_B25", "box_MultipleOR_103.Out", "box_Switch_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_35_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_35;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1340888999", "1340888999", "UNI35_030_B25", "box_SpawnAI_35.Out", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_83_Enabled()
    self:OnExit_box_ProximityTrigger_v2_83_Enabled();
end;

function export:f_box_ProximityTrigger_v2_83_Enter()
    self:OnExit_box_ProximityTrigger_v2_83_Enter();
end;

function export:f_box_ProximityTrigger_v2_83_Leave()
    self:OnExit_box_ProximityTrigger_v2_83_Leave();
end;

function export:f_box_ProximityTrigger_v2_83_OnEmpty()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_83_OnEmpty();
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = self.box_ProximityTrigger_v2_83;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1380895281", "1380895281", "UNI35_030_B25", "box_ProximityTrigger_v2_83.OnEmpty", "box_OutputOrder_v2_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_83_OnOccupied()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_83_OnOccupied();
    l0 = self.box_ProximityTrigger_v2_83;
    l1 = self.box_MultipleOR_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|772872050", "772872050", "UNI35_030_B25", "box_ProximityTrigger_v2_83.OnOccupied", "box_MultipleOR_135.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_83_Use()
    self:OnExit_box_ProximityTrigger_v2_83_Use();
end;

function export:f_box_VehiclePositionLockModifier_62_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_51();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1868141851", "1868141851", "UNI35_030_B25", "box_VehiclePositionLockModifier_62.Unlocked", "box_UseContextualActionModifier_v3_51.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_24_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_64();
    l0 = self.box_EntityStatusListener_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|349045581", "349045581", "UNI35_030_B25", "box_GetPlayerGroup_v2_24.Out", "box_EntityStatusListener_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_108_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_63();
    l0 = self.box_Delay_v5_108;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1902593705", "1902593705", "UNI35_030_B25", "box_Delay_v5_108.TimeElapsed", "box_HealthModifier_v2_63.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_92_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_92;
    l1 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1083956620", "1083956620", "UNI35_030_B25", "box_Delay_v5_92.TimeElapsed", "box_MultipleOR_103.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_38_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_31();
    l0 = self.box_Delay_v5_38;
    l1 = self.box_SpawnAI_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1622498672", "1622498672", "UNI35_030_B25", "box_Delay_v5_38.TimeElapsed", "box_SpawnAI_31.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_144_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_143();
    l0 = self.box_MultipleOR_144;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1080072743", "1080072743", "UNI35_030_B25", "box_MultipleOR_144.Out", "box_ActivityRetry_143.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_79_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_78();
    l0 = self.box_MultipleOR_79;
    l1 = self.box_Delay_v5_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2091310455", "2091310455", "UNI35_030_B25", "box_MultipleOR_79.Out", "box_Delay_v5_78.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_16_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = self.box_EntityStatusListener_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|376509589", "376509589", "UNI35_030_B25", "box_EntityStatusListener_16.Loaded", "box_OutputOrder_v2_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_112_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_114();
    l0 = self.box_SpawnAI_112;
    l1 = self.box_SpawnAI_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|647840546", "647840546", "UNI35_030_B25", "box_SpawnAI_112.Out", "box_SpawnAI_114.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_8();
    l0 = self.box_SpawnAI_9;
    l1 = self.box_SpawnAI_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|927564168", "927564168", "UNI35_030_B25", "box_SpawnAI_9.Out", "box_SpawnAI_8.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_12_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1355433317", "1355433317", "UNI35_030_B25", "box_Compare_Integers_12.A_le_B", "box_OnceOnly_v3_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_52();
    l0 = self.box_Gate_v3_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|403644704", "403644704", "UNI35_030_B25", "box_OutputOrder_v2_58.Out", "box_Gate_v3_52.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehiclePositionLockModifier_62();
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|828620404", "828620404", "UNI35_030_B25", "box_OutputOrder_v2_58.Out", "box_VehiclePositionLockModifier_62.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_57();
    l0 = self.box_MultipleAND_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1128456946", "1128456946", "UNI35_030_B25", "box_OutputOrder_v2_58.Out", "box_MultipleAND_v2_57.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_SpawnAI_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_112();
    l0 = self.box_SpawnAI_4;
    l1 = self.box_SpawnAI_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2064695251", "2064695251", "UNI35_030_B25", "box_SpawnAI_4.Out", "box_SpawnAI_112.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_118_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_132();
    l0 = self.box_ProximityRadiusListener_v3_118;
    l1 = self.box_PlayDialog_v6_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|56552963", "56552963", "UNI35_030_B25", "box_ProximityRadiusListener_v3_118.SomeoneNear", "box_PlayDialog_v6_132.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_102_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_106();
    l0 = self.box_MultipleOR_102;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1013854764", "1013854764", "UNI35_030_B25", "box_MultipleOR_102.Out", "box_Simple_Node_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_117();
    l0 = self.box_Delay_v5_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1539035132", "1539035132", "UNI35_030_B25", "box_OutputOrder_v2_33.Out", "box_Delay_v5_117.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_107();
    l0 = self.box_Delay_v5_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|594412555", "594412555", "UNI35_030_B25", "box_OutputOrder_v2_33.Out", "box_Delay_v5_107.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|884968778", "884968778", "UNI35_030_B25", "box_OutputOrder_v2_33.Out", "box_Delay_v5_26.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_78_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_80();
    l0 = self.box_Delay_v5_78;
    l1 = self.box_PlayDialog_v6_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1811037819", "1811037819", "UNI35_030_B25", "box_Delay_v5_78.TimeElapsed", "box_PlayDialog_v6_80.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_HealthModifier_v2_63_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|640920438", "640920438", "UNI35_030_B25", "box_HealthModifier_v2_63.Damaged", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_74_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|507684630", "507684630", "UNI35_030_B25", "box_Compare_Integers_74.A_le_B", "box_OnceOnly_v3_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_115_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_130();
    l0 = self.box_HealthListener_v6_115;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|190824720", "190824720", "UNI35_030_B25", "box_HealthListener_v6_115.Killed", "box_ActivityRetry_130.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityMiscInfoModifier_v2_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_59();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|812792751", "812792751", "UNI35_030_B25", "box_ActivityMiscInfoModifier_v2_22.Out", "box_ActivityForceAndLockTracking_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_69_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_57();
    l0 = self.box_OnceOnly_v3_69;
    l1 = self.box_MultipleAND_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1006278405", "1006278405", "UNI35_030_B25", "box_OnceOnly_v3_69.Out", "box_MultipleAND_v2_57.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_EntityStatusListener_86_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_115();
    l0 = self.box_EntityStatusListener_86;
    l1 = self.box_HealthListener_v6_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1099037446", "1099037446", "UNI35_030_B25", "box_EntityStatusListener_86.Loaded", "box_HealthListener_v6_115.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_61_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_61;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2145617798", "2145617798", "UNI35_030_B25", "box_PlayDialog_v6_61.Finished", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_61_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_61;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1111276807", "1111276807", "UNI35_030_B25", "box_PlayDialog_v6_61.FinishedInterrupted", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_128_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1152864785", "1152864785", "UNI35_030_B25", "box_Compare_Boolean_128.A_is_True", "box_OnceOnly_v3_120.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_122_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_121();
    l0 = self.box_MultipleOR_122;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1104411474", "1104411474", "UNI35_030_B25", "box_MultipleOR_122.Out", "box_ActivityRetry_121.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_101_None()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_111();
    l0 = self.box_Switch_101;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1829467816", "1829467816", "UNI35_030_B25", "box_Switch_101.None", "box_OutputOrder_v2_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_101_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_98();
    l0 = self.box_Switch_101;
    l1 = self.box_PlayDialog_v6_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1141169286", "1141169286", "UNI35_030_B25", "box_Switch_101.Output", "box_PlayDialog_v6_98.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_101_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_99();
    l0 = self.box_Switch_101;
    l1 = self.box_PlayDialog_v6_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|239670030", "239670030", "UNI35_030_B25", "box_Switch_101.Output", "box_PlayDialog_v6_99.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_101_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_100();
    l0 = self.box_Switch_101;
    l1 = self.box_PlayDialog_v6_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2010780314", "2010780314", "UNI35_030_B25", "box_Switch_101.Output", "box_PlayDialog_v6_100.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_101_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_95();
    l0 = self.box_Switch_101;
    l1 = self.box_PlayDialog_v6_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1652653716", "1652653716", "UNI35_030_B25", "box_Switch_101.Output", "box_PlayDialog_v6_95.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1060340145", "1060340145", "UNI35_030_B25", "box_OutputOrder_v2_2.Out", "box_Print_v2_3.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1423120163", "1423120163", "UNI35_030_B25", "box_OutputOrder_v2_2.Out", "box_ActivityAcknowledgeGate_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_137_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_136();
    l0 = self.box_MultipleOR_137;
    l1 = self.box_Delay_v5_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|236893535", "236893535", "UNI35_030_B25", "box_MultipleOR_137.Out", "box_Delay_v5_136.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_66_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_65();
    l0 = self.box_Delay_v5_66;
    l1 = self.box_RequestPhoneCall_v2_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1050545561", "1050545561", "UNI35_030_B25", "box_Delay_v5_66.TimeElapsed", "box_RequestPhoneCall_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PhysicsModifier_39_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_142();
    l0 = self.box_PhysicsModifier_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1718715531", "1718715531", "UNI35_030_B25", "box_PhysicsModifier_39.Disabled", "box_OutputOrder_v2_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_84_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_84;
    l1 = self.box_MultipleOR_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1032670810", "1032670810", "UNI35_030_B25", "box_PlayDialog_v6_84.Finished", "box_MultipleOR_137.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_50();
    l0 = self.box_Gate_v3_52;
    l1 = self.box_Random_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1089141810", "1089141810", "UNI35_030_B25", "box_Gate_v3_52.Out", "box_Random_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_100_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_100;
    l1 = self.box_MultipleOR_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1887038958", "1887038958", "UNI35_030_B25", "box_PlayDialog_v6_100.Finished", "box_MultipleOR_102.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_100_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_100;
    l1 = self.box_MultipleOR_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1376835827", "1376835827", "UNI35_030_B25", "box_PlayDialog_v6_100.FinishedInterrupted", "box_MultipleOR_102.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetContextualStrategy_1_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_72();
    l0 = self.box_GroupSizeListener_v5_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2135512812", "2135512812", "UNI35_030_B25", "box_SetContextualStrategy_1.Out", "box_GroupSizeListener_v5_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_134_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_134;
    l1 = self.box_MultipleOR_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|271805085", "271805085", "UNI35_030_B25", "box_PlayDialog_v6_134.Finished", "box_MultipleOR_137.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1276293809", "1276293809", "UNI35_030_B25", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1427712679", "1427712679", "UNI35_030_B25", "box_ActivityAcknowledgeGate_5.Reloaded", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_4();
    l0 = self.box_SpawnAI_28;
    l1 = self.box_SpawnAI_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1149715812", "1149715812", "UNI35_030_B25", "box_SpawnAI_28.Out", "box_SpawnAI_4.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_109_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_55();
    l0 = self.box_Delay_v5_109;
    l1 = self.box_RequestPhoneCall_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|138753849", "138753849", "UNI35_030_B25", "box_Delay_v5_109.TimeElapsed", "box_RequestPhoneCall_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UnlockDoor_15_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_14();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|871122067", "871122067", "UNI35_030_B25", "box_UnlockDoor_15.Unlocked", "box_UnlockDoor_14.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_68_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_20();
    l0 = self.box_ExitZoneWarningListener_v3_68;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|37486583", "37486583", "UNI35_030_B25", "box_ExitZoneWarningListener_v3_68.FailingZoneEntered", "box_ActivityRetry_20.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_64_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_17();
    l0 = self.box_EntityStatusListener_64;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|588447705", "588447705", "UNI35_030_B25", "box_EntityStatusListener_64.Loaded", "box_PawnInvincibleState_v2_17.UnsetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnsetInvincible
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_126_Out()
    self:OnExit_box_SetBoolean_v2_126_Out();
end;

function export:f_box_OutputOrder_v2_131_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_61();
    l0 = self.box_PlayDialog_v6_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1483018086", "1483018086", "UNI35_030_B25", "box_OutputOrder_v2_131.Out", "box_PlayDialog_v6_61.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_131_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_118();
    l0 = self.box_ProximityRadiusListener_v3_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|95615050", "95615050", "UNI35_030_B25", "box_OutputOrder_v2_131.Out", "box_ProximityRadiusListener_v3_118.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_76();
    l0 = self.box_SpawnAI_75;
    l1 = self.box_SpawnAI_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|539063597", "539063597", "UNI35_030_B25", "box_SpawnAI_75.Out", "box_SpawnAI_76.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_26_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_70();
    l0 = self.box_Delay_v5_26;
    l1 = self.box_GroupSizeListener_v5_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1004288273", "1004288273", "UNI35_030_B25", "box_Delay_v5_26.TimeElapsed", "box_GroupSizeListener_v5_70.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_22();
    l0 = self.box_ActivityInitialized_19;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1676839508", "1676839508", "UNI35_030_B25", "box_ActivityInitialized_19.Out", "box_ActivityMiscInfoModifier_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InteractBodyListener_v2_43();
    l0 = self.box_InteractBodyListener_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|557686161", "557686161", "UNI35_030_B25", "box_OutputOrder_v2_49.Out", "box_InteractBodyListener_v2_43.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_123();
    l0 = self.box_ProximityTrigger_v2_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|799336701", "799336701", "UNI35_030_B25", "box_OutputOrder_v2_49.Out", "box_ProximityTrigger_v2_123.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_60();
    l0 = self.box_ProximityRadiusListener_v3_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|190938962", "190938962", "UNI35_030_B25", "box_OutputOrder_v2_49.Out", "box_ProximityRadiusListener_v3_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_67();
    l0 = self.box_ProximityTrigger_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|246901888", "246901888", "UNI35_030_B25", "box_OutputOrder_v2_49.Out", "box_ProximityTrigger_v2_67.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InteractBodyListener_v2_6();
    l0 = self.box_InteractBodyListener_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|808284438", "808284438", "UNI35_030_B25", "box_OutputOrder_v2_49.Out", "box_InteractBodyListener_v2_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_73_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_75();
    l0 = self.box_OnceOnly_v3_73;
    l1 = self.box_SpawnAI_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1376595480", "1376595480", "UNI35_030_B25", "box_OnceOnly_v3_73.Out", "box_SpawnAI_75.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_38();
    l0 = self.box_SpawnAI_30;
    l1 = self.box_Delay_v5_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1463086311", "1463086311", "UNI35_030_B25", "box_SpawnAI_30.Out", "box_Delay_v5_38.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SendItemToStash_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_89();
    l0 = self.box_SendItemToStash_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1515986896", "1515986896", "UNI35_030_B25", "box_SendItemToStash_13.Out", "box_OutputOrder_v2_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_71_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1749815169", "1749815169", "UNI35_030_B25", "box_Compare_Integers_71.A_le_B", "box_OnceOnly_v3_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_57_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_91();
    l0 = self.box_MultipleAND_v2_57;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|641060874", "641060874", "UNI35_030_B25", "box_MultipleAND_v2_57.Out", "box_EndActivityObjective_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_47_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_47;
    l1 = self.box_MultipleOR_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1786781828", "1786781828", "UNI35_030_B25", "box_PlayDialog_v6_47.Finished", "box_MultipleOR_137.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_93_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_106();
    l0 = self.box_MultipleOR_93;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|565453897", "565453897", "UNI35_030_B25", "box_MultipleOR_93.Out", "box_Simple_Node_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_123_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_124();
    l0 = self.box_ProximityTrigger_v2_123;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1048053882", "1048053882", "UNI35_030_B25", "box_ProximityTrigger_v2_123.OnOccupied", "box_ActivityRetry_124.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_98_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_98;
    l1 = self.box_MultipleOR_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1468073328", "1468073328", "UNI35_030_B25", "box_PlayDialog_v6_98.Finished", "box_MultipleOR_94.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_98_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_98;
    l1 = self.box_MultipleOR_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|656076815", "656076815", "UNI35_030_B25", "box_PlayDialog_v6_98.FinishedInterrupted", "box_MultipleOR_94.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_InteractBodyListener_v2_6_bodyDropped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_127();
    l0 = self.box_InteractBodyListener_v2_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1288215366", "1288215366", "UNI35_030_B25", "box_InteractBodyListener_v2_6.bodyDropped", "box_OutputOrder_v2_127.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InteractBodyListener_v2_6_bodyPickUp()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_125();
    l0 = self.box_InteractBodyListener_v2_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|999753328", "999753328", "UNI35_030_B25", "box_InteractBodyListener_v2_6.bodyPickUp", "box_OutputOrder_v2_125.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_37_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_41();
    l0 = self.box_VehicleDamageListener_v2_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|198890330", "198890330", "UNI35_030_B25", "box_VehicleSeatModifier_v2_37.Locked", "box_VehicleDamageListener_v2_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_28();
    l0 = self.box_SpawnAI_29;
    l1 = self.box_SpawnAI_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|707051932", "707051932", "UNI35_030_B25", "box_SpawnAI_29.Out", "box_SpawnAI_28.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_117_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_104();
    l0 = self.box_Delay_v5_117;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1492544562", "1492544562", "UNI35_030_B25", "box_Delay_v5_117.TimeElapsed", "box_Simple_Node_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_37();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2093857738", "2093857738", "UNI35_030_B25", "box_OutputOrder_v2_81.Out", "box_VehicleSeatModifier_v2_37.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_113();
    l0 = self.box_Delay_v5_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1169573490", "1169573490", "UNI35_030_B25", "box_OutputOrder_v2_81.Out", "box_Delay_v5_113.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Bind_v4_110_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_39();
    l0 = self.box_Bind_v4_110;
    l1 = self.box_PhysicsModifier_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1845125959", "1845125959", "UNI35_030_B25", "box_Bind_v4_110.Bound", "box_PhysicsModifier_39.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_29();
    l0 = self.box_SpawnAI_8;
    l1 = self.box_SpawnAI_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2136483389", "2136483389", "UNI35_030_B25", "box_SpawnAI_8.Out", "box_SpawnAI_29.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_71();
    l0 = self.box_MultipleOR_56;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1404556242", "1404556242", "UNI35_030_B25", "box_MultipleOR_56.Out", "box_Compare_Integers_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_72_Enabled()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_72_Enabled();
    params = self:OnEnter_box_Compare_Integers_74();
    l0 = self.box_GroupSizeListener_v5_72;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1143217568", "1143217568", "UNI35_030_B25", "box_GroupSizeListener_v5_72.Enabled", "box_Compare_Integers_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_72_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_72_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_72_MemberRemoved()
    self:OnExit_box_GroupSizeListener_v5_72_MemberRemoved();
end;

function export:f_box_MultipleOR_23_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_23;
    l1 = self.box_ActivityInitialized_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|328265875", "328265875", "UNI35_030_B25", "box_MultipleOR_23.Out", "box_ActivityInitialized_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_96_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_106();
    l0 = self.box_MultipleOR_96;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|800249623", "800249623", "UNI35_030_B25", "box_MultipleOR_96.Out", "box_Simple_Node_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_94_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_106();
    l0 = self.box_MultipleOR_94;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1713986209", "1713986209", "UNI35_030_B25", "box_MultipleOR_94.Out", "box_Simple_Node_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_88();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1393863385", "1393863385", "UNI35_030_B25", "box_OutputOrder_v2_89.Out", "box_PawnInvincibleState_v2_88.UnsetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnsetInvincible
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_116();
    l0 = self.box_RemoveEntity_v2_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|984619113", "984619113", "UNI35_030_B25", "box_OutputOrder_v2_89.Out", "box_RemoveEntity_v2_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_89_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_97();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|76344397", "76344397", "UNI35_030_B25", "box_OutputOrder_v2_89.Out", "box_ActivityForceAndLockTracking_97.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_54();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1633649050", "1633649050", "UNI35_030_B25", "box_OutputOrder_v2_89.Out", "box_ActivityEnd_54.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_60_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_128();
    l0 = self.box_ProximityRadiusListener_v3_60;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2069830186", "2069830186", "UNI35_030_B25", "box_ProximityRadiusListener_v3_60.SomeoneNear", "box_Compare_Boolean_128.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_50_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_47();
    l0 = self.box_Random_50;
    l1 = self.box_PlayDialog_v6_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1890684502", "1890684502", "UNI35_030_B25", "box_Random_50.Output", "box_PlayDialog_v6_47.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_50_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_84();
    l0 = self.box_Random_50;
    l1 = self.box_PlayDialog_v6_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1412902183", "1412902183", "UNI35_030_B25", "box_Random_50.Output", "box_PlayDialog_v6_84.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_50_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_45();
    l0 = self.box_Random_50;
    l1 = self.box_PlayDialog_v6_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|448179681", "448179681", "UNI35_030_B25", "box_Random_50.Output", "box_PlayDialog_v6_45.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_50_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_134();
    l0 = self.box_Random_50;
    l1 = self.box_PlayDialog_v6_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1122727844", "1122727844", "UNI35_030_B25", "box_Random_50.Output", "box_PlayDialog_v6_134.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_51_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_85();
    l0 = self.box_SpawnAI_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1217540574", "1217540574", "UNI35_030_B25", "box_UseContextualActionModifier_v3_51.Disabled", "box_SpawnAI_85.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_125_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_119();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1481690146", "1481690146", "UNI35_030_B25", "box_OutputOrder_v2_125.Out", "box_SetBoolean_v2_119.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1181853604", "1181853604", "UNI35_030_B25", "box_OutputOrder_v2_125.Out", "box_MultipleOR_103.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_44_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_53();
    l0 = self.box_Delay_v5_44;
    l1 = self.box_StartCelebration_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|763336252", "763336252", "UNI35_030_B25", "box_Delay_v5_44.TimeElapsed", "box_StartCelebration_53.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_142_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsInWater_133();
    l0 = Boxes[GetPathID("Domino/System/PawnIsInWater.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2053815068", "2053815068", "UNI35_030_B25", "box_OutputOrder_v2_142.Out", "box_IsInWater_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_WaterListener_87();
    l0 = self.box_WaterListener_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1272617863", "1272617863", "UNI35_030_B25", "box_OutputOrder_v2_142.Out", "box_WaterListener_87.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1488454882", "1488454882", "UNI35_030_B25", "box_OutputOrder_v2_21.Out", "box_OutputOrder_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_RemoveNPCs_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|670975143", "670975143", "UNI35_030_B25", "box_OutputOrder_v2_21.Out", "box_RemoveNPCs_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_21_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_48();
    l0 = self.box_RequestPhoneCall_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|802283144", "802283144", "UNI35_030_B25", "box_OutputOrder_v2_21.Out", "box_RequestPhoneCall_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_129();
    l0 = self.box_Bind_v4_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1131714846", "1131714846", "UNI35_030_B25", "box_OutputOrder_v2_21.Out", "box_Bind_v4_129.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_135_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_52();
    l0 = self.box_MultipleOR_135;
    l1 = self.box_Gate_v3_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1046000411", "1046000411", "UNI35_030_B25", "box_MultipleOR_135.Out", "box_Gate_v3_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IsInWater_133_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnIsInWater.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1080508004", "1080508004", "UNI35_030_B25", "box_IsInWater_133.True", "box_MultipleOR_144.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_67_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_1();
    l0 = self.box_ProximityTrigger_v2_67;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|982804917", "982804917", "UNI35_030_B25", "box_ProximityTrigger_v2_67.Enter", "box_SetContextualStrategy_1.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_25();
    l0 = self.box_EntityStatusListener_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|372042412", "372042412", "UNI35_030_B25", "box_OutputOrder_v2_18.Out", "box_EntityStatusListener_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_16();
    l0 = self.box_EntityStatusListener_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1620347498", "1620347498", "UNI35_030_B25", "box_OutputOrder_v2_18.Out", "box_EntityStatusListener_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_68();
    l0 = self.box_ExitZoneWarningListener_v3_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1412039145", "1412039145", "UNI35_030_B25", "box_OutputOrder_v2_18.Out", "box_ExitZoneWarningListener_v3_68.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_91_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_140();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1405832301", "1405832301", "UNI35_030_B25", "box_EndActivityObjective_v2_91.Out", "box_OutputOrder_v2_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_55_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_55;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|798084023", "798084023", "UNI35_030_B25", "box_RequestPhoneCall_v2_55.Canceled", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_55_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_55;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|273454131", "273454131", "UNI35_030_B25", "box_RequestPhoneCall_v2_55.Completed", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InteractBodyListener_v2_43_bodyPickUp()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_InteractBodyListener_v2_43;
    l1 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|473356729", "473356729", "UNI35_030_B25", "box_InteractBodyListener_v2_43.bodyPickUp", "box_SpawnAI_9.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_VehiclePositionLockModifier_82_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_86();
    l0 = self.box_EntityStatusListener_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|133860180", "133860180", "UNI35_030_B25", "box_VehiclePositionLockModifier_82.Locked", "box_EntityStatusListener_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_WaterListener_87();
    l0 = self.box_SpawnAI_85;
    l1 = self.box_WaterListener_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|552436090", "552436090", "UNI35_030_B25", "box_SpawnAI_85.Out", "box_WaterListener_87.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_MultipleOR_46;
    l1 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1591314859", "1591314859", "UNI35_030_B25", "box_MultipleOR_46.Out", "box_Delay_v5_44.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_25_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_138();
    l0 = self.box_EntityStatusListener_25;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1929975142", "1929975142", "UNI35_030_B25", "box_EntityStatusListener_25.Loaded", "box_OutputOrder_v2_138.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_34_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_10();
    l0 = self.box_OnceOnly_v3_34;
    l1 = self.box_ProximityTrigger_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1378941160", "1378941160", "UNI35_030_B25", "box_OnceOnly_v3_34.Out", "box_ProximityTrigger_v2_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StartCelebration_53_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SendItemToStash_13();
    l0 = self.box_StartCelebration_53;
    l1 = self.box_SendItemToStash_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|711781864", "711781864", "UNI35_030_B25", "box_StartCelebration_53.Started", "box_SendItemToStash_13.SendToStash", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendToStash
    l1:Exec(0, params);
end;

function export:f_box_RequestPhoneCall_v2_48_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_66();
    l0 = self.box_RequestPhoneCall_v2_48;
    l1 = self.box_Delay_v5_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|900666066", "900666066", "UNI35_030_B25", "box_RequestPhoneCall_v2_48.Completed", "box_Delay_v5_66.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_113_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehiclePositionLockModifier_82();
    l0 = self.box_Delay_v5_113;
    l1 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|228190718", "228190718", "UNI35_030_B25", "box_Delay_v5_113.TimeElapsed", "box_VehiclePositionLockModifier_82.Lock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_138_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Deliver_Corpse_To_Position_v3_32();
    l0 = self.box_Brick_Deliver_Corpse_To_Position_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1302691425", "1302691425", "UNI35_030_B25", "box_OutputOrder_v2_138.Out", "box_Brick_Deliver_Corpse_To_Position_v3_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_138_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_139();
    l0 = self.box_Music_Quest_v2_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1066131481", "1066131481", "UNI35_030_B25", "box_OutputOrder_v2_138.Out", "box_Music_Quest_v2_139.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_114_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_11();
    l0 = self.box_SpawnAI_114;
    l1 = self.box_GroupSizeListener_v5_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2016379816", "2016379816", "UNI35_030_B25", "box_SpawnAI_114.Spawned", "box_GroupSizeListener_v5_11.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_45_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_45;
    l1 = self.box_MultipleOR_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1519947219", "1519947219", "UNI35_030_B25", "box_PlayDialog_v6_45.Finished", "box_MultipleOR_137.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OnceOnly_v3_120_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_131();
    l0 = self.box_OnceOnly_v3_120;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1965345395", "1965345395", "UNI35_030_B25", "box_OnceOnly_v3_120.Out", "box_OutputOrder_v2_131.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PawnInvincibleState_v2_17_OnUnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_108();
    l0 = self.box_Delay_v5_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1677632242", "1677632242", "UNI35_030_B25", "box_PawnInvincibleState_v2_17.OnUnSet", "box_Delay_v5_108.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_127_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_126();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1230856459", "1230856459", "UNI35_030_B25", "box_OutputOrder_v2_127.Out", "box_SetBoolean_v2_126.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_92();
    l0 = self.box_Delay_v5_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1661623092", "1661623092", "UNI35_030_B25", "box_OutputOrder_v2_127.Out", "box_Delay_v5_92.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_PlayDialog_v6_95_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_95;
    l1 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1059719843", "1059719843", "UNI35_030_B25", "box_PlayDialog_v6_95.Finished", "box_MultipleOR_93.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_95_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_95;
    l1 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|185792630", "185792630", "UNI35_030_B25", "box_PlayDialog_v6_95.FinishedInterrupted", "box_MultipleOR_93.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityForceAndLockTracking_59_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_24();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2145304054", "2145304054", "UNI35_030_B25", "box_ActivityForceAndLockTracking_59.Enabled", "box_GetPlayerGroup_v2_24.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_41_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_41;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2119565405", "2119565405", "UNI35_030_B25", "box_VehicleDamageListener_v2_41.Broken", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleDamageListener_v2_41_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_41;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1563688005", "1563688005", "UNI35_030_B25", "box_VehicleDamageListener_v2_41.Destroyed", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_41_Disabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_41;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|884620179", "884620179", "UNI35_030_B25", "box_VehicleDamageListener_v2_41.Disabled", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_WaterListener_87_EnteredWater()
    local l0, l1;
    l0 = self.box_WaterListener_87;
    l1 = self.box_MultipleOR_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|948817931", "948817931", "UNI35_030_B25", "box_WaterListener_87.EnteredWater", "box_MultipleOR_144.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_119_Out()
    self:OnExit_box_SetBoolean_v2_119_Out();
end;

function export:f_box_GroupSizeListener_v5_70_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_70_Enabled();
    l0 = self.box_GroupSizeListener_v5_70;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1900603752", "1900603752", "UNI35_030_B25", "box_GroupSizeListener_v5_70.Enabled", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_70_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_70_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_70_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_70_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_70;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|575183382", "575183382", "UNI35_030_B25", "box_GroupSizeListener_v5_70.MemberRemoved", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_30();
    l0 = self.box_SpawnAI_36;
    l1 = self.box_SpawnAI_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1076477443", "1076477443", "UNI35_030_B25", "box_SpawnAI_36.Out", "box_SpawnAI_30.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Deliver_Corpse_To_Position_v3_32_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = self.box_Brick_Deliver_Corpse_To_Position_v3_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|907457657", "907457657", "UNI35_030_B25", "box_Brick_Deliver_Corpse_To_Position_v3_32.Enabled", "box_OutputOrder_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Corpse_To_Position_v3_32_Fail_TooFarFromCorpse()
    local l0, l1;
    l0 = self.box_Brick_Deliver_Corpse_To_Position_v3_32;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1473101618", "1473101618", "UNI35_030_B25", "box_Brick_Deliver_Corpse_To_Position_v3_32.Fail_TooFarFromCorpse", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Deliver_Corpse_To_Position_v3_32_Fail_TooFarFromTarget()
    local l0, l1;
    l0 = self.box_Brick_Deliver_Corpse_To_Position_v3_32;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1348728136", "1348728136", "UNI35_030_B25", "box_Brick_Deliver_Corpse_To_Position_v3_32.Fail_TooFarFromTarget", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Deliver_Corpse_To_Position_v3_32_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = self.box_Brick_Deliver_Corpse_To_Position_v3_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1983531211", "1983531211", "UNI35_030_B25", "box_Brick_Deliver_Corpse_To_Position_v3_32.Success", "box_OutputOrder_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_111_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_101();
    l0 = self.box_Switch_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|337468851", "337468851", "UNI35_030_B25", "box_OutputOrder_v2_111.Out", "box_Switch_101.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_111_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_106();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|511337256", "511337256", "UNI35_030_B25", "box_OutputOrder_v2_111.Out", "box_Simple_Node_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_11_Enabled()
    self:OnExit_box_GroupSizeListener_v5_11_Enabled();
end;

function export:f_box_GroupSizeListener_v5_11_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_11_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_11_MemberRemoved()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_11_MemberRemoved();
    params = self:OnEnter_box_Compare_Integers_12();
    l0 = self.box_GroupSizeListener_v5_11;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|249379818", "249379818", "UNI35_030_B25", "box_GroupSizeListener_v5_11.MemberRemoved", "box_Compare_Integers_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|@n_StartCall");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_141_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|@nCorpseDropped");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_104_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|@nCultistPanic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_106_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_10()
    local params;
    DrawTextToScreen("Comment: REINFORCEMENTS ACTIVE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityTrigger_v2')-- Comment: REINFORCEMENTS ACTIVE");
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.FriendlyPlayers,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103499070008990641",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_76()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103956276334597253",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_129()
    local params;
    params = {
        -- EntityA,
        [1] = "2102723365331552851",
        -- EntityB,
        [2] = "2104534863546708029",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_99()
    local params;
    params = {
        -- Group,
        [0] = "2104534863546708029",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3517702556",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_107()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_136()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|68325389");
    l0:SetConnections({
    });
    params = {
        -- door,
        [0] = "2102611109012848016",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|86423708");
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
                [0] = self.f_box_OutputOrder_v2_140_Out_0,
                [1] = self.f_box_OutputOrder_v2_140_Out_1,
            },
            count = 2,
        },
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|98739747");
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

function export:OnEnter_box_SpawnAI_35()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102723359585356253",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_83()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.FriendlyPlayers,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103486813269143816",
    };
    return params;
end;

function export:OnEnter_box_VehiclePositionLockModifier_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehiclePositionLockModifier_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|134960112");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehiclePositionLockModifier_62_Unlocked,
    });
    params = {
        -- VehicleEntity,
        [0] = "2104439316221557618",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|186986370");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_24_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_108()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_92()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|224504720");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI35_030_B25_Fail",
            id = "869510",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_31()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103499044157397760",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_38()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_16()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104439316221557618",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_112()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104342176421937342",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_9()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103348133399484833",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|418728974");
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

function export:OnEnter_box_Compare_Integers_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|424586212");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_12_A_le_B,
    });
    params = {
        -- A,
        [0] = self.iCultB25,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|434842177");
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
                [2] = self.f_box_OutputOrder_v2_58_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_4()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103899055661810297",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_118()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.FriendlyPlayers,
        -- id2,
        [3] = "2103706820739615717",
        -- nearZone,
        [4] = 8,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|511865338");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
                [2] = self.f_box_OutputOrder_v2_33_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_78()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|580629819");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_63_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = "2102723365331552851",
        -- pawns,
        [2] = "2102723365331552851",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|583142920");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_74_A_le_B,
    });
    params = {
        -- A,
        [0] = self.iCultB25,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_115()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2104050582936396861",
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|610609759");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_22_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|639849343");
    l0:SetConnections({
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI35_030_B25_OBJ_Clear",
            id = "834850",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_86()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104050582936396861",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_61()
    local params;
    params = {
        -- Group,
        [0] = "2103498828863772992",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2222668405",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|673446211");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|695238848");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_128_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_BodyCarried,
    };
    return params;
end;

function export:OnEnter_box_Switch_101()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|721837908");
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

function export:OnEnter_box_Delay_v5_66()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_39()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2102723365331552851",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_84()
    local params;
    params = {
        -- Group,
        [0] = "2104050582936396861",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1783784504",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_52()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_100()
    local params;
    params = {
        -- Group,
        [0] = "2104534863546708029",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2990974824",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|847856021");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI35_030_B25_Fail",
            id = "869510",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|900384141");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_1_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103899122841977562",
        -- Group,
        [1] = "#78174292",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_134()
    local params;
    params = {
        -- Group,
        [0] = "2104050582936396861",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1078565421",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_28()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103899005397270981",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_109()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1005351088");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_15_Unlocked,
    });
    params = {
        -- door,
        [0] = "2102611099772796302",
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_68()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2101754497379364492",
        -- WarningZoneTrigger,
        [3] = "2103379118704839462",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_64()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102723365331552851",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1048232531");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_126_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1063862049");
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
                [0] = self.f_box_OutputOrder_v2_131_Out_0,
                [1] = self.f_box_OutputOrder_v2_131_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_75()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103956265980957773",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_26()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1092960149");
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

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1118522668");
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
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
                [2] = self.f_box_OutputOrder_v2_49_Out_2,
                [3] = self.f_box_OutputOrder_v2_49_Out_3,
                [4] = self.f_box_OutputOrder_v2_49_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_139()
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
        [6] = "272370895",
        -- StopEvent,
        [7] = "3796511576",
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

function export:OnEnter_box_SpawnAI_30()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103499038203583155",
    };
    return params;
end;

function export:OnEnter_box_SendItemToStash_13()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015199617349438",
        -- players,
        [1] = "#ED455357",
        -- quantity,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1218171877");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_71_A_le_B,
    });
    params = {
        -- A,
        [0] = self.iCultB25,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_57()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_47()
    local params;
    params = {
        -- Group,
        [0] = "2104050582936396861",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4258930805",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_123()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "2102723365331552851",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104466972178652643",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_98()
    local params;
    params = {
        -- Group,
        [0] = "2104534863546708029",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3733680580",
    };
    return params;
end;

function export:OnEnter_box_InteractBodyListener_v2_6()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entityId,
        [1] = "2102723365331552851",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1300696742");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_37_Locked,
    });
    params = {
        -- IsAI,
        [0] = false,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 1,
        -- vehicleEntity,
        [4] = "2104439316221557618",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_65()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = self.FriendlyPlayers,
        -- SoundId,
        [5] = "2050370346",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_29()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103485658103338020",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_117()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1323329810");
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
                [0] = self.f_box_OutputOrder_v2_81_Out_0,
                [1] = self.f_box_OutputOrder_v2_81_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_110()
    local params;
    params = {
        -- EntityA,
        [1] = "2104439316221557618",
        -- EntityB,
        [2] = "2102723365331552851",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_8()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103485758015854227",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1338271778");
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

function export:OnEnter_box_GroupSizeListener_v5_72()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#78174292",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_116()
    local params;
    params = {
        -- Group,
        [0] = "2102615290062841290",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_132()
    local params;
    params = {
        -- Group,
        [0] = "2103706820739615717",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4193902880",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1508376566");
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
                [3] = self.f_box_OutputOrder_v2_89_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1530736862");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "Green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "UNI35_030_B25 Script Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_60()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.FriendlyPlayers,
        -- id2,
        [3] = "2103498828863772992",
        -- nearZone,
        [4] = 15,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Random_50()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1574480210");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_51_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103486825380196625",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_80()
    local params;
    params = {
        -- Group,
        [0] = "2103763354502837322",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "350739722",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1629037147");
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
                [0] = self.f_box_OutputOrder_v2_125_Out_0,
                [1] = self.f_box_OutputOrder_v2_125_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_44()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1634659031");
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
                [0] = self.f_box_OutputOrder_v2_142_Out_0,
                [1] = self.f_box_OutputOrder_v2_142_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1667377936");
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

function export:OnEnter_box_IsInWater_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnIsInWater.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsInWater_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1684220405");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsInWater_133_True,
    });
    params = {
        -- pawn,
        [0] = "2102723365331552851",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_67()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103899210341450481",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1703922255");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1723020588");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_91_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI35_030_B25_OBJ_Clear",
            id = "834850",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_55()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = self.FriendlyPlayers,
        -- SoundId,
        [5] = "3100329793",
    };
    return params;
end;

function export:OnEnter_box_InteractBodyListener_v2_43()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entityId,
        [1] = "2102723365331552851",
    };
    return params;
end;

function export:OnEnter_box_VehiclePositionLockModifier_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehiclePositionLockModifier_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1779513903");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehiclePositionLockModifier_82_Locked,
    });
    params = {
        -- VehicleEntity,
        [0] = "2104439316221557618",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1780712006");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_85()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104051216999822201",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102723365331552851",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_53()
    local params;
    params = {
        -- Preset,
        [0] = self.iCeleb,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_48()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = self.FriendlyPlayers,
        -- SoundId,
        [5] = "3669084596",
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1883161036");
    l0:SetConnections({
    });
    params = {
        -- Pawn,
        [0] = "2104050582936396861",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_113()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1909119216");
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
                [0] = self.f_box_OutputOrder_v2_138_Out_0,
                [1] = self.f_box_OutputOrder_v2_138_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_114()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104342250845667769",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_45()
    local params;
    params = {
        -- Group,
        [0] = "2104050582936396861",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "503184883",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1932886764");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI35_030_B25_Fail",
            id = "869510",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1943391355");
    l0:SetConnections({
        -- OnUnSet,
        [1] = self.f_box_PawnInvincibleState_v2_17_OnUnSet,
    });
    params = {
        -- Pawn,
        [0] = "2102723365331552851",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_77()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103956277118932127",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1972279240");
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

function export:OnEnter_box_PlayDialog_v6_95()
    local params;
    params = {
        -- Group,
        [0] = "2104534863546708029",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3398270563",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1985436929");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_59_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_41()
    local params;
    params = {
        -- Vehicle,
        [0] = "2104439316221557618",
    };
    return params;
end;

function export:OnEnter_box_WaterListener_87()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawn,
        [1] = "2102723365331552851",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|1998774341");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_119_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_70()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#78174292",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_36()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103498951406656031",
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Corpse_To_Position_v3_32()
    local params;
    params = {
        -- bDropCorpseForSuccess,
        [0] = true,
        -- DistanceForSuccess_Opt,
        [1] = 1.5,
        -- eCorpse,
        [2] = "2102723365331552851",
        -- eCorpseMarker,
        [3] = "2103168474112085179",
        -- eObjectiveMarker,
        [4] = "2101272070724852801",
        -- FailDistance_Opt,
        [5] = 9999,
        -- Objective,
        [6] = {
            section = "Objectives",
            item = "UNI35_030_B25_DeliverBody",
            id = "640537",
        },
        -- WarningDistance_Opt,
        [7] = 9999,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B25|2065796461");
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
                [0] = self.f_box_OutputOrder_v2_111_Out_0,
                [1] = self.f_box_OutputOrder_v2_111_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_11()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#78174292",
    };
    return params;
end;

function export:OnExit_box_ProximityTrigger_v2_83_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_83;
    self.e_PlayerInZone = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_83_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_83;
    self.e_PlayerInZone = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_83_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_83;
    self.e_PlayerInZone = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_83_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_83;
    self.e_PlayerInZone = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_83_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_83;
    self.e_PlayerInZone = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_83_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_83;
    self.e_PlayerInZone = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.FriendlyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_126_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_BodyCarried = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_72_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_72;
    self.iCultB25 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_72_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_72;
    self.iCultB25 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_72_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_72;
    self.iCultB25 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetBoolean_v2_119_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_BodyCarried = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_70_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_70;
    self.iCultB25 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_70_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_70;
    self.iCultB25 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_70_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_70;
    self.iCultB25 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_11_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_11;
    self.iCultB25 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_11_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_11;
    self.iCultB25 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_11_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_11;
    self.iCultB25 = l0:GetDataOutValue(1);
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
