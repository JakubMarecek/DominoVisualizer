LUAC&	 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni57/uni57_010_b40.domino
-- User graph: UNI57_010_B40
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_MAIN.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAIRequestGroup.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/IsGunsForHire_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1461080702.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1863671042.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1504040976.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2187124025.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2422504818.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4218804907.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3451751143.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3044110647.bnk]], "CSoundResource");
        cboxRes:LoadResource([[entityarchetypeslibrary/9015222041342298.ark.fcb]], "CEntityArchetypeRes");
        cboxRes:LoadResource([[3135515421.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI57/UNI57_010_B40.UNI57_010_B40.debug.lua")] = {
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
                name = "ObjectDestroyed",
                delayed = false,
            },
            [1] = {
                name = "Out",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua")] = {
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
                name = "NextMarker",
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
                name = "fMarkerHeight",
                type = "float",
            },
            [2] = {
                name = "Mission_Objective",
                type = "oasis",
            },
            [3] = {
                name = "Mobile_Marker",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_MAIN.debug.lua")] = {
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
                name = "ExtraMarkers",
                delayed = false,
            },
            [2] = {
                name = "ObjectDestroyed",
                delayed = false,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "Destroy_Group",
                type = "group",
            },
            [2] = {
                name = "has_ProgressBar",
                type = "bool",
            },
            [3] = {
                name = "Mission_Objective",
                type = "oasis",
            },
            [4] = {
                name = "opt_Marker_MissionArea",
                type = "entity",
            },
            [5] = {
                name = "Success_Percentage",
                type = "int",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Active",
                delayed = false,
            },
            [1] = {
                name = "Canceled",
                delayed = false,
            },
            [2] = {
                name = "Completed",
                delayed = false,
            },
            [3] = {
                name = "Failed",
                delayed = false,
            },
            [4] = {
                name = "Inactive",
                delayed = false,
            },
            [5] = {
                name = "Out",
                delayed = false,
            },
            [6] = {
                name = "Unavailable",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "activityDescriptorID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/IsGunsForHire_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
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
                name = "Roster",
                delayed = false,
            },
            [3] = {
                name = "Squad",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Player",
                type = "entity",
            },
            [1] = {
                name = "targetGFHArchetype",
                type = "archetype",
            },
            [2] = {
                name = "targetGFHEntity",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "affectedGFHEntity",
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
    self._name = "UNI57_010_B40";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40";
    self.ObjectDestroyed = DummyFunction;
    self.Out = DummyFunction;
    self.IsAllDestroyed = 80;
    self.IsDestroyed = 0;
    self.i_targetDestroyed = 0;
    self.i_TargetRequired = 0;
    self.i_TargetRemaining = 0;
    self.i_targetDestroyed_firstWave = 0;
    self.i_TargetDestroyed_firstWave = 20;
    self.PlayerGroup = nil;
    self.BoatRemaining = 0;
    self.IsPlayerInChopper = false;
    self.eGFH = nil;
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_98 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|7619705");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_90 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|143601766");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_102 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|149944575");
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
                [0] = self.f_box_OnceOnly_v3_102_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_37 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|164202641");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_37_Out,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_85 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|198724314");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_111 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|204139594");
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
                [0] = self.f_box_OnceOnly_v3_111_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|276528155");
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
    self.box_SpawnAI_56 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|276763252");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_83 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|282624808");
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
                [0] = self.f_box_OnceOnly_v3_83_Out_0,
            },
            count = 2,
        },
    });
    self.box_RequestPhoneCall_v2_16 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|294390229");
    l0:SetConnections({
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|302570561");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|304812138");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_StartCelebration_32 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|305126220");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_32_Ended,
    });
    self.box_VehicleListener_v3_72 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|315792209");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_72_OnSit,
    });
    self.box_SpawnAI_55 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|335221421");
    l0:SetConnections({
    });
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|345842692");
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
        [0] = self.f_box_MultipleOR_106_Out,
    });
    self.box_OnceOnly_v3_29 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|359783138");
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
    self.box_GroupSizeListener_v5_42 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|364249393");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_42_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_42_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_42_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_42_MemberRemoved,
    });
    self.box_ProximityTrigger_v2_31 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|411288137");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_31_Enter,
    });
    self.box_SpawnAI_58 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|586210212");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_67 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|601479668");
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
                [0] = self.f_box_OnceOnly_v3_67_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Destroy_ObjectsVehicles_MAIN_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_MAIN.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_MAIN_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|607841816");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Brick_Destroy_ObjectsVehicles_MAIN_1_Started,
        -- Success,
        [4] = self.f_box_Brick_Destroy_ObjectsVehicles_MAIN_1_Success,
    });
    self.box_RequestPhoneCall_v2_18 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|627600295");
    l0:SetConnections({
    });
    self.box_SpawnAI_23 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|633317583");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_23_Out,
    });
    self.box_SpawnAI_76 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|650239307");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_74 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|653145921");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_74_Enabled,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|728945106");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_14 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|742613243");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_14_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_14_SomeoneNear,
    });
    self.box_SpawnAI_28 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|767165228");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_28_Spawned,
    });
    self.box_OnceOnly_v3_61 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|770290174");
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
                [0] = self.f_box_OnceOnly_v3_61_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_57 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|815823513");
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
                [0] = self.f_box_OnceOnly_v3_57_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_92 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|890636917");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_54 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|940308355");
    l0:SetConnections({
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|962841239");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_78 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|975401225");
    l0:SetConnections({
    });
    self.box_SpawnAI_47 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1041040678");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1085951471");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_101 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1092306013");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_88 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1142624697");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_95 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1169105010");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_13 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1229934944");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1237548058");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_94 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1244638991");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_100 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1291479780");
    l0:SetConnections({
    });
    self.box_SpawnAI_34 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1305360891");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_34_Spawned,
    });
    self.box_RequestPhoneCall_v2_27 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1361738218");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_27_Completed,
    });
    self.box_SpawnAI_33 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1382510279");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_33_Out,
    });
    self.box_SpawnAI_48 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1410392145");
    l0:SetConnections({
    });
    self.box_Delay_v5_24 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1413946595");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_24_TimeElapsed,
    });
    self.box_OnceOnly_v3_9 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1458201970");
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
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_89 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1498024711");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_91 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1508066146");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_73 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1516442514");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_73_Completed,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_80 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1517645068");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_7 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1593497220");
    l0:SetConnections({
    });
    self.box_SpawnAI_44 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1594293050");
    l0:SetConnections({
    });
    self.box_MultipleOR_65 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1594977846");
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
        [0] = self.f_box_MultipleOR_65_Out,
    });
    self.box_SpawnAI_49 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1611000944");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_63 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1625722594");
    l0:SetConnections({
    });
    self.box_SpawnAI_50 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1640086789");
    l0:SetConnections({
    });
    self.box_SpawnAI_46 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1646252976");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_93 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1686190007");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_71 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1705072077");
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
        [0] = self.f_box_MultipleAND_v2_71_Out,
    });
    self.box_OnceOnly_v3_59 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1725111872");
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
                [0] = self.f_box_OnceOnly_v3_59_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1750578463");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_21_Spawned,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_96 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1752851973");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_69 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1758730415");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_12 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1781555731");
    l0:SetConnections({
    });
    self.box_SpawnAIRequestGroup_77 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup.lua");
    l0 = self.box_SpawnAIRequestGroup_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1791985049");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_86 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1873483920");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_82 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1892665433");
    l0:SetConnections({
    });
    self.box_Delay_v5_64 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1913274517");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_64_TimeElapsed,
    });
    self.box_SpawnAI_8 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2030391394");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_8_Out,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_99 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2041245781");
    l0:SetConnections({
    });
    self.box_Delay_v5_112 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2110867745");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_112_TimeElapsed,
    });
    self.box_OnceOnly_v3_79 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2130924928");
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
    self.box_MultipleOR_40 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2145616775");
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
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_43();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|17607372", "17607372", "UNI57_010_B40", "In", "box_GetPlayerGroup_v2_43.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_26();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|558112893", "558112893", "UNI57_010_B40", "OnLeaveZone", "box_ActivityRetry_26.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_52_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1590010376", "1590010376", "UNI57_010_B40", "box_Simple_Node_52.Out", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2055914663", "2055914663", "UNI57_010_B40", "box_Simple_Node_52.Out", "box_OutputOrder_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1670839234", "1670839234", "UNI57_010_B40", "box_Simple_Node_52.Out", "box_OutputOrder_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_25();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|876423947", "876423947", "UNI57_010_B40", "box_OutputOrder_v2_6.Out", "box_Compare_Integers_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_30();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|147383364", "147383364", "UNI57_010_B40", "box_OutputOrder_v2_6.Out", "box_Compare_Integers_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_39();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|462538232", "462538232", "UNI57_010_B40", "box_OutputOrder_v2_6.Out", "box_Compare_Integers_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_102_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_18();
    l0 = self.box_OnceOnly_v3_102;
    l1 = self.box_RequestPhoneCall_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1409983956", "1409983956", "UNI57_010_B40", "box_OnceOnly_v3_102.Out", "box_RequestPhoneCall_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_37_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_37;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1732508000", "1732508000", "UNI57_010_B40", "box_SpawnAI_37.Out", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OnceOnly_v3_111_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_112();
    l0 = self.box_OnceOnly_v3_111;
    l1 = self.box_Delay_v5_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|411931933", "411931933", "UNI57_010_B40", "box_OnceOnly_v3_111.Out", "box_Delay_v5_112.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_110_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_109();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|664409932", "664409932", "UNI57_010_B40", "box_OutputOrder_v2_110.Out", "box_Compare_Boolean_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_110_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|756595356", "756595356", "UNI57_010_B40", "box_OutputOrder_v2_110.Out", "box_OutputOrder_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_107_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_107_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_71();
    l0 = self.box_MultipleAND_v2_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|524531076", "524531076", "UNI57_010_B40", "box_SetBoolean_v2_107.Out", "box_MultipleAND_v2_71.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = self.box_MultipleOR_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|361864093", "361864093", "UNI57_010_B40", "box_MultipleOR_15.Out", "box_OutputOrder_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_83_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_104();
    l0 = self.box_OnceOnly_v3_83;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1207877321", "1207877321", "UNI57_010_B40", "box_OnceOnly_v3_83.Out", "box_SetContextualStrategy_104.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|201446952", "201446952", "UNI57_010_B40", "box_MultipleOR_3.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1073098489", "1073098489", "UNI57_010_B40", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|981073064", "981073064", "UNI57_010_B40", "box_ActivityAcknowledgeGate_4.Reloaded", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_32_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_2();
    l0 = self.box_StartCelebration_32;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1401075534", "1401075534", "UNI57_010_B40", "box_StartCelebration_32.Ended", "box_ActivityEnd_2.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_72_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_107();
    l0 = self.box_VehicleListener_v3_72;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1070097541", "1070097541", "UNI57_010_B40", "box_VehicleListener_v3_72.OnSit", "box_SetBoolean_v2_107.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_43_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_43_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1640976788", "1640976788", "UNI57_010_B40", "box_GetPlayerGroup_v2_43.Out", "box_OutputOrder_v2_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_106_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_16();
    l0 = self.box_MultipleOR_106;
    l1 = self.box_RequestPhoneCall_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1028451471", "1028451471", "UNI57_010_B40", "box_MultipleOR_106.Out", "box_RequestPhoneCall_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_29_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_13();
    l0 = self.box_OnceOnly_v3_29;
    l1 = self.box_RequestPhoneCall_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|645924084", "645924084", "UNI57_010_B40", "box_OnceOnly_v3_29.Out", "box_RequestPhoneCall_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_42_Enabled()
    self:OnExit_box_GroupSizeListener_v5_42_Enabled();
