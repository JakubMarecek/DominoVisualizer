LUAC/� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni25/uni25_010_b30.domino
-- User graph: UNI25_010_B30
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="VehicleType" Type="Core|string" />
</InputReflection> 
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/ListReader.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3670420676.bnk]], "CSoundResource");
        cboxRes:LoadResource([[824559830.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2510863101.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1421213861.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI25/UNI25_010_B30.UNI25_010_B30.debug.lua")] = {
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
            [0] = {
                name = "VehicleType",
                type = "string",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/ListReader.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Read",
            },
            [1] = {
                name = "ResetRead",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EndOfList",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
            },
            [1] = {
                name = "Input",
                type = "list",
            },
            [2] = {
                name = "Loop",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "CursorPos",
                type = "int",
            },
            [1] = {
                name = "Data",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI25_010_B30";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30";
    self.eKanti = nil;
    self.player = nil;
    self.eNitroBoss = nil;
    self.PlayerGroup = nil;
    self.eTruck = nil;
    self.sVehicleType = "";
    self.VehicleTypes = "Helicopter";
    self.box_SpawnAI_31 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|69955245");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_37 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|79486782");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_37_Loaded,
    });
    self.box_RequestPhoneCall_v2_36 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|116696923");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|230391796");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|261277200");
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
    self.box_ProximityRadiusListener_v3_70 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|334724062");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_70_SomeoneNear,
    });
    self.box_Music_Quest_v2_62 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|390373450");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_34 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|428818053");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_34_AllNear,
    });
    self.box_RemoveEntity_v2_60 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|472224478");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_60_Out,
    });
    self.box_EntityStatusListener_57 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|481252653");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_57_Unloaded,
    });
    self.box_SpawnAI_29 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|547238420");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_64 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|684920924");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_68 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|863451211");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_68_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_46 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|939807828");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_46_AllNear,
    });
    self.box_RequestPhoneCall_v2_9 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|947394337");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_24 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|985949055");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_24_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_24_Unloaded,
    });
    self.box_ProximityRadiusListener_v3_13 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1034185551");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_13_AllNear,
    });
    self.box_ProximityRadiusListener_v3_59 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1040847870");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_59_AllNear,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_59_Enabled,
    });
    self.box_DisplayCustomUIMsg_v5_35 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1100192518");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_35_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v5_35_OnHide,
    });
    self.box_SpawnAI_71 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1185721987");
    l0:SetConnections({
    });
    self.box_ListReader_41 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1233793274");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_41_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_41_Out,
    });
    self.box_Music_Quest_v2_67 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1317232727");
    l0:SetConnections({
    });
    self.box_SpawnAI_30 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1362821496");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_30_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_30_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_30_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_30_Success,
    });
    self.box_SpawnAI_53 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1449711383");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_32 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1465058280");
    l0:SetConnections({
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1569822131");
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
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1726005733");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1728571351");
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
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1746991482");
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
        [0] = self.f_box_MultipleOR_58_Out,
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1792105399");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1835091338");
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
    self.box_Music_Quest_v2_66 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1872138754");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_55 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1917449294");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_55_Out,
    });
    self.box_Gate_v3_73 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1934023665");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_73_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_73_Out,
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1937249757");
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
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1994584415");
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
        [0] = self.f_box_MultipleOR_22_Out,
    });
    self.box_Delay_v5_26 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|2033049167");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_26_Started,
        -- Stopped,
        [4] = self.f_box_Delay_v5_26_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_26_TimeElapsed,
    });
    self.box_Music_Quest_v2_69 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|2043684841");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_MAIN_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_MAIN.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_MAIN_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|2091565207");
    l0:SetConnections({
        -- ExtraMarkers,
        [1] = self.f_box_Brick_Destroy_ObjectsVehicles_MAIN_8_ExtraMarkers,
        -- Started,
        [3] = self.f_box_Brick_Destroy_ObjectsVehicles_MAIN_8_Started,
        -- Success,
        [4] = self.f_box_Brick_Destroy_ObjectsVehicles_MAIN_8_Success,
    });
    self.box_ProximityRadiusListener_v3_17 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|2115874210");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_17_AllFar,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_17_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_17_SomeoneNear,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1620705081", "1620705081", "UNI25_010_B30", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_GetPawnVehicleInfo_54_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_54_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_53();
    l0 = self.box_SpawnAI_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|887411170", "887411170", "UNI25_010_B30", "box_GetPawnVehicleInfo_54.InVehicle", "box_SpawnAI_53.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_54_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_54_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_54_Out()
    self:OnExit_box_GetPawnVehicleInfo_54_Out();
