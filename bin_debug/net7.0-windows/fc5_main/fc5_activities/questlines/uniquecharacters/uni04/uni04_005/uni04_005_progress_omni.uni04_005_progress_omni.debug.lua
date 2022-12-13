LUACʭ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni04/uni04_005/uni04_005_progress_omni.domino
-- User graph: UNI04_005_Progress_OMNI
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_005/UNI04_005_B30._UNI04_005_B30_TakeControl.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_005/UNI04_005_Progress_OMNI.UNI04_005_Progress_OMNI.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/BroadcastMessage.lua")] = {
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
                name = "Message",
                type = "string",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/CompareStrings.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_contains_B",
                delayed = false,
            },
            [1] = {
                name = "A_eq_B",
                delayed = false,
            },
            [2] = {
                name = "A_ncontains_B",
                delayed = false,
            },
            [3] = {
                name = "A_neq_B",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "A",
                type = "string",
            },
            [1] = {
                name = "B",
                type = "string",
            },
            [2] = {
                name = "IgnoreCase",
                type = "bool",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/StaticBreakableBreaker.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Destroy",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceState",
            },
            [3] = {
                name = "NextState",
            },
            [4] = {
                name = "SetDamageable",
            },
            [5] = {
                name = "SetUnDamageable",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "DamageableChanged",
                delayed = false,
            },
            [1] = {
                name = "Destroyed",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "StateChanged",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "entity",
                type = "entity",
            },
            [1] = {
                name = "forcedStateId",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
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
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_005/UNI04_005_B30._UNI04_005_B30_TakeControl.debug.lua")] = {
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
                name = "Destroyed",
                delayed = false,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Success",
                delayed = true,
            },
            [4] = {
                name = "Unloaded",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "e_MobileObjectiveMarker",
                type = "entity",
            },
            [2] = {
                name = "e_Vehicle",
                type = "entity",
            },
            [3] = {
                name = "hasObjective",
                type = "bool",
            },
            [4] = {
                name = "o_Objective",
                type = "oasis",
            },
            [5] = {
                name = "opt_FailReason",
                type = "oasis",
            },
            [6] = {
                name = "opt_MarkerBone",
                type = "string",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "FailureReason",
                type = "oasis",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI04_005_Progress_OMNI";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI";
    self.g_PlayerGroup = nil;
    self.eLarry = nil;
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|34255095");
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
        [0] = self.f_box_MultipleOR_30_Out,
    });
    self.box__UNI04_005_B30_TakeControl_29 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_005/UNI04_005_B30._UNI04_005_B30_TakeControl.debug.lua");
    l0 = self.box__UNI04_005_B30_TakeControl_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI04_005_B30_TakeControl_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|34823310");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_16 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|105895290");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_16_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_16_OnBreak,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|115291718");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|125402486");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|130965075");
    l0:SetConnections({
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|191802043");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|248180395");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_34 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|375411267");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_34_SomeoneNear,
    });
    self.box_ProximityTrigger_v2_36 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|445712931");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_36_Enter,
    });
    self.box_Delay_v5_46 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|470900191");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_46_TimeElapsed,
    });
    self.box_EntityStatusListener_23 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|485755479");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_23_Loaded,
    });
    self.box_OnceOnly_v3_42 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|628981452");
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
                [0] = self.f_box_OnceOnly_v3_42_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleAND_v2_21 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|810367567");
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
        [0] = self.f_box_MultipleAND_v2_21_Out,
    });
    self.box_Gate_v3_28 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|971197404");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_28_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_28_Out,
    });
    self.box_EntityStatusListener_49 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1189952728");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_49_Loaded,
    });
    self.box_StaticBreakableListener_20 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1268904230");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_20_OnBreak,
    });
    self.box_EntityStatusListener_37 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1302352883");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_37_Loaded,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1506216111");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1509809683");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_12 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1765210351");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_12_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_12_Reloaded,
    });
    self.box_Brick_Destroy_ObjectsVehicles_MAIN_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_MAIN.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_MAIN_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1870483344");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Brick_Destroy_ObjectsVehicles_MAIN_8_Started,
        -- Success,
        [4] = self.f_box_Brick_Destroy_ObjectsVehicles_MAIN_8_Success,
    });
    self.box_EntityStatusListener_24 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|2044325374");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_24_Loaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1977844211", "1977844211", "UNI04_005_Progress_OMNI", "In", "box_OutputOrder_v2_9.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|554861023", "554861023", "UNI04_005_Progress_OMNI", "OnLeaveZone", "box_ActivityRetry_4.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_28();
    l0 = self.box_Gate_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1766833120", "1766833120", "UNI04_005_Progress_OMNI", "box_Simple_Node_40.Out", "box_Gate_v3_28.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_30_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_30;
    l1 = self.box_OnceOnly_v3_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1835082327", "1835082327", "UNI04_005_Progress_OMNI", "box_MultipleOR_30.Out", "box_OnceOnly_v3_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPawnVehicleInfo_31_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_31_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_38();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1455386016", "1455386016", "UNI04_005_Progress_OMNI", "box_GetPawnVehicleInfo_31.InVehicle", "box_Compare_Strings_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_31_NotInVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_31_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|2049926823", "2049926823", "UNI04_005_Progress_OMNI", "box_GetPawnVehicleInfo_31.NotInVehicle", "box_Simple_Node_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_31_Out()
    self:OnExit_box_GetPawnVehicleInfo_31_Out();