end;

function export:f_box_GroupSizeListener_v5_42_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_42_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_42_MemberRemoved()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_42_MemberRemoved();
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = self.box_GroupSizeListener_v5_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|214680056", "214680056", "UNI57_010_B40", "box_GroupSizeListener_v5_42.MemberRemoved", "box_OutputOrder_v2_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_28();
    l0 = self.box_SpawnAI_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1156905993", "1156905993", "UNI57_010_B40", "box_OutputOrder_v2_35.Out", "box_SpawnAI_28.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_8();
    l0 = self.box_SpawnAI_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1327365685", "1327365685", "UNI57_010_B40", "box_OutputOrder_v2_35.Out", "box_SpawnAI_8.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_31_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_54();
    l0 = self.box_ProximityTrigger_v2_31;
    l1 = self.box_RequestPhoneCall_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1650910252", "1650910252", "UNI57_010_B40", "box_ProximityTrigger_v2_31.Enter", "box_RequestPhoneCall_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_103_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1498219773", "1498219773", "UNI57_010_B40", "box_Compare_Integers_103.A_le_B", "box_OnceOnly_v3_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_67_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_105();
    l0 = self.box_OnceOnly_v3_67;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|3055363", "3055363", "UNI57_010_B40", "box_OnceOnly_v3_67.Out", "box_GetActivityState_v2_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Destroy_ObjectsVehicles_MAIN_1_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1781146651", "1781146651", "UNI57_010_B40", "box_Brick_Destroy_ObjectsVehicles_MAIN_1.Started", "box_OutputOrder_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Destroy_ObjectsVehicles_MAIN_1_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|971848665", "971848665", "UNI57_010_B40", "box_Brick_Destroy_ObjectsVehicles_MAIN_1.Success", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_23_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_23;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|615401318", "615401318", "UNI57_010_B40", "box_SpawnAI_23.Out", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1416679856", "1416679856", "UNI57_010_B40", "box_OutputOrder_v2_10.Out", "box_SpawnAI_21.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_23();
    l0 = self.box_SpawnAI_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|39724137", "39724137", "UNI57_010_B40", "box_OutputOrder_v2_10.Out", "box_SpawnAI_23.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_PhoneCallExclusivityModifier_74_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_27();
    l0 = self.box_PhoneCallExclusivityModifier_74;
    l1 = self.box_RequestPhoneCall_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|93565703", "93565703", "UNI57_010_B40", "box_PhoneCallExclusivityModifier_74.Enabled", "box_RequestPhoneCall_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_139();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1185493402", "1185493402", "UNI57_010_B40", "box_OutputOrder_v2_81.Out", "box_Compare_Integers_139.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_103();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1574825508", "1574825508", "UNI57_010_B40", "box_OutputOrder_v2_81.Out", "box_Compare_Integers_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1717820959", "1717820959", "UNI57_010_B40", "box_OutputOrder_v2_81.Out", "box_OutputOrder_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_28();
    l0 = self.box_SpawnAI_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|194633405", "194633405", "UNI57_010_B40", "box_OutputOrder_v2_19.Out", "box_SpawnAI_28.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_8();
    l0 = self.box_SpawnAI_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1227261624", "1227261624", "UNI57_010_B40", "box_OutputOrder_v2_19.Out", "box_SpawnAI_8.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_IsGunsForHire_v2_68_Out()
    self:OnExit_box_IsGunsForHire_v2_68_Out();