end;

function export:f_box_EntityStatusListener_37_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_37;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|468902899", "468902899", "UNI25_010_B30", "box_EntityStatusListener_37.Loaded", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|850246436", "850246436", "UNI25_010_B30", "box_OutputOrder_v2_65.Out", "box_OutputOrder_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_70();
    l0 = self.box_ProximityRadiusListener_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1358102800", "1358102800", "UNI25_010_B30", "box_OutputOrder_v2_65.Out", "box_ProximityRadiusListener_v3_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_69();
    l0 = self.box_Music_Quest_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|2019543872", "2019543872", "UNI25_010_B30", "box_OutputOrder_v2_15.Out", "box_Music_Quest_v2_69.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_55();
    l0 = self.box_RemoveEntity_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1650388644", "1650388644", "UNI25_010_B30", "box_OutputOrder_v2_15.Out", "box_RemoveEntity_v2_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|287333894", "287333894", "UNI25_010_B30", "box_OutputOrder_v2_15.Out", "box_Print_v2_10.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_73();
    l0 = self.box_Gate_v3_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|170715542", "170715542", "UNI25_010_B30", "box_OutputOrder_v2_15.Out", "box_Gate_v3_73.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1963129444", "1963129444", "UNI25_010_B30", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|833122118", "833122118", "UNI25_010_B30", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_MAIN_8();
    l0 = self.box_MultipleOR_42;
    l1 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1781854375", "1781854375", "UNI25_010_B30", "box_MultipleOR_42.Out", "box_Brick_Destroy_ObjectsVehicles_MAIN_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_70_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_64();
    l0 = self.box_ProximityRadiusListener_v3_70;
    l1 = self.box_Music_Quest_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|967648060", "967648060", "UNI25_010_B30", "box_ProximityRadiusListener_v3_70.SomeoneNear", "box_Music_Quest_v2_64.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_34_AllNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_34;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|2031701019", "2031701019", "UNI25_010_B30", "box_ProximityRadiusListener_v3_34.AllNear", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetPawnVehicleInfo_33_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_33_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_46();
    l0 = self.box_ProximityRadiusListener_v3_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|777070982", "777070982", "UNI25_010_B30", "box_GetPawnVehicleInfo_33.InVehicle", "box_ProximityRadiusListener_v3_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_33_NotInVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_33_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1393003218", "1393003218", "UNI25_010_B30", "box_GetPawnVehicleInfo_33.NotInVehicle", "box_OutputOrder_v2_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_33_Out()
    self:OnExit_box_GetPawnVehicleInfo_33_Out();
end;

