LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_450/mis_450_b20.domino
-- User graph: MIS_450_B20_graph
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[4026025953.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1304835985.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1070038761.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2343814214.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2820544222.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2604139666.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1622828884.bnk]], "CSoundResource");
        cboxRes:LoadResource([[332501346.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/mis_450/MIS_450_B20.MIS_450_B20_graph.debug.lua")] = {
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
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [10] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 11,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")] = {
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
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener_v2.lua")] = {
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
                type = "genericdb",
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
    metadataTable[GetPathID("Domino/System/GFHSystemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableGFHSystem",
            },
            [1] = {
                name = "EnableGFHSystem",
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
                name = "enableAfterBeat",
                type = "bool",
            },
            [1] = {
                name = "immediateDespawn",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IntegerArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
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
            [0] = {
                name = "Result",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/PositionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "StartOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendCurve",
                type = "archetype",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "endPos",
                type = "list",
            },
            [3] = {
                name = "endRot",
                type = "list",
            },
            [4] = {
                name = "endTarget",
                type = "entity",
            },
            [5] = {
                name = "players",
                type = "group",
            },
            [6] = {
                name = "targets",
                type = "group",
            },
            [7] = {
                name = "usePhysVelocity",
                type = "bool",
            },
            [8] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 9,
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
    metadataTable[GetPathID("Domino/System/ShimmerModifier_v2.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "B",
                type = "float",
            },
            [1] = {
                name = "G",
                type = "float",
            },
            [2] = {
                name = "R",
                type = "float",
            },
            [3] = {
                name = "Speed",
                type = "float",
            },
            [4] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/TeleportPawns.lua")] = {
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
            [0] = {
                name = "ClientDestinationEntity",
                type = "entity",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "LoadingScreen",
                type = "bool",
            },
            [3] = {
                name = "LoadSynch",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "UseBlackScreen",
                type = "bool",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/UniversalInteractionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceInteraction",
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
                name = "Interacted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "disableOnUse",
                type = "bool",
            },
            [1] = {
                name = "displayId",
                type = "oasis",
            },
            [2] = {
                name = "interactor",
                type = "entity",
            },
            [3] = {
                name = "state",
                type = "bool",
            },
            [4] = {
                name = "usableEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UniversalInterationListener.lua")] = {
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
                name = "Interacted",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "usableEntityId",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "entityInteracted",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_450_B20_graph";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph";
    self.Players = nil;
    self.Puzzle1Pressure = 0;
    self.Quebecois = nil;
    self.box_Delay_v5_118 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|20297242");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_118_TimeElapsed,
    });
    self.box_CharacterLoadedIdListener_v2_120 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|25956733");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_120_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_120_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_120_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_120_LoadedIdReceived,
    });
    self.box_UniversalInteractionModifier_v2_92 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|91728073");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_92_Enabled,
    });
    self.box_PositionModifier_v2_142 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|102488082");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_87 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|146604798");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_87_Enabled,
    });
    self.box_SoundModifier_v2_107 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|193950735");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_148 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|200785311");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_101 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|231398775");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_109 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|268285310");
    l0:SetConnections({
    });
    self.box_TeleportPawns_1 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|305444577");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_1_Out,
    });
    self.box_EntityStatusListener_149 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|328270549");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_149_Loaded,
    });
    self.box_Switch_24 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|360871230");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_24_Output_0,
                [1] = self.f_box_Switch_24_Output_1,
            },
            count = 2,
        },
    });
    self.box_CharacterLoadedIdListener_v2_116 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|477482116");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_116_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_116_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_116_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_116_LoadedIdReceived,
    });
    self.box_VisibilityModifier_51 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|486600756");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_102 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|491895621");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_89 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|586377360");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_89_Enabled,
    });
    self.box_GunsForHireSystemModifier_86 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|590937846");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_86_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_91 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|620684694");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_91_Enabled,
    });
    self.box_Music_Quest_v2_85 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|732231128");
    l0:SetConnections({
    });
    self.box_MultipleOR_83 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|762276193");
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
    self.box_UniversalInteractionModifier_v2_90 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|766474594");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_90_Enabled,
    });
    self.box_PositionModifier_v2_144 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|820728193");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_97 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|886535256");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_97_Started,
    });
    self.box_EntityStatusListener_79 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|902684029");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_79_Loaded,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|932006152");
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
    self.box_MultipleOR_113 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|964473187");
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
        [0] = self.f_box_MultipleOR_113_Out,
    });
    self.box_MultipleOR_111 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|984216596");
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
        [0] = self.f_box_MultipleOR_111_Out,
    });
    self.box_ProximityRadiusListener_v3_138 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1009980335");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_138_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_122 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1088490652");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_122_SomeoneNear,
    });
    self.box_SoundModifier_v2_106 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1117108162");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_106_Started,
    });
    self.box_RequestPhoneCall_v2_139 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1172615463");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_110 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1279568734");
    l0:SetConnections({
    });
    self.box_ShimmerModifier_v2_72 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1304463715");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_115 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1317697774");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_95 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1321385361");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_95_Started,
    });
    self.box_Switch_25 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1360698595");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_25_Output_0,
                [1] = self.f_box_Switch_25_Output_1,
            },
            count = 2,
        },
    });
    self.box_UniversalInteractionListener_27 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1503843157");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_27_Interacted,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1515835422");
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
    self.box_UniversalInteractionModifier_v2_88 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1561617365");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_88_Enabled,
    });
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1727705583");
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
    self.box_Delay_v5_147 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1735915445");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_147_TimeElapsed,
    });
    self.box_UniversalInteractionListener_29 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1754819682");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_29_Interacted,
    });
    self.box_EntityStatusListener_7 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1812831851");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_7_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_7_Loaded,
    });
    self.box_GunsForHireSystemModifier_80 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1832421959");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_80_Disabled,
    });
    self.box_SoundModifier_v2_94 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1849778920");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_105 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1874407011");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_108 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1918824197");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_108_Started,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1945744216");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_EntityStatusListener_143 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1977780355");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_143_Loaded,
    });
    self.box_SoundModifier_v2_121 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2040854108");
    l0:SetConnections({
    });
    self.box_ShimmerModifier_v2_73 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2050299696");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2067665976");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_SoundModifier_v2_96 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2143098506");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_150();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2064175944", "2064175944", "MIS_450_B20_graph", "In", "box_OutputOrder_v2_150.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_76_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_28();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|986802109", "986802109", "MIS_450_B20_graph", "box_Simple_Node_76.Out", "box_ParticleSystem_v3_28.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_26();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1862925644", "1862925644", "MIS_450_B20_graph", "box_Simple_Node_76.Out", "box_ParticleSystem_v3_26.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|58659001", "58659001", "MIS_450_B20_graph", "box_Simple_Node_76.Out", "box_OutputOrder_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_UniversalInteractionListener_27();
    l0 = self.box_UniversalInteractionListener_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|228455869", "228455869", "MIS_450_B20_graph", "box_Simple_Node_76.Out", "box_UniversalInteractionListener_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ParticleSystem_v3_11();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|320838508", "320838508", "MIS_450_B20_graph", "box_Simple_Node_76.Out", "box_ParticleSystem_v3_11.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|622595386", "622595386", "MIS_450_B20_graph", "box_Simple_Node_76.Out", "box_MultipleOR_113.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_UniversalInteractionListener_29();
    l0 = self.box_UniversalInteractionListener_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|900432762", "900432762", "MIS_450_B20_graph", "box_Simple_Node_76.Out", "box_UniversalInteractionListener_29.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1737654437", "1737654437", "MIS_450_B20_graph", "box_Simple_Node_76.Out", "box_MultipleOR_83.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_ParticleSystem_v3_33();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1462467922", "1462467922", "MIS_450_B20_graph", "box_Simple_Node_76.Out", "box_ParticleSystem_v3_33.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|131551528", "131551528", "MIS_450_B20_graph", "box_Simple_Node_76.Out", "box_MultipleOR_111.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|797852594", "797852594", "MIS_450_B20_graph", "box_Simple_Node_76.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_126_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_54();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1572795706", "1572795706", "MIS_450_B20_graph", "box_Simple_Node_126.Out", "box_ParticleSystem_v3_54.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_124();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2092905935", "2092905935", "MIS_450_B20_graph", "box_Simple_Node_126.Out", "box_ParticleSystem_v3_124.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_45();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|285183583", "285183583", "MIS_450_B20_graph", "box_Simple_Node_126.Out", "box_ParticleSystem_v3_45.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_47();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|847022402", "847022402", "MIS_450_B20_graph", "box_Simple_Node_126.Out", "box_ParticleSystem_v3_47.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_125_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_124();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1067153994", "1067153994", "MIS_450_B20_graph", "box_Simple_Node_125.Out", "box_ParticleSystem_v3_124.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_54();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|209853740", "209853740", "MIS_450_B20_graph", "box_Simple_Node_125.Out", "box_ParticleSystem_v3_54.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_45();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|224322257", "224322257", "MIS_450_B20_graph", "box_Simple_Node_125.Out", "box_ParticleSystem_v3_45.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ParticleSystem_v3_47();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|561199613", "561199613", "MIS_450_B20_graph", "box_Simple_Node_125.Out", "box_ParticleSystem_v3_47.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_50_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_104();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1261222059", "1261222059", "MIS_450_B20_graph", "box_Simple_Node_50.Out", "box_Compare_Integers_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Compare_Integers_43();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1321848309", "1321848309", "MIS_450_B20_graph", "box_Simple_Node_50.Out", "box_Compare_Integers_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Compare_Integers_103();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|252703908", "252703908", "MIS_450_B20_graph", "box_Simple_Node_50.Out", "box_Compare_Integers_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Compare_Integers_48();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|297683536", "297683536", "MIS_450_B20_graph", "box_Simple_Node_50.Out", "box_Compare_Integers_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_118_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_116();
    l0 = self.box_Delay_v5_118;
    l1 = self.box_CharacterLoadedIdListener_v2_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1185783717", "1185783717", "MIS_450_B20_graph", "box_Delay_v5_118.TimeElapsed", "box_CharacterLoadedIdListener_v2_116.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_120_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_122();
    l0 = self.box_CharacterLoadedIdListener_v2_120;
    l1 = self.box_ProximityRadiusListener_v3_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1325706689", "1325706689", "MIS_450_B20_graph", "box_CharacterLoadedIdListener_v2_120.Enabled", "box_ProximityRadiusListener_v3_122.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_120_LoadedIdReceived()
    self:OnExit_box_CharacterLoadedIdListener_v2_120_LoadedIdReceived();
