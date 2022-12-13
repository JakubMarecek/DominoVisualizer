LUACʉ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni34/uni34_010/uni34_010_b30.domino
-- User graph: UNI34_010_B30
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/ForceInVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        
        -- Load resources
        cboxRes:LoadResource([[504558118.bnk]], "CSoundResource");
        cboxRes:LoadResource([[368101556.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4274673006.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2345722280.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2553057534.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI34/UNI34_010/UNI34_010_B30.UNI34_010_B30.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/IsEntityLoaded_v3.lua")] = {
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
                name = "entityId",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")] = {
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
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "SeatType",
                type = "int",
            },
            [2] = {
                name = "vehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "entity",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI34_010_B30";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30";
    self.Out = DummyFunction;
    self.eQuestGiver = nil;
    self.gFriendlyPlayers = nil;
    self.eHelicopter = nil;
    self.bIsAReload = false;
    self.VIPlis = 0;
    self.box_ProximityRadiusListener_v3_108 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|15641729");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_108_SomeoneNear,
    });
    self.box_Bind_v4_114 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|43644791");
    l0:SetConnections({
    });
    self.box_SpawnAI_129 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|73362572");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_117 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|80249476");
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
    self.box_ProximityRadiusListener_v3_16 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|107558465");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_16_SomeoneNear,
    });
    self.box_MultipleOR_121 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|132162382");
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
        [0] = self.f_box_MultipleOR_121_Out,
    });
    self.box_ProximityRadiusListener_v3_56 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|146326927");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_56_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_70 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|156670662");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_70_SomeoneFar,
    });
    self.box_MultipleOR_102 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|190252288");
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
        [0] = self.f_box_MultipleOR_102_Out,
    });
    self.box_EntityStatusListener_100 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|201249393");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_100_Loaded,
    });
    self.box_VehicleDamageListener_v2_141 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|216897355");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_141_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_141_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_141_Disabled,
        -- MajorDamage,
        [5] = self.f_box_VehicleDamageListener_v2_141_MajorDamage,
        -- MinorDamage,
        [6] = self.f_box_VehicleDamageListener_v2_141_MinorDamage,
        -- OnFire,
        [8] = self.f_box_VehicleDamageListener_v2_141_OnFire,
    });
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|227360251");
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
    self.box_MultipleOR_120 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|287925832");
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
    self.box_RequestPhoneCall_v2_57 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|288844150");
    l0:SetConnections({
    });
    self.box_MultipleOR_83 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|409764504");
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
    self.box_OnceOnly_v3_76 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|468134285");
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
                [0] = self.f_box_OnceOnly_v3_76_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_84 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|495210290");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_84_Spawned,
    });
    self.box_VehicleListener_v3_118 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|497536425");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_118_OnSit,
    });
    self.box_ProximityRadiusListener_v3_101 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|506752523");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_101_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_101_SomeoneNear,
    });
    self.box_EntityStatusListener_31 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|592745615");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_31_Loaded,
    });
    self.box_EntityStatusListener_69 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|605607452");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_69_Loaded,
    });
    self.box_RequestPhoneCall_v2_18 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|741445608");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_20 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|790973241");
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
                [0] = self.f_box_OnceOnly_v3_20_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_138 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|816709567");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_138_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_43 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|818496553");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_43_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_43_Reloaded,
    });
    self.box_ProximityRadiusListener_v3_109 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|829839037");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_109_AllFar,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_109_Enabled,
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|846170033");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_VehicleListener_v3_28 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|852410347");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_28_OnSit,
    });
    self.box_EntityStatusListener_115 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|854993991");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_115_Loaded,
    });
    self.box_VehicleListener_v3_29 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|883351554");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_29_OnSit,
    });
    self.box_EntityStatusListener_46 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|890552598");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_46_Loaded,
    });
    self.box_EntityStatusListener_47 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|910875806");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_47_Loaded,
    });
    self.box_MultipleOR_77 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|910946890");
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
        [0] = self.f_box_MultipleOR_77_Out,
    });
    self.box_ActivityInitialized_42 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|980015682");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_42_Out,
    });
    self.box_VehicleListener_v3_24 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1019584241");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_24_OnSit,
    });
    self.box_ProximityRadiusListener_v3_123 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1096229713");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_123_SomeoneNear,
    });
    self.box_DisplayCustomUIMsg_v4_103 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
    l0 = self.box_DisplayCustomUIMsg_v4_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v4_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1145239095");
    l0:SetConnections({
    });
    self.box_VehicleListener_v3_112 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1149836310");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_112_OnSit,
    });
    self.box_RequestPhoneCall_v2_17 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1179694244");
    l0:SetConnections({
    });
    self.box_MultipleOR_87 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1186435024");
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
        [0] = self.f_box_MultipleOR_87_Out,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1366125435");
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
    self.box_MultipleOR_136 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1371576267");
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
        [0] = self.f_box_MultipleOR_136_Out,
    });
    self.box_ProximityRadiusListener_v3_71 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1431742826");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_71_SomeoneNear,
    });
    self.box_Music_Quest_v2_79 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1456049092");
    l0:SetConnections({
    });
    self.box_MultipleOR_95 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1537466055");
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
    self.box_EntityStatusListener_62 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1582689540");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_62_Loaded,
    });
    self.box_MultipleOR_99 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1590878134");
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
        [0] = self.f_box_MultipleOR_99_Out,
    });
    self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1656606854");
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
        [0] = self.f_box_MultipleOR_41_Out,
    });
    self.box_SpawnAI_3 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1662525526");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_3_Spawned,
    });
    self.box_HealthListener_v6_52 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1891014509");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_52_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_52_Killed,
    });
    self.box_MultipleOR_124 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1892836754");
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
        [0] = self.f_box_MultipleOR_124_Out,
    });
    self.box_EntityStatusListener_54 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1899739322");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_54_Loaded,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1899938901");
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_Music_Quest_v2_66 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1909507459");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_30 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1954778053");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_30_Loaded,
    });
    self.box_VehicleDamageListener_v2_104 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1987932928");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_104_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_104_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_104_Disabled,
        -- MajorDamage,
        [5] = self.f_box_VehicleDamageListener_v2_104_MajorDamage,
        -- MinorDamage,
        [6] = self.f_box_VehicleDamageListener_v2_104_MinorDamage,
        -- OnFire,
        [8] = self.f_box_VehicleDamageListener_v2_104_OnFire,
    });
    self.box_DisplayCustomUIMsg_v4_88 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
    l0 = self.box_DisplayCustomUIMsg_v4_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v4_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|2050203334");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v4_88_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v4_88_OnHide,
    });
    self.box_HealthListener_v6_105 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|2062252742");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_105_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_105_Killed,
    });
    self.box_MultipleOR_140 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|2082471844");
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
        [0] = self.f_box_MultipleOR_140_Out,
    });
    self.box_DisplayCustomUIMsg_v4_37 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
    l0 = self.box_DisplayCustomUIMsg_v4_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v4_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|2106200770");
    l0:SetConnections({
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v4_37_OnHide,
    });
    self.box_Bind_v4_6 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|2146693474");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_6_Bound,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1273273529", "1273273529", "UNI34_010_B30", "In", "box_OutputOrder_v2_36.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_122_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1532653924", "1532653924", "UNI34_010_B30", "box_Simple_Node_122.Out", "box_MultipleOR_121.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_ProximityRadiusListener_v3_101();
    l0 = self.box_ProximityRadiusListener_v3_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1042946378", "1042946378", "UNI34_010_B30", "box_Simple_Node_122.Out", "box_ProximityRadiusListener_v3_101.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|577167154", "577167154", "UNI34_010_B30", "box_Simple_Node_21.Out", "box_OutputOrder_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_1();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|574399773", "574399773", "UNI34_010_B30", "box_Simple_Node_35.Out", "box_IsEntityLoaded_v3_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_HealthListener_v6_105();
    l0 = self.box_HealthListener_v6_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1565824265", "1565824265", "UNI34_010_B30", "box_Simple_Node_35.Out", "box_HealthListener_v6_105.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_16();
    l0 = self.box_ProximityRadiusListener_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1159315754", "1159315754", "UNI34_010_B30", "box_Simple_Node_22.Out", "box_ProximityRadiusListener_v3_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_108_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_108;
    l1 = self.box_MultipleOR_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|164509144", "164509144", "UNI34_010_B30", "box_ProximityRadiusListener_v3_108.SomeoneNear", "box_MultipleOR_124.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_109();
    l0 = self.box_ProximityRadiusListener_v3_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1262097928", "1262097928", "UNI34_010_B30", "box_OutputOrder_v2_23.Out", "box_ProximityRadiusListener_v3_109.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_104();
    l0 = self.box_VehicleDamageListener_v2_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|863793921", "863793921", "UNI34_010_B30", "box_OutputOrder_v2_23.Out", "box_VehicleDamageListener_v2_104.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1513996543", "1513996543", "UNI34_010_B30", "box_OutputOrder_v2_23.Out", "box_Simple_Node_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1975609827", "1975609827", "UNI34_010_B30", "box_OutputOrder_v2_23.Out", "box_Simple_Node_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_56();
    l0 = self.box_ProximityRadiusListener_v3_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1584312085", "1584312085", "UNI34_010_B30", "box_OutputOrder_v2_23.Out", "box_ProximityRadiusListener_v3_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_107_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_44();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1518983169", "1518983169", "UNI34_010_B30", "box_ActivityObjectiveMarkerModifier_v3_107.Disabled", "box_SetContextualStrategy_44.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_96_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_67();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|687079250", "687079250", "UNI34_010_B30", "box_UseContextualActionModifier_v3_96.Enabled", "box_SetContextualStrategy_67.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_117_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_88();
    l0 = self.box_OnceOnly_v3_117;
    l1 = self.box_DisplayCustomUIMsg_v4_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|2106338420", "2106338420", "UNI34_010_B30", "box_OnceOnly_v3_117.Out", "box_DisplayCustomUIMsg_v4_88.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_98_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_63();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1640514665", "1640514665", "UNI34_010_B30", "box_OutputOrder_v2_98.Out", "box_UseContextualActionModifier_v3_63.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_98_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_97();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|396869959", "396869959", "UNI34_010_B30", "box_OutputOrder_v2_98.Out", "box_UseContextualActionModifier_v3_97.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_16_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_18();
    l0 = self.box_ProximityRadiusListener_v3_16;
    l1 = self.box_RequestPhoneCall_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1572834862", "1572834862", "UNI34_010_B30", "box_ProximityRadiusListener_v3_16.SomeoneNear", "box_RequestPhoneCall_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_121_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_103();
    l0 = self.box_MultipleOR_121;
    l1 = self.box_DisplayCustomUIMsg_v4_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|345196139", "345196139", "UNI34_010_B30", "box_MultipleOR_121.Out", "box_DisplayCustomUIMsg_v4_103.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_56_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_57();
    l0 = self.box_ProximityRadiusListener_v3_56;
    l1 = self.box_RequestPhoneCall_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|263282041", "263282041", "UNI34_010_B30", "box_ProximityRadiusListener_v3_56.SomeoneNear", "box_RequestPhoneCall_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_70();
    l0 = self.box_ProximityRadiusListener_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1847979", "1847979", "UNI34_010_B30", "box_OutputOrder_v2_5.Out", "box_ProximityRadiusListener_v3_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_71();
    l0 = self.box_ProximityRadiusListener_v3_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|483764160", "483764160", "UNI34_010_B30", "box_OutputOrder_v2_5.Out", "box_ProximityRadiusListener_v3_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_28();
    l0 = self.box_VehicleListener_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|309616019", "309616019", "UNI34_010_B30", "box_OutputOrder_v2_5.Out", "box_VehicleListener_v3_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_110();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1961878130", "1961878130", "UNI34_010_B30", "box_OutputOrder_v2_5.Out", "box_ActivityObjectiveMarkerModifier_v3_110.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_28();
    l0 = self.box_VehicleListener_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|570624468", "570624468", "UNI34_010_B30", "box_OutputOrder_v2_45.Out", "box_VehicleListener_v3_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_38();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|383220665", "383220665", "UNI34_010_B30", "box_OutputOrder_v2_45.Out", "box_UseContextualActionModifier_v3_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_70_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_90();
    l0 = self.box_ProximityRadiusListener_v3_70;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1281473307", "1281473307", "UNI34_010_B30", "box_ProximityRadiusListener_v3_70.SomeoneFar", "box_OutputOrder_v2_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_90_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_89();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1880816138", "1880816138", "UNI34_010_B30", "box_OutputOrder_v2_90.Out", "box_UseContextualActionModifier_v3_89.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_90_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_72();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|154555459", "154555459", "UNI34_010_B30", "box_OutputOrder_v2_90.Out", "box_UseContextualActionModifier_v3_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_113_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_96();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1721481888", "1721481888", "UNI34_010_B30", "box_OutputOrder_v2_113.Out", "box_UseContextualActionModifier_v3_96.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_113_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_96();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|86964182", "86964182", "UNI34_010_B30", "box_OutputOrder_v2_113.Out", "box_UseContextualActionModifier_v3_96.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_113_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_112();
    l0 = self.box_VehicleListener_v3_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|222868700", "222868700", "UNI34_010_B30", "box_OutputOrder_v2_113.Out", "box_VehicleListener_v3_112.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_113_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_141();
    l0 = self.box_VehicleDamageListener_v2_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|429921392", "429921392", "UNI34_010_B30", "box_OutputOrder_v2_113.Out", "box_VehicleDamageListener_v2_141.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_102_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_102;
    l1 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|306616860", "306616860", "UNI34_010_B30", "box_MultipleOR_102.Out", "box_MultipleOR_95.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_100_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_61();
    l0 = self.box_EntityStatusListener_100;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1960937585", "1960937585", "UNI34_010_B30", "box_EntityStatusListener_100.Loaded", "box_SetBoolean_v2_61.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_141_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_141;
    l1 = self.box_MultipleOR_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1322919936", "1322919936", "UNI34_010_B30", "box_VehicleDamageListener_v2_141.Broken", "box_MultipleOR_140.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_VehicleDamageListener_v2_141_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_141;
    l1 = self.box_MultipleOR_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|182356945", "182356945", "UNI34_010_B30", "box_VehicleDamageListener_v2_141.Destroyed", "box_MultipleOR_140.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_141_Disabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_141;
    l1 = self.box_MultipleOR_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|934194137", "934194137", "UNI34_010_B30", "box_VehicleDamageListener_v2_141.Disabled", "box_MultipleOR_140.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_VehicleDamageListener_v2_141_MajorDamage()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_141;
    l1 = self.box_MultipleOR_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1606057690", "1606057690", "UNI34_010_B30", "box_VehicleDamageListener_v2_141.MajorDamage", "box_MultipleOR_140.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_VehicleDamageListener_v2_141_MinorDamage()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_141;
    l1 = self.box_MultipleOR_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|2021347123", "2021347123", "UNI34_010_B30", "box_VehicleDamageListener_v2_141.MinorDamage", "box_MultipleOR_140.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_VehicleDamageListener_v2_141_OnFire()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_141;
    l1 = self.box_MultipleOR_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1504182648", "1504182648", "UNI34_010_B30", "box_VehicleDamageListener_v2_141.OnFire", "box_MultipleOR_140.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_106_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_106;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|88343650", "88343650", "UNI34_010_B30", "box_MultipleOR_106.Out", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|145014856", "145014856", "UNI34_010_B30", "box_OutputOrder_v2_36.Out", "box_ActivityAcknowledgeGate_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_39();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1594146565", "1594146565", "UNI34_010_B30", "box_OutputOrder_v2_36.Out", "box_Print_v2_39.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_54();
    l0 = self.box_EntityStatusListener_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|291668597", "291668597", "UNI34_010_B30", "box_OutputOrder_v2_36.Out", "box_EntityStatusListener_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_75_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|29238979", "29238979", "UNI34_010_B30", "box_UseContextualActionModifier_v3_75.Disabled", "box_MultipleOR_77.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_120_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_122();
    l0 = self.box_MultipleOR_120;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|546343992", "546343992", "UNI34_010_B30", "box_MultipleOR_120.Out", "box_Simple_Node_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|2104842564", "2104842564", "UNI34_010_B30", "box_OutputOrder_v2_50.Out", "box_AddActivityObjective_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_60();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1185879829", "1185879829", "UNI34_010_B30", "box_OutputOrder_v2_50.Out", "box_Compare_Boolean_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_83_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_69();
    l0 = self.box_MultipleOR_83;
    l1 = self.box_EntityStatusListener_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|513680062", "513680062", "UNI34_010_B30", "box_MultipleOR_83.Out", "box_EntityStatusListener_69.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_116_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|848694048", "848694048", "UNI34_010_B30", "box_OutputOrder_v2_116.Out", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_116_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_115();
    l0 = self.box_EntityStatusListener_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|686871322", "686871322", "UNI34_010_B30", "box_OutputOrder_v2_116.Out", "box_EntityStatusListener_115.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_76_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_88();
    l0 = self.box_OnceOnly_v3_76;
    l1 = self.box_DisplayCustomUIMsg_v4_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1664844685", "1664844685", "UNI34_010_B30", "box_OnceOnly_v3_76.Out", "box_DisplayCustomUIMsg_v4_88.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_85_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|401092679", "401092679", "UNI34_010_B30", "box_UseContextualActionModifier_v3_85.Disabled", "box_MultipleOR_87.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_84_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_100();
    l0 = self.box_SpawnAI_84;
    l1 = self.box_EntityStatusListener_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1705850499", "1705850499", "UNI34_010_B30", "box_SpawnAI_84.Spawned", "box_EntityStatusListener_100.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_118_OnSit()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_118;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|910938646", "910938646", "UNI34_010_B30", "box_VehicleListener_v3_118.OnSit", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_101_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_103();
    l0 = self.box_ProximityRadiusListener_v3_101;
    l1 = self.box_DisplayCustomUIMsg_v4_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|2075179384", "2075179384", "UNI34_010_B30", "box_ProximityRadiusListener_v3_101.SomeoneFar", "box_DisplayCustomUIMsg_v4_103.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_101_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_101;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1928274138", "1928274138", "UNI34_010_B30", "box_ProximityRadiusListener_v3_101.SomeoneNear", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_92_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_111();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|936201320", "936201320", "UNI34_010_B30", "box_OutputOrder_v2_92.Out", "box_EndActivityObjective_v2_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_92_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_79();
    l0 = self.box_Music_Quest_v2_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|967648060", "967648060", "UNI34_010_B30", "box_OutputOrder_v2_92.Out", "box_Music_Quest_v2_79.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_12();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|311306826", "311306826", "UNI34_010_B30", "box_OutputOrder_v2_48.Out", "box_UseContextualActionModifier_v3_12.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_33();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1374580363", "1374580363", "UNI34_010_B30", "box_OutputOrder_v2_48.Out", "box_UseContextualActionModifier_v3_33.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_4_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1230834415", "1230834415", "UNI34_010_B30", "box_SetEntity_v2_4.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_31_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_119();
    l0 = self.box_EntityStatusListener_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|622112597", "622112597", "UNI34_010_B30", "box_EntityStatusListener_31.Loaded", "box_OutputOrder_v2_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_78_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|157765913", "157765913", "UNI34_010_B30", "box_UseContextualActionModifier_v3_78.Disabled", "box_MultipleOR_77.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_69_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_62();
    l0 = self.box_EntityStatusListener_69;
    l1 = self.box_EntityStatusListener_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|389113829", "389113829", "UNI34_010_B30", "box_EntityStatusListener_69.Loaded", "box_EntityStatusListener_62.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_72_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_73();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|458898251", "458898251", "UNI34_010_B30", "box_UseContextualActionModifier_v3_72.Enabled", "box_UseContextualActionModifier_v3_73.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_82_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_3();
    l0 = self.box_SpawnAI_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|579946896", "579946896", "UNI34_010_B30", "box_IsEntityLoaded_v3_82.False", "box_SpawnAI_3.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_82_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|58392613", "58392613", "UNI34_010_B30", "box_IsEntityLoaded_v3_82.True", "box_MultipleOR_83.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_9_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|383913512", "383913512", "UNI34_010_B30", "box_ActivityObjectiveMarkerModifier_v3_9.Enabled", "box_OutputOrder_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_60_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceInVehicle_v2_58();
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|774902531", "774902531", "UNI34_010_B30", "box_Compare_Boolean_60.A_is_True", "box_ForceInVehicle_v2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_61_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_61_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|764330800", "764330800", "UNI34_010_B30", "box_SetBoolean_v2_61.Out", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_59_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_59_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_130();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1486321340", "1486321340", "UNI34_010_B30", "box_GetPlayerGroup_v2_59.Out", "box_OutputOrder_v2_130.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_73_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|146155317", "146155317", "UNI34_010_B30", "box_UseContextualActionModifier_v3_73.Disabled", "box_MultipleOR_87.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_20_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_OnceOnly_v3_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|763144796", "763144796", "UNI34_010_B30", "box_OnceOnly_v3_20.Out", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_108();
    l0 = self.box_ProximityRadiusListener_v3_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1211652422", "1211652422", "UNI34_010_B30", "box_OutputOrder_v2_125.Out", "box_ProximityRadiusListener_v3_108.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_125_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_123();
    l0 = self.box_ProximityRadiusListener_v3_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1632413385", "1632413385", "UNI34_010_B30", "box_OutputOrder_v2_125.Out", "box_ProximityRadiusListener_v3_123.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_59();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1563593006", "1563593006", "UNI34_010_B30", "box_OutputOrder_v2_19.Out", "box_GetPlayerGroup_v2_59.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_17();
    l0 = self.box_RequestPhoneCall_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|7782619", "7782619", "UNI34_010_B30", "box_OutputOrder_v2_19.Out", "box_RequestPhoneCall_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_66();
    l0 = self.box_Music_Quest_v2_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1066131481", "1066131481", "UNI34_010_B30", "box_OutputOrder_v2_19.Out", "box_Music_Quest_v2_66.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_135_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1522246250", "1522246250", "UNI34_010_B30", "box_SetContextualStrategy_135.Out", "box_MultipleOR_136.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_138_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_137();
    l0 = self.box_Delay_v5_138;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|852114657", "852114657", "UNI34_010_B30", "box_Delay_v5_138.TimeElapsed", "box_UseContextualActionModifier_v3_137.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_43_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_43;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|475691581", "475691581", "UNI34_010_B30", "box_ActivityAcknowledgeGate_43.Acknowledged", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_43_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_84();
    l0 = self.box_ActivityAcknowledgeGate_43;
    l1 = self.box_SpawnAI_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1406400499", "1406400499", "UNI34_010_B30", "box_ActivityAcknowledgeGate_43.Reloaded", "box_SpawnAI_84.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_109_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_109;
    l1 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|582426613", "582426613", "UNI34_010_B30", "box_ProximityRadiusListener_v3_109.AllFar", "box_MultipleOR_95.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_109_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_125();
    l0 = self.box_ProximityRadiusListener_v3_109;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|2113033502", "2113033502", "UNI34_010_B30", "box_ProximityRadiusListener_v3_109.Enabled", "box_OutputOrder_v2_125.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_94();
    l0 = self.box_MultipleOR_34;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|617970875", "617970875", "UNI34_010_B30", "box_MultipleOR_34.Out", "box_ActivityRetry_94.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_28_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_VehicleListener_v3_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|873795859", "873795859", "UNI34_010_B30", "box_VehicleListener_v3_28.OnSit", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_115_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_114();
    l0 = self.box_EntityStatusListener_115;
    l1 = self.box_Bind_v4_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1135351421", "1135351421", "UNI34_010_B30", "box_EntityStatusListener_115.Loaded", "box_Bind_v4_114.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_29_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_138();
    l0 = self.box_VehicleListener_v3_29;
    l1 = self.box_Delay_v5_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1559041876", "1559041876", "UNI34_010_B30", "box_VehicleListener_v3_29.OnSit", "box_Delay_v5_138.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_46_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_30();
    l0 = self.box_EntityStatusListener_46;
    l1 = self.box_EntityStatusListener_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1189298490", "1189298490", "UNI34_010_B30", "box_EntityStatusListener_46.Loaded", "box_EntityStatusListener_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_47_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_31();
    l0 = self.box_EntityStatusListener_47;
    l1 = self.box_EntityStatusListener_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1165790647", "1165790647", "UNI34_010_B30", "box_EntityStatusListener_47.Loaded", "box_EntityStatusListener_31.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_77_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_77;
    l1 = self.box_OnceOnly_v3_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|212860697", "212860697", "UNI34_010_B30", "box_MultipleOR_77.Out", "box_OnceOnly_v3_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityInitialized_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_ActivityInitialized_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1923255986", "1923255986", "UNI34_010_B30", "box_ActivityInitialized_42.Out", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_24_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_27();
    l0 = self.box_VehicleListener_v3_24;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|438028585", "438028585", "UNI34_010_B30", "box_VehicleListener_v3_24.OnSit", "box_ActivityRetry_27.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_98();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1805836356", "1805836356", "UNI34_010_B30", "box_OutputOrder_v2_13.Out", "box_OutputOrder_v2_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_14();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|932958962", "932958962", "UNI34_010_B30", "box_OutputOrder_v2_13.Out", "box_ActivityObjectiveMarkerModifier_v3_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_65_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_93();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|234979070", "234979070", "UNI34_010_B30", "box_ActivityForceAndLockTracking_65.Disabled", "box_ActivityEnd_93.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_7_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|59613426", "59613426", "UNI34_010_B30", "box_AddActivityObjective_v2_7.Out", "box_ActivityObjectiveMarkerModifier_v3_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_37();
    l0 = self.box_DisplayCustomUIMsg_v4_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1861610529", "1861610529", "UNI34_010_B30", "box_SetContextualStrategy_44.Out", "box_DisplayCustomUIMsg_v4_37.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_123_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_123;
    l1 = self.box_MultipleOR_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|376998040", "376998040", "UNI34_010_B30", "box_ProximityRadiusListener_v3_123.SomeoneNear", "box_MultipleOR_124.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_89_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_85();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1949025293", "1949025293", "UNI34_010_B30", "box_UseContextualActionModifier_v3_89.Enabled", "box_UseContextualActionModifier_v3_85.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_112_OnSit()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_112;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1836359272", "1836359272", "UNI34_010_B30", "box_VehicleListener_v3_112.OnSit", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_87_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_87;
    l1 = self.box_OnceOnly_v3_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|593654573", "593654573", "UNI34_010_B30", "box_MultipleOR_87.Out", "box_OnceOnly_v3_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_86_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_78();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|685503543", "685503543", "UNI34_010_B30", "box_UseContextualActionModifier_v3_86.Enabled", "box_UseContextualActionModifier_v3_78.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_38_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_40();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1507355528", "1507355528", "UNI34_010_B30", "box_UseContextualActionModifier_v3_38.Disabled", "box_UseContextualActionModifier_v3_40.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_68_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_135();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1101715624", "1101715624", "UNI34_010_B30", "box_UseContextualActionModifier_v3_68.Enabled", "box_SetContextualStrategy_135.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_47();
    l0 = self.box_EntityStatusListener_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|39707391", "39707391", "UNI34_010_B30", "box_OutputOrder_v2_15.Out", "box_EntityStatusListener_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_46();
    l0 = self.box_EntityStatusListener_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|796221566", "796221566", "UNI34_010_B30", "box_OutputOrder_v2_15.Out", "box_EntityStatusListener_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_101();
    l0 = self.box_ProximityRadiusListener_v3_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1078754698", "1078754698", "UNI34_010_B30", "box_OutputOrder_v2_15.Out", "box_ProximityRadiusListener_v3_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_74_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_75();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|736492092", "736492092", "UNI34_010_B30", "box_UseContextualActionModifier_v3_74.Enabled", "box_UseContextualActionModifier_v3_75.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_55();
    l0 = self.box_MultipleOR_53;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|492042468", "492042468", "UNI34_010_B30", "box_MultipleOR_53.Out", "box_ActivityRetry_55.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_136_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_116();
    l0 = self.box_MultipleOR_136;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1533352172", "1533352172", "UNI34_010_B30", "box_MultipleOR_136.Out", "box_OutputOrder_v2_116.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_137_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_137();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|409295698", "409295698", "UNI34_010_B30", "box_UseContextualActionModifier_v3_137.Enabled", "box_UseContextualActionModifier_v3_137.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_137_UseCalled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1747507599", "1747507599", "UNI34_010_B30", "box_UseContextualActionModifier_v3_137.UseCalled", "box_MultipleOR_136.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_6();
    l0 = self.box_Bind_v4_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1829868809", "1829868809", "UNI34_010_B30", "box_OutputOrder_v2_26.Out", "box_Bind_v4_6.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_24();
    l0 = self.box_VehicleListener_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|259799111", "259799111", "UNI34_010_B30", "box_OutputOrder_v2_26.Out", "box_VehicleListener_v3_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_32();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|656592674", "656592674", "UNI34_010_B30", "box_OutputOrder_v2_26.Out", "box_ActivityForceAndLockTracking_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_1_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_82();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1221829352", "1221829352", "UNI34_010_B30", "box_IsEntityLoaded_v3_1.False", "box_IsEntityLoaded_v3_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_1_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_2();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1671732965", "1671732965", "UNI34_010_B30", "box_IsEntityLoaded_v3_1.True", "box_SetEntity_v2_2.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_71_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_91();
    l0 = self.box_ProximityRadiusListener_v3_71;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1749592609", "1749592609", "UNI34_010_B30", "box_ProximityRadiusListener_v3_71.SomeoneNear", "box_OutputOrder_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_95_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_95;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|239742242", "239742242", "UNI34_010_B30", "box_MultipleOR_95.Out", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_62_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_4();
    l0 = self.box_EntityStatusListener_62;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|381711317", "381711317", "UNI34_010_B30", "box_EntityStatusListener_62.Loaded", "box_SetEntity_v2_4.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_99_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_MultipleOR_99;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1607391372", "1607391372", "UNI34_010_B30", "box_MultipleOR_99.Out", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_111_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_107();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1171894128", "1171894128", "UNI34_010_B30", "box_EndActivityObjective_v2_111.Out", "box_ActivityObjectiveMarkerModifier_v3_107.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_41_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_41;
    l1 = self.box_ActivityInitialized_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1067430798", "1067430798", "UNI34_010_B30", "box_MultipleOR_41.Out", "box_ActivityInitialized_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SpawnAI_3_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_3;
    l1 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1224521870", "1224521870", "UNI34_010_B30", "box_SpawnAI_3.Spawned", "box_MultipleOR_83.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_63_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|2010034171", "2010034171", "UNI34_010_B30", "box_UseContextualActionModifier_v3_63.Disabled", "box_MultipleOR_99.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_91_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_86();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|177677501", "177677501", "UNI34_010_B30", "box_OutputOrder_v2_91.Out", "box_UseContextualActionModifier_v3_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_74();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|113859104", "113859104", "UNI34_010_B30", "box_OutputOrder_v2_91.Out", "box_UseContextualActionModifier_v3_74.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_119_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_68();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|414881585", "414881585", "UNI34_010_B30", "box_OutputOrder_v2_119.Out", "box_UseContextualActionModifier_v3_68.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_119_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_68();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1803226432", "1803226432", "UNI34_010_B30", "box_OutputOrder_v2_119.Out", "box_UseContextualActionModifier_v3_68.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_119_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_118();
    l0 = self.box_VehicleListener_v3_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1812720522", "1812720522", "UNI34_010_B30", "box_OutputOrder_v2_119.Out", "box_VehicleListener_v3_118.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_29();
    l0 = self.box_VehicleListener_v3_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|959808111", "959808111", "UNI34_010_B30", "box_SetContextualStrategy_67.Out", "box_VehicleListener_v3_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_2_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|871457354", "871457354", "UNI34_010_B30", "box_SetEntity_v2_2.Out", "box_MultipleOR_10.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_52_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_52;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|797235220", "797235220", "UNI34_010_B30", "box_HealthListener_v6_52.Downed", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_52_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_52;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1344161584", "1344161584", "UNI34_010_B30", "box_HealthListener_v6_52.Killed", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_124_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_92();
    l0 = self.box_MultipleOR_124;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|87553268", "87553268", "UNI34_010_B30", "box_MultipleOR_124.Out", "box_OutputOrder_v2_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_54_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_52();
    l0 = self.box_EntityStatusListener_54;
    l1 = self.box_HealthListener_v6_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|275413946", "275413946", "UNI34_010_B30", "box_EntityStatusListener_54.Loaded", "box_HealthListener_v6_52.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_MultipleOR_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|275448834", "275448834", "UNI34_010_B30", "box_MultipleOR_10.Out", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_40_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|908244933", "908244933", "UNI34_010_B30", "box_UseContextualActionModifier_v3_40.Disabled", "box_OutputOrder_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_128_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_129();
    l0 = self.box_SpawnAI_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|259883747", "259883747", "UNI34_010_B30", "box_IsEntityLoaded_v3_128.False", "box_SpawnAI_129.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_30_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_113();
    l0 = self.box_EntityStatusListener_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|2064127049", "2064127049", "UNI34_010_B30", "box_EntityStatusListener_30.Loaded", "box_OutputOrder_v2_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_104_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_104;
    l1 = self.box_MultipleOR_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1149522405", "1149522405", "UNI34_010_B30", "box_VehicleDamageListener_v2_104.Broken", "box_MultipleOR_102.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_VehicleDamageListener_v2_104_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_104;
    l1 = self.box_MultipleOR_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|90713184", "90713184", "UNI34_010_B30", "box_VehicleDamageListener_v2_104.Destroyed", "box_MultipleOR_102.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_104_Disabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_104;
    l1 = self.box_MultipleOR_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|555278854", "555278854", "UNI34_010_B30", "box_VehicleDamageListener_v2_104.Disabled", "box_MultipleOR_102.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_VehicleDamageListener_v2_104_MajorDamage()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_104;
    l1 = self.box_MultipleOR_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|929103751", "929103751", "UNI34_010_B30", "box_VehicleDamageListener_v2_104.MajorDamage", "box_MultipleOR_102.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_VehicleDamageListener_v2_104_MinorDamage()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_104;
    l1 = self.box_MultipleOR_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|915089998", "915089998", "UNI34_010_B30", "box_VehicleDamageListener_v2_104.MinorDamage", "box_MultipleOR_102.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_VehicleDamageListener_v2_104_OnFire()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_104;
    l1 = self.box_MultipleOR_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|955045448", "955045448", "UNI34_010_B30", "box_VehicleDamageListener_v2_104.OnFire", "box_MultipleOR_102.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_DisplayCustomUIMsg_v4_88_OnDisplay()
    local l0, l1;
    l0 = self.box_DisplayCustomUIMsg_v4_88;
    l1 = self.box_OnceOnly_v3_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|2129953640", "2129953640", "UNI34_010_B30", "box_DisplayCustomUIMsg_v4_88.OnDisplay", "box_OnceOnly_v3_117.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_DisplayCustomUIMsg_v4_88_OnHide()
    local l0, l1;
    l0 = self.box_DisplayCustomUIMsg_v4_88;
    l1 = self.box_OnceOnly_v3_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1828714125", "1828714125", "UNI34_010_B30", "box_DisplayCustomUIMsg_v4_88.OnHide", "box_OnceOnly_v3_76.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_HealthListener_v6_105_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_105;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1776644746", "1776644746", "UNI34_010_B30", "box_HealthListener_v6_105.Downed", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_105_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_105;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1409440896", "1409440896", "UNI34_010_B30", "box_HealthListener_v6_105.Killed", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_130_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_35();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|2137545527", "2137545527", "UNI34_010_B30", "box_OutputOrder_v2_130.Out", "box_Simple_Node_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_130_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_128();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|942856732", "942856732", "UNI34_010_B30", "box_OutputOrder_v2_130.Out", "box_IsEntityLoaded_v3_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_140_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_139();
    l0 = self.box_MultipleOR_140;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|413959246", "413959246", "UNI34_010_B30", "box_MultipleOR_140.Out", "box_ActivityRetry_139.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_97_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|229877254", "229877254", "UNI34_010_B30", "box_UseContextualActionModifier_v3_97.Disabled", "box_MultipleOR_99.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_DisplayCustomUIMsg_v4_37_OnHide()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_65();
    l0 = self.box_DisplayCustomUIMsg_v4_37;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1319189180", "1319189180", "UNI34_010_B30", "box_DisplayCustomUIMsg_v4_37.OnHide", "box_ActivityForceAndLockTracking_65.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_6_Bound()
    local l0, l1;
    l0 = self.box_Bind_v4_6;
    l1 = self.box_OnceOnly_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|52752810", "52752810", "UNI34_010_B30", "box_Bind_v4_6.Bound", "box_OnceOnly_v3_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|@n_VIPinChopper");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_122_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|@nLeaderTryToEscape");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|@nVIPListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_35_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|@nWillisPhoneCall");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_108()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.eHelicopter,
        -- id2,
        [3] = "2102797460259772743",
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|29757786");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
                [2] = self.f_box_OutputOrder_v2_23_Out_2,
                [3] = self.f_box_OutputOrder_v2_23_Out_3,
                [5] = self.f_box_OutputOrder_v2_23_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_114()
    local params;
    params = {
        -- BoneName,
        [0] = "Rotor",
        -- EntityA,
        [1] = self.eHelicopter,
        -- EntityB,
        [2] = "2103887839910460618",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|47494430");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_107_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2103887839910460618",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI34_010_B30_OBJ_FollowLeader",
            id = "546777",
        },
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|49936384");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_96_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102631166816300263",
        -- Entity,
        [1] = "2102629956631688626",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_129()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102629956621202860",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|99458809");
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
                [0] = self.f_box_OutputOrder_v2_98_Out_0,
                [1] = self.f_box_OutputOrder_v2_98_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_16()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.eHelicopter,
        -- id2,
        [3] = "2102797460259772743",
        -- nearZone,
        [4] = 150,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_56()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gFriendlyPlayers,
        -- id2,
        [3] = "2104451463718660533",
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|147557297");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
                [3] = self.f_box_OutputOrder_v2_5_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|151468431");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|155174560");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2102808115501099008",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI34_010_B30_OBJ_FollowLeader",
            id = "546777",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_70()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gFriendlyPlayers,
        -- farZone,
        [2] = 155,
        -- id2,
        [3] = self.eHelicopter,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|169795578");
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

