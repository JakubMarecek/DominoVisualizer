LUAC
" -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni34/uni34_010/uni34_010_b20.domino
-- User graph: UNI34_010_B20
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Follow_NpcVehicle.Brick_Follow_NPC_Vehicle_v6.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/GetContextualAction.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI34/UNI34_010/UNI34_010_B20.UNI34_010_B20_RadioSequence.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[504558118.bnk]], "CSoundResource");
        cboxRes:LoadResource([[609995674.bnk]], "CSoundResource");
        cboxRes:LoadResource([[654606860.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2345722280.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2036942318.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI34/UNI34_010/UNI34_010_B20.UNI34_010_B20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Follow_NpcVehicle.Brick_Follow_NPC_Vehicle_v6.debug.lua")] = {
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
                name = "Target_KilledDestroyed",
                delayed = false,
            },
            [4] = {
                name = "Target_TooFar",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "fDistanceFail",
                type = "float",
            },
            [3] = {
                name = "fDistanceSuccess",
                type = "float",
            },
            [4] = {
                name = "fDistanceWarning",
                type = "float",
            },
            [5] = {
                name = "FollowTarget",
                type = "entity",
            },
            [6] = {
                name = "IsPersistentCharacter",
                type = "bool",
            },
            [7] = {
                name = "oObjective",
                type = "oasis",
            },
            [8] = {
                name = "opt_Detection_Group",
                type = "group",
            },
            [9] = {
                name = "opt_Target_MobileMarker",
                type = "entity",
            },
            [10] = {
                name = "oWarningMsg",
                type = "oasis",
            },
        },
        dataInCount = 11,
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
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")] = {
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
                name = "pawnId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "contextualActionId",
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
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "MessageId",
                type = "oasis",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/VehicleListener_v3.lua")] = {
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
                name = "OnAllSitting",
                delayed = true,
            },
            [3] = {
                name = "OnAllStanding",
                delayed = true,
            },
            [4] = {
                name = "OnChangeSeat",
                delayed = true,
            },
            [5] = {
                name = "OnInteract",
                delayed = true,
            },
            [6] = {
                name = "OnSit",
                delayed = true,
            },
            [7] = {
                name = "OnStandUp",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicle",
                type = "entity",
            },
            [5] = {
                name = "vehicleTypeFilter",
                type = "int",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "activePawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI34/UNI34_010/UNI34_010_B20.UNI34_010_B20_RadioSequence.debug.lua")] = {
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
    self._name = "UNI34_010_B20";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20";
    self.eQuestGiver = nil;
    self.gFriendlyPlayers = nil;
    self.bIsAReload = false;
    self.eHelicopter = nil;
    self.eGetCurrentSTP = nil;
    self.box_PlayDialog_v6_19 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|115075136");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_28 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|251547473");
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
        [0] = self.f_box_MultipleAND_v2_28_Out,
    });
    self.box_ProximityRadiusListener_v3_14 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|260797783");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_14_SomeoneNear,
    });
    self.box_DisplayCustomUIMsg_v4_72 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
    l0 = self.box_DisplayCustomUIMsg_v4_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v4_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|324570739");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v4_72_OnDisplay,
    });
    self.box_ProximityRadiusListener_v3_20 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|381084644");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_20_AllFar,
    });
    self.box_HealthListener_v6_112 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|381183577");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_112_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_112_Enabled,
    });
    self.box_MultipleOR_107 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|414947340");
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
    self.box_ActivityAcknowledgeGate_80 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|424834378");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_80_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_80_Reloaded,
    });
    self.box_SpawnAI_100 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|452068661");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_100_Spawned,
    });
    self.box_Delay_v5_94 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|476416731");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_94_TimeElapsed,
    });
    self.box_MultipleOR_93 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|672250136");
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
        [0] = self.f_box_MultipleOR_93_Out,
    });
    self.box_HealthListener_v6_56 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|692927978");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_56_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_56_Killed,
    });
    self.box_ActivityInitialized_97 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|718724770");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_97_Out,
    });
    self.box_Delay_v5_61 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|768759206");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_61_TimeElapsed,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|779672627");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_DisplayCustomUIMsg_v4_48 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
    l0 = self.box_DisplayCustomUIMsg_v4_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v4_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|787831547");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_8 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|803309807");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_8_Loaded,
    });
    self.box_UNI34_010_B20_RadioSequence_2 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI34/UNI34_010/UNI34_010_B20.UNI34_010_B20_RadioSequence.debug.lua");
    l0 = self.box_UNI34_010_B20_RadioSequence_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI34_010_B20_RadioSequence_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|806540661");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI34_010_B20_RadioSequence_2_Out,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|826149471");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 6,
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
    self.box_PlayDialog_v6_63 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|839674526");
    l0:SetConnections({
    });
    self.box_VehicleListener_v3_71 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|864292868");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_71_OnSit,
    });
    self.box_ProximityRadiusListener_v3_60 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|919556383");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_60_SomeoneNear,
    });
    self.box_Delay_v5_83 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|951351174");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_83_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_58 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1018997604");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_58_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_44 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1051582239");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_44_SomeoneFar,
    });
    self.box_MultipleOR_95 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1054925274");
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
        [0] = self.f_box_MultipleOR_95_Out,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1096560281");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_ContextualActionListener_74 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1126147106");
    l0:SetConnections({
        -- Select,
        [7] = self.f_box_ContextualActionListener_74_Select,
        -- Start,
        [8] = self.f_box_ContextualActionListener_74_Start,
    });
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1130134313");
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
        [0] = self.f_box_MultipleOR_106_Out,
    });
    self.box_VehicleDamageListener_v2_1 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1192625765");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_1_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_1_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_1_Disabled,
        -- MajorDamage,
        [5] = self.f_box_VehicleDamageListener_v2_1_MajorDamage,
        -- MinorDamage,
        [6] = self.f_box_VehicleDamageListener_v2_1_MinorDamage,
        -- OnFire,
        [8] = self.f_box_VehicleDamageListener_v2_1_OnFire,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1213553346");
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
        [0] = self.f_box_MultipleOR_43_Out,
    });
    self.box_Delay_v5_76 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1229778684");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_76_TimeElapsed,
    });
    self.box_EntityStatusListener_35 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1239933039");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_35_Loaded,
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1333785113");
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
        [0] = self.f_box_MultipleOR_38_Out,
    });
    self.box_Bind_v4_23 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1385602562");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_23_Bound,
    });
    self.box_HealthListener_v6_7 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1595229072");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_7_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_7_Killed,
    });
    self.box_MultipleOR_89 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1612469685");
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
        [0] = self.f_box_MultipleOR_89_Out,
    });
    self.box_DisplayCustomUIMsg_v4_47 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
    l0 = self.box_DisplayCustomUIMsg_v4_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v4_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1634560853");
    l0:SetConnections({
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v4_47_OnHide,
    });
    self.box_OnceOnly_v3_84 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1705878180");
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
                [0] = self.f_box_OnceOnly_v3_84_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_57 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1716144082");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_57_TimeElapsed,
    });
    self.box_Music_Quest_v2_99 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1726680743");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_59 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1732638544");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_59_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_59_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_59_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_59_Stopped,
    });
    self.box_ProximityRadiusListener_v3_18 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1784938948");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_18_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_40 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1838724110");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_40_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_6 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1841158299");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_6_SomeoneNear,
    });
    self.box_HealthListener_v6_105 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1869366549");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_105_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_105_Killed,
    });
    self.box_Brick_Follow_NPC_Vehicle_v6_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Follow_NpcVehicle.Brick_Follow_NPC_Vehicle_v6.debug.lua");
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Follow_NPC_Vehicle_v6_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1944759237");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Follow_NPC_Vehicle_v6_4_Success,
        -- Target_TooFar,
        [4] = self.f_box_Brick_Follow_NPC_Vehicle_v6_4_Target_TooFar,
    });
    self.box_MultipleOR_91 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1947461373");
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
        [0] = self.f_box_MultipleOR_91_Out,
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1972329041");
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
        [0] = self.f_box_MultipleOR_39_Out,
    });
    self.box_Delay_v5_79 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|2032710742");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_79_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_79_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_41 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|2046257805");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_41_SomeoneNear,
    });
    self.box_EntityStatusListener_24 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|2076412690");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_24_Loaded,
    });
    self.box_HealthListener_v6_37 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|2078436572");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_37_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_37_Killed,
    });
    self.box_CharacterLoadedIdListener_87 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|2115470345");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_87_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_87_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_87_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_87_LoadedIdReceived,
    });
    self.box_ProximityRadiusListener_v3_86 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|2142048296");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_86_SomeoneNear,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|927156586", "927156586", "UNI34_010_B20", "In", "box_OutputOrder_v2_81.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_92_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|2014743620", "2014743620", "UNI34_010_B20", "box_Simple_Node_92.Out", "box_MultipleOR_91.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1660089070", "1660089070", "UNI34_010_B20", "box_Simple_Node_64.Out", "box_Delay_v5_57.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_53_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_23();
    l0 = self.box_Bind_v4_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1135351421", "1135351421", "UNI34_010_B20", "box_Simple_Node_53.Out", "box_Bind_v4_23.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_103_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_19();
    l0 = self.box_PlayDialog_v6_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|436764803", "436764803", "UNI34_010_B20", "box_OutputOrder_v2_103.Out", "box_PlayDialog_v6_19.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_94();
    l0 = self.box_Delay_v5_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|464285673", "464285673", "UNI34_010_B20", "box_OutputOrder_v2_103.Out", "box_Delay_v5_94.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_50_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_47();
    l0 = self.box_DisplayCustomUIMsg_v4_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1108251725", "1108251725", "UNI34_010_B20", "box_ActivityObjectiveMarkerModifier_v3_50.Disabled", "box_DisplayCustomUIMsg_v4_47.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_109_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_74();
    l0 = self.box_ContextualActionListener_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1315505626", "1315505626", "UNI34_010_B20", "box_OutputOrder_v2_109.Out", "box_ContextualActionListener_74.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_109_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetContextualAction_108();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|2088836978", "2088836978", "UNI34_010_B20", "box_OutputOrder_v2_109.Out", "box_GetContextualAction_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_34_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1796324329", "1796324329", "UNI34_010_B20", "box_ActivityObjectiveMarkerModifier_v3_34.Enabled", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_33_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_UNI34_010_B20_RadioSequence_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|458005211", "458005211", "UNI34_010_B20", "box_ActivityObjectiveMarkerModifier_v3_33.Enabled", "box_UNI34_010_B20_RadioSequence_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_UseContextualActionModifier_v3_45_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_48();
    l0 = self.box_DisplayCustomUIMsg_v4_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1697510643", "1697510643", "UNI34_010_B20", "box_UseContextualActionModifier_v3_45.Disabled", "box_DisplayCustomUIMsg_v4_48.Display", clone:GetLuaBox(), l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_17();
    l0 = self.box_MultipleAND_v2_28;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1778589576", "1778589576", "UNI34_010_B20", "box_MultipleAND_v2_28.Out", "box_AddActivityObjective_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_14_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_14;
    l1 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1006102198", "1006102198", "UNI34_010_B20", "box_ProximityRadiusListener_v3_14.SomeoneNear", "box_MultipleOR_89.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_99();
    l0 = self.box_Music_Quest_v2_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1818956598", "1818956598", "UNI34_010_B20", "box_OutputOrder_v2_102.Out", "box_Music_Quest_v2_99.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_75();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1221663671", "1221663671", "UNI34_010_B20", "box_OutputOrder_v2_102.Out", "box_ActivityRetry_75.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_72();
    l0 = self.box_DisplayCustomUIMsg_v4_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1727654655", "1727654655", "UNI34_010_B20", "box_OutputOrder_v2_31.Out", "box_DisplayCustomUIMsg_v4_72.Display", clone:GetLuaBox(), l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_53();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1357266753", "1357266753", "UNI34_010_B20", "box_OutputOrder_v2_31.Out", "box_Simple_Node_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_34();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1769499970", "1769499970", "UNI34_010_B20", "box_OutputOrder_v2_31.Out", "box_ActivityObjectiveMarkerModifier_v3_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1918236337", "1918236337", "UNI34_010_B20", "box_OutputOrder_v2_31.Out", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1082926064", "1082926064", "UNI34_010_B20", "box_AddActivityObjective_v2_21.Out", "box_OutputOrder_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DisplayCustomUIMsg_v4_72_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_76();
    l0 = self.box_DisplayCustomUIMsg_v4_72;
    l1 = self.box_Delay_v5_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|73921901", "73921901", "UNI34_010_B20", "box_DisplayCustomUIMsg_v4_72.OnDisplay", "box_Delay_v5_76.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EndActivityObjective_v2_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_67();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1813814535", "1813814535", "UNI34_010_B20", "box_EndActivityObjective_v2_16.Out", "box_ActivityObjectiveMarkerModifier_v3_67.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_20_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_15();
    l0 = self.box_ProximityRadiusListener_v3_20;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|784643063", "784643063", "UNI34_010_B20", "box_ProximityRadiusListener_v3_20.AllFar", "box_ActivityRetry_15.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_112_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_113();
    l0 = self.box_HealthListener_v6_112;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|440825281", "440825281", "UNI34_010_B20", "box_HealthListener_v6_112.Downed", "box_HealthModifier_v2_113.RemoveCritical", l0:GetLuaBox(), l1:GetLuaBox());
    -- RemoveCritical
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_112_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = self.box_HealthListener_v6_112;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|795639194", "795639194", "UNI34_010_B20", "box_HealthListener_v6_112.Enabled", "box_OutputOrder_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_40();
    l0 = self.box_ProximityRadiusListener_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1174969873", "1174969873", "UNI34_010_B20", "box_OutputOrder_v2_12.Out", "box_ProximityRadiusListener_v3_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_14();
    l0 = self.box_ProximityRadiusListener_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1326526263", "1326526263", "UNI34_010_B20", "box_OutputOrder_v2_12.Out", "box_ProximityRadiusListener_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_107_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_65();
    l0 = self.box_MultipleOR_107;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1254791819", "1254791819", "UNI34_010_B20", "box_MultipleOR_107.Out", "box_ActivityRetry_65.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_80_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_80;
    l1 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1742833496", "1742833496", "UNI34_010_B20", "box_ActivityAcknowledgeGate_80.Acknowledged", "box_MultipleOR_95.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_80_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_27();
    l0 = self.box_ActivityAcknowledgeGate_80;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1297513866", "1297513866", "UNI34_010_B20", "box_ActivityAcknowledgeGate_80.Reloaded", "box_SetBoolean_v2_27.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_100_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_24();
    l0 = self.box_SpawnAI_100;
    l1 = self.box_EntityStatusListener_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1816022170", "1816022170", "UNI34_010_B20", "box_SpawnAI_100.Spawned", "box_EntityStatusListener_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_94_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Follow_NPC_Vehicle_v6_4();
    l0 = self.box_Delay_v5_94;
    l1 = self.box_Brick_Follow_NPC_Vehicle_v6_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|104549205", "104549205", "UNI34_010_B20", "box_Delay_v5_94.TimeElapsed", "box_Brick_Follow_NPC_Vehicle_v6_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_27_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_27_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1681215238", "1681215238", "UNI34_010_B20", "box_SetBoolean_v2_27.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjective_v2_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|2105252260", "2105252260", "UNI34_010_B20", "box_AddActivityObjective_v2_17.Out", "box_OutputOrder_v2_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_67_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_21();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|2029281908", "2029281908", "UNI34_010_B20", "box_ActivityObjectiveMarkerModifier_v3_67.Disabled", "box_AddActivityObjective_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_93_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_MultipleOR_93;
    l1 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|269511009", "269511009", "UNI34_010_B20", "box_MultipleOR_93.Out", "box_MultipleAND_v2_28.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_HealthListener_v6_56_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_56;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|564290014", "564290014", "UNI34_010_B20", "box_HealthListener_v6_56.Downed", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_56_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_56;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1389844775", "1389844775", "UNI34_010_B20", "box_HealthListener_v6_56.Killed", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_97_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_87();
    l0 = self.box_ActivityInitialized_97;
    l1 = self.box_CharacterLoadedIdListener_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1224428530", "1224428530", "UNI34_010_B20", "box_ActivityInitialized_97.Out", "box_CharacterLoadedIdListener_87.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_61_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_60();
    l0 = self.box_Delay_v5_61;
    l1 = self.box_ProximityRadiusListener_v3_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|678091747", "678091747", "UNI34_010_B20", "box_Delay_v5_61.TimeElapsed", "box_ProximityRadiusListener_v3_60.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_98_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_109();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1875050632", "1875050632", "UNI34_010_B20", "box_Compare_Boolean_98.A_is_False", "box_OutputOrder_v2_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_98_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1281249197", "1281249197", "UNI34_010_B20", "box_Compare_Boolean_98.A_is_True", "box_MultipleOR_93.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_10();
    l0 = self.box_MultipleOR_11;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|462624696", "462624696", "UNI34_010_B20", "box_MultipleOR_11.Out", "box_ActivityRetry_10.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_8_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_7();
    l0 = self.box_EntityStatusListener_8;
    l1 = self.box_HealthListener_v6_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1515666217", "1515666217", "UNI34_010_B20", "box_EntityStatusListener_8.Loaded", "box_HealthListener_v6_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UNI34_010_B20_RadioSequence_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_100();
    l0 = self.box_UNI34_010_B20_RadioSequence_2;
    l1 = self.box_SpawnAI_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|306295218", "306295218", "UNI34_010_B20", "box_UNI34_010_B20_RadioSequence_2.Out", "box_SpawnAI_100.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_25_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_25;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|595373322", "595373322", "UNI34_010_B20", "box_MultipleOR_25.Out", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleListener_v3_71_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_73();
    l0 = self.box_VehicleListener_v3_71;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|852461209", "852461209", "UNI34_010_B20", "box_VehicleListener_v3_71.OnSit", "box_ActivityRetry_73.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_60_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_63();
    l0 = self.box_ProximityRadiusListener_v3_60;
    l1 = self.box_PlayDialog_v6_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|871182830", "871182830", "UNI34_010_B20", "box_ProximityRadiusListener_v3_60.SomeoneNear", "box_PlayDialog_v6_63.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_83_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_83;
    l1 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|97076954", "97076954", "UNI34_010_B20", "box_Delay_v5_83.TimeElapsed", "box_MultipleOR_89.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_18();
    l0 = self.box_ProximityRadiusListener_v3_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|2140352992", "2140352992", "UNI34_010_B20", "box_OutputOrder_v2_26.Out", "box_ProximityRadiusListener_v3_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1853123186", "1853123186", "UNI34_010_B20", "box_OutputOrder_v2_26.Out", "box_OutputOrder_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_71();
    l0 = self.box_VehicleListener_v3_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|202156955", "202156955", "UNI34_010_B20", "box_OutputOrder_v2_26.Out", "box_VehicleListener_v3_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_58_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_59();
    l0 = self.box_ProximityRadiusListener_v3_58;
    l1 = self.box_PlayDialog_v6_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1110080494", "1110080494", "UNI34_010_B20", "box_ProximityRadiusListener_v3_58.SomeoneNear", "box_PlayDialog_v6_59.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_66_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_96();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1463196358", "1463196358", "UNI34_010_B20", "box_OutputOrder_v2_66.Out", "box_GetPlayerGroup_v2_96.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|462379014", "462379014", "UNI34_010_B20", "box_OutputOrder_v2_66.Out", "box_OutputOrder_v2_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_44_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_49();
    l0 = self.box_ProximityRadiusListener_v3_44;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|645317492", "645317492", "UNI34_010_B20", "box_ProximityRadiusListener_v3_44.SomeoneFar", "box_UseContextualActionModifier_v3_49.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_95_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_95;
    l1 = self.box_ActivityInitialized_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1980432967", "1980432967", "UNI34_010_B20", "box_MultipleOR_95.Out", "box_ActivityInitialized_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_61();
    l0 = self.box_MultipleOR_62;
    l1 = self.box_Delay_v5_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|435688960", "435688960", "UNI34_010_B20", "box_MultipleOR_62.Out", "box_Delay_v5_61.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HealthModifier_v2_113_OnRemoveCritical()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_112();
    l0 = self.box_HealthListener_v6_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1684029052", "1684029052", "UNI34_010_B20", "box_HealthModifier_v2_113.OnRemoveCritical", "box_HealthListener_v6_112.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ContextualActionListener_74_Select()
    local l0, l1;
    l0 = self.box_ContextualActionListener_74;
    l1 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|641366837", "641366837", "UNI34_010_B20", "box_ContextualActionListener_74.Select", "box_MultipleOR_93.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_74_Start()
    local l0, l1;
    l0 = self.box_ContextualActionListener_74;
    l1 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1660027845", "1660027845", "UNI34_010_B20", "box_ContextualActionListener_74.Start", "box_MultipleOR_93.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_106_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_106;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1091690624", "1091690624", "UNI34_010_B20", "box_MultipleOR_106.Out", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_9();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|719312083", "719312083", "UNI34_010_B20", "box_OutputOrder_v2_78.Out", "box_ActivityForceAndLockTracking_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|354891011", "354891011", "UNI34_010_B20", "box_OutputOrder_v2_78.Out", "box_ActivityObjectiveMarkerModifier_v3_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_85();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1877858683", "1877858683", "UNI34_010_B20", "box_AddActivityObjective_v2_30.Out", "box_ActivityObjectiveMarkerModifier_v3_85.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_1_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_1;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1156080756", "1156080756", "UNI34_010_B20", "box_VehicleDamageListener_v2_1.Broken", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_VehicleDamageListener_v2_1_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_1;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1465965302", "1465965302", "UNI34_010_B20", "box_VehicleDamageListener_v2_1.Destroyed", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_1_Disabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_1;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|929406374", "929406374", "UNI34_010_B20", "box_VehicleDamageListener_v2_1.Disabled", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_VehicleDamageListener_v2_1_MajorDamage()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_1;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1772406224", "1772406224", "UNI34_010_B20", "box_VehicleDamageListener_v2_1.MajorDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_VehicleDamageListener_v2_1_MinorDamage()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_1;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1137782814", "1137782814", "UNI34_010_B20", "box_VehicleDamageListener_v2_1.MinorDamage", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_VehicleDamageListener_v2_1_OnFire()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_1;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1617782391", "1617782391", "UNI34_010_B20", "box_VehicleDamageListener_v2_1.OnFire", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_43_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_43;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|63575449", "63575449", "UNI34_010_B20", "box_MultipleOR_43.Out", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_76_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_72();
    l0 = self.box_Delay_v5_76;
    l1 = self.box_DisplayCustomUIMsg_v4_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1553888928", "1553888928", "UNI34_010_B20", "box_Delay_v5_76.TimeElapsed", "box_DisplayCustomUIMsg_v4_72.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_35_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_56();
    l0 = self.box_EntityStatusListener_35;
    l1 = self.box_HealthListener_v6_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1887681012", "1887681012", "UNI34_010_B20", "box_EntityStatusListener_35.Loaded", "box_HealthListener_v6_56.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_52_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|219133763", "219133763", "UNI34_010_B20", "box_UseContextualActionModifier_v3_52.Disabled", "box_MultipleOR_91.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_38_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_38;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|361392193", "361392193", "UNI34_010_B20", "box_MultipleOR_38.Out", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Bind_v4_23_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_Bind_v4_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1694455327", "1694455327", "UNI34_010_B20", "box_Bind_v4_23.Bound", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_30();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1883327499", "1883327499", "UNI34_010_B20", "box_OutputOrder_v2_77.Out", "box_AddActivityObjective_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_99();
    l0 = self.box_Music_Quest_v2_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1066131481", "1066131481", "UNI34_010_B20", "box_OutputOrder_v2_77.Out", "box_Music_Quest_v2_99.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1988835885", "1988835885", "UNI34_010_B20", "box_OutputOrder_v2_81.Out", "box_ActivityAcknowledgeGate_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_82();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1245767506", "1245767506", "UNI34_010_B20", "box_OutputOrder_v2_81.Out", "box_Print_v2_82.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_7_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_7;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|188379115", "188379115", "UNI34_010_B20", "box_HealthListener_v6_7.Downed", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_7_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_7;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|781794339", "781794339", "UNI34_010_B20", "box_HealthListener_v6_7.Killed", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetContextualAction_108_Out()
    local params, l0;
    self:OnExit_box_GetContextualAction_108_Out();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_110();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|735937139", "735937139", "UNI34_010_B20", "box_GetContextualAction_108.Out", "box_Compare_Entity_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_89_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_89;
    l1 = self.box_OnceOnly_v3_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1570442621", "1570442621", "UNI34_010_B20", "box_MultipleOR_89.Out", "box_OnceOnly_v3_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_DisplayCustomUIMsg_v4_47_OnHide()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_54();
    l0 = self.box_DisplayCustomUIMsg_v4_47;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|450533811", "450533811", "UNI34_010_B20", "box_DisplayCustomUIMsg_v4_47.OnHide", "box_UseContextualActionModifier_v3_54.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_110_Equal()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|95300437", "95300437", "UNI34_010_B20", "box_Compare_Entity_110.Equal", "box_MultipleOR_93.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Compare_Entity_110_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_111();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1128998593", "1128998593", "UNI34_010_B20", "box_Compare_Entity_110.NotEqual", "box_Simple_Node_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_84_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_50();
    l0 = self.box_OnceOnly_v3_84;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|36463503", "36463503", "UNI34_010_B20", "box_OnceOnly_v3_84.Out", "box_ActivityObjectiveMarkerModifier_v3_50.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_57_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_58();
    l0 = self.box_Delay_v5_57;
    l1 = self.box_ProximityRadiusListener_v3_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1883388791", "1883388791", "UNI34_010_B20", "box_Delay_v5_57.TimeElapsed", "box_ProximityRadiusListener_v3_58.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_59_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_59;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1867088209", "1867088209", "UNI34_010_B20", "box_PlayDialog_v6_59.Finished", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_59_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_59;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1746139129", "1746139129", "UNI34_010_B20", "box_PlayDialog_v6_59.FinishedInterrupted", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_59_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_59;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|693821154", "693821154", "UNI34_010_B20", "box_PlayDialog_v6_59.QueueCancelled", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_59_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_59;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|447923118", "447923118", "UNI34_010_B20", "box_PlayDialog_v6_59.Stopped", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_85_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_79();
    l0 = self.box_Delay_v5_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|9106892", "9106892", "UNI34_010_B20", "box_ActivityObjectiveMarkerModifier_v3_85.Enabled", "box_Delay_v5_79.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_6();
    l0 = self.box_ProximityRadiusListener_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1862713733", "1862713733", "UNI34_010_B20", "box_OutputOrder_v2_13.Out", "box_ProximityRadiusListener_v3_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_86();
    l0 = self.box_ProximityRadiusListener_v3_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1598001168", "1598001168", "UNI34_010_B20", "box_OutputOrder_v2_13.Out", "box_ProximityRadiusListener_v3_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_40();
    l0 = self.box_ProximityRadiusListener_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1660979000", "1660979000", "UNI34_010_B20", "box_OutputOrder_v2_13.Out", "box_ProximityRadiusListener_v3_40.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_44();
    l0 = self.box_ProximityRadiusListener_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1736151189", "1736151189", "UNI34_010_B20", "box_OutputOrder_v2_42.Out", "box_ProximityRadiusListener_v3_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_41();
    l0 = self.box_ProximityRadiusListener_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|31786186", "31786186", "UNI34_010_B20", "box_OutputOrder_v2_42.Out", "box_ProximityRadiusListener_v3_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_46();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1579109892", "1579109892", "UNI34_010_B20", "box_OutputOrder_v2_42.Out", "box_ActivityObjectiveMarkerModifier_v3_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_54_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_55();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|623750082", "623750082", "UNI34_010_B20", "box_UseContextualActionModifier_v3_54.Disabled", "box_UseContextualActionModifier_v3_55.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_18_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_16();
    l0 = self.box_ProximityRadiusListener_v3_18;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|990761893", "990761893", "UNI34_010_B20", "box_ProximityRadiusListener_v3_18.SomeoneNear", "box_EndActivityObjective_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_49_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_45();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1549041124", "1549041124", "UNI34_010_B20", "box_UseContextualActionModifier_v3_49.Enabled", "box_UseContextualActionModifier_v3_45.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_55_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_90();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|63107613", "63107613", "UNI34_010_B20", "box_UseContextualActionModifier_v3_55.Disabled", "box_OutputOrder_v2_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_40_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_ProximityRadiusListener_v3_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|622208818", "622208818", "UNI34_010_B20", "box_ProximityRadiusListener_v3_40.SomeoneNear", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_6_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_83();
    l0 = self.box_ProximityRadiusListener_v3_6;
    l1 = self.box_Delay_v5_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|222488754", "222488754", "UNI34_010_B20", "box_ProximityRadiusListener_v3_6.SomeoneNear", "box_Delay_v5_83.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_105_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_105;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1758644651", "1758644651", "UNI34_010_B20", "box_HealthListener_v6_105.Downed", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_105_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_105;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|621845356", "621845356", "UNI34_010_B20", "box_HealthListener_v6_105.Killed", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_1();
    l0 = self.box_VehicleDamageListener_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|230888617", "230888617", "UNI34_010_B20", "box_OutputOrder_v2_36.Out", "box_VehicleDamageListener_v2_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_37();
    l0 = self.box_HealthListener_v6_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1235941061", "1235941061", "UNI34_010_B20", "box_OutputOrder_v2_36.Out", "box_HealthListener_v6_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_20();
    l0 = self.box_ProximityRadiusListener_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|147161732", "147161732", "UNI34_010_B20", "box_OutputOrder_v2_36.Out", "box_ProximityRadiusListener_v3_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_8();
    l0 = self.box_EntityStatusListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1231959934", "1231959934", "UNI34_010_B20", "box_OutputOrder_v2_36.Out", "box_EntityStatusListener_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_51_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_52();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|488240014", "488240014", "UNI34_010_B20", "box_UseContextualActionModifier_v3_51.Enabled", "box_UseContextualActionModifier_v3_52.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Follow_NPC_Vehicle_v6_4_Success()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_4;
    l1 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|2106132831", "2106132831", "UNI34_010_B20", "box_Brick_Follow_NPC_Vehicle_v6_4.Success", "box_MultipleAND_v2_28.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Brick_Follow_NPC_Vehicle_v6_4_Target_TooFar()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = self.box_Brick_Follow_NPC_Vehicle_v6_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1014462449", "1014462449", "UNI34_010_B20", "box_Brick_Follow_NPC_Vehicle_v6_4.Target_TooFar", "box_OutputOrder_v2_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_91_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_48();
    l0 = self.box_MultipleOR_91;
    l1 = self.box_DisplayCustomUIMsg_v4_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1441246773", "1441246773", "UNI34_010_B20", "box_MultipleOR_91.Out", "box_DisplayCustomUIMsg_v4_48.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_90_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_92();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1008195107", "1008195107", "UNI34_010_B20", "box_OutputOrder_v2_90.Out", "box_Simple_Node_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_90_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1165272991", "1165272991", "UNI34_010_B20", "box_OutputOrder_v2_90.Out", "box_ActivityEnd_3.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_5();
    l0 = self.box_MultipleOR_39;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|384212543", "384212543", "UNI34_010_B20", "box_MultipleOR_39.Out", "box_ActivityRetry_5.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_79_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_98();
    l0 = self.box_Delay_v5_79;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|2095599876", "2095599876", "UNI34_010_B20", "box_Delay_v5_79.Started", "box_Compare_Boolean_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_79_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = self.box_Delay_v5_79;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|41178287", "41178287", "UNI34_010_B20", "box_Delay_v5_79.TimeElapsed", "box_OutputOrder_v2_103.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_41_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_51();
    l0 = self.box_ProximityRadiusListener_v3_41;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1740515748", "1740515748", "UNI34_010_B20", "box_ProximityRadiusListener_v3_41.SomeoneNear", "box_UseContextualActionModifier_v3_51.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_24_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_EntityStatusListener_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|915151339", "915151339", "UNI34_010_B20", "box_EntityStatusListener_24.Loaded", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_37_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_37;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|387887022", "387887022", "UNI34_010_B20", "box_HealthListener_v6_37.Downed", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_37_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_37;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1303141106", "1303141106", "UNI34_010_B20", "box_HealthListener_v6_37.Killed", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CharacterLoadedIdListener_87_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_87_LoadedIdReceived();
    params = self:OnEnter_box_HealthListener_v6_112();
    l0 = self.box_CharacterLoadedIdListener_87;
    l1 = self.box_HealthListener_v6_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|278100235", "278100235", "UNI34_010_B20", "box_CharacterLoadedIdListener_87.LoadedIdReceived", "box_HealthListener_v6_112.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_96_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_96_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1043649302", "1043649302", "UNI34_010_B20", "box_GetPlayerGroup_v2_96.Out", "box_OutputOrder_v2_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_35();
    l0 = self.box_EntityStatusListener_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1094431154", "1094431154", "UNI34_010_B20", "box_OutputOrder_v2_104.Out", "box_EntityStatusListener_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_104_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_105();
    l0 = self.box_HealthListener_v6_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|968020726", "968020726", "UNI34_010_B20", "box_OutputOrder_v2_104.Out", "box_HealthListener_v6_105.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_86_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_86;
    l1 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|836462242", "836462242", "UNI34_010_B20", "box_ProximityRadiusListener_v3_86.SomeoneNear", "box_MultipleOR_89.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|@n_Cleanup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_92_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|@nHurryPlayer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_64_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|@nSpeedManager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_53_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|17608766");
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
                [0] = self.f_box_OutputOrder_v2_103_Out_0,
                [1] = self.f_box_OutputOrder_v2_103_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|64716625");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_50_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2102696687695849440",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI34_010_B20_OBJ_ReachLeader",
            id = "546776",
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_19()
    local params;
    DrawTextToScreen("Comment: Great job, Deputy. Now meet me in that tower.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Great job, Deputy. Now meet me in that tower.");
    params = {
        -- Group,
        [0] = self.eQuestGiver,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "609995674",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|125821661");
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
                [0] = self.f_box_OutputOrder_v2_109_Out_0,
                [1] = self.f_box_OutputOrder_v2_109_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|133754838");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI34_010_FAIL_LeaderEscape",
            id = "730705",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|155797424");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_34_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2102696687695849440",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI34_010_B20_OBJ_ReachLeader",
            id = "546776",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|223948908");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_33_Enabled,
    });
    params = {
        -- CharacterId,
        [0] = "9015201653466527",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "New Control",
            id = "852371",
        },
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|224058114");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_45_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102972785803424664",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_28()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_14()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gFriendlyPlayers,
        -- id2,
        [3] = "2102611851824088778",
        -- nearZone,
        [4] = 60,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|272735202");
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
                [0] = self.f_box_OutputOrder_v2_102_Out_0,
                [1] = self.f_box_OutputOrder_v2_102_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|290518406");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|302396907");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
                [2] = self.f_box_OutputOrder_v2_31_Out_2,
                [3] = self.f_box_OutputOrder_v2_31_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|316731721");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_21_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI34_010_B20_OBJ_ReachLeader",
            id = "546776",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|316898596");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI34_010_FAIL_LeaderEscape",
            id = "730705",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v4_72()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "UNI34_010_B30_Warning",
            id = "742831",
        },
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|333636404");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_16_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "New Control",
            id = "852371",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gFriendlyPlayers,
        -- farZone,
        [2] = 350,
        -- id2,
        [3] = "2102601790317938466",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_112()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|404441945");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_100()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102601787633583812",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_94()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|588955092");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_27_Out,
    });
    params = {
        -- Bool,
        [0] = self.bIsAReload,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|623446771");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_17_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "New Control",
            id = "852371",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|637686330");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_67_Disabled,
    });
    params = {
        -- CharacterId,
        [0] = "9015201653466527",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "New Control",
            id = "852371",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|649852676");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI34_010_FAIL_DocumentLost",
            id = "730704",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_56()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2102629956631688626",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|725948252");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_61()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|771671923");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_98_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_98_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bIsAReload,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|773509484");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2102696687695849440",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI34_010_B20_OBJ_ReachLeader",
            id = "546776",
        },
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v4_48()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "UNI34_010_B30_Warning",
            id = "742831",
        },
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102629956631688626",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_63()
    local params;
    params = {
        -- Group,
        [0] = self.eQuestGiver,
        -- RelevancyTime,
        [1] = 6,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "654606860",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_71()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.gFriendlyPlayers,
        -- vehicle,
        [4] = "2102601790317938466",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_60()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gFriendlyPlayers,
        -- id2,
        [3] = "2099879549931107097",
        -- nearZone,
        [4] = 12,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_83()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1000771764");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
                [4] = self.f_box_OutputOrder_v2_26_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_58()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gFriendlyPlayers,
        -- id2,
        [3] = "2099879549931107097",
        -- nearZone,
        [4] = 12,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1032561915");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1044040321");
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
                [0] = self.f_box_OutputOrder_v2_66_Out_0,
                [1] = self.f_box_OutputOrder_v2_66_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_44()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gFriendlyPlayers,
        -- farZone,
        [2] = 155,
        -- id2,
        [3] = "2102601790317938466",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1123958006");
    l0:SetConnections({
        -- OnRemoveCritical,
        [2] = self.f_box_HealthModifier_v2_113_OnRemoveCritical,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self.eQuestGiver,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_74()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2104467070954588594",
        -- UserFilter,
        [1] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1136861422");
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
                [0] = self.f_box_OutputOrder_v2_78_Out_0,
                [1] = self.f_box_OutputOrder_v2_78_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1158031704");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_30_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI34_010_B05_OBJ_FollowWillis",
            id = "546758",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1169571665");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI34_010_FAIL_DocumentLost",
            id = "730704",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_1()
    local params;
    params = {
        -- Vehicle,
        [0] = "2102601790317938466",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1207867990");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI34_010_FAIL_DocumentLost",
            id = "730704",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1227105044");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI34_010_FAIL_DocumentLost",
            id = "730704",
        },
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_76()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_35()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102629956631688626",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1266811779");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_52_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102972768233485183",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_23()
    local params;
    params = {
        -- BoneName,
        [0] = "Rotor",
        -- EntityA,
        [1] = "2102601790317938466",
        -- EntityB,
        [2] = "2102696687695849440",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1464171462");
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
                [0] = self.f_box_OutputOrder_v2_77_Out_0,
                [2] = self.f_box_OutputOrder_v2_77_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1556772476");
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

function export:OnEnter_box_HealthListener_v6_7()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2102629956631688626",
    };
    return params;
end;

function export:OnEnter_box_GetContextualAction_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetContextualAction_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1599796010");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetContextualAction_108_Out,
    });
    params = {
        -- pawnId,
        [0] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v4_47()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "UNI34_010_B30_Warning",
            id = "742831",
        },
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1639798315");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_110_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_110_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.eGetCurrentSTP,
        -- Entity2,
        [1] = "2104467070954588594",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_57()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_99()
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
        [6] = "504558118",
        -- StopEvent,
        [7] = "2345722280",
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