function export:f_box_RemoveEntity_v2_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_1();
    l0 = self.box_RemoveEntity_v2_60;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1009564441", "1009564441", "UNI25_010_B30", "box_RemoveEntity_v2_60.Out", "box_ActivityEnd_1.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_57_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_57;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|69762339", "69762339", "UNI25_010_B30", "box_EntityStatusListener_57.Unloaded", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|2027822831", "2027822831", "UNI25_010_B30", "box_OutputOrder_v2_23.Out", "box_Delay_v5_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_57();
    l0 = self.box_EntityStatusListener_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1227546800", "1227546800", "UNI25_010_B30", "box_OutputOrder_v2_23.Out", "box_EntityStatusListener_57.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_74();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1333614633", "1333614633", "UNI25_010_B30", "box_OutputOrder_v2_23.Out", "box_VehicleSeatModifier_v2_74.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_43_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_43_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_28();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|701634863", "701634863", "UNI25_010_B30", "box_SetEntity_v2_43.Out", "box_IsEntityLoaded_v3_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_18_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_18_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_38();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|917748184", "917748184", "UNI25_010_B30", "box_GetPlayerGroup_v2_18.Out", "box_IsEntityLoaded_v3_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_28_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_24();
    l0 = self.box_EntityStatusListener_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|730069768", "730069768", "UNI25_010_B30", "box_IsEntityLoaded_v3_28.False", "box_EntityStatusListener_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_28_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1450961165", "1450961165", "UNI25_010_B30", "box_IsEntityLoaded_v3_28.True", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_32();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|374361595", "374361595", "UNI25_010_B30", "box_Simple_Node_16.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_68_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_66();
    l0 = self.box_ProximityRadiusListener_v3_68;
    l1 = self.box_Music_Quest_v2_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1550385209", "1550385209", "UNI25_010_B30", "box_ProximityRadiusListener_v3_68.SomeoneNear", "box_Music_Quest_v2_66.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_46_AllNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_46;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|253912374", "253912374", "UNI25_010_B30", "box_ProximityRadiusListener_v3_46.AllNear", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_24_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_24;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|402361742", "402361742", "UNI25_010_B30", "box_EntityStatusListener_24.Loaded", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_24_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_20();
    l0 = self.box_EntityStatusListener_24;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|268899157", "268899157", "UNI25_010_B30", "box_EntityStatusListener_24.Unloaded", "box_ActivityRetry_20.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_13_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_33();
    l0 = self.box_ProximityRadiusListener_v3_13;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1651028409", "1651028409", "UNI25_010_B30", "box_ProximityRadiusListener_v3_13.AllNear", "box_GetPawnVehicleInfo_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_59_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_ProximityRadiusListener_v3_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|2112220266", "2112220266", "UNI25_010_B30", "box_ProximityRadiusListener_v3_59.AllNear", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_59_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_68();
    l0 = self.box_ProximityRadiusListener_v3_59;
    l1 = self.box_ProximityRadiusListener_v3_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|910152828", "910152828", "UNI25_010_B30", "box_ProximityRadiusListener_v3_59.Enabled", "box_ProximityRadiusListener_v3_68.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_DisplayCustomUIMsg_v5_35_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_9();
    l0 = self.box_DisplayCustomUIMsg_v5_35;
    l1 = self.box_RequestPhoneCall_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|520296178", "520296178", "UNI25_010_B30", "box_DisplayCustomUIMsg_v5_35.OnDisplay", "box_RequestPhoneCall_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_DisplayCustomUIMsg_v5_35_OnHide()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_73();
    l0 = self.box_DisplayCustomUIMsg_v5_35;
    l1 = self.box_Gate_v3_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|2025804219", "2025804219", "UNI25_010_B30", "box_DisplayCustomUIMsg_v5_35.OnHide", "box_Gate_v3_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ListReader_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_43();
    l0 = self.box_ListReader_41;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|251207598", "251207598", "UNI25_010_B30", "box_ListReader_41.Out", "box_SetEntity_v2_43.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1030262205", "1030262205", "UNI25_010_B30", "box_OutputOrder_v2_2.Out", "box_ActivityAcknowledgeGate_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|44098791", "44098791", "UNI25_010_B30", "box_OutputOrder_v2_2.Out", "box_Print_v2_7.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_38_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_37();
    l0 = self.box_EntityStatusListener_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1975611918", "1975611918", "UNI25_010_B30", "box_IsEntityLoaded_v3_38.False", "box_EntityStatusListener_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_38_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1817494886", "1817494886", "UNI25_010_B30", "box_IsEntityLoaded_v3_38.True", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_30_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_30_Spawned();
    params = self:OnEnter_box_OutputOrder_v2_72();
    l0 = self.box_SpawnAI_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1295033743", "1295033743", "UNI25_010_B30", "box_SpawnAI_30.Spawned", "box_OutputOrder_v2_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_62();
    l0 = self.box_Music_Quest_v2_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1066131481", "1066131481", "UNI25_010_B30", "box_OutputOrder_v2_63.Out", "box_Music_Quest_v2_62.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_18();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1903143046", "1903143046", "UNI25_010_B30", "box_OutputOrder_v2_63.Out", "box_GetPlayerGroup_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_17();
    l0 = self.box_MultipleOR_25;
    l1 = self.box_ProximityRadiusListener_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1282748508", "1282748508", "UNI25_010_B30", "box_MultipleOR_25.Out", "box_ProximityRadiusListener_v3_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1476503572", "1476503572", "UNI25_010_B30", "box_Simple_Node_14.Out", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1948079084", "1948079084", "UNI25_010_B30", "box_ActivityInitialized_3.Out", "box_OutputOrder_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1566743638", "1566743638", "UNI25_010_B30", "box_MultipleOR_4.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_67();
    l0 = self.box_Music_Quest_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|2018134997", "2018134997", "UNI25_010_B30", "box_OutputOrder_v2_61.Out", "box_Music_Quest_v2_67.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|178665156", "178665156", "UNI25_010_B30", "box_OutputOrder_v2_61.Out", "box_ActivityRetry_19.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_MultipleOR_58;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|471711786", "471711786", "UNI25_010_B30", "box_MultipleOR_58.Out", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_59();
    l0 = self.box_Delay_v5_12;
    l1 = self.box_ProximityRadiusListener_v3_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|162897694", "162897694", "UNI25_010_B30", "box_Delay_v5_12.TimeElapsed", "box_ProximityRadiusListener_v3_59.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_MultipleOR_27;
    l1 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1042744064", "1042744064", "UNI25_010_B30", "box_MultipleOR_27.Out", "box_Delay_v5_26.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_RemoveEntity_v2_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_60();
    l0 = self.box_RemoveEntity_v2_55;
    l1 = self.box_RemoveEntity_v2_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|2086829897", "2086829897", "UNI25_010_B30", "box_RemoveEntity_v2_55.Out", "box_RemoveEntity_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_73_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_17();
    l0 = self.box_Gate_v3_73;
    l1 = self.box_ProximityRadiusListener_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|741688668", "741688668", "UNI25_010_B30", "box_Gate_v3_73.Closed", "box_ProximityRadiusListener_v3_17.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_73_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_73;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1215722926", "1215722926", "UNI25_010_B30", "box_Gate_v3_73.Out", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_13();
    l0 = self.box_MultipleOR_39;
    l1 = self.box_ProximityRadiusListener_v3_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|504990350", "504990350", "UNI25_010_B30", "box_MultipleOR_39.Out", "box_ProximityRadiusListener_v3_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_34();
    l0 = self.box_ProximityRadiusListener_v3_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1628843354", "1628843354", "UNI25_010_B30", "box_OutputOrder_v2_52.Out", "box_ProximityRadiusListener_v3_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_51();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|278199106", "278199106", "UNI25_010_B30", "box_OutputOrder_v2_52.Out", "box_Print_v2_51.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_MultipleOR_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1593864816", "1593864816", "UNI25_010_B30", "box_MultipleOR_22.Out", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_26_Started()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_35();
    l0 = self.box_Delay_v5_26;
    l1 = self.box_DisplayCustomUIMsg_v5_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1700048891", "1700048891", "UNI25_010_B30", "box_Delay_v5_26.Started", "box_DisplayCustomUIMsg_v5_35.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_26_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_35();
    l0 = self.box_Delay_v5_26;
    l1 = self.box_DisplayCustomUIMsg_v5_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1212848417", "1212848417", "UNI25_010_B30", "box_Delay_v5_26.Stopped", "box_DisplayCustomUIMsg_v5_35.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_26_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_26;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1180865460", "1180865460", "UNI25_010_B30", "box_Delay_v5_26.TimeElapsed", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_29();
    l0 = self.box_SpawnAI_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|677309275", "677309275", "UNI25_010_B30", "box_OutputOrder_v2_40.Out", "box_SpawnAI_29.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_30();
    l0 = self.box_SpawnAI_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|80024120", "80024120", "UNI25_010_B30", "box_OutputOrder_v2_40.Out", "box_SpawnAI_30.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_40_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_31();
    l0 = self.box_SpawnAI_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|515276069", "515276069", "UNI25_010_B30", "box_OutputOrder_v2_40.Out", "box_SpawnAI_31.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_40_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_54();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|980651552", "980651552", "UNI25_010_B30", "box_OutputOrder_v2_40.Out", "box_GetPawnVehicleInfo_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_72_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReader_41();
    l0 = self.box_ListReader_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1705957358", "1705957358", "UNI25_010_B30", "box_OutputOrder_v2_72.Out", "box_ListReader_41.Read", clone:GetLuaBox(), l0:GetLuaBox());
    -- Read
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_72_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_71();
    l0 = self.box_SpawnAI_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|198064406", "198064406", "UNI25_010_B30", "box_OutputOrder_v2_72.Out", "box_SpawnAI_71.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Brick_Destroy_ObjectsVehicles_MAIN_8_ExtraMarkers()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_8;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|242269883", "242269883", "UNI25_010_B30", "box_Brick_Destroy_ObjectsVehicles_MAIN_8.ExtraMarkers", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Destroy_ObjectsVehicles_MAIN_8_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|208554525", "208554525", "UNI25_010_B30", "box_Brick_Destroy_ObjectsVehicles_MAIN_8.Started", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Destroy_ObjectsVehicles_MAIN_8_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_14();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_8;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1721453555", "1721453555", "UNI25_010_B30", "box_Brick_Destroy_ObjectsVehicles_MAIN_8.Success", "box_Simple_Node_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_17_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_ProximityRadiusListener_v3_17;
    l1 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|922758359", "922758359", "UNI25_010_B30", "box_ProximityRadiusListener_v3_17.AllFar", "box_Delay_v5_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_17_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_17;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|106763728", "106763728", "UNI25_010_B30", "box_ProximityRadiusListener_v3_17.Disabled", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_17_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_17;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1676062598", "1676062598", "UNI25_010_B30", "box_ProximityRadiusListener_v3_17.SomeoneNear", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1988978168", "1988978168", "UNI25_010_B30", "box_OutputOrder_v2_56.Out", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_56_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_36();
    l0 = self.box_RequestPhoneCall_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1480362207", "1480362207", "UNI25_010_B30", "box_OutputOrder_v2_56.Out", "box_RequestPhoneCall_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:OnEnter_box_GetPawnVehicleInfo_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|38091989");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_54_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_54_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_54_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_31()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101741788021690514",
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
        [2] = "2103705109918655116",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|79718508");
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