function export:OnEnter_box_OutputOrder_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|180426032");
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

function export:OnEnter_box_EntityStatusListener_100()
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

function export:OnEnter_box_VehicleDamageListener_v2_141()
    local params;
    params = {
        -- Vehicle,
        [0] = self.eHelicopter,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|282774117");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
                [2] = self.f_box_OutputOrder_v2_36_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|287123080");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_75_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102780604471844906",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_57()
    local params;
    DrawTextToScreen("Comment: Our target was a hotel worker. Got a little too nosy with a visitor's private time...", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Our target was a hotel worker. Got a little too nosy with a visitor's private time...");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2553057534",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|308730808");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|429538011");
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
                [0] = self.f_box_OutputOrder_v2_116_Out_0,
                [1] = self.f_box_OutputOrder_v2_116_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|468737344");
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

function export:OnEnter_box_UseContextualActionModifier_v3_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|470744941");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_85_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102783228669704632",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_84()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102600363765942208",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_118()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "2102629956631688626",
        -- vehicle,
        [4] = "2102600372299253752",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_101()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gFriendlyPlayers,
        -- farZone,
        [2] = 60,
        -- id2,
        [3] = "2102629956631688626",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|517045283");
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
                [0] = self.f_box_OutputOrder_v2_92_Out_0,
                [1] = self.f_box_OutputOrder_v2_92_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|535126105");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|548836256");
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

function export:OnEnter_box_SetEntity_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|559782000");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_4_Out,
    });
    params = {
        -- Entity,
        [0] = "2102600372299253752",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|590204505");
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

function export:OnEnter_box_EntityStatusListener_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102600622885845739",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|598159054");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_78_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102783228673898940",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_69()
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

