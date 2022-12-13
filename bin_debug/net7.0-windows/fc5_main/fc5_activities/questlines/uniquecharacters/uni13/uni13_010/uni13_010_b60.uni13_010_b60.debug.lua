LUACGQ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni13/uni13_010/uni13_010_b60.domino
-- User graph: UNI13_010_B60
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_ExtraMaker_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetDistance.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/ForceInVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetLootGroup.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2602477148.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2486558202.bnk]], "CSoundResource");
        cboxRes:LoadResource([[532693549.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2386725651.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3821464078.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1301490720.bnk]], "CSoundResource");
        cboxRes:LoadResource([[967629685.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1689030340.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI13/UNI13_010/UNI13_010_B60.UNI13_010_B60.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/CompareFloats.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
            [2] = {
                name = "Tolerance",
                type = "float",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/GetDistance.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Distance2D",
            },
            [1] = {
                name = "Distance3D",
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
                name = "Distance",
                type = "float",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/InventoryItemListener.lua")] = {
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
                name = "ItemAdded",
                delayed = true,
            },
            [3] = {
                name = "ItemRemoved",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [2] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [3] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "itemQuantityRemain",
                type = "int",
            },
            [1] = {
                name = "outItemDescriptorID",
                type = "genericdb",
            },
            [2] = {
                name = "player",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/SetLootGroup.lua")] = {
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
                name = "LootGroup",
                type = "genericdb",
            },
            [1] = {
                name = "Targets",
                type = "group",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v5.lua")] = {
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
                name = "MessageType",
                type = "int",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI13_010_B60";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60";
    self.eNitroQuad = "2103591980018702946";
    self.eNitroBoss = "2096422126996168659";
    self.bTargetExploded = false;
    self.player = nil;
    self.VehicleTypes = "Wheeled";
    self.IsCoop = false;
    self.ePlayer1ID = nil;
    self.ePlayer2ID = nil;
    self.ePlayerQuad = "2103790991363309774";
    self.box_OnceOnly_v3_16 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|55091078");
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
                [0] = self.f_box_OnceOnly_v3_16_Out_0,
            },
            count = 2,
        },
    });
    self.box_InventoryItemListener_6 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|79228492");
    l0:SetConnections({
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_6_ItemAdded,
    });
    self.box_SpawnAI_25 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|144563317");
    l0:SetConnections({
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|149531180");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_EntityStatusListener_126 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|208996660");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_126_Loaded,
    });
    self.box_ProximityRadiusListener_v3_4 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|210553628");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_4_SomeoneNear,
    });
    self.box_MultipleOR_84 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|213408315");
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
        [0] = self.f_box_MultipleOR_84_Out,
    });
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|264350532");
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
        [0] = self.f_box_MultipleOR_31_Out,
    });
    self.box_PhoneCallExclusivityModifier_124 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|302266036");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_42 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|320116102");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_42_Unloaded,
    });
    self.box_Delay_v5_47 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|445092738");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_47_TimeElapsed,
    });
    self.box_SoundModifier_v2_35 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|507391434");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_35_Started,
    });
    self.box_RequestPhoneCall_v2_87 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|539212948");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_87_Completed,
    });
    self.box_Delay_v5_80 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|550760345");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_80_TimeElapsed,
    });
    self.box_RemoveEntity_v2_21 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|588735174");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_21_Out,
    });
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|598550960");
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
        [0] = self.f_box_MultipleOR_82_Out,
    });
    self.box_Music_Quest_v2_106 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|694418841");
    l0:SetConnections({
    });
    self.box_MultipleOR_99 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|698234914");
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
    self.box_Music_Quest_v2_96 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|775047710");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_89 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|784492768");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_89_Loaded,
    });
    self.box_Bind_v4_3 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|822214367");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_3_Bound,
    });
    self.box_DisplayCustomUIMsg_v4_49 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
    l0 = self.box_DisplayCustomUIMsg_v4_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v4_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|852998845");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v4_49_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v4_49_OnHide,
    });
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|884481522");
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
    self.box_Delay_v5_52 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|900298340");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_52_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_52_TimeElapsed,
    });
    self.box_Brick_Kill_Target_ExtraMaker_v2_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_ExtraMaker_v2.debug.lua");
    l0 = self.box_Brick_Kill_Target_ExtraMaker_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Kill_Target_ExtraMaker_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|915919859");
    l0:SetConnections({
        -- Killed,
        [2] = self.f_box_Brick_Kill_Target_ExtraMaker_v2_2_Killed,
        -- NextMarker,
        [3] = self.f_box_Brick_Kill_Target_ExtraMaker_v2_2_NextMarker,
    });
    self.box_Music_Quest_v2_103 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|995297174");
    l0:SetConnections({
    });
    self.box_CoopActivePlayers_88 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1000930043");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_88_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_88_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_88_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_88_TwoPlayers,
    });
    self.box_RequestPhoneCall_v2_75 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1078362790");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_75_Completed,
    });
    self.box_DisplayCustomUIMsg_v5_27 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1101938681");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_27_OnDisplay,
    });
    self.box_RequestPhoneCall_v2_72 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1131793365");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_72_Completed,
    });
    self.box_MultipleOR_93 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1149062610");
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
    self.box_MultipleOR_122 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1211616993");
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
    self.box_MultipleOR_92 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1236209938");
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
        [0] = self.f_box_MultipleOR_92_Out,
    });
    self.box_DisplayCustomUIMsg_v5_71 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1278527139");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_71_OnDisplay,
    });
    self.box_Music_Quest_v2_104 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1289312045");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_23 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1329818716");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_23_Out,
    });
    self.box_ActivityAcknowledgeGate_33 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1355237682");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_33_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_33_Reloaded,
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1429439926");
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
        [0] = self.f_box_MultipleOR_24_Out,
    });
    self.box_SoundModifier_v2_97 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1446633918");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_70 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1456655054");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_70_Completed,
    });
    self.box_Music_Quest_v2_100 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1503946348");
    l0:SetConnections({
    });
    self.box_SpawnAI_7 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1515497155");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_7_Spawned,
    });
    self.box_SetLootGroup_74 = cbox:CreateBox("Domino/System/SetLootGroup.lua");
    l0 = self.box_SetLootGroup_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetLootGroup_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1522498053");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetLootGroup_74_Out,
    });
    self.box_ProximityRadiusListener_v3_68 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1589214587");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_68_AllFar,
    });
    self.box_Delay_v5_78 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1591060565");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_78_TimeElapsed,
    });
    self.box_Delay_v5_79 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1603125925");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_79_TimeElapsed,
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1758323533");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box_ProximityRadiusListener_v3_57 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1777605153");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_57_AllFar,
    });
    self.box_ProximityRadiusListener_v3_43 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1936691668");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_43_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_43_AllNear,
    });
    self.box_VehicleDamageListener_v2_28 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1979829224");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_28_Destroyed,
    });
    self.box_SpawnAI_32 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1996344284");
    l0:SetConnections({
    });
    self.box_MultipleOR_85 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2066363292");
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
        [0] = self.f_box_MultipleOR_85_Out,
    });
    self.box_ProximityRadiusListener_v3_30 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2137856436");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_30_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_30_SomeoneNear,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1390499042", "1390499042", "UNI13_010_B60", "In", "box_OutputOrder_v2_37.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Kill_Target_ExtraMaker_v2_2();
    l0 = self.box_Brick_Kill_Target_ExtraMaker_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|428171961", "428171961", "UNI13_010_B60", "box_Simple_Node_64.Out", "box_Brick_Kill_Target_ExtraMaker_v2_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_59_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1496260947", "1496260947", "UNI13_010_B60", "box_Simple_Node_59.Out", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_CoopActivePlayers_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1717028086", "1717028086", "UNI13_010_B60", "box_Simple_Node_59.Out", "box_CoopActivePlayers_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_123_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_72();
    l0 = self.box_RequestPhoneCall_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1483430749", "1483430749", "UNI13_010_B60", "box_Simple_Node_123.Out", "box_RequestPhoneCall_v2_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    l0 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1630773030", "1630773030", "UNI13_010_B60", "box_Simple_Node_123.Out", "box_MultipleOR_122.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_60_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|624854635", "624854635", "UNI13_010_B60", "box_Simple_Node_60.Out", "box_OutputOrder_v2_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_42();
    l0 = self.box_EntityStatusListener_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1903090038", "1903090038", "UNI13_010_B60", "box_Simple_Node_61.Out", "box_EntityStatusListener_42.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1621458541", "1621458541", "UNI13_010_B60", "box_Simple_Node_61.Out", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_VehicleDamageListener_v2_28();
    l0 = self.box_VehicleDamageListener_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|257510938", "257510938", "UNI13_010_B60", "box_Simple_Node_61.Out", "box_VehicleDamageListener_v2_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_43();
    l0 = self.box_ProximityRadiusListener_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1228182971", "1228182971", "UNI13_010_B60", "box_Simple_Node_61.Out", "box_ProximityRadiusListener_v3_43.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_101();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1619142027", "1619142027", "UNI13_010_B60", "box_Simple_Node_61.Out", "box_OutputOrder_v2_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_76_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2048274830", "2048274830", "UNI13_010_B60", "box_Simple_Node_76.Out", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_66_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|474044536", "474044536", "UNI13_010_B60", "box_Simple_Node_66.Out", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_42();
    l0 = self.box_EntityStatusListener_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1779572737", "1779572737", "UNI13_010_B60", "box_Simple_Node_62.Out", "box_EntityStatusListener_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|715382146", "715382146", "UNI13_010_B60", "box_OutputOrder_v2_73.Out", "box_AddActivityObjective_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_81();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1077352756", "1077352756", "UNI13_010_B60", "box_OutputOrder_v2_73.Out", "box_GetPawnVehicleInfo_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_95_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceInVehicle_v2_94();
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|330423926", "330423926", "UNI13_010_B60", "box_Compare_Boolean_95.A_is_True", "box_ForceInVehicle_v2_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_16_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_21();
    l0 = self.box_OnceOnly_v3_16;
    l1 = self.box_RemoveEntity_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1809690367", "1809690367", "UNI13_010_B60", "box_OnceOnly_v3_16.Out", "box_RemoveEntity_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemListener_6_ItemAdded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_108();
    l0 = self.box_InventoryItemListener_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|785403497", "785403497", "UNI13_010_B60", "box_InventoryItemListener_6.ItemAdded", "box_OutputOrder_v2_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_57();
    l0 = self.box_MultipleOR_12;
    l1 = self.box_ProximityRadiusListener_v3_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|761079720", "761079720", "UNI13_010_B60", "box_MultipleOR_12.Out", "box_ProximityRadiusListener_v3_57.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_80();
    l0 = self.box_Delay_v5_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|771370258", "771370258", "UNI13_010_B60", "box_OutputOrder_v2_34.Out", "box_Delay_v5_80.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_34_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_78();
    l0 = self.box_Delay_v5_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1135391610", "1135391610", "UNI13_010_B60", "box_OutputOrder_v2_34.Out", "box_Delay_v5_78.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_34_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_79();
    l0 = self.box_Delay_v5_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|726234002", "726234002", "UNI13_010_B60", "box_OutputOrder_v2_34.Out", "box_Delay_v5_79.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_126_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetLootGroup_74();
    l0 = self.box_EntityStatusListener_126;
    l1 = self.box_SetLootGroup_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|698663217", "698663217", "UNI13_010_B60", "box_EntityStatusListener_126.Loaded", "box_SetLootGroup_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_4_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_ProximityRadiusListener_v3_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1155250484", "1155250484", "UNI13_010_B60", "box_ProximityRadiusListener_v3_4.SomeoneNear", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_84_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_39();
    l0 = self.box_MultipleOR_84;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|660560161", "660560161", "UNI13_010_B60", "box_MultipleOR_84.Out", "box_UseContextualActionModifier_v3_39.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_MultipleOR_31;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|855913754", "855913754", "UNI13_010_B60", "box_MultipleOR_31.Out", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_22_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_22_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1936955700", "1936955700", "UNI13_010_B60", "box_SetBoolean_v2_22.Out", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_42_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_42;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1817723837", "1817723837", "UNI13_010_B60", "box_EntityStatusListener_42.Unloaded", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_121_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_117();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1176487853", "1176487853", "UNI13_010_B60", "box_OutputOrder_v2_121.Out", "box_UseContextualActionModifier_v3_117.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_121_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_119();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1012771711", "1012771711", "UNI13_010_B60", "box_OutputOrder_v2_121.Out", "box_UseContextualActionModifier_v3_119.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_121_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_118();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1016303890", "1016303890", "UNI13_010_B60", "box_OutputOrder_v2_121.Out", "box_UseContextualActionModifier_v3_118.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_76();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1996838631", "1996838631", "UNI13_010_B60", "box_EndActivityObjective_v2_20.Out", "box_Simple_Node_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_47_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_27();
    l0 = self.box_Delay_v5_47;
    l1 = self.box_DisplayCustomUIMsg_v5_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|210564363", "210564363", "UNI13_010_B60", "box_Delay_v5_47.TimeElapsed", "box_DisplayCustomUIMsg_v5_27.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_GetDistance_14_Out()
    local params, l0;
    self:OnExit_box_GetDistance_14_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_54();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2015846520", "2015846520", "UNI13_010_B60", "box_GetDistance_14.Out", "box_Compare_Floats_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_50_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_48();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1665923596", "1665923596", "UNI13_010_B60", "box_AddActivityObjective_v2_50.Out", "box_ActivityObjectiveMarkerModifier_v3_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_35_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_26();
    l0 = self.box_SoundModifier_v2_35;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|42426514", "42426514", "UNI13_010_B60", "box_SoundModifier_v2_35.Started", "box_SetActivityFact_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_17();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|943837118", "943837118", "UNI13_010_B60", "box_OutputOrder_v2_102.Out", "box_ActivityObjectiveMarkerModifier_v3_17.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1996142324", "1996142324", "UNI13_010_B60", "box_OutputOrder_v2_102.Out", "box_MultipleOR_99.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_87_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_96();
    l0 = self.box_RequestPhoneCall_v2_87;
    l1 = self.box_Music_Quest_v2_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1066131481", "1066131481", "UNI13_010_B60", "box_RequestPhoneCall_v2_87.Completed", "box_Music_Quest_v2_96.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_80_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_80;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|247179069", "247179069", "UNI13_010_B60", "box_Delay_v5_80.TimeElapsed", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntity_v2_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_105();
    l0 = self.box_RemoveEntity_v2_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1020464223", "1020464223", "UNI13_010_B60", "box_RemoveEntity_v2_21.Out", "box_OutputOrder_v2_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_10();
    l0 = self.box_MultipleOR_82;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|594637189", "594637189", "UNI13_010_B60", "box_MultipleOR_82.Out", "box_UseContextualActionModifier_v3_10.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_28();
    l0 = self.box_VehicleDamageListener_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1644967072", "1644967072", "UNI13_010_B60", "box_OutputOrder_v2_13.Out", "box_VehicleDamageListener_v2_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_62();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|909620662", "909620662", "UNI13_010_B60", "box_OutputOrder_v2_13.Out", "box_Simple_Node_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_43();
    l0 = self.box_ProximityRadiusListener_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1611286004", "1611286004", "UNI13_010_B60", "box_OutputOrder_v2_13.Out", "box_ProximityRadiusListener_v3_43.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_99_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_103();
    l0 = self.box_MultipleOR_99;
    l1 = self.box_Music_Quest_v2_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1379886126", "1379886126", "UNI13_010_B60", "box_MultipleOR_99.Out", "box_Music_Quest_v2_103.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_60();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1915592436", "1915592436", "UNI13_010_B60", "box_OutputOrder_v2_19.Out", "box_Simple_Node_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2118073816", "2118073816", "UNI13_010_B60", "box_OutputOrder_v2_19.Out", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_89_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ForceInVehicle_v2_91();
    l0 = self.box_EntityStatusListener_89;
    l1 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|666954508", "666954508", "UNI13_010_B60", "box_EntityStatusListener_89.Loaded", "box_ForceInVehicle_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_68();
    l0 = self.box_ProximityRadiusListener_v3_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|448261041", "448261041", "UNI13_010_B60", "box_OutputOrder_v2_69.Out", "box_ProximityRadiusListener_v3_68.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_6();
    l0 = self.box_InventoryItemListener_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1655204487", "1655204487", "UNI13_010_B60", "box_OutputOrder_v2_69.Out", "box_InventoryItemListener_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_81_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_81_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|149479245", "149479245", "UNI13_010_B60", "box_GetPawnVehicleInfo_81.InVehicle", "box_OutputOrder_v2_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_81_NotInVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_81_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_4();
    l0 = self.box_ProximityRadiusListener_v3_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|172989984", "172989984", "UNI13_010_B60", "box_GetPawnVehicleInfo_81.NotInVehicle", "box_ProximityRadiusListener_v3_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_81_Out()
    self:OnExit_box_GetPawnVehicleInfo_81_Out();