end;

function export:f_box_UniversalInteractionModifier_v2_92_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = self.box_UniversalInteractionModifier_v2_92;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1629570959", "1629570959", "MIS_450_B20_graph", "box_UniversalInteractionModifier_v2_92.Enabled", "box_OutputOrder_v2_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_132_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_133();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1236416219", "1236416219", "MIS_450_B20_graph", "box_ParticleSystem_v3_132.Started", "box_ParticleSystem_v3_133.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_87_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_114();
    l0 = self.box_UniversalInteractionModifier_v2_87;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1373551033", "1373551033", "MIS_450_B20_graph", "box_UniversalInteractionModifier_v2_87.Enabled", "box_OutputOrder_v2_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2050226488", "2050226488", "MIS_450_B20_graph", "box_OutputOrder_v2_13.Out", "box_OutputOrder_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_7();
    l0 = self.box_EntityStatusListener_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1841850048", "1841850048", "MIS_450_B20_graph", "box_OutputOrder_v2_13.Out", "box_EntityStatusListener_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_120();
    l0 = self.box_CharacterLoadedIdListener_v2_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2054364672", "2054364672", "MIS_450_B20_graph", "box_OutputOrder_v2_13.Out", "box_CharacterLoadedIdListener_v2_120.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_85();
    l0 = self.box_Music_Quest_v2_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1097283718", "1097283718", "MIS_450_B20_graph", "box_OutputOrder_v2_13.Out", "box_Music_Quest_v2_85.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_99_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_30();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|620952867", "620952867", "MIS_450_B20_graph", "box_OutputOrder_v2_99.Out", "box_ParticleSystem_v3_30.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_95();
    l0 = self.box_SoundModifier_v2_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|563348768", "563348768", "MIS_450_B20_graph", "box_OutputOrder_v2_99.Out", "box_SoundModifier_v2_95.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_99_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|350749864", "350749864", "MIS_450_B20_graph", "box_OutputOrder_v2_99.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_89();
    l0 = self.box_UniversalInteractionModifier_v2_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|762998330", "762998330", "MIS_450_B20_graph", "box_OutputOrder_v2_10.Out", "box_UniversalInteractionModifier_v2_89.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_91();
    l0 = self.box_UniversalInteractionModifier_v2_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|407949300", "407949300", "MIS_450_B20_graph", "box_OutputOrder_v2_10.Out", "box_UniversalInteractionModifier_v2_91.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_TeleportPawns_1_Out()
    local l0, l1;
    l0 = self.box_TeleportPawns_1;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|339940139", "339940139", "MIS_450_B20_graph", "box_TeleportPawns_1.Out", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_149_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_148();
    l0 = self.box_EntityStatusListener_149;
    l1 = self.box_PositionModifier_v2_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1247260908", "1247260908", "MIS_450_B20_graph", "box_EntityStatusListener_149.Loaded", "box_PositionModifier_v2_148.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Switch_24_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_87();
    l0 = self.box_Switch_24;
    l1 = self.box_UniversalInteractionModifier_v2_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1423961737", "1423961737", "MIS_450_B20_graph", "box_Switch_24.Output", "box_UniversalInteractionModifier_v2_87.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_24_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_88();
    l0 = self.box_Switch_24;
    l1 = self.box_UniversalInteractionModifier_v2_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|321672975", "321672975", "MIS_450_B20_graph", "box_Switch_24.Output", "box_UniversalInteractionModifier_v2_88.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_137_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_28();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|786743150", "786743150", "MIS_450_B20_graph", "box_OutputOrder_v2_137.Out", "box_ParticleSystem_v3_28.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_137_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_136();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1825371877", "1825371877", "MIS_450_B20_graph", "box_OutputOrder_v2_137.Out", "box_ParticleSystem_v3_136.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_98_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_32();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1948657856", "1948657856", "MIS_450_B20_graph", "box_OutputOrder_v2_98.Out", "box_ParticleSystem_v3_32.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_98_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_97();
    l0 = self.box_SoundModifier_v2_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|276598440", "276598440", "MIS_450_B20_graph", "box_OutputOrder_v2_98.Out", "box_SoundModifier_v2_97.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_98_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1026207555", "1026207555", "MIS_450_B20_graph", "box_OutputOrder_v2_98.Out", "box_MultipleOR_83.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_104_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_102();
    l0 = self.box_SoundModifier_v2_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1369959483", "1369959483", "MIS_450_B20_graph", "box_Compare_Integers_104.A_eq_B", "box_SoundModifier_v2_102.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_104_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_102();
    l0 = self.box_SoundModifier_v2_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|630704140", "630704140", "MIS_450_B20_graph", "box_Compare_Integers_104.A_lt_B", "box_SoundModifier_v2_102.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_72();
    l0 = self.box_ShimmerModifier_v2_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1201702987", "1201702987", "MIS_450_B20_graph", "box_OutputOrder_v2_74.Out", "box_ShimmerModifier_v2_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_73();
    l0 = self.box_ShimmerModifier_v2_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|678433932", "678433932", "MIS_450_B20_graph", "box_OutputOrder_v2_74.Out", "box_ShimmerModifier_v2_73.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_132();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|194247368", "194247368", "MIS_450_B20_graph", "box_OutputOrder_v2_74.Out", "box_ParticleSystem_v3_132.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Print_v2_22_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_50();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1450622714", "1450622714", "MIS_450_B20_graph", "box_Print_v2_22.PrintedToScreen", "box_Simple_Node_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_116_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_116_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_140();
    l0 = self.box_CharacterLoadedIdListener_v2_116;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|554097802", "554097802", "MIS_450_B20_graph", "box_CharacterLoadedIdListener_v2_116.LoadedIdReceived", "box_OutputOrder_v2_140.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_114_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_21();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|317368429", "317368429", "MIS_450_B20_graph", "box_OutputOrder_v2_114.Out", "box_ParticleSystem_v3_21.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_114_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_106();
    l0 = self.box_SoundModifier_v2_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|594968398", "594968398", "MIS_450_B20_graph", "box_OutputOrder_v2_114.Out", "box_SoundModifier_v2_106.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_114_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|643570735", "643570735", "MIS_450_B20_graph", "box_OutputOrder_v2_114.Out", "box_MultipleOR_111.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_100_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_27();
    l0 = self.box_UniversalInteractionListener_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|942833473", "942833473", "MIS_450_B20_graph", "box_OutputOrder_v2_100.Out", "box_UniversalInteractionListener_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_100_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_109();
    l0 = self.box_SoundModifier_v2_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|255975127", "255975127", "MIS_450_B20_graph", "box_OutputOrder_v2_100.Out", "box_SoundModifier_v2_109.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_89_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_100();
    l0 = self.box_UniversalInteractionModifier_v2_89;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1804675349", "1804675349", "MIS_450_B20_graph", "box_UniversalInteractionModifier_v2_89.Enabled", "box_OutputOrder_v2_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_86_Disabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_86;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1190785419", "1190785419", "MIS_450_B20_graph", "box_GunsForHireSystemModifier_86.Disabled", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_UniversalInteractionModifier_v2_91_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = self.box_UniversalInteractionModifier_v2_91;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|204600656", "204600656", "MIS_450_B20_graph", "box_UniversalInteractionModifier_v2_91.Enabled", "box_OutputOrder_v2_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_103_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_101();
    l0 = self.box_SoundModifier_v2_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2018225351", "2018225351", "MIS_450_B20_graph", "box_Compare_Integers_103.A_eq_B", "box_SoundModifier_v2_101.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_14();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1415287337", "1415287337", "MIS_450_B20_graph", "box_OutputOrder_v2_23.Out", "box_IntegerArithmetics_v2_14.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_30_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_135();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|520655144", "520655144", "MIS_450_B20_graph", "box_ParticleSystem_v3_30.Stopped", "box_OutputOrder_v2_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_146_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_121();
    l0 = self.box_SoundModifier_v2_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1436362318", "1436362318", "MIS_450_B20_graph", "box_ParticleSystem_v3_146.Started", "box_SoundModifier_v2_121.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_83_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_95();
    l0 = self.box_MultipleOR_83;
    l1 = self.box_SoundModifier_v2_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1766278091", "1766278091", "MIS_450_B20_graph", "box_MultipleOR_83.Out", "box_SoundModifier_v2_95.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_90_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_98();
    l0 = self.box_UniversalInteractionModifier_v2_90;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|389180988", "389180988", "MIS_450_B20_graph", "box_UniversalInteractionModifier_v2_90.Enabled", "box_OutputOrder_v2_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_43_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_125();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2139818302", "2139818302", "MIS_450_B20_graph", "box_Compare_Integers_43.A_eq_B", "box_Simple_Node_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_43_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|423556052", "423556052", "MIS_450_B20_graph", "box_Compare_Integers_43.A_lt_B", "box_Simple_Node_126.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_97_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_96();
    l0 = self.box_SoundModifier_v2_97;
    l1 = self.box_SoundModifier_v2_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1352257152", "1352257152", "MIS_450_B20_graph", "box_SoundModifier_v2_97.Started", "box_SoundModifier_v2_96.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_21_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_26();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|779754399", "779754399", "MIS_450_B20_graph", "box_ParticleSystem_v3_21.Stopped", "box_ParticleSystem_v3_26.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_130_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_76();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|59335041", "59335041", "MIS_450_B20_graph", "box_OutputOrder_v2_130.Out", "box_Simple_Node_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_130_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|171899829", "171899829", "MIS_450_B20_graph", "box_OutputOrder_v2_130.Out", "box_ActivityEnd_4.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_79_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_51();
    l0 = self.box_EntityStatusListener_79;
    l1 = self.box_VisibilityModifier_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|205082787", "205082787", "MIS_450_B20_graph", "box_EntityStatusListener_79.Loaded", "box_VisibilityModifier_51.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_86();
    l0 = self.box_MultipleOR_3;
    l1 = self.box_GunsForHireSystemModifier_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|972914889", "972914889", "MIS_450_B20_graph", "box_MultipleOR_3.Out", "box_GunsForHireSystemModifier_86.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_18();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1694433075", "1694433075", "MIS_450_B20_graph", "box_AddActivityObjective_v2_12.Out", "box_ActivityObjectiveMarkerModifier_v3_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_113_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_106();
    l0 = self.box_MultipleOR_113;
    l1 = self.box_SoundModifier_v2_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|64092809", "64092809", "MIS_450_B20_graph", "box_MultipleOR_113.Out", "box_SoundModifier_v2_106.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_111_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_108();
    l0 = self.box_MultipleOR_111;
    l1 = self.box_SoundModifier_v2_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1787239103", "1787239103", "MIS_450_B20_graph", "box_MultipleOR_111.Out", "box_SoundModifier_v2_108.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_145_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_144();
    l0 = self.box_PositionModifier_v2_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1625303206", "1625303206", "MIS_450_B20_graph", "box_OutputOrder_v2_145.Out", "box_PositionModifier_v2_144.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_145_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_146();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1039473780", "1039473780", "MIS_450_B20_graph", "box_OutputOrder_v2_145.Out", "box_ParticleSystem_v3_146.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_138_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_147();
    l0 = self.box_ProximityRadiusListener_v3_138;
    l1 = self.box_Delay_v5_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1795949515", "1795949515", "MIS_450_B20_graph", "box_ProximityRadiusListener_v3_138.SomeoneNear", "box_Delay_v5_147.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Print_v2_34_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_50();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1653068366", "1653068366", "MIS_450_B20_graph", "box_Print_v2_34.PrintedToScreen", "box_Simple_Node_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_122_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_123();
    l0 = self.box_ProximityRadiusListener_v3_122;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1444983794", "1444983794", "MIS_450_B20_graph", "box_ProximityRadiusListener_v3_122.SomeoneNear", "box_ActivityRetry_v2_123.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_12();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|675673926", "675673926", "MIS_450_B20_graph", "box_OutputOrder_v2_17.Out", "box_AddActivityObjective_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_118();
    l0 = self.box_Delay_v5_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1430714656", "1430714656", "MIS_450_B20_graph", "box_OutputOrder_v2_17.Out", "box_Delay_v5_118.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_79();
    l0 = self.box_EntityStatusListener_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1177948004", "1177948004", "MIS_450_B20_graph", "box_OutputOrder_v2_17.Out", "box_EntityStatusListener_79.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_138();
    l0 = self.box_ProximityRadiusListener_v3_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|396895667", "396895667", "MIS_450_B20_graph", "box_OutputOrder_v2_17.Out", "box_ProximityRadiusListener_v3_138.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_141_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_1();
    l0 = self.box_TeleportPawns_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1530238857", "1530238857", "MIS_450_B20_graph", "box_OutputOrder_v2_141.Out", "box_TeleportPawns_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_141_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_143();
    l0 = self.box_EntityStatusListener_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1838114636", "1838114636", "MIS_450_B20_graph", "box_OutputOrder_v2_141.Out", "box_EntityStatusListener_143.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_106_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_105();
    l0 = self.box_SoundModifier_v2_106;
    l1 = self.box_SoundModifier_v2_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1863523489", "1863523489", "MIS_450_B20_graph", "box_SoundModifier_v2_106.Started", "box_SoundModifier_v2_105.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_28_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_31();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1115007835", "1115007835", "MIS_450_B20_graph", "box_ParticleSystem_v3_28.Started", "box_IntegerArithmetics_v2_31.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_5_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1815972395", "1815972395", "MIS_450_B20_graph", "box_GetPlayerGroup_v2_5.Out", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_95_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_94();
    l0 = self.box_SoundModifier_v2_95;
    l1 = self.box_SoundModifier_v2_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|823777825", "823777825", "MIS_450_B20_graph", "box_SoundModifier_v2_95.Started", "box_SoundModifier_v2_94.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_33_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_31();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|208479489", "208479489", "MIS_450_B20_graph", "box_ParticleSystem_v3_33.Started", "box_IntegerArithmetics_v2_31.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_8_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_141();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1527405414", "1527405414", "MIS_450_B20_graph", "box_GetPlayerGroup_v2_8.Out", "box_OutputOrder_v2_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_25_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_90();
    l0 = self.box_Switch_25;
    l1 = self.box_UniversalInteractionModifier_v2_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|817027146", "817027146", "MIS_450_B20_graph", "box_Switch_25.Output", "box_UniversalInteractionModifier_v2_90.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Switch_25_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_92();
    l0 = self.box_Switch_25;
    l1 = self.box_UniversalInteractionModifier_v2_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|458900548", "458900548", "MIS_450_B20_graph", "box_Switch_25.Output", "box_UniversalInteractionModifier_v2_92.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_112_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_84();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|157917292", "157917292", "MIS_450_B20_graph", "box_OutputOrder_v2_112.Out", "box_ParticleSystem_v3_84.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_112_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_108();
    l0 = self.box_SoundModifier_v2_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|453234171", "453234171", "MIS_450_B20_graph", "box_OutputOrder_v2_112.Out", "box_SoundModifier_v2_108.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_112_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1368121842", "1368121842", "MIS_450_B20_graph", "box_OutputOrder_v2_112.Out", "box_MultipleOR_113.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_117_Canceled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_115();
    l0 = self.box_RequestPhoneCall_v2_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1059980445", "1059980445", "MIS_450_B20_graph", "box_GetActivityState_v2_117.Canceled", "box_RequestPhoneCall_v2_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_GetActivityState_v2_117_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_139();
    l0 = self.box_RequestPhoneCall_v2_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1481539639", "1481539639", "MIS_450_B20_graph", "box_GetActivityState_v2_117.Completed", "box_RequestPhoneCall_v2_139.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_27_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_24();
    l0 = self.box_UniversalInteractionListener_27;
    l1 = self.box_Switch_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1856107995", "1856107995", "MIS_450_B20_graph", "box_UniversalInteractionListener_27.Interacted", "box_Switch_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_80();
    l0 = self.box_MultipleOR_20;
    l1 = self.box_GunsForHireSystemModifier_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|195554451", "195554451", "MIS_450_B20_graph", "box_MultipleOR_20.Out", "box_GunsForHireSystemModifier_80.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_11_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_14();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|524240521", "524240521", "MIS_450_B20_graph", "box_ParticleSystem_v3_11.Started", "box_IntegerArithmetics_v2_14.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_88_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_112();
    l0 = self.box_UniversalInteractionModifier_v2_88;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|284327720", "284327720", "MIS_450_B20_graph", "box_UniversalInteractionModifier_v2_88.Enabled", "box_OutputOrder_v2_112.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_73();
    l0 = self.box_ShimmerModifier_v2_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2057093624", "2057093624", "MIS_450_B20_graph", "box_OutputOrder_v2_75.Out", "box_ShimmerModifier_v2_73.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_72();
    l0 = self.box_ShimmerModifier_v2_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|974580539", "974580539", "MIS_450_B20_graph", "box_OutputOrder_v2_75.Out", "box_ShimmerModifier_v2_72.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_14_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_22();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|236738566", "236738566", "MIS_450_B20_graph", "box_IntegerArithmetics_v2_14.Out", "box_Print_v2_22.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_32_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_137();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1248813295", "1248813295", "MIS_450_B20_graph", "box_ParticleSystem_v3_32.Stopped", "box_OutputOrder_v2_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_97();
    l0 = self.box_MultipleOR_82;
    l1 = self.box_SoundModifier_v2_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|475998667", "475998667", "MIS_450_B20_graph", "box_MultipleOR_82.Out", "box_SoundModifier_v2_97.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_31_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_31_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_34();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|125996210", "125996210", "MIS_450_B20_graph", "box_IntegerArithmetics_v2_31.Out", "box_Print_v2_34.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_147_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_145();
    l0 = self.box_Delay_v5_147;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1527290011", "1527290011", "MIS_450_B20_graph", "box_Delay_v5_147.TimeElapsed", "box_OutputOrder_v2_145.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_29_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_25();
    l0 = self.box_UniversalInteractionListener_29;
    l1 = self.box_Switch_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2000177177", "2000177177", "MIS_450_B20_graph", "box_UniversalInteractionListener_29.Interacted", "box_Switch_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_119_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_93();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1163999492", "1163999492", "MIS_450_B20_graph", "box_OutputOrder_v2_119.Out", "box_ActivityForceAndLockTracking_93.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_119_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_5();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1255527368", "1255527368", "MIS_450_B20_graph", "box_OutputOrder_v2_119.Out", "box_GetPlayerGroup_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_150_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1598983450", "1598983450", "MIS_450_B20_graph", "box_OutputOrder_v2_150.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_150_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_149();
    l0 = self.box_EntityStatusListener_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|241776003", "241776003", "MIS_450_B20_graph", "box_OutputOrder_v2_150.Out", "box_EntityStatusListener_149.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_7_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = self.box_EntityStatusListener_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|898020243", "898020243", "MIS_450_B20_graph", "box_EntityStatusListener_7.Enabled", "box_OutputOrder_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_7_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_EntityStatusListener_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|289976431", "289976431", "MIS_450_B20_graph", "box_EntityStatusListener_7.Loaded", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_80_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_8();
    l0 = self.box_GunsForHireSystemModifier_80;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|106665619", "106665619", "MIS_450_B20_graph", "box_GunsForHireSystemModifier_80.Disabled", "box_GetPlayerGroup_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_140_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_117();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|328935515", "328935515", "MIS_450_B20_graph", "box_OutputOrder_v2_140.Out", "box_GetActivityState_v2_117.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_48_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_130();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2057830979", "2057830979", "MIS_450_B20_graph", "box_Compare_Integers_48.A_eq_B", "box_OutputOrder_v2_130.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_108_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_107();
    l0 = self.box_SoundModifier_v2_108;
    l1 = self.box_SoundModifier_v2_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1976394958", "1976394958", "MIS_450_B20_graph", "box_SoundModifier_v2_108.Started", "box_SoundModifier_v2_107.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_119();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|100272548", "100272548", "MIS_450_B20_graph", "box_ActivityInitialized_2.Out", "box_OutputOrder_v2_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_143_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_142();
    l0 = self.box_EntityStatusListener_143;
    l1 = self.box_PositionModifier_v2_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|222351814", "222351814", "MIS_450_B20_graph", "box_EntityStatusListener_143.Loaded", "box_PositionModifier_v2_142.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_135_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_33();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|293582786", "293582786", "MIS_450_B20_graph", "box_OutputOrder_v2_135.Out", "box_ParticleSystem_v3_33.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_135_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_134();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|94908173", "94908173", "MIS_450_B20_graph", "box_OutputOrder_v2_135.Out", "box_ParticleSystem_v3_134.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_84_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_11();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1039376323", "1039376323", "MIS_450_B20_graph", "box_ParticleSystem_v3_84.Stopped", "box_ParticleSystem_v3_11.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_26_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|712594306", "712594306", "MIS_450_B20_graph", "box_ParticleSystem_v3_26.Started", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_29();
    l0 = self.box_UniversalInteractionListener_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1098850302", "1098850302", "MIS_450_B20_graph", "box_OutputOrder_v2_81.Out", "box_UniversalInteractionListener_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_110();
    l0 = self.box_SoundModifier_v2_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1251541228", "1251541228", "MIS_450_B20_graph", "box_OutputOrder_v2_81.Out", "box_SoundModifier_v2_110.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2095135691", "2095135691", "MIS_450_B20_graph", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|568113931", "568113931", "MIS_450_B20_graph", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|@CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_76_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|@Phase2 Off");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_126_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|@Phase2 ON");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_125_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|@PressureBlowUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_50_Out,
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