function export:OnEnter_box_UseContextualActionModifier_v3_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|620724568");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_72_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102780604471844906",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|671872364");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_82_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_82_True,
    });
    params = {
        -- entityId,
        [0] = "2102600372299253752",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|672581199");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_9_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2102808115501099008",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI34_010_B30_OBJ_FollowLeader",
            id = "546777",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|679334799");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_60()
    local params, l0;
    DrawTextToScreen("Comment: Reload - Force in chopper", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Compare Boolean')-- Comment: Reload - Force in chopper");
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|729835238");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_60_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bIsAReload,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_18()
    local params;
    DrawTextToScreen("Comment: Okay, deputy. NOW it's time for the stick. When he lands, clear the area.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Okay, deputy. NOW it's time for the stick. When he lands, clear the area.");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "368101556",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|758208192");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_61_Out,
    });
    params = {
        -- Bool,
        [0] = self.bIsAReload,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|760990198");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_59_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|767774119");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_73_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102780604211798054",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|776726777");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102631166816300263",
        -- Entity,
        [1] = "2102629956631688626",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|792496385");
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

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|793065078");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|808826337");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_135_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2102797135264117424",
        -- Group,
        [1] = "2102629956631688626",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_138()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_109()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gFriendlyPlayers,
        -- farZone,
        [2] = 400,
        -- id2,
        [3] = self.eHelicopter,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_28()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = "2102629956631688626",
        -- vehicle,
        [4] = self.eHelicopter,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_115()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103887839910460618",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_29()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "2102629956631688626",
        -- vehicle,
        [4] = "2102601790317938466",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_46()
    local params;
    DrawTextToScreen("Comment: Original Helo Loaded", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'EntityStatusListener')-- Comment: Original Helo Loaded");
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