function export:OnEnter_box_ActivityEnd_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|92717104");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_36()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "824559830",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|147240196");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
                [2] = self.f_box_OutputOrder_v2_15_Out_2,
                [3] = self.f_box_OutputOrder_v2_15_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|207412793");
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
        [8] = "UNI25_010_B30 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_70()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.PlayerGroup,
        -- id2,
        [3] = "2103705109918655116",
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_62()
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
        [6] = "1421213861",
        -- StopEvent,
        [7] = "2510863101",
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

function export:OnEnter_box_ProximityRadiusListener_v3_34()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.PlayerGroup,
        -- id2,
        [3] = "2103705109918655116",
        -- nearZone,
        [4] = 75,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|444080895");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_33_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_33_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_33_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|456499589");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "No Vehicle",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_60()
    local params;
    params = {
        -- Group,
        [0] = "2103278244942847148",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|473385889");
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

function export:OnEnter_box_EntityStatusListener_57()
    local params;
    DrawTextToScreen("Comment: Checking if Truck Despawns", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'EntityStatusListener')-- Comment: Checking if Truck Despawns");
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eTruck,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|486766975");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
                [2] = self.f_box_OutputOrder_v2_23_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|509526423");
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

function export:OnEnter_box_SetEntity_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|537752414");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_43_Out,
    });
    l0 = self.box_ListReader_41;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_29()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103705467244014949",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|582139217");
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
        [8] = "Truck Destroyed",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|657780742");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_64()
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
        [6] = "1421213861",
        -- StopEvent,
        [7] = "2510863101",
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