function export:OnEnter_box_CharacterLoadedIdListener_v2_120()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328869770419",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_92()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- usableEntity,
        [4] = "2108351030270894550",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_142()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2108721746415716983",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2098191698852062196",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|116167553");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_132_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108779402436293115",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_87()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_PARACHUTE_WINGSUIT_CLOSE",
            id = "874284",
        },
        -- usableEntity,
        [4] = "2107535800917829183",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|168947666");
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

function export:OnEnter_box_SoundModifier_v2_107()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737683057563000",
        -- SoundId,
        [1] = "1070038761",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_148()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2107536237540681282",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100194873448598553",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|201796830");
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
                [0] = self.f_box_OutputOrder_v2_99_Out_0,
                [1] = self.f_box_OutputOrder_v2_99_Out_1,
                [2] = self.f_box_OutputOrder_v2_99_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_101()
    local params;
    params = {
        -- Pawns,
        [0] = "2108403655930545561",
        -- SoundId,
        [1] = "4026025953",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_109()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737683057563000",
        -- SoundId,
        [1] = "1304835985",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|276162807");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_1()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2107546881356731853",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.Players,
        -- UseBlackScreen,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|307002864");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108973503964261230",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_149()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100194873448598553",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|353511688");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108982582241667954",
    };
    return params;