function export:OnEnter_box_EntityStatusListener_47()
    local params;
    DrawTextToScreen("Comment: New Helo Loaded", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'EntityStatusListener')-- Comment: New Helo Loaded");
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102600372299253752",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|916114983");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|996931151");
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

function export:OnEnter_box_VehicleListener_v3_24()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.gFriendlyPlayers,
        -- vehicle,
        [4] = self.eHelicopter,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1035308428");
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

function export:OnEnter_box_ActivityForceAndLockTracking_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1047652268");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityForceAndLockTracking_65_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1055491581");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_7_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI34_010_B30_OBJ_FollowLeader",
            id = "546777",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1074830720");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_44_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2102931667497800619",
        -- Group,
        [1] = "2102629956631688626",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_123()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gFriendlyPlayers,
        -- id2,
        [3] = "2102797460259772743",
        -- nearZone,
        [4] = 60,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1103839286");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_89_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102783228673898940",
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v4_103()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_FailWarning",
            id = "432251",
        },
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_112()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "2102629956631688626",
        -- vehicle,
        [4] = "2102601790317938466",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_17()
    local params;
    DrawTextToScreen("Comment: Alright, let our man get into the chopper. Remember: We still need to find where he's hiding the tape. Any idiot with a stick can pull off wetworks. Espionage is what separates us from the animals.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Alright, let our man get into the chopper. Remember: We still need to find where he's hiding the tape. Any idiot with a stick can pull off wetworks. Espionage is what separates us from the animals.");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "4274673006",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1225315332");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_86_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102783228669704632",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1225729687");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_38_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101616545561055969",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1242029597");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_68_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102600622885845739",
        -- Entity,
        [1] = "2102629956631688626",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1256037051");
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