function export:OnEnter_box_IsEntityLoaded_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|697629027");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_28_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_28_True,
    });
    params = {
        -- entityId,
        [0] = self.eTruck,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_16()
    local params, l0;
    DrawTextToScreen("Comment: ExtraMarkers", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: ExtraMarkers");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|741380734");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_74()
    local params, l0;
    DrawTextToScreen("Comment: Drivers Seat", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'VehicleSeatModifier_v2')-- Comment: Drivers Seat");
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|799428318");
    l0:SetConnections({
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
        [4] = self.eTruck,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_68()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.PlayerGroup,
        -- id2,
        [3] = self.eTruck,
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_46()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.PlayerGroup,
        -- id2,
        [3] = "2103705109918655116",
        -- nearZone,
        [4] = 120,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_9()
    local params;
    params = {
        -- Delay,
        [2] = 3,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3670420676",
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
        [2] = self.eTruck,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.PlayerGroup,
        -- id2,
        [3] = "2103705109918655116",
        -- nearZone,
        [4] = 149,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_59()
    local params;
    DrawTextToScreen("Comment: Prox for Truck Close VO Message", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityRadiusListener_v3')-- Comment: Prox for Truck Close VO Message");
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.PlayerGroup,
        -- id2,
        [3] = self.eTruck,
        -- nearZone,
        [4] = 70,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_35()
    local params;
    DrawTextToScreen("Comment: Warning Message", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DisplayCustomUIMsg_v5')-- Comment: Warning Message");
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "UNI25_010_B30_Warning",
            id = "837914",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = self.PlayerGroup,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_71()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104647279158768790",
    };
    return params;
end;

function export:OnEnter_box_ListReader_41()
    local params, l0;
    l0 = self.box_SpawnAI_30;
    params = {
        -- Index,
        [0] = 1,
        -- Input,
        [1] = l0:GetDataOutValue(1),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1259065935");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1274144077");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_38_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_38_True,
    });
    params = {
        -- entityId,
        [0] = "2103705109918655116",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_67()
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
        [6] = "1421213861",
        -- StopEvent,
        [7] = "2510863101",
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

function export:OnEnter_box_SpawnAI_30()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101717214198550509",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_53()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103800487624092526",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_32()
    local params;
    params = {
        -- Entity,
        [0] = self.eTruck,
        -- fMarkerHeight,
        [1] = 2.5,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI25_010_B20_DestroyTruck",
            id = "461448",
        },
        -- Mobile_Marker,
        [3] = "2101729489059893325",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1493536380");
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
                [0] = self.f_box_OutputOrder_v2_63_Out_0,
                [1] = self.f_box_OutputOrder_v2_63_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_14()
    local params, l0;
    DrawTextToScreen("Comment: Success", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Success");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1623506009");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1729961422");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
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
        [2] = 2,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1421213861",
        -- StopEvent,
        [7] = "2510863101",
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

function export:OnEnter_box_RemoveEntity_v2_55()
    local params;
    params = {
        -- Group,
        [0] = "2104150233249264448",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_73()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|1980248395");
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
                [0] = self.f_box_OutputOrder_v2_52_Out_0,
                [1] = self.f_box_OutputOrder_v2_52_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_26()
    local params;
    DrawTextToScreen("Comment: Time to Get Near Truck", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Delay_v5')-- Comment: Time to Get Near Truck");
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_69()
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
        [6] = "1421213861",
        -- StopEvent,
        [7] = "2510863101",
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

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|2054264994");
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

function export:OnEnter_box_OutputOrder_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|2057329249");
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
                [0] = self.f_box_OutputOrder_v2_72_Out_0,
                [1] = self.f_box_OutputOrder_v2_72_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_MAIN_8()
    local params;
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- Destroy_Group,
        [1] = "#5DF195A0",
        -- has_ProgressBar,
        [2] = true,
        -- Mission_Objective,
        [3] = {
            section = "Objectives",
            item = "UNI25_010_B20_DestroyTruck",
            id = "461448",
        },
        -- opt_Marker_MissionArea,
        [4] = "2101729489059893325",
        -- Success_Percentage,
        [5] = 100,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_17()
    local params;
    DrawTextToScreen("Comment: Is Player Near Truck?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityRadiusListener_v3')-- Comment: Is Player Near Truck?");
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.PlayerGroup,
        -- farZone,
        [2] = 150,
        -- id2,
        [3] = self.eTruck,
        -- nearZone,
        [4] = 145,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI25\\UNI25_010_B30.domino|@UNI25_010_B30|2131363800");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [2] = self.f_box_OutputOrder_v2_56_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetPawnVehicleInfo_54_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.VehicleTypes = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_54_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.VehicleTypes = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_54_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.VehicleTypes = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_33_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.sVehicleType = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_33_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.sVehicleType = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_33_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.sVehicleType = l0:GetDataOutValue(3);
end;

function export:OnExit_box_SetEntity_v2_43_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTruck = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_30_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_30;
    l1 = self.box_ListReader_41;
    l1:GetLuaBox().Input = l0:GetDataOutValue(1);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="VehicleType" AnchorDynType="0" DataTypeID="string" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