end;

function export:OnEnter_box_Switch_24()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|367587113");
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
                [0] = self.f_box_OutputOrder_v2_137_Out_0,
                [1] = self.f_box_OutputOrder_v2_137_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|369535506");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108725020531361991",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|407602000");
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
                [0] = self.f_box_OutputOrder_v2_98_Out_0,
                [1] = self.f_box_OutputOrder_v2_98_Out_1,
                [2] = self.f_box_OutputOrder_v2_98_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|411466301");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_104_A_eq_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_104_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.Puzzle1Pressure,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|431175059");
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
                [0] = self.f_box_OutputOrder_v2_74_Out_0,
                [1] = self.f_box_OutputOrder_v2_74_Out_1,
                [2] = self.f_box_OutputOrder_v2_74_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|444767943");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_22_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.Puzzle1Pressure,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_116()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328869770419",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|485820116");
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
                [0] = self.f_box_OutputOrder_v2_114_Out_0,
                [1] = self.f_box_OutputOrder_v2_114_Out_1,
                [2] = self.f_box_OutputOrder_v2_114_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_51()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108779347893563887",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_102()
    local params;
    params = {
        -- Pawns,
        [0] = "2108403655930545561",
        -- SoundId,
        [1] = "4026025953",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|523677436");
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
                [0] = self.f_box_OutputOrder_v2_100_Out_0,
                [1] = self.f_box_OutputOrder_v2_100_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_89()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- usableEntity,
        [4] = "2107535800917829183",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_86()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|613290487");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_91()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- usableEntity,
        [4] = "2108351030270894550",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|629311041");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_103_A_eq_B,
    });
    params = {
        -- A,
        [0] = 2,
        -- B,
        [1] = self.Puzzle1Pressure,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|644759409");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|650256854");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_30_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109264331844618750",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|698962924");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_146_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109176415149644863",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_85()
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
        [6] = "2820544222",
        -- StopEvent,
        [7] = "2604139666",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_90()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_PARACHUTE_WINGSUIT_CLOSE",
            id = "874284",
        },
        -- usableEntity,
        [4] = "2108351030270894550",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|772477778");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_43_A_eq_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_43_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.Puzzle1Pressure,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|796882904");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108982578064141168",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_144()
    local params;
    params = {
        -- blendTime,
        [1] = 0.4,
        -- endTarget,
        [4] = "2108721746415716983",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2098191698852062196",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_97()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737673236600182",
        -- SoundId,
        [1] = "1070038761",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|890401800");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_21_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108779402436293115",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|895243958");
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

function export:OnEnter_box_EntityStatusListener_79()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108779347893563887",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|952788918");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_12_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_450_B20",
            id = "1025409",
        },
        -- TargetGroup,
        [2] = self.Players,
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1007330857");
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
                [0] = self.f_box_OutputOrder_v2_145_Out_0,
                [1] = self.f_box_OutputOrder_v2_145_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_138()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2108721746415716983",
        -- nearZone,
        [4] = 3.5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1085404229");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_34_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.Puzzle1Pressure,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_122()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Quebecois,
        -- id2,
        [3] = "2107534809558429590",
        -- nearZone,
        [4] = 8,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1106272446");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
                [3] = self.f_box_OutputOrder_v2_17_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1111082820");
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
                [0] = self.f_box_OutputOrder_v2_141_Out_0,
                [1] = self.f_box_OutputOrder_v2_141_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_106()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737683057563000",
        -- SoundId,
        [1] = "1070038761",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_139()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.Players,
        -- SoundId,
        [5] = "1622828884",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1177821134");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_28_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109264331844618750",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1241923660");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_110()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737673236600182",
        -- SoundId,
        [1] = "1304835985",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_72()
    local params;
    params = {
        -- B,
        [0] = 1,
        -- G,
        [1] = 1,
        -- R,
        [2] = 1,
        -- Speed,
        [3] = 2,
        -- targets,
        [4] = "2108351030270894550",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_115()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = self.Players,
        -- SoundId,
        [5] = "2343814214",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_95()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737673236600182",
        -- SoundId,
        [1] = "1304835985",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1341980381");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_33_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108779494534820393",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1346207130");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1349626468");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_8_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1350280893");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109124765858924941",
    };
    return params;