end;

function export:f_box_IsGunsForHire_v2_68_Roster()
    self:OnExit_box_IsGunsForHire_v2_68_Roster();
end;

function export:f_box_IsGunsForHire_v2_68_Squad()
    local params, l0;
    self:OnExit_box_IsGunsForHire_v2_68_Squad();
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_71();
    l0 = self.box_MultipleAND_v2_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1451168492", "1451168492", "UNI57_010_B40", "box_IsGunsForHire_v2_68.Squad", "box_MultipleAND_v2_71.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_ProximityRadiusListener_v3_14_Enabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_14;
    l1 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|213502464", "213502464", "UNI57_010_B40", "box_ProximityRadiusListener_v3_14.Enabled", "box_MultipleOR_65.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_14_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_14;
    l1 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|908987200", "908987200", "UNI57_010_B40", "box_ProximityRadiusListener_v3_14.SomeoneNear", "box_MultipleOR_65.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_28_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_28;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|46406920", "46406920", "UNI57_010_B40", "box_SpawnAI_28.Spawned", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_61_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_OnceOnly_v3_61;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|300726487", "300726487", "UNI57_010_B40", "box_OnceOnly_v3_61.Out", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_24();
    l0 = self.box_Delay_v5_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1058982417", "1058982417", "UNI57_010_B40", "box_OutputOrder_v2_66.Out", "box_Delay_v5_24.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_66_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1657830385", "1657830385", "UNI57_010_B40", "box_OutputOrder_v2_66.Out", "box_OnceOnly_v3_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_57_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_OnceOnly_v3_57;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2029041088", "2029041088", "UNI57_010_B40", "box_OnceOnly_v3_57.Out", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsGunsForHire_v2_68();
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1000699185", "1000699185", "UNI57_010_B40", "box_OutputOrder_v2_70.Out", "box_IsGunsForHire_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_72();
    l0 = self.box_VehicleListener_v3_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1880494848", "1880494848", "UNI57_010_B40", "box_OutputOrder_v2_70.Out", "box_VehicleListener_v3_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_97_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_153();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|741296179", "741296179", "UNI57_010_B40", "box_ActivityObjectiveMarkerModifier_v3_97.Disabled", "box_OutputOrder_v2_153.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_109_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_63();
    l0 = self.box_RequestPhoneCall_v2_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|566097968", "566097968", "UNI57_010_B40", "box_Compare_Boolean_109.A_is_False", "box_RequestPhoneCall_v2_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_20_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_20;
    l1 = self.box_OnceOnly_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|786056964", "786056964", "UNI57_010_B40", "box_MultipleOR_20.Out", "box_OnceOnly_v3_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_MAIN_1();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|70436597", "70436597", "UNI57_010_B40", "box_OutputOrder_v2_53.Out", "box_Brick_Destroy_ObjectsVehicles_MAIN_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_44();
    l0 = self.box_SpawnAI_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|748594895", "748594895", "UNI57_010_B40", "box_OutputOrder_v2_53.Out", "box_SpawnAI_44.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_53_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_46();
    l0 = self.box_SpawnAI_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|523633432", "523633432", "UNI57_010_B40", "box_OutputOrder_v2_53.Out", "box_SpawnAI_46.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_53_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_47();
    l0 = self.box_SpawnAI_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1301084180", "1301084180", "UNI57_010_B40", "box_OutputOrder_v2_53.Out", "box_SpawnAI_47.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_53_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_76();
    l0 = self.box_SpawnAI_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1634118102", "1634118102", "UNI57_010_B40", "box_OutputOrder_v2_53.Out", "box_SpawnAI_76.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_53_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAIRequestGroup_77();
    l0 = self.box_SpawnAIRequestGroup_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1064121257", "1064121257", "UNI57_010_B40", "box_OutputOrder_v2_53.Out", "box_SpawnAIRequestGroup_77.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_53_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_31();
    l0 = self.box_ProximityTrigger_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|511463859", "511463859", "UNI57_010_B40", "box_OutputOrder_v2_53.Out", "box_ProximityTrigger_v2_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_110();
    l0 = self.box_ActivityInitialized_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1810455067", "1810455067", "UNI57_010_B40", "box_ActivityInitialized_5.Out", "box_OutputOrder_v2_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_139_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|483039563", "483039563", "UNI57_010_B40", "box_Compare_Integers_139.A_le_B", "box_OnceOnly_v3_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_34_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_34;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|444636122", "444636122", "UNI57_010_B40", "box_SpawnAI_34.Spawned", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_27_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_32();
    l0 = self.box_RequestPhoneCall_v2_27;
    l1 = self.box_StartCelebration_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1459533703", "1459533703", "UNI57_010_B40", "box_RequestPhoneCall_v2_27.Completed", "box_StartCelebration_32.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_33_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_33;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1426170035", "1426170035", "UNI57_010_B40", "box_SpawnAI_33.Out", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|843979668", "843979668", "UNI57_010_B40", "box_OutputOrder_v2_45.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_58();
    l0 = self.box_SpawnAI_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|531140353", "531140353", "UNI57_010_B40", "box_OutputOrder_v2_45.Out", "box_SpawnAI_58.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_55();
    l0 = self.box_SpawnAI_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|868498491", "868498491", "UNI57_010_B40", "box_OutputOrder_v2_45.Out", "box_SpawnAI_55.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_56();
    l0 = self.box_SpawnAI_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|91047743", "91047743", "UNI57_010_B40", "box_OutputOrder_v2_45.Out", "box_SpawnAI_56.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_49();
    l0 = self.box_SpawnAI_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1384037272", "1384037272", "UNI57_010_B40", "box_OutputOrder_v2_45.Out", "box_SpawnAI_49.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_50();
    l0 = self.box_SpawnAI_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|606754637", "606754637", "UNI57_010_B40", "box_OutputOrder_v2_45.Out", "box_SpawnAI_50.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_48();
    l0 = self.box_SpawnAI_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|173700924", "173700924", "UNI57_010_B40", "box_OutputOrder_v2_45.Out", "box_SpawnAI_48.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_24_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_24;
    l1 = self.box_OnceOnly_v3_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|741903849", "741903849", "UNI57_010_B40", "box_Delay_v5_24.TimeElapsed", "box_OnceOnly_v3_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_9_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_7();
    l0 = self.box_OnceOnly_v3_9;
    l1 = self.box_RequestPhoneCall_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|477349209", "477349209", "UNI57_010_B40", "box_OnceOnly_v3_9.Out", "box_RequestPhoneCall_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_25_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|652059351", "652059351", "UNI57_010_B40", "box_Compare_Integers_25.A_eq_B", "box_OnceOnly_v3_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_73_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_69();
    l0 = self.box_RequestPhoneCall_v2_73;
    l1 = self.box_RequestPhoneCall_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1209099051", "1209099051", "UNI57_010_B40", "box_RequestPhoneCall_v2_73.Completed", "box_RequestPhoneCall_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_65_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_70();
    l0 = self.box_MultipleOR_65;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2039430267", "2039430267", "UNI57_010_B40", "box_MultipleOR_65.Out", "box_OutputOrder_v2_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_108_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_73();
    l0 = self.box_RequestPhoneCall_v2_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1631697110", "1631697110", "UNI57_010_B40", "box_Compare_Boolean_108.A_is_True", "box_RequestPhoneCall_v2_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_71_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_108();
    l0 = self.box_MultipleAND_v2_71;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|381119637", "381119637", "UNI57_010_B40", "box_MultipleAND_v2_71.Out", "box_Compare_Boolean_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_30_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|273450944", "273450944", "UNI57_010_B40", "box_Compare_Integers_30.A_eq_B", "box_OnceOnly_v3_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_59_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_OnceOnly_v3_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1330985082", "1330985082", "UNI57_010_B40", "box_OnceOnly_v3_59.Out", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_21_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_21;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1027634535", "1027634535", "UNI57_010_B40", "box_SpawnAI_21.Spawned", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|303403590", "303403590", "UNI57_010_B40", "box_OutputOrder_v2_62.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_14();
    l0 = self.box_ProximityRadiusListener_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|544613850", "544613850", "UNI57_010_B40", "box_OutputOrder_v2_62.Out", "box_ProximityRadiusListener_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_64_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_64;
    l1 = self.box_OnceOnly_v3_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2124002108", "2124002108", "UNI57_010_B40", "box_Delay_v5_64.TimeElapsed", "box_OnceOnly_v3_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_39_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1034771433", "1034771433", "UNI57_010_B40", "box_Compare_Integers_39.A_eq_B", "box_OnceOnly_v3_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_105_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1828272266", "1828272266", "UNI57_010_B40", "box_GetActivityState_v2_105.Active", "box_MultipleOR_106.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_105_Failed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|18146757", "18146757", "UNI57_010_B40", "box_GetActivityState_v2_105.Failed", "box_MultipleOR_106.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetActivityState_v2_105_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1366985348", "1366985348", "UNI57_010_B40", "box_GetActivityState_v2_105.Inactive", "box_MultipleOR_106.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_105_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1116370620", "1116370620", "UNI57_010_B40", "box_GetActivityState_v2_105.Unavailable", "box_MultipleOR_106.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_34();
    l0 = self.box_SpawnAI_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1661676953", "1661676953", "UNI57_010_B40", "box_OutputOrder_v2_51.Out", "box_SpawnAI_34.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_33();
    l0 = self.box_SpawnAI_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|335594933", "335594933", "UNI57_010_B40", "box_OutputOrder_v2_51.Out", "box_SpawnAI_33.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_37();
    l0 = self.box_SpawnAI_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|647149807", "647149807", "UNI57_010_B40", "box_OutputOrder_v2_51.Out", "box_SpawnAI_37.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_8_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_8;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1379789250", "1379789250", "UNI57_010_B40", "box_SpawnAI_8.Out", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_52();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1080264047", "1080264047", "UNI57_010_B40", "box_OutputOrder_v2_11.Out", "box_Simple_Node_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_148();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1704354098", "1704354098", "UNI57_010_B40", "box_OutputOrder_v2_11.Out", "box_Simple_Node_148.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1409660096", "1409660096", "UNI57_010_B40", "box_OutputOrder_v2_11.Out", "box_PhoneCallExclusivityModifier_74.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_153_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|442926063", "442926063", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_93();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1536630263", "1536630263", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_93.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_98();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|438406400", "438406400", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_98.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_91();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1391686419", "1391686419", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_91.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_86();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|607312851", "607312851", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_82();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|146115555", "146115555", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_88();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|162532465", "162532465", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_80();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|956568236", "956568236", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_80.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_96();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|591350705", "591350705", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_96.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_94();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1296329531", "1296329531", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_94.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_78();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|511787850", "511787850", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_78.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_92();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1455741892", "1455741892", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_92.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_85();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1646039680", "1646039680", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_85.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_95();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1594672444", "1594672444", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_95.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_41();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|803207943", "803207943", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_89();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1238780890", "1238780890", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_89.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_90();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1211376261", "1211376261", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_99();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1752423063", "1752423063", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_99.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_100();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|17172633", "17172633", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_100.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_101();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|661290133", "661290133", "UNI57_010_B40", "box_OutputOrder_v2_153.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_42();
    l0 = self.box_GroupSizeListener_v5_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1693666670", "1693666670", "UNI57_010_B40", "box_OutputOrder_v2_87.Out", "box_GroupSizeListener_v5_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_87_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_84();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|815046389", "815046389", "UNI57_010_B40", "box_OutputOrder_v2_87.Out", "box_ActivityObjectiveMarkerModifier_v3_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_34();
    l0 = self.box_SpawnAI_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|350054536", "350054536", "UNI57_010_B40", "box_OutputOrder_v2_38.Out", "box_SpawnAI_34.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_33();
    l0 = self.box_SpawnAI_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1114007219", "1114007219", "UNI57_010_B40", "box_OutputOrder_v2_38.Out", "box_SpawnAI_33.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_38_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_37();
    l0 = self.box_SpawnAI_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1447893018", "1447893018", "UNI57_010_B40", "box_OutputOrder_v2_38.Out", "box_SpawnAI_37.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_64();
    l0 = self.box_Delay_v5_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1997643686", "1997643686", "UNI57_010_B40", "box_OutputOrder_v2_60.Out", "box_Delay_v5_64.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|623039118", "623039118", "UNI57_010_B40", "box_OutputOrder_v2_60.Out", "box_OnceOnly_v3_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_112_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_97();
    l0 = self.box_Delay_v5_112;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1957962216", "1957962216", "UNI57_010_B40", "box_Delay_v5_112.TimeElapsed", "box_ActivityObjectiveMarkerModifier_v3_97.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1209428709", "1209428709", "UNI57_010_B40", "box_OutputOrder_v2_22.Out", "box_SpawnAI_21.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_23();
    l0 = self.box_SpawnAI_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|327896700", "327896700", "UNI57_010_B40", "box_OutputOrder_v2_22.Out", "box_SpawnAI_23.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_79_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_12();
    l0 = self.box_OnceOnly_v3_79;
    l1 = self.box_RequestPhoneCall_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|269264070", "269264070", "UNI57_010_B40", "box_OnceOnly_v3_79.Out", "box_RequestPhoneCall_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = self.box_MultipleOR_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1742252796", "1742252796", "UNI57_010_B40", "box_MultipleOR_40.Out", "box_OutputOrder_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|@Cancel_Spawn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_52_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|@cleanUp");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_98()
    local params;
    params = {
        -- Entity,
        [0] = "2102115898256017106",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104036765248541597",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|58119530");
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
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
                [3] = self.f_box_OutputOrder_v2_6_Out_3,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|138726398");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2100580343875643533",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_90()
    local params;
    params = {
        -- Entity,
        [0] = "2102115826183194268",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104037058585580517",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_37()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101136771266917358",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_85()
    local params;
    params = {
        -- Entity,
        [0] = "2103979750079877945",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104036977872491469",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|200641224");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|210719557");
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

function export:OnEnter_box_SetBoolean_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|219720107");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_107_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_56()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101160321801525675",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_16()
    local params;
    DrawTextToScreen("Comment: Faith_VO", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Faith_VO");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.PlayerGroup,
        -- SoundId,
        [5] = "1863671042",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_32()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_72()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicleTypeFilter,
        [5] = 4,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_55()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101160321084299666",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|345303307");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_42()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#4E918813",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|386378065");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102199828546068784",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_58()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101160314310498625",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|590491949");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_103_A_le_B,
    });
    params = {
        -- A,
        [0] = self.i_TargetRemaining,
        -- B,
        [1] = 7,
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_MAIN_1()
    local params;
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- Destroy_Group,
        [1] = "#4E918813",
        -- has_ProgressBar,
        [2] = false,
        -- Mission_Objective,
        [3] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Success_Percentage,
        [5] = 100,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_18()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.PlayerGroup,
        -- SoundId,
        [5] = "3044110647",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_23()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101041350142100603",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|646151928");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_76()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100582037021816941",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|669617584");
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

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|722569991");
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

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17()
    local params;
    params = {
        -- Entity,
        [0] = "2102115718620268061",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104036655760429958",
    };
    return params;