end;

function export:f_box_OutputOrder_v2_101_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_51();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1576986287", "1576986287", "UNI13_010_B60", "box_OutputOrder_v2_101.Out", "box_EndActivityObjective_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2134101976", "2134101976", "UNI13_010_B60", "box_OutputOrder_v2_101.Out", "box_MultipleOR_99.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Bind_v4_3_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_98();
    l0 = self.box_Bind_v4_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|882583665", "882583665", "UNI13_010_B60", "box_Bind_v4_3.Bound", "box_OutputOrder_v2_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_105_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_104();
    l0 = self.box_Music_Quest_v2_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1297045428", "1297045428", "UNI13_010_B60", "box_OutputOrder_v2_105.Out", "box_Music_Quest_v2_104.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_105_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1563550659", "1563550659", "UNI13_010_B60", "box_OutputOrder_v2_105.Out", "box_ActivityEnd_9.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_90_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_90_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1376520174", "1376520174", "UNI13_010_B60", "box_SetBoolean_v2_90.Out", "box_MultipleOR_92.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_DisplayCustomUIMsg_v4_49_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_57();
    l0 = self.box_DisplayCustomUIMsg_v4_49;
    l1 = self.box_ProximityRadiusListener_v3_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1647133434", "1647133434", "UNI13_010_B60", "box_DisplayCustomUIMsg_v4_49.OnDisplay", "box_ProximityRadiusListener_v3_57.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_DisplayCustomUIMsg_v4_49_OnHide()
    local l0, l1;
    l0 = self.box_DisplayCustomUIMsg_v4_49;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1405189118", "1405189118", "UNI13_010_B60", "box_DisplayCustomUIMsg_v4_49.OnHide", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_56_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_56;
    l1 = self.box_OnceOnly_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|508514157", "508514157", "UNI13_010_B60", "box_MultipleOR_56.Out", "box_OnceOnly_v3_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_52_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_Delay_v5_52;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|713817576", "713817576", "UNI13_010_B60", "box_Delay_v5_52.Started", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_52_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_71();
    l0 = self.box_Delay_v5_52;
    l1 = self.box_DisplayCustomUIMsg_v5_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1917566700", "1917566700", "UNI13_010_B60", "box_Delay_v5_52.TimeElapsed", "box_DisplayCustomUIMsg_v5_71.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_Brick_Kill_Target_ExtraMaker_v2_2_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_61();
    l0 = self.box_Brick_Kill_Target_ExtraMaker_v2_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2057053225", "2057053225", "UNI13_010_B60", "box_Brick_Kill_Target_ExtraMaker_v2_2.Killed", "box_Simple_Node_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Kill_Target_ExtraMaker_v2_2_NextMarker()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_66();
    l0 = self.box_Brick_Kill_Target_ExtraMaker_v2_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1669205280", "1669205280", "UNI13_010_B60", "box_Brick_Kill_Target_ExtraMaker_v2_2.NextMarker", "box_Simple_Node_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_120_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_114();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1683457291", "1683457291", "UNI13_010_B60", "box_OutputOrder_v2_120.Out", "box_UseContextualActionModifier_v3_114.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_120_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_115();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1876761725", "1876761725", "UNI13_010_B60", "box_OutputOrder_v2_120.Out", "box_UseContextualActionModifier_v3_115.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_120_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_116();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1601273591", "1601273591", "UNI13_010_B60", "box_OutputOrder_v2_120.Out", "box_UseContextualActionModifier_v3_116.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_110_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_125();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1987639417", "1987639417", "UNI13_010_B60", "box_SetContextualStrategy_110.Out", "box_OutputOrder_v2_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ForceInVehicle_v2_91_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_95();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1060326672", "1060326672", "UNI13_010_B60", "box_ForceInVehicle_v2_91.Out", "box_Compare_Boolean_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_7();
    l0 = self.box_SpawnAI_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1731072267", "1731072267", "UNI13_010_B60", "box_OutputOrder_v2_45.Out", "box_SpawnAI_7.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_25();
    l0 = self.box_SpawnAI_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|570825644", "570825644", "UNI13_010_B60", "box_OutputOrder_v2_45.Out", "box_SpawnAI_25.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_32();
    l0 = self.box_SpawnAI_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2127629989", "2127629989", "UNI13_010_B60", "box_OutputOrder_v2_45.Out", "box_SpawnAI_32.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_87();
    l0 = self.box_RequestPhoneCall_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1495954377", "1495954377", "UNI13_010_B60", "box_OutputOrder_v2_45.Out", "box_RequestPhoneCall_v2_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1164159541", "1164159541", "UNI13_010_B60", "box_AddActivityObjective_v2_11.Out", "box_OutputOrder_v2_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_88_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_88_OnePlayer();
    l0 = self.box_CoopActivePlayers_88;
    l1 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2006737866", "2006737866", "UNI13_010_B60", "box_CoopActivePlayers_88.OnePlayer", "box_MultipleOR_92.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_88_PlayerAdded()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_88_PlayerAdded();
    l0 = self.box_CoopActivePlayers_88;
    l1 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1162233633", "1162233633", "UNI13_010_B60", "box_CoopActivePlayers_88.PlayerAdded", "box_MultipleOR_93.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CoopActivePlayers_88_PlayerRemoved()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_88_PlayerRemoved();
    params = self:OnEnter_box_SetBoolean_v2_90();
    l0 = self.box_CoopActivePlayers_88;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|650848057", "650848057", "UNI13_010_B60", "box_CoopActivePlayers_88.PlayerRemoved", "box_SetBoolean_v2_90.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_88_TwoPlayers()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_88_TwoPlayers();
    l0 = self.box_CoopActivePlayers_88;
    l1 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1919590538", "1919590538", "UNI13_010_B60", "box_CoopActivePlayers_88.TwoPlayers", "box_MultipleOR_93.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_75_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_109();
    l0 = self.box_RequestPhoneCall_v2_75;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|478143656", "478143656", "UNI13_010_B60", "box_RequestPhoneCall_v2_75.Completed", "box_ActivityRetry_109.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DisplayCustomUIMsg_v5_27_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_DisplayCustomUIMsg_v5_27;
    l1 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|863052969", "863052969", "UNI13_010_B60", "box_DisplayCustomUIMsg_v5_27.OnDisplay", "box_Delay_v5_47.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Boolean_1_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_3();
    l0 = self.box_Bind_v4_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2097780518", "2097780518", "UNI13_010_B60", "box_Compare_Boolean_1.A_is_False", "box_Bind_v4_3.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_1_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|781648855", "781648855", "UNI13_010_B60", "box_Compare_Boolean_1.A_is_True", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_72_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_100();
    l0 = self.box_RequestPhoneCall_v2_72;
    l1 = self.box_Music_Quest_v2_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|777483236", "777483236", "UNI13_010_B60", "box_RequestPhoneCall_v2_72.Completed", "box_Music_Quest_v2_100.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_10_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_110();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2045633057", "2045633057", "UNI13_010_B60", "box_UseContextualActionModifier_v3_10.Disabled", "box_SetContextualStrategy_110.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_17_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_38();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1776440311", "1776440311", "UNI13_010_B60", "box_ActivityObjectiveMarkerModifier_v3_17.Disabled", "box_EndActivityObjective_v2_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_93_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_90();
    l0 = self.box_MultipleOR_93;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|339787737", "339787737", "UNI13_010_B60", "box_MultipleOR_93.Out", "box_SetBoolean_v2_90.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_122_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_30();
    l0 = self.box_MultipleOR_122;
    l1 = self.box_ProximityRadiusListener_v3_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|102610412", "102610412", "UNI13_010_B60", "box_MultipleOR_122.Out", "box_ProximityRadiusListener_v3_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_51_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_1();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1553579223", "1553579223", "UNI13_010_B60", "box_EndActivityObjective_v2_51.Out", "box_Compare_Boolean_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_92_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_89();
    l0 = self.box_MultipleOR_92;
    l1 = self.box_EntityStatusListener_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1460030288", "1460030288", "UNI13_010_B60", "box_MultipleOR_92.Out", "box_EntityStatusListener_89.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_DisplayCustomUIMsg_v5_71_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_52();
    l0 = self.box_DisplayCustomUIMsg_v5_71;
    l1 = self.box_Delay_v5_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|549573840", "549573840", "UNI13_010_B60", "box_DisplayCustomUIMsg_v5_71.OnDisplay", "box_Delay_v5_52.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityInitialized_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_107();
    l0 = self.box_ActivityInitialized_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|640014124", "640014124", "UNI13_010_B60", "box_ActivityInitialized_23.Out", "box_OutputOrder_v2_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_70();
    l0 = self.box_RequestPhoneCall_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1118215048", "1118215048", "UNI13_010_B60", "box_EndActivityObjective_v2_40.Out", "box_RequestPhoneCall_v2_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_18_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_18_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2121307296", "2121307296", "UNI13_010_B60", "box_GetPlayerGroup_v2_18.Out", "box_OutputOrder_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_33_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_33;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|851410533", "851410533", "UNI13_010_B60", "box_ActivityAcknowledgeGate_33.Acknowledged", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_33_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_59();
    l0 = self.box_ActivityAcknowledgeGate_33;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|871003683", "871003683", "UNI13_010_B60", "box_ActivityAcknowledgeGate_33.Reloaded", "box_Simple_Node_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_75();
    l0 = self.box_RequestPhoneCall_v2_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|343721371", "343721371", "UNI13_010_B60", "box_Simple_Node_36.Out", "box_RequestPhoneCall_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_38_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|42609843", "42609843", "UNI13_010_B60", "box_EndActivityObjective_v2_38.Out", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_125_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_123();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|779414679", "779414679", "UNI13_010_B60", "box_OutputOrder_v2_125.Out", "box_Simple_Node_123.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2019918568", "2019918568", "UNI13_010_B60", "box_OutputOrder_v2_125.Out", "box_PhoneCallExclusivityModifier_124.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_48_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|103955035", "103955035", "UNI13_010_B60", "box_ActivityObjectiveMarkerModifier_v3_48.Enabled", "box_OutputOrder_v2_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_71();
    l0 = self.box_MultipleOR_24;
    l1 = self.box_DisplayCustomUIMsg_v5_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|174983337", "174983337", "UNI13_010_B60", "box_MultipleOR_24.Out", "box_DisplayCustomUIMsg_v5_71.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1083374637", "1083374637", "UNI13_010_B60", "box_OutputOrder_v2_83.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|608132662", "608132662", "UNI13_010_B60", "box_OutputOrder_v2_83.Out", "box_MultipleOR_84.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_83_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2074950324", "2074950324", "UNI13_010_B60", "box_OutputOrder_v2_83.Out", "box_MultipleOR_85.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_83_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_86();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1623270164", "1623270164", "UNI13_010_B60", "box_OutputOrder_v2_83.Out", "box_Print_v2_86.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_70_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_70;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1655009450", "1655009450", "UNI13_010_B60", "box_RequestPhoneCall_v2_70.Completed", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_39_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_112();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|455902446", "455902446", "UNI13_010_B60", "box_UseContextualActionModifier_v3_39.Disabled", "box_SetContextualStrategy_112.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_7_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_126();
    l0 = self.box_SpawnAI_7;
    l1 = self.box_EntityStatusListener_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1757802892", "1757802892", "UNI13_010_B60", "box_SpawnAI_7.Spawned", "box_EntityStatusListener_126.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetActivityFact_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|643830303", "643830303", "UNI13_010_B60", "box_SetActivityFact_26.Out", "box_OutputOrder_v2_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetLootGroup_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = self.box_SetLootGroup_74;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|409912408", "409912408", "UNI13_010_B60", "box_SetLootGroup_74.Out", "box_OutputOrder_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_68_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_20();
    l0 = self.box_ProximityRadiusListener_v3_68;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|894312793", "894312793", "UNI13_010_B60", "box_ProximityRadiusListener_v3_68.AllFar", "box_EndActivityObjective_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_78_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_78;
    l1 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1853902565", "1853902565", "UNI13_010_B60", "box_Delay_v5_78.TimeElapsed", "box_MultipleOR_84.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_79_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_79;
    l1 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1714991401", "1714991401", "UNI13_010_B60", "box_Delay_v5_79.TimeElapsed", "box_MultipleOR_85.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_40();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1935298758", "1935298758", "UNI13_010_B60", "box_OutputOrder_v2_44.Out", "box_EndActivityObjective_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|214994630", "214994630", "UNI13_010_B60", "box_OutputOrder_v2_44.Out", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_29_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_29;
    l1 = self.box_ActivityInitialized_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|349850305", "349850305", "UNI13_010_B60", "box_MultipleOR_29.Out", "box_ActivityInitialized_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ProximityRadiusListener_v3_57_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_57;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1945639456", "1945639456", "UNI13_010_B60", "box_ProximityRadiusListener_v3_57.AllFar", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_77_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_113();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2114378979", "2114378979", "UNI13_010_B60", "box_UseContextualActionModifier_v3_77.Disabled", "box_SetContextualStrategy_113.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_108_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_35();
    l0 = self.box_SoundModifier_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|887023464", "887023464", "UNI13_010_B60", "box_OutputOrder_v2_108.Out", "box_SoundModifier_v2_35.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_108_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_97();
    l0 = self.box_SoundModifier_v2_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|584588597", "584588597", "UNI13_010_B60", "box_OutputOrder_v2_108.Out", "box_SoundModifier_v2_97.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|730297618", "730297618", "UNI13_010_B60", "box_OutputOrder_v2_37.Out", "box_ActivityAcknowledgeGate_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_46();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|468478009", "468478009", "UNI13_010_B60", "box_OutputOrder_v2_37.Out", "box_Print_v2_46.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_98_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_50();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1303963894", "1303963894", "UNI13_010_B60", "box_OutputOrder_v2_98.Out", "box_AddActivityObjective_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_98_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_97();
    l0 = self.box_SoundModifier_v2_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1251968236", "1251968236", "UNI13_010_B60", "box_OutputOrder_v2_98.Out", "box_SoundModifier_v2_97.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_43_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_49();
    l0 = self.box_ProximityRadiusListener_v3_43;
    l1 = self.box_DisplayCustomUIMsg_v4_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1998505325", "1998505325", "UNI13_010_B60", "box_ProximityRadiusListener_v3_43.AllFar", "box_DisplayCustomUIMsg_v4_49.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_43_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_49();
    l0 = self.box_ProximityRadiusListener_v3_43;
    l1 = self.box_DisplayCustomUIMsg_v4_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1039405798", "1039405798", "UNI13_010_B60", "box_ProximityRadiusListener_v3_43.AllNear", "box_DisplayCustomUIMsg_v4_49.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_Compare_Floats_54_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_22();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1944008754", "1944008754", "UNI13_010_B60", "box_Compare_Floats_54.A_le_B", "box_SetBoolean_v2_22.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_28_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_14();
    l0 = self.box_VehicleDamageListener_v2_28;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2075251499", "2075251499", "UNI13_010_B60", "box_VehicleDamageListener_v2_28.Destroyed", "box_GetDistance_14.Distance2D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance2D
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Kill_Target_ExtraMaker_v2_2();
    l0 = self.box_Brick_Kill_Target_ExtraMaker_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1074749929", "1074749929", "UNI13_010_B60", "box_OutputOrder_v2_55.Out", "box_Brick_Kill_Target_ExtraMaker_v2_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_77();
    l0 = self.box_MultipleOR_85;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|263238057", "263238057", "UNI13_010_B60", "box_MultipleOR_85.Out", "box_UseContextualActionModifier_v3_77.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_27();
    l0 = self.box_DisplayCustomUIMsg_v5_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1048141417", "1048141417", "UNI13_010_B60", "box_OutputOrder_v2_15.Out", "box_DisplayCustomUIMsg_v5_27.Display", clone:GetLuaBox(), l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|340401890", "340401890", "UNI13_010_B60", "box_OutputOrder_v2_15.Out", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_107_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_18();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1165046100", "1165046100", "UNI13_010_B60", "box_OutputOrder_v2_107.Out", "box_GetPlayerGroup_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_107_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_106();
    l0 = self.box_Music_Quest_v2_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|565220259", "565220259", "UNI13_010_B60", "box_OutputOrder_v2_107.Out", "box_Music_Quest_v2_106.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_30_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_121();
    l0 = self.box_ProximityRadiusListener_v3_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1856364000", "1856364000", "UNI13_010_B60", "box_ProximityRadiusListener_v3_30.SomeoneFar", "box_OutputOrder_v2_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_30_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_120();
    l0 = self.box_ProximityRadiusListener_v3_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1919124144", "1919124144", "UNI13_010_B60", "box_ProximityRadiusListener_v3_30.SomeoneNear", "box_OutputOrder_v2_120.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|@Marker_Disable");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_64_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|@QL");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_59_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|@SpeedCheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_123_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|@TargetEscaped");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_60_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|@TargetKilled");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_61_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|@TargetUnlooted");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_76_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|@TargetWatch");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_66_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|@UnloadListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_62_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|3811291");
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
                [0] = self.f_box_OutputOrder_v2_73_Out_0,
                [1] = self.f_box_OutputOrder_v2_73_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|55006965");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_95_A_is_True,
    });
    params = {
        -- A,
        [0] = self.IsCoop,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = "9015275176811831",
        -- players,
        [3] = self.player,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_25()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2096448138213595515",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    DrawTextToScreen("Comment: Quads are GO!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: Quads are GO!");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|182396785");
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
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
                [2] = self.f_box_OutputOrder_v2_34_Out_2,
                [3] = self.f_box_OutputOrder_v2_34_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_126()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2096422126996168659",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_4()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.player,
        -- id2,
        [3] = "2096448132626782585",
        -- nearZone,
        [4] = 300,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|277195401");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_22_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|292380080");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2105309167366487187",
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
        [2] = self.eNitroBoss,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|405959925");
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
                [0] = self.f_box_OutputOrder_v2_121_Out_0,
                [1] = self.f_box_OutputOrder_v2_121_Out_1,
                [2] = self.f_box_OutputOrder_v2_121_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|416613879");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_20_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI13_010_B20A_FindStashA",
            id = "549157",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_47()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_GetDistance_14()
    local params, l0;
    DrawTextToScreen("Comment: Check if Chosen close to quad if dismount happens", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetDistance')-- Comment: Check if Chosen close to quad if dismount happens");
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|462282327");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_14_Out,
    });
    params = {
        -- Entity1,
        [0] = self.eNitroBoss,
        -- Entity2,
        [1] = self.eNitroQuad,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|478235163");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_50_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI13_010_B20A_FindStashA",
            id = "549157",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_35()
    local params;
    DrawTextToScreen("Comment: Play Pickup Sound", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Play Pickup Sound");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "532693549",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|515714827");
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

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|524681081");
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

function export:OnEnter_box_RequestPhoneCall_v2_87()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1301490720",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_80()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_21()
    local params;
    params = {
        -- Group,
        [0] = "2096418520752457731",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|683425820");
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

function export:OnEnter_box_Music_Quest_v2_106()
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
        [6] = "3821464078",
        -- StopEvent,
        [7] = "2486558202",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|731108677");
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

function export:OnEnter_box_Music_Quest_v2_96()
    local params;
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
        [6] = "3821464078",
        -- StopEvent,
        [7] = "2486558202",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_89()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.ePlayerQuad,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|799632932");
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
                [0] = self.f_box_OutputOrder_v2_69_Out_0,
                [1] = self.f_box_OutputOrder_v2_69_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|806364897");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_81_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_81_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_81_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|806458359");
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
                [0] = self.f_box_OutputOrder_v2_101_Out_0,
                [1] = self.f_box_OutputOrder_v2_101_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_3()
    local params;
    params = {
        -- EntityA,
        [1] = "2096422126996168659",
        -- EntityB,
        [2] = "2096047030607548303",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|827343147");
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

function export:OnEnter_box_SetBoolean_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|831563404");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_90_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|852296524");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2105309219174530270",
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v4_49()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "HUD TEMP",
            item = "KOM_HUD_INVASION_INVADED_ESCAPING",
            id = "364228",
        },
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_52()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|903704283");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 10,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "In Helicopter",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Kill_Target_ExtraMaker_v2_2()
    local params;
    params = {
        -- Entity,
        [0] = "2096422126996168659",
        -- Mobile_Marker,
        [1] = "2096047030607548303",
        -- Objective,
        [2] = {
            section = "Objectives",
            item = "UNI13_010_B50_StopVehicle",
            id = "549160",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|918755154");
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
                [0] = self.f_box_OutputOrder_v2_120_Out_0,
                [1] = self.f_box_OutputOrder_v2_120_Out_1,
                [2] = self.f_box_OutputOrder_v2_120_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|953700548");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_110_Out,
    });
    params = {
        -- Group,
        [1] = "2096422126996168659",
    };
    return params;