function export:OnEnter_box_PlayDialog_v6_59()
    local params;
    params = {
        -- Group,
        [0] = self.eQuestGiver,
        -- RelevancyTime,
        [1] = 6,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2036942318",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1763735723");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_85_Enabled,
    });
    params = {
        -- Marker,
        [1] = self.eQuestGiver,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI34_010_B05_OBJ_FollowWillis",
            id = "546758",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1768506314");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
                [2] = self.f_box_OutputOrder_v2_13_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1768563686");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
                [2] = self.f_box_OutputOrder_v2_42_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1777901534");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_54_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102972785803424664",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_18()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "2102601790317938466",
        -- id2,
        [3] = "2104092475038636271",
        -- nearZone,
        [4] = 30,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1787360015");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_49_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102972768233485183",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1831228596");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_55_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102972768233485183",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_40()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "2102601790317938466",
        -- id2,
        [3] = "2102611851824088778",
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gFriendlyPlayers,
        -- id2,
        [3] = "2102611851824088778",
        -- nearZone,
        [4] = 100,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_105()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1903005939");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
                [2] = self.f_box_OutputOrder_v2_36_Out_2,
                [3] = self.f_box_OutputOrder_v2_36_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1927694858");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_51_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102972785803424664",
    };
    return params;
end;