end;

function export:OnEnter_box_IsGunsForHire_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsGunsForHire_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|741346869");
    l0:SetConnections({
        -- None,
        [0] = self.f_box_IsGunsForHire_v2_68_None,
        -- Out,
        [1] = self.f_box_IsGunsForHire_v2_68_Out,
        -- Roster,
        [2] = self.f_box_IsGunsForHire_v2_68_Roster,
        -- Squad,
        [3] = self.f_box_IsGunsForHire_v2_68_Squad,
    });
    params = {
        -- targetGFHArchetype,
        [1] = "9015222041342298",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.PlayerGroup,
        -- id2,
        [3] = "2103983792185185063",
        -- nearZone,
        [4] = 200,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_28()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101041372598404388",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|806364432");
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

function export:OnEnter_box_OutputOrder_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|872305080");
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
                [0] = self.f_box_OutputOrder_v2_70_Out_0,
                [1] = self.f_box_OutputOrder_v2_70_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_92()
    local params;
    params = {
        -- Entity,
        [0] = "2103979746869138231",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104036964224226249",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|896468616");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_97_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2100580343875643533",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_54()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2422504818",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|951189454");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_109_A_is_False,
    });
    params = {
        -- A,
        [0] = self.IsPlayerInChopper,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|967790941");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 7,
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
                [4] = self.f_box_OutputOrder_v2_53_Out_4,
                [5] = self.f_box_OutputOrder_v2_53_Out_5,
                [6] = self.f_box_OutputOrder_v2_53_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_78()
    local params;
    params = {
        -- Entity,
        [0] = "2102115876510647970",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104036955271484357",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_47()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100582039269963943",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_101()
    local params;
    params = {
        -- Entity,
        [0] = "2103979533173543700",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104038329507911692",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_88()
    local params;
    params = {
        -- Entity,
        [0] = "2103979656827917103",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104036869003039669",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_95()
    local params;
    params = {
        -- Entity,
        [0] = "2103979924099438557",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104036997304701905",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1195088606");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_139_A_le_B,
    });
    params = {
        -- A,
        [0] = self.i_TargetRemaining,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_13()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.PlayerGroup,
        -- SoundId,
        [5] = "1461080702",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_41()
    local params;
    params = {
        -- Entity,
        [0] = "2102115755083449916",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104037014224524245",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_94()
    local params;
    params = {
        -- Entity,
        [0] = "2103979665526903605",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104036914402186177",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_100()
    local params;
    params = {
        -- Entity,
        [0] = "2102115734845933102",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104038324409735176",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_34()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101136768871969728",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_27()
    local params;
    DrawTextToScreen("Comment: NEED A PHONE LINE ", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: NEED A PHONE LINE ");
    params = {
        -- Delay,
        [2] = 1,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "4218804907",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_33()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101136784623678570",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1382623313");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 7,
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
                [4] = self.f_box_OutputOrder_v2_45_Out_4,
                [5] = self.f_box_OutputOrder_v2_45_Out_5,
                [6] = self.f_box_OutputOrder_v2_45_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_48()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101160298508457970",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_24()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_89()
    local params;
    params = {
        -- Entity,
        [0] = "2102115756385781314",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104037022904636377",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1505775121");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_25_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.i_TargetRemaining,
        -- B,
        [1] = 20,
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_91()
    local params;
    params = {
        -- Entity,
        [0] = "2102115922968856280",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104036834693632937",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_73()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.PlayerGroup,
        -- SoundId,
        [5] = "3451751143",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_80()
    local params;
    params = {
        -- Entity,
        [0] = "2103979660003005233",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104036892226900921",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_7()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.PlayerGroup,
        -- SoundId,
        [5] = "1504040976",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_44()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100582035016939543",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_49()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101160305735243920",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_63()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.PlayerGroup,
        -- SoundId,
        [5] = "3451751143",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_50()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101160305999485106",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_46()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100582036342339672",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1673706187");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_108_A_is_True,
    });
    params = {
        -- A,
        [0] = self.IsPlayerInChopper,
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_93()
    local params;
    params = {
        -- Entity,
        [0] = "2102115717055792661",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104036726598030218",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_71()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1720452761");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_30_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.i_TargetRemaining,
        -- B,
        [1] = 12,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101041349257102416",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_96()
    local params;
    params = {
        -- Entity,
        [0] = "2103979663679312691",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104036902660232125",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_69()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.PlayerGroup,
        -- SoundId,
        [5] = "3135515421",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_12()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.PlayerGroup,
        -- SoundId,
        [5] = "2187124025",
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_77()
    local params;
    DrawTextToScreen("Comment: RAYCHECK", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAIRequestGroup')-- Comment: RAYCHECK");
    params = {
        -- RequestGroupName,
        [0] = "uni57_010_r1",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_26()
    local params, l0;
    DrawTextToScreen("Comment: SILENT FAIL - RETRY LATER", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ActivityRetry')-- Comment: SILENT FAIL - RETRY LATER");
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1831915027");
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

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_86()
    local params;
    params = {
        -- Entity,
        [0] = "2102115935606294248",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104036843535225773",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_82()
    local params;
    params = {
        -- Entity,
        [0] = "2103979654286168877",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104036856394961841",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1905347343");
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
                [0] = self.f_box_OutputOrder_v2_62_Out_0,
                [1] = self.f_box_OutputOrder_v2_62_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_64()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1923394304");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_39_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.i_TargetRemaining,
        -- B,
        [1] = 6,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|1981632559");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_105_Active,
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_105_Failed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_105_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_105_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015250351724096",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2013048844");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
                [2] = self.f_box_OutputOrder_v2_51_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2013592602");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104341746713419793",
        -- Group,
        [1] = "#432976E6",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_8()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101041375186289999",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2033089302");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2039955342");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 26,
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
                [0] = self.f_box_OutputOrder_v2_153_Out_0,
                [1] = self.f_box_OutputOrder_v2_153_Out_1,
                [2] = self.f_box_OutputOrder_v2_153_Out_2,
                [3] = self.f_box_OutputOrder_v2_153_Out_3,
                [4] = self.f_box_OutputOrder_v2_153_Out_4,
                [5] = self.f_box_OutputOrder_v2_153_Out_5,
                [6] = self.f_box_OutputOrder_v2_153_Out_6,
                [7] = self.f_box_OutputOrder_v2_153_Out_7,
                [8] = self.f_box_OutputOrder_v2_153_Out_8,
                [9] = self.f_box_OutputOrder_v2_153_Out_9,
                [10] = self.f_box_OutputOrder_v2_153_Out_10,
                [11] = self.f_box_OutputOrder_v2_153_Out_11,
                [12] = self.f_box_OutputOrder_v2_153_Out_12,
                [13] = self.f_box_OutputOrder_v2_153_Out_13,
                [14] = self.f_box_OutputOrder_v2_153_Out_14,
                [15] = self.f_box_OutputOrder_v2_153_Out_15,
                [16] = self.f_box_OutputOrder_v2_153_Out_16,
                [17] = self.f_box_OutputOrder_v2_153_Out_17,
                [18] = self.f_box_OutputOrder_v2_153_Out_18,
                [19] = self.f_box_OutputOrder_v2_153_Out_19,
            },
            count = 26,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_99()
    local params;
    params = {
        -- Entity,
        [0] = "2102115850109601438",
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objective",
            item = "UNI57_010_B40_OBJ_DestroyTheContainers",
            id = "563883",
        },
        -- Mobile_Marker,
        [3] = "2104038321045903364",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2045038561");
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
                [0] = self.f_box_OutputOrder_v2_87_Out_0,
                [1] = self.f_box_OutputOrder_v2_87_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2046316467");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
                [2] = self.f_box_OutputOrder_v2_38_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2072648102");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
            },
            count = 2,
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
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI57\\UNI57_010_B40.domino|@UNI57_010_B40|2118018834");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_107_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.IsPlayerInChopper = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_43_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_42_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_42;
    self.i_TargetRemaining = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_42_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_42;
    self.i_TargetRemaining = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_42_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_42;
    self.i_TargetRemaining = l0:GetDataOutValue(1);
end;

function export:OnExit_box_IsGunsForHire_v2_68_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    self.eGFH = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IsGunsForHire_v2_68_Roster()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    self.eGFH = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IsGunsForHire_v2_68_Squad()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsGunsForHire_v2.lua")];
    self.eGFH = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:ObjectDestroyed()
    
end;
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="ObjectDestroyed" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