end;

function export:OnEnter_box_ForceInVehicle_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|958448988");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceInVehicle_v2_91_Out,
    });
    params = {
        -- pawns,
        [0] = self.ePlayer1ID,
        -- SeatType,
        [1] = 1,
        -- vehicleEntity,
        [2] = self.ePlayerQuad,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|960544339");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
                [2] = self.f_box_OutputOrder_v2_45_Out_2,
                [3] = self.f_box_OutputOrder_v2_45_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|961568015");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2105309167366487187",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|990930654");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_11_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI13_010_B50_StopVehicle",
            id = "549160",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_103()
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
        [6] = "3821464078",
        -- StopEvent,
        [7] = "2486558202",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_75()
    local params;
    params = {
        -- Delay,
        [2] = 3,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2602477148",
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_27()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Invasion",
            item = "KOM_HUD_INVASION_INVADER_LOSE_ESCAPE",
            id = "364227",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1116849571");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_1_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_1_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bTargetExploded,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_72()
    local params;
    params = {
        -- Delay,
        [2] = 1,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1689030340",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1134163787");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_10_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103595362431295533",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1141727959");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_17_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2096047030607548303",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI13_010_B50_StopVehicle",
            id = "549160",
        },
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1227713809");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_51_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI13_010_B50_StopVehicle",
            id = "549160",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_71()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Invasion",
            item = "KOM_HUD_INVASION_INVADER_LOSE_ESCAPE",
            id = "364227",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_104()
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
        [6] = "3821464078",
        -- StopEvent,
        [7] = "2486558202",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1334285861");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_40_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI13_010_B20A_FindStashA",
            id = "549157",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1354475118");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1365943409");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1369936574");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_38_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI13_010_B50_StopVehicle",
            id = "549160",
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1385842470");
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