end;

function export:OnEnter_box_Switch_25()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1396928469");
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
                [0] = self.f_box_OutputOrder_v2_112_Out_0,
                [1] = self.f_box_OutputOrder_v2_112_Out_1,
                [2] = self.f_box_OutputOrder_v2_112_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1411289993");
    l0:SetConnections({
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_117_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_117_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015328490728219",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1470746627");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108725020531361991",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_27()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- usableEntityId,
        [1] = "2107535800917829183",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1523231037");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_11_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108779402436293115",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_88()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- usableEntity,
        [4] = "2107535800917829183",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1624596047");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1637937587");
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
                [0] = self.f_box_OutputOrder_v2_75_Out_0,
                [1] = self.f_box_OutputOrder_v2_75_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1652783800");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_14_Out,
    });
    params = {
        -- A,
        [0] = self.Puzzle1Pressure,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1698097320");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_32_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2108779494534820393",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1733625668");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_31_Out,
    });
    params = {
        -- A,
        [0] = self.Puzzle1Pressure,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_147()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_29()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- usableEntityId,
        [1] = "2108351030270894550",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1770427283");
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
                [0] = self.f_box_OutputOrder_v2_119_Out_0,
                [1] = self.f_box_OutputOrder_v2_119_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1786255204");
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
                [0] = self.f_box_OutputOrder_v2_150_Out_0,
                [1] = self.f_box_OutputOrder_v2_150_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107535800917829183",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_80()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_94()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737673236600182",
        -- SoundId,
        [1] = "1070038761",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_105()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737683057563000",
        -- SoundId,
        [1] = "1304835985",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1895630939");
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
                [1] = self.f_box_OutputOrder_v2_140_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1899084354");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_48_A_eq_B,
    });
    params = {
        -- A,
        [0] = 2,
        -- B,
        [1] = self.Puzzle1Pressure,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|1901915868");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108779494534820393",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_108()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737683057563000",
        -- SoundId,
        [1] = "1304835985",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_143()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098191698852062196",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2021910396");
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
                [0] = self.f_box_OutputOrder_v2_135_Out_0,
                [1] = self.f_box_OutputOrder_v2_135_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2025666212");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_84_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109264305646995955",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_121()
    local params;
    params = {
        -- Pawns,
        [0] = "2109193105734378761",
        -- SoundId,
        [1] = "332501346",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_73()
    local params;
    params = {
        -- B,
        [0] = 1,
        -- G,
        [1] = 1,
        -- R,
        [2] = 1,
        -- Speed,
        [3] = 2,
        -- targets,
        [4] = "2107535800917829183",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2052408913");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_26_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109264305646995955",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2056649984");
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

function export:OnEnter_box_SoundModifier_v2_96()
    local params;
    params = {
        -- Pawns,
        [0] = "2108737673236600182",
        -- SoundId,
        [1] = "1304835985",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\mis_450\\MIS_450_B20.domino|@MIS_450_B20_graph|2143705088");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2108032047084741831",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_450_B20",
            id = "1025409",
        },
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_120_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_120;
    self.Quebecois = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_116_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_116;
    self.Quebecois = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.Puzzle1Pressure = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.Puzzle1Pressure = l0:GetDataOutValue(0);
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