end;

function export:f_box_StaticBreakableListener_16_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_23();
    l0 = self.box_StaticBreakableListener_16;
    l1 = self.box_EntityStatusListener_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|2059871532", "2059871532", "UNI04_005_Progress_OMNI", "box_StaticBreakableListener_16.Enabled", "box_EntityStatusListener_23.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_16_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_StaticBreakableListener_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1901931670", "1901931670", "UNI04_005_Progress_OMNI", "box_StaticBreakableListener_16.OnBreak", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1078618253", "1078618253", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_18.Out", "box_OutputOrder_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_14();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|518577596", "518577596", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_18.Out", "box_BroadcastMessage_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_7_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_7;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|852348610", "852348610", "UNI04_005_Progress_OMNI", "box_MultipleOR_7.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_BroadcastMessage_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1295864339", "1295864339", "UNI04_005_Progress_OMNI", "box_BroadcastMessage_14.Out", "box_Simple_Node_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_34_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_28();
    l0 = self.box_ProximityRadiusListener_v3_34;
    l1 = self.box_Gate_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|58610107", "58610107", "UNI04_005_Progress_OMNI", "box_ProximityRadiusListener_v3_34.SomeoneNear", "box_Gate_v3_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|668451441", "668451441", "UNI04_005_Progress_OMNI", "box_Simple_Node_44.Out", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ProximityTrigger_v2_36_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_31();
    l0 = self.box_ProximityTrigger_v2_36;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|2135386617", "2135386617", "UNI04_005_Progress_OMNI", "box_ProximityTrigger_v2_36.Enter", "box_GetPawnVehicleInfo_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|2059420913", "2059420913", "UNI04_005_Progress_OMNI", "box_Simple_Node_43.Out", "box_Simple_Node_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_46_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = self.box_Delay_v5_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|410518826", "410518826", "UNI04_005_Progress_OMNI", "box_Delay_v5_46.TimeElapsed", "box_OutputOrder_v2_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_23_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_20();
    l0 = self.box_EntityStatusListener_23;
    l1 = self.box_StaticBreakableListener_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|52643953", "52643953", "UNI04_005_Progress_OMNI", "box_EntityStatusListener_23.Loaded", "box_StaticBreakableListener_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Strings_32_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|187134078", "187134078", "UNI04_005_Progress_OMNI", "box_Compare_Strings_32.A_neq_B", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_42_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_34();
    l0 = self.box_OnceOnly_v3_42;
    l1 = self.box_ProximityRadiusListener_v3_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1224134873", "1224134873", "UNI04_005_Progress_OMNI", "box_OnceOnly_v3_42.Out", "box_ProximityRadiusListener_v3_34.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_3();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1562567664", "1562567664", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_26.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_3.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|23873255", "23873255", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_26.Out", "box_MultipleAND_v2_21.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleAND_v2_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_MultipleAND_v2_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|2115474241", "2115474241", "UNI04_005_Progress_OMNI", "box_MultipleAND_v2_21.Out", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_50();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|545605013", "545605013", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_35.Out", "box_GetActivityState_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_36();
    l0 = self.box_ProximityTrigger_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1894623787", "1894623787", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_35.Out", "box_ProximityTrigger_v2_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_35_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_MAIN_8();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|2037619238", "2037619238", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_35.Out", "box_Brick_Destroy_ObjectsVehicles_MAIN_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_11();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|592702622", "592702622", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_25.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|591787422", "591787422", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_25.Out", "box_OutputOrder_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_28_Closed()
    local params, l0, l1;
    params = self:OnEnter_box__UNI04_005_B30_TakeControl_29();
    l0 = self.box_Gate_v3_28;
    l1 = self.box__UNI04_005_B30_TakeControl_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|85813932", "85813932", "UNI04_005_Progress_OMNI", "box_Gate_v3_28.Closed", "box__UNI04_005_B30_TakeControl_29.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box__UNI04_005_B30_TakeControl_29();
    l0 = self.box_Gate_v3_28;
    l1 = self.box__UNI04_005_B30_TakeControl_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1696212331", "1696212331", "UNI04_005_Progress_OMNI", "box_Gate_v3_28.Out", "box__UNI04_005_B30_TakeControl_29.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_49_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_48();
    l0 = self.box_EntityStatusListener_49;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|38802185", "38802185", "UNI04_005_Progress_OMNI", "box_EntityStatusListener_49.Loaded", "box_StaticBreakableBreaker_48.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_20_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_StaticBreakableListener_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|751480553", "751480553", "UNI04_005_Progress_OMNI", "box_StaticBreakableListener_20.OnBreak", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|2070575061", "2070575061", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_22.Out", "box_MultipleAND_v2_21.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_3();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1831692713", "1831692713", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_22.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_37_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_45();
    l0 = self.box_EntityStatusListener_37;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1732669869", "1732669869", "UNI04_005_Progress_OMNI", "box_EntityStatusListener_37.Loaded", "box_StaticBreakableBreaker_45.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_38_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_33();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|138418125", "138418125", "UNI04_005_Progress_OMNI", "box_Compare_Strings_38.A_eq_B", "box_Compare_Entity_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_38_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_32();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|598124504", "598124504", "UNI04_005_Progress_OMNI", "box_Compare_Strings_38.A_neq_B", "box_Compare_Strings_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|118055356", "118055356", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_41.Out", "box_Simple_Node_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1312703071", "1312703071", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_41.Out", "box_ActivityEnd_19.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_27();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|185030581", "185030581", "UNI04_005_Progress_OMNI", "box_ActivityInitialized_2.Out", "box_GetPlayerGroup_v2_27.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_24();
    l0 = self.box_EntityStatusListener_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|377027203", "377027203", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_17.Out", "box_EntityStatusListener_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_11();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1171085803", "1171085803", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_17.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1507391861", "1507391861", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_9.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1733842383", "1733842383", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_9.Out", "box_ActivityAcknowledgeGate_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_GetActivityState_v2_50_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|780551486", "780551486", "UNI04_005_Progress_OMNI", "box_GetActivityState_v2_50.Completed", "box_OutputOrder_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_46();
    l0 = self.box_Delay_v5_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|314798371", "314798371", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_51.Out", "box_Delay_v5_46.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityAcknowledgeGate_12_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_12;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|2137871533", "2137871533", "UNI04_005_Progress_OMNI", "box_ActivityAcknowledgeGate_12.Acknowledged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_12_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_12;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1759833146", "1759833146", "UNI04_005_Progress_OMNI", "box_ActivityAcknowledgeGate_12.Reloaded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Entity_33_NotEqual()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1791222012", "1791222012", "UNI04_005_Progress_OMNI", "box_Compare_Entity_33.NotEqual", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Destroy_ObjectsVehicles_MAIN_8_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1159058698", "1159058698", "UNI04_005_Progress_OMNI", "box_Brick_Destroy_ObjectsVehicles_MAIN_8.Started", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Destroy_ObjectsVehicles_MAIN_8_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1859478148", "1859478148", "UNI04_005_Progress_OMNI", "box_Brick_Destroy_ObjectsVehicles_MAIN_8.Success", "box_OutputOrder_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_10();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|480647994", "480647994", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_13.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_6();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1319128181", "1319128181", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_13.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_5();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|848436795", "848436795", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_13.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_37();
    l0 = self.box_EntityStatusListener_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1495146679", "1495146679", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_47.Out", "box_EntityStatusListener_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_49();
    l0 = self.box_EntityStatusListener_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|602181265", "602181265", "UNI04_005_Progress_OMNI", "box_OutputOrder_v2_47.Out", "box_EntityStatusListener_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_24_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_16();
    l0 = self.box_EntityStatusListener_24;
    l1 = self.box_StaticBreakableListener_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|789260420", "789260420", "UNI04_005_Progress_OMNI", "box_EntityStatusListener_24.Loaded", "box_StaticBreakableListener_16.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_27_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_27_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1667460155", "1667460155", "UNI04_005_Progress_OMNI", "box_GetPlayerGroup_v2_27.Out", "box_OutputOrder_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|@n_CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_40_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__UNI04_005_B30_TakeControl_29()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- e_MobileObjectiveMarker,
        [1] = "2104270343559482497",
        -- e_Vehicle,
        [2] = "2102585337600552474",
        -- hasObjective,
        [3] = true,
        -- o_Objective,
        [4] = {
            section = "Objectives",
            item = "UNI04_005_B30_ClimbIn",
            id = "820198",
        },
        -- opt_FailReason,
        [5] = {
            section = "Objectives",
            item = "UNI04_005_FAIL_Copter",
            id = "730048",
        },
        -- opt_MarkerBone,
        [6] = "DRIVER_SITPOINT",
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|85694552");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_31_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_31_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_31_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_16()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2102597473978595731",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_5()
    local params;
    params = {
        -- Entity,
        [0] = "2102724905916204752",
        -- fMarkerHeight,
        [1] = 0.5,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI04_005_B10_OBJ",
            id = "730044",
        },
        -- Mobile_Marker,
        [3] = "2102724921068127964",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_10()
    local params;
    params = {
        -- Entity,
        [0] = "2102597660660775363",
        -- fMarkerHeight,
        [1] = 0.5,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI04_005_B10_OBJ",
            id = "730044",
        },
        -- Mobile_Marker,
        [3] = "2102629309651885231",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_6()
    local params;
    params = {
        -- Entity,
        [0] = "2102724911440103122",
        -- fMarkerHeight,
        [1] = 0.5,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI04_005_B10_OBJ",
            id = "730044",
        },
        -- Mobile_Marker,
        [3] = "2102724918283110104",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|165167002");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_3()
    local params;
    params = {
        -- Entity,
        [0] = "2102597591228266943",
        -- fMarkerHeight,
        [1] = 0.5,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI04_005_B10_OBJ",
            id = "730044",
        },
        -- Mobile_Marker,
        [3] = "2102629287770201255",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|357602643");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_14_Out,
    });
    params = {
        -- Message,
        [0] = "uni04_destroy_started",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_34()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.g_PlayerGroup,
        -- id2,
        [3] = "2102807223620104853",
        -- nearZone,
        [4] = 32,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|381796370");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|389600006");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_36()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#FD83C1A4",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102998694958769110",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_43()
    local params, l0;
    DrawTextToScreen("Comment: Not In Vehicle", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Not In Vehicle");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|462023394");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_46()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|476316796");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_23()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102597591228266943",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_32()
    local params, l0;
    DrawTextToScreen("Comment: In Plane?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Compare Strings')-- Comment: In Plane?");
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|500544654");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_32_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_31,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|738474953");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2102597473978595731",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|792039736");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_21()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|943782763");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
                [2] = self.f_box_OutputOrder_v2_35_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|944074513");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_28()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_49()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102597591228266943",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1204402157");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2102597591228266943",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2102597591228266943",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1300047133");
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