function export:OnEnter_box_UseContextualActionModifier_v3_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1404063782");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2105309219174530270",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1413283502");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_48_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2096047030607548303",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI13_010_B20A_FindStashA",
            id = "549157",
        },
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1428224622");
    l0:SetConnections({
    });
    params = {
        -- Group,
        [1] = "2096448140478519758",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1434746528");
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
                [0] = self.f_box_OutputOrder_v2_83_Out_0,
                [1] = self.f_box_OutputOrder_v2_83_Out_1,
                [2] = self.f_box_OutputOrder_v2_83_Out_2,
                [3] = self.f_box_OutputOrder_v2_83_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_97()
    local params;
    params = {
        -- Pawns,
        [0] = "2096422126996168659",
        -- SoundId,
        [1] = "967629685",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.1,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_70()
    local params;
    params = {
        -- Delay,
        [2] = 3,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2386725651",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1492252327");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_39_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103595793914016660",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_100()
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
        [6] = "3821464078",
        -- StopEvent,
        [7] = "2486558202",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_7()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2096422125259726692",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1516075436");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_26_Out,
    });
    params = {
        -- Fact,
        [0] = "allgearreturned",
    };
    return params;
end;

function export:OnEnter_box_SetLootGroup_74()
    local params;
    params = {
        -- LootGroup,
        [0] = "9015275176872904",
        -- Targets,
        [1] = "2096422126996168659",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_68()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.player,
        -- farZone,
        [2] = 150,
        -- id2,
        [3] = self.eNitroBoss,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_78()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_79()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1691732948");
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

function export:OnEnter_box_Print_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1753095668");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 10,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "UNI13_010_B60 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_57()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.player,
        -- farZone,
        [2] = 180,
        -- id2,
        [3] = self.eNitroBoss,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1791471060");
    l0:SetConnections({
    });
    params = {
        -- Group,
        [1] = "2100956733932359387",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1811903887");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_77_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103595822905046047",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1844823146");
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
                [0] = self.f_box_OutputOrder_v2_108_Out_0,
                [1] = self.f_box_OutputOrder_v2_108_Out_1,
            },
            count = 2,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1852329729");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2105309161725148285",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1858977051");
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

function export:OnEnter_box_OutputOrder_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1910391685");
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

function export:OnEnter_box_ProximityRadiusListener_v3_43()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.player,
        -- farZone,
        [2] = 125,
        -- id2,
        [3] = self.eNitroBoss,
        -- nearZone,
        [4] = 115,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|1950731009");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_54_A_le_B,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_14,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_28()
    local params;
    params = {
        -- Vehicle,
        [0] = self.eNitroQuad,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_32()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100956713508195949",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2031110126");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2059962353");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2067219037");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2105309161725148285",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2096836293");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2122845782");
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
                [0] = self.f_box_OutputOrder_v2_107_Out_0,
                [1] = self.f_box_OutputOrder_v2_107_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ForceInVehicle_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI13\\UNI13_010\\UNI13_010_B60.domino|@UNI13_010_B60|2130719119");
    l0:SetConnections({
    });
    params = {
        -- pawns,
        [0] = self.ePlayer2ID,
        -- SeatType,
        [1] = 2,
        -- vehicleEntity,
        [2] = self.ePlayerQuad,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_30()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.player,
        -- farZone,
        [2] = 82,
        -- id2,
        [3] = "2096422126996168659",
        -- nearZone,
        [4] = 65,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bTargetExploded = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_14 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_81_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.VehicleTypes = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_81_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.VehicleTypes = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.VehicleTypes = l0:GetDataOutValue(3);
end;

function export:OnExit_box_SetBoolean_v2_90_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.IsCoop = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_88_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_88;
    self.ePlayer1ID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_88_PlayerAdded()
    local l0;
    l0 = self.box_CoopActivePlayers_88;
    self.ePlayer2ID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_88_PlayerRemoved()
    local l0;
    l0 = self.box_CoopActivePlayers_88;
    self.ePlayer2ID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_88_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_88;
    self.ePlayer1ID = l0:GetDataOutValue(0);
    self.ePlayer2ID = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayerGroup_v2_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.player = l0:GetDataOutValue(0);
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