function export:OnEnter_box_UseContextualActionModifier_v3_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1290542128");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_74_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102780604211798054",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1378058597");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_137_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_137_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105310455468674956",
        -- Entity,
        [1] = "2102601866499082092",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1410712772");
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

function export:OnEnter_box_IsEntityLoaded_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1417784893");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_1_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_1_True,
    });
    params = {
        -- entityId,
        [0] = "2102601790317938466",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_71()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gFriendlyPlayers,
        -- id2,
        [3] = self.eHelicopter,
        -- nearZone,
        [4] = 150,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_79()
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
        [6] = "504558118",
        -- StopEvent,
        [7] = "2345722280",
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

function export:OnEnter_box_UseContextualActionModifier_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1507963233");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102600622885845739",
        -- Entity,
        [1] = "2102629956631688626",
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
        [2] = "2102600372299253752",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1596619492");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_111_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI34_010_B30_OBJ_FollowLeader",
            id = "546777",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_3()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102600363765942208",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1676198425");
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
        [8] = "UNI34_010_B30 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1699261593");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_63_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102600632933300973",
    };
    return params;
end;

function export:OnEnter_box_ForceInVehicle_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1701700458");
    l0:SetConnections({
    });
    params = {
        -- pawns,
        [0] = "2102629956631688626",
        -- SeatType,
        [1] = 1,
        -- vehicleEntity,
        [2] = self.eHelicopter,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1773393890");
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
                [0] = self.f_box_OutputOrder_v2_91_Out_0,
                [1] = self.f_box_OutputOrder_v2_91_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1791837304");
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

function export:OnEnter_box_SetContextualStrategy_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1840849240");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_67_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2102797135264117424",
        -- Group,
        [1] = "2102629956631688626",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1855038970");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_2_Out,
    });
    params = {
        -- Entity,
        [0] = "2102601790317938466",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_52()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2102629956631688626",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1897029336");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2103887839910460618",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI34_010_B30_OBJ_FollowLeader",
            id = "546777",
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_54()
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

function export:OnEnter_box_UseContextualActionModifier_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1905252277");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_40_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101616497594995399",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_66()
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
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|1952191928");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_128_False,
    });
    params = {
        -- entityId,
        [0] = "2102629956631688626",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102631166816300263",
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_104()
    local params;
    params = {
        -- Vehicle,
        [0] = self.eHelicopter,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v4_88()
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

function export:OnEnter_box_HealthListener_v6_105()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2102629956631688626",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|2069761381");
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
                [0] = self.f_box_OutputOrder_v2_130_Out_0,
                [1] = self.f_box_OutputOrder_v2_130_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI34\\UNI34_010\\UNI34_010_B30.domino|@UNI34_010_B30|2085050892");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_97_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102631166818397419",
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v4_37()
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

function export:OnEnter_box_Bind_v4_6()
    local params;
    params = {
        -- BoneName,
        [0] = "spline",
        -- EntityA,
        [1] = "2102629956631688626",
        -- EntityB,
        [2] = "2102808115501099008",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eHelicopter = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_61_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bIsAReload = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_59_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eHelicopter = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