function export:OnEnter_box_EntityStatusListener_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102597473978595731",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_38()
    local params, l0;
    DrawTextToScreen("Comment: In Copter?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Compare Strings')-- Comment: In Copter?");
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1384620021");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_38_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_38_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_31,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1495011075");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_11()
    local params;
    params = {
        -- Entity,
        [0] = "2102597473978595731",
        -- fMarkerHeight,
        [1] = 0.5,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI04_005_B10_OBJ",
            id = "730044",
        },
        -- Mobile_Marker,
        [3] = "2102629298776054955",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1537131843");
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

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1594710126");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1607104835");
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

function export:OnEnter_box_GetActivityState_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1621491947");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_50_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015265931047268",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1691754090");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1801616410");
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
        [8] = "--- UNI04_005_Progress_Omni SCRIPT IS RUNNING ---",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_33()
    local params, l0;
    DrawTextToScreen("Comment: In Larry copter?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Compare Entity')-- Comment: In Larry copter?");
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1812552850");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_33_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = "2102585337600552474",
        -- Entity2,
        [1] = self._sld_vehicle_box_GetPawnVehicleInfo_31,
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_MAIN_8()
    local params;
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- Destroy_Group,
        [1] = "#968DC9E1",
        -- has_ProgressBar,
        [2] = false,
        -- Mission_Objective,
        [3] = {
            section = "Objectives",
            item = "UNI04_005_B10_OBJ",
            id = "730044",
        },
        -- Success_Percentage,
        [5] = 100,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|1992947132");
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

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|2016658359");
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
                [0] = self.f_box_OutputOrder_v2_47_Out_0,
                [1] = self.f_box_OutputOrder_v2_47_Out_1,
            },
            count = 2,
        },
    });
    params = {
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
        [2] = "2102597473978595731",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_005\\UNI04_005_Progress_OMNI.domino|@UNI04_005_Progress_OMNI|2095076866");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetPawnVehicleInfo_31_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_31 = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_31 = l0:GetDataOutValue(3);
    self._sld_vehicleType_box_GetPawnVehicleInfo_31 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_31_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_31 = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_31 = l0:GetDataOutValue(3);
    self._sld_vehicleType_box_GetPawnVehicleInfo_31 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_31 = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_31 = l0:GetDataOutValue(3);
    self._sld_vehicleType_box_GetPawnVehicleInfo_31 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPlayerGroup_v2_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.g_PlayerGroup = l0:GetDataOutValue(0);
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