function export:OnEnter_box_Brick_Follow_NPC_Vehicle_v6_4()
    local params;
    params = {
        -- bRequiresObjective,
        [0] = false,
        -- Destination,
        [1] = "2102445281235715060",
        -- fDistanceFail,
        [2] = 150,
        -- fDistanceSuccess,
        [3] = 3,
        -- fDistanceWarning,
        [4] = 1500,
        -- FollowTarget,
        [5] = self.eQuestGiver,
        -- IsPersistentCharacter,
        [6] = true,
        -- oObjective,
        [7] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_Follow_Target",
            id = "373014",
        },
        -- oWarningMsg,
        [10] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_FailWarning",
            id = "432251",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|1965994789");
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
                [0] = self.f_box_OutputOrder_v2_90_Out_0,
                [1] = self.f_box_OutputOrder_v2_90_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|2030290156");
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
        [8] = "UNI34_010_B20 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_79()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_41()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gFriendlyPlayers,
        -- id2,
        [3] = "2102601790317938466",
        -- nearZone,
        [4] = 150,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_24()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102601790317938466",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_37()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2102601866499082092",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_87()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015201653466527",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|2130750355");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_96_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B20.domino|@UNI34_010_B20|2132402518");
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

function export:OnEnter_box_ProximityRadiusListener_v3_86()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gFriendlyPlayers,
        -- id2,
        [3] = "2102611851824088778",
        -- nearZone,
        [4] = 75,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bIsAReload = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetContextualAction_108_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    self.eGetCurrentSTP = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_87_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_87;
    self.eQuestGiver = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_96_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayers = l0:GetDataOutValue(0);
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
