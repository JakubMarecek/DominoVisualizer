LUAC�$ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni49/uni49_010_b30a.domino
-- User graph: UNI49_010_B30A_main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/CreateVector3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPosition.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010_B31._Spawner_v2.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3421725274.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3122034167.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1805296101.bnk]], "CSoundResource");
        cboxRes:LoadResource([[301488204.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1236862197.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010_B30A.UNI49_010_B30A_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua")] = {
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
                name = "PlayerDetected",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Success",
                delayed = false,
            },
            [4] = {
                name = "TimerExpired",
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
                name = "bIsTrigger",
                type = "bool",
            },
            [2] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "bUse2d_ProximityCheck",
                type = "bool",
            },
            [4] = {
                name = "bUseDetectionModifier",
                type = "bool",
            },
            [5] = {
                name = "eMarker",
                type = "entity",
            },
            [6] = {
                name = "eRadiusTarget",
                type = "entity",
            },
            [7] = {
                name = "eTrigger",
                type = "entity",
            },
            [8] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [9] = {
                name = "fObjectiveTimer",
                type = "float",
            },
            [10] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [11] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 12,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua")] = {
        stateless = false,
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Hour",
                type = "int",
            },
            [1] = {
                name = "Minute",
                type = "int",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")] = {
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
                name = "MarkerTypeId",
                type = "database",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "ProgressDisplayType",
                type = "int",
            },
            [3] = {
                name = "TotalProgress",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")] = {
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
                name = "Progress",
                type = "int",
            },
            [2] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/Coop/AllPlayers/GodMode_v3.lua")] = {
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
            [0] = {
                name = "disableAfterBeat",
                type = "bool",
            },
            [1] = {
                name = "Mode",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CreateVector3.lua")] = {
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
                name = "x",
                type = "float",
            },
            [1] = {
                name = "y",
                type = "float",
            },
            [2] = {
                name = "z",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "vector3",
                type = "list",
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
    metadataTable[GetPathID("Domino/System/GetPosition.lua")] = {
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
                name = "id",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "pitch",
                type = "float",
            },
            [1] = {
                name = "roll",
                type = "float",
            },
            [2] = {
                name = "xPos",
                type = "float",
            },
            [3] = {
                name = "yaw",
                type = "float",
            },
            [4] = {
                name = "yPos",
                type = "float",
            },
            [5] = {
                name = "zPos",
                type = "float",
            },
        },
        dataOutCount = 6,
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
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")] = {
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
                name = "LocalPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 8,
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
    metadataTable[GetPathID("Domino/System/UI/OverrideMenuAccessibility.lua")] = {
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
                name = "ActivityLogMenuEnabled",
                type = "bool",
            },
            [1] = {
                name = "AvatarCreationMenuEnabled",
                type = "bool",
            },
            [2] = {
                name = "AvatarCustomizationMenuEnabled",
                type = "bool",
            },
            [3] = {
                name = "ChallengeMenuEnabled",
                type = "bool",
            },
            [4] = {
                name = "LootMenuEnabled",
                type = "bool",
            },
            [5] = {
                name = "OnlineMenuEnabled",
                type = "bool",
            },
            [6] = {
                name = "PerksMenuEnabled",
                type = "bool",
            },
            [7] = {
                name = "ResistanceMenuEnabled",
                type = "bool",
            },
            [8] = {
                name = "SquadMenuEnabled",
                type = "bool",
            },
            [9] = {
                name = "WorldmapMenuEnabled",
                type = "bool",
            },
        },
        dataInCount = 10,
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
            [5] = {
                name = "usageType",
                type = "string",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010_B31._Spawner_v2.debug.lua")] = {
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
                name = "AISpawner01",
                type = "entity",
            },
            [1] = {
                name = "AISpawner02",
                type = "entity",
            },
            [2] = {
                name = "AISpawner03",
                type = "entity",
            },
            [3] = {
                name = "AISpawner04",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI49_010_B30A_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main";
    self.gFriendlyPlayers = nil;
    self.ePlayer = nil;
    self.ProgressID = 0;
    self.iDestroyCount = 0;
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|18702128");
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
    self.box_UniversalInteractionModifier_v2_70 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|69918915");
    l0:SetConnections({
    });
    self.box_Delay_v5_54 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|169709983");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_54_TimeElapsed,
    });
    self.box_SoundModifier_v2_91 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|191812764");
    l0:SetConnections({
    });
    self.box_Delay_v5_109 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|205330002");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_109_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_73 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|319476200");
    l0:SetConnections({
    });
    self.box_Delay_v5_110 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|384388425");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_110_TimeElapsed,
    });
    self.box_SoundModifier_v2_16 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|400823381");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_16_Finished,
    });
    self.box_Reach_GoTo_v2_64 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|405045518");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_64_Success,
    });
    self.box_SoundModifier_v2_98 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|412854852");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_40 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|417376356");
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
                [0] = self.f_box_OnceOnly_v3_40_Out_0,
            },
            count = 1,
        },
    });
    self.box_SoundModifier_v2_102 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|441580596");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_81 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|443201103");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_25 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|452804501");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_25_Enter,
    });
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|478200566");
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
    self.box_SoundModifier_v2_84 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|489581331");
    l0:SetConnections({
    });
    self.box_LockTimeOfDay_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
    l0 = self.box_LockTimeOfDay_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockTimeOfDay_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|553091300");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LockTimeOfDay_2_Out,
    });
    self.box_SoundModifier_v2_105 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|676793764");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_43 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|736920874");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_43_OnBreak,
    });
    self.box_SoundModifier_v2_97 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|743609880");
    l0:SetConnections({
    });
    self.box_OverrideMenuAccessibility_68 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|750474082");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_68_Out,
    });
    self.box_Delay_v5_111 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|762244011");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_111_TimeElapsed,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|772104936");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_StaticBreakableListener_34 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|798099518");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_34_OnBreak,
    });
    self.box_UniversalInteractionListener_23 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|803547840");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionListener_23_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_23_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_23_Interacted,
    });
    self.box_SoundModifier_v2_100 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|810799724");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_104 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|818755466");
    l0:SetConnections({
    });
    self.box__Spawner_v2_62 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010_B31._Spawner_v2.debug.lua");
    l0 = self.box__Spawner_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__Spawner_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|903606541");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box__Spawner_v2_62_Out,
    });
    self.box_EntityStatusListener_14 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|940601429");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_14_Loaded,
    });
    self.box_SoundModifier_v2_87 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|945128187");
    l0:SetConnections({
    });
    self.box_Delay_v5_57 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|945778263");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_57_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_19 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1049088845");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_19_Completed,
    });
    self.box_Delay_v5_56 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1070051686");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_56_TimeElapsed,
    });
    self.box_EntityStatusListener_31 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1165849543");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_31_Loaded,
    });
    self.box_UniversalInteractionModifier_v2_72 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1181941293");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_92 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1243560498");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_103 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1328965089");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_78 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1339243003");
    l0:SetConnections({
    });
    self.box_GodMode_v3_41 = cbox:CreateBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
    l0 = self.box_GodMode_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GodMode_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1345920660");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GodMode_v3_41_Enabled,
    });
    self.box_SoundModifier_v2_88 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1376213809");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_32 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1390642893");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_32_Loaded,
    });
    self.box_UniversalInteractionModifier_v2_71 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1460509557");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_48 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1465090820");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_48_OnBreak,
    });
    self.box_SoundModifier_v2_85 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1489193637");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_101 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1489236048");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_80 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1499405855");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_90 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1535606629");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_95 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1553897061");
    l0:SetConnections({
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1608021405");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box__Spawner_v2_27 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010_B31._Spawner_v2.debug.lua");
    l0 = self.box__Spawner_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__Spawner_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1671795048");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box__Spawner_v2_27_Out,
    });
    self.box_ActivityInitialized_8 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1687032093");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_8_Out,
    });
    self.box_SoundModifier_v2_94 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1718036747");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_82 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1768850605");
    l0:SetConnections({
    });
    self.box_GunsForHireSystemModifier_61 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1840767892");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_61_Disabled,
    });
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1846112295");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_SoundModifier_v2_86 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1864798146");
    l0:SetConnections({
    });
    self.box_Delay_v5_77 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1919876122");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_77_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_74 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1939218211");
    l0:SetConnections({
    });
    self.box__Spawner_v2_60 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010_B31._Spawner_v2.debug.lua");
    l0 = self.box__Spawner_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__Spawner_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1943826999");
    l0:SetConnections({
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1986231278");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_Music_Quest_v2_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|2091918603");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_93 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|2092557626");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_37 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|2094205642");
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
        [0] = self.f_box_MultipleAND_v2_37_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1174239264", "1174239264", "UNI49_010_B30A_main", "In", "box_GetLocalPlayer_v2_9.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|654465742", "654465742", "UNI49_010_B30A_main", "OnLeaveZone", "box_Simple_Node_21.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_106_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_96();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|2031390478", "2031390478", "UNI49_010_B30A_main", "box_Simple_Node_106.Out", "box_OutputOrder_v2_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_89();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1146928171", "1146928171", "UNI49_010_B30A_main", "box_Simple_Node_106.Out", "box_OutputOrder_v2_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1467935704", "1467935704", "UNI49_010_B30A_main", "box_Simple_Node_106.Out", "box_OutputOrder_v2_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1775651940", "1775651940", "UNI49_010_B30A_main", "box_Simple_Node_106.Out", "box_OutputOrder_v2_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_5();
    l0 = self.box_Music_Quest_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|451063729", "451063729", "UNI49_010_B30A_main", "box_Simple_Node_21.Out", "box_Music_Quest_v2_5.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_ActivityRetry_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1598251671", "1598251671", "UNI49_010_B30A_main", "box_Simple_Node_21.Out", "box_ActivityRetry_3.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_59_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_16();
    l0 = self.box_SoundModifier_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1494695694", "1494695694", "UNI49_010_B30A_main", "box_Simple_Node_59.Out", "box_SoundModifier_v2_16.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1211186929", "1211186929", "UNI49_010_B30A_main", "box_Simple_Node_59.Out", "box_Delay_v5_57.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_MultipleOR_39_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_39;
    l1 = self.box_OnceOnly_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1848438694", "1848438694", "UNI49_010_B30A_main", "box_MultipleOR_39.Out", "box_OnceOnly_v3_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityFact_38_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_19();
    l0 = self.box_RequestPhoneCall_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|479899424", "479899424", "UNI49_010_B30A_main", "box_GetActivityFact_38.FactNotSet", "box_RequestPhoneCall_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_GetActivityFact_38_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1154902351", "1154902351", "UNI49_010_B30A_main", "box_GetActivityFact_38.FactSet", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_14();
    l0 = self.box_EntityStatusListener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1875348032", "1875348032", "UNI49_010_B30A_main", "box_OutputOrder_v2_30.Out", "box_EntityStatusListener_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_31();
    l0 = self.box_EntityStatusListener_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1240979121", "1240979121", "UNI49_010_B30A_main", "box_OutputOrder_v2_30.Out", "box_EntityStatusListener_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_32();
    l0 = self.box_EntityStatusListener_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|501049969", "501049969", "UNI49_010_B30A_main", "box_OutputOrder_v2_30.Out", "box_EntityStatusListener_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetActivityObjectiveProgress_v2_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_37();
    l0 = self.box_MultipleAND_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|2139372330", "2139372330", "UNI49_010_B30A_main", "box_SetActivityObjectiveProgress_v2_46.Out", "box_MultipleAND_v2_37.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_54_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GodMode_v3_41();
    l0 = self.box_Delay_v5_54;
    l1 = self.box_GodMode_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|902217915", "902217915", "UNI49_010_B30A_main", "box_Delay_v5_54.TimeElapsed", "box_GodMode_v3_41.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_99_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_81();
    l0 = self.box_SoundModifier_v2_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|883625545", "883625545", "UNI49_010_B30A_main", "box_OutputOrder_v2_99.Out", "box_SoundModifier_v2_81.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_98();
    l0 = self.box_SoundModifier_v2_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|735796106", "735796106", "UNI49_010_B30A_main", "box_OutputOrder_v2_99.Out", "box_SoundModifier_v2_98.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_99_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_82();
    l0 = self.box_SoundModifier_v2_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1350989420", "1350989420", "UNI49_010_B30A_main", "box_OutputOrder_v2_99.Out", "box_SoundModifier_v2_82.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_99_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_95();
    l0 = self.box_SoundModifier_v2_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1434671757", "1434671757", "UNI49_010_B30A_main", "box_OutputOrder_v2_99.Out", "box_SoundModifier_v2_95.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_99_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_88();
    l0 = self.box_SoundModifier_v2_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|557956155", "557956155", "UNI49_010_B30A_main", "box_OutputOrder_v2_99.Out", "box_SoundModifier_v2_88.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_109_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_46();
    l0 = self.box_Delay_v5_109;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|2062432279", "2062432279", "UNI49_010_B30A_main", "box_Delay_v5_109.TimeElapsed", "box_SetActivityObjectiveProgress_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_110_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_51();
    l0 = self.box_Delay_v5_110;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1421054162", "1421054162", "UNI49_010_B30A_main", "box_Delay_v5_110.TimeElapsed", "box_SetActivityObjectiveProgress_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_16_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_SoundModifier_v2_16;
    l1 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1026407465", "1026407465", "UNI49_010_B30A_main", "box_SoundModifier_v2_16.Finished", "box_Delay_v5_57.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Reach_GoTo_v2_64_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_Reach_GoTo_v2_64;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|525451850", "525451850", "UNI49_010_B30A_main", "box_Reach_GoTo_v2_64.Success", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box__Spawner_v2_27();
    l0 = self.box__Spawner_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|185288373", "185288373", "UNI49_010_B30A_main", "box_Simple_Node_26.Out", "box__Spawner_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_40_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_28();
    l0 = self.box_OnceOnly_v3_40;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|876625259", "876625259", "UNI49_010_B30A_main", "box_OnceOnly_v3_40.Out", "box_BroadcastMessage_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_97();
    l0 = self.box_SoundModifier_v2_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|172186066", "172186066", "UNI49_010_B30A_main", "box_OutputOrder_v2_89.Out", "box_SoundModifier_v2_97.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_89_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_101();
    l0 = self.box_SoundModifier_v2_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|753692611", "753692611", "UNI49_010_B30A_main", "box_OutputOrder_v2_89.Out", "box_SoundModifier_v2_101.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_89_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_86();
    l0 = self.box_SoundModifier_v2_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1698208283", "1698208283", "UNI49_010_B30A_main", "box_OutputOrder_v2_89.Out", "box_SoundModifier_v2_86.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_89_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_94();
    l0 = self.box_SoundModifier_v2_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1096169145", "1096169145", "UNI49_010_B30A_main", "box_OutputOrder_v2_89.Out", "box_SoundModifier_v2_94.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_25_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_6();
    l0 = self.box_ProximityTrigger_v2_25;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|2054760459", "2054760459", "UNI49_010_B30A_main", "box_ProximityTrigger_v2_25.Enter", "box_AddActivityObjectiveProgress_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_16();
    l0 = self.box_MultipleOR_58;
    l1 = self.box_SoundModifier_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1194859152", "1194859152", "UNI49_010_B30A_main", "box_MultipleOR_58.Out", "box_SoundModifier_v2_16.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_52();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1788290674", "1788290674", "UNI49_010_B30A_main", "box_OutputOrder_v2_50.Out", "box_ActivityObjectiveMarkerModifier_v3_52.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_49();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|180035464", "180035464", "UNI49_010_B30A_main", "box_OutputOrder_v2_50.Out", "box_IntegerArithmetics_v2_49.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_66_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_63();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|116130026", "116130026", "UNI49_010_B30A_main", "box_AddActivityObjective_v2_66.Out", "box_ActivityObjectiveMarkerModifier_v3_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LockTimeOfDay_2_Out()
    local l0, l1;
    l0 = self.box_LockTimeOfDay_2;
    l1 = self.box_ActivityInitialized_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|216606140", "216606140", "UNI49_010_B30A_main", "box_LockTimeOfDay_2.Out", "box_ActivityInitialized_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_GetPosition_76_Out()
    local params, l0;
    self:OnExit_box_GetPosition_76_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_79();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|853667112", "853667112", "UNI49_010_B30A_main", "box_GetPosition_76.Out", "box_CreateVector3_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_63_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v2_64();
    l0 = self.box_Reach_GoTo_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|452357753", "452357753", "UNI49_010_B30A_main", "box_ActivityObjectiveMarkerModifier_v3_63.Enabled", "box_Reach_GoTo_v2_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_43_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_StaticBreakableListener_43;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1907108356", "1907108356", "UNI49_010_B30A_main", "box_StaticBreakableListener_43.OnBreak", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OverrideMenuAccessibility_68_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_67();
    l0 = self.box_OverrideMenuAccessibility_68;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|683391747", "683391747", "UNI49_010_B30A_main", "box_OverrideMenuAccessibility_68.Out", "box_ActivityMiscInfoModifier_v2_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_111_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_36();
    l0 = self.box_Delay_v5_111;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1122127148", "1122127148", "UNI49_010_B30A_main", "box_Delay_v5_111.TimeElapsed", "box_EndActivityObjective_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_108();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|489701509", "489701509", "UNI49_010_B30A_main", "box_MultipleOR_1.Out", "box_OutputOrder_v2_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_34_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_StaticBreakableListener_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|2028826024", "2028826024", "UNI49_010_B30A_main", "box_StaticBreakableListener_34.OnBreak", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_23_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_UniversalInteractionListener_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|63579405", "63579405", "UNI49_010_B30A_main", "box_UniversalInteractionListener_23.Interacted", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_79_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_79_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_78();
    l0 = self.box_PositionModifier_v2_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|689735088", "689735088", "UNI49_010_B30A_main", "box_CreateVector3_79.Out", "box_PositionModifier_v2_78.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ActivityMiscInfoModifier_v2_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|420068325", "420068325", "UNI49_010_B30A_main", "box_ActivityMiscInfoModifier_v2_67.Out", "box_OutputOrder_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1182343430", "1182343430", "UNI49_010_B30A_main", "box_SetActivityObjectiveProgress_v2_11.Out", "box_OutputOrder_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1447647960", "1447647960", "UNI49_010_B30A_main", "box_SetActivityFact_29.Out", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetActivityObjectiveProgress_v2_51_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_37();
    l0 = self.box_MultipleAND_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|703790329", "703790329", "UNI49_010_B30A_main", "box_SetActivityObjectiveProgress_v2_51.Out", "box_MultipleAND_v2_37.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box__Spawner_v2_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box__Spawner_v2_60();
    l0 = self.box__Spawner_v2_62;
    l1 = self.box__Spawner_v2_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1292954792", "1292954792", "UNI49_010_B30A_main", "box__Spawner_v2_62.Out", "box__Spawner_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_47_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_43();
    l0 = self.box_StaticBreakableListener_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1808219362", "1808219362", "UNI49_010_B30A_main", "box_ActivityObjectiveMarkerModifier_v3_47.Enabled", "box_StaticBreakableListener_43.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_14_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33();
    l0 = self.box_EntityStatusListener_14;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1618501053", "1618501053", "UNI49_010_B30A_main", "box_EntityStatusListener_14.Loaded", "box_ActivityObjectiveMarkerModifier_v3_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_57_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_57;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|651699899", "651699899", "UNI49_010_B30A_main", "box_Delay_v5_57.TimeElapsed", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_77();
    l0 = self.box_Delay_v5_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|358145079", "358145079", "UNI49_010_B30A_main", "box_OutputOrder_v2_42.Out", "box_Delay_v5_77.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GodMode_v3_41();
    l0 = self.box_GodMode_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|618460827", "618460827", "UNI49_010_B30A_main", "box_OutputOrder_v2_42.Out", "box_GodMode_v3_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1913388935", "1913388935", "UNI49_010_B30A_main", "box_AddActivityObjective_v2_10.Out", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_63();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1799458894", "1799458894", "UNI49_010_B30A_main", "box_OutputOrder_v2_65.Out", "box_ActivityObjectiveMarkerModifier_v3_63.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_55();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1545746257", "1545746257", "UNI49_010_B30A_main", "box_OutputOrder_v2_65.Out", "box_AddActivityObjective_v2_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_23();
    l0 = self.box_UniversalInteractionListener_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1560062015", "1560062015", "UNI49_010_B30A_main", "box_OutputOrder_v2_65.Out", "box_UniversalInteractionListener_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_19_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_29();
    l0 = self.box_RequestPhoneCall_v2_19;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|487277008", "487277008", "UNI49_010_B30A_main", "box_RequestPhoneCall_v2_19.Completed", "box_SetActivityFact_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_56_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_38();
    l0 = self.box_Delay_v5_56;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|196025028", "196025028", "UNI49_010_B30A_main", "box_Delay_v5_56.TimeElapsed", "box_GetActivityFact_38.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_33_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_34();
    l0 = self.box_StaticBreakableListener_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|859128957", "859128957", "UNI49_010_B30A_main", "box_ActivityObjectiveMarkerModifier_v3_33.Enabled", "box_StaticBreakableListener_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_31_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_47();
    l0 = self.box_EntityStatusListener_31;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|896402176", "896402176", "UNI49_010_B30A_main", "box_EntityStatusListener_31.Loaded", "box_ActivityObjectiveMarkerModifier_v3_47.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_93();
    l0 = self.box_SoundModifier_v2_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|126255923", "126255923", "UNI49_010_B30A_main", "box_OutputOrder_v2_83.Out", "box_SoundModifier_v2_93.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_90();
    l0 = self.box_SoundModifier_v2_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1073965889", "1073965889", "UNI49_010_B30A_main", "box_OutputOrder_v2_83.Out", "box_SoundModifier_v2_90.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_83_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_80();
    l0 = self.box_SoundModifier_v2_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|2123392018", "2123392018", "UNI49_010_B30A_main", "box_OutputOrder_v2_83.Out", "box_SoundModifier_v2_80.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_83_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_87();
    l0 = self.box_SoundModifier_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1006187256", "1006187256", "UNI49_010_B30A_main", "box_OutputOrder_v2_83.Out", "box_SoundModifier_v2_87.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_83_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_100();
    l0 = self.box_SoundModifier_v2_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1343924150", "1343924150", "UNI49_010_B30A_main", "box_OutputOrder_v2_83.Out", "box_SoundModifier_v2_100.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_BroadcastMessage_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_66();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1622483423", "1622483423", "UNI49_010_B30A_main", "box_BroadcastMessage_28.Out", "box_AddActivityObjective_v2_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_59();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1984264607", "1984264607", "UNI49_010_B30A_main", "box_OutputOrder_v2_18.Out", "box_Simple_Node_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|926355262", "926355262", "UNI49_010_B30A_main", "box_OutputOrder_v2_18.Out", "box_ActivityEnd_15.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|891546789", "891546789", "UNI49_010_B30A_main", "box_OutputOrder_v2_35.Out", "box_ActivityObjectiveMarkerModifier_v3_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_12();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1429031984", "1429031984", "UNI49_010_B30A_main", "box_OutputOrder_v2_35.Out", "box_IntegerArithmetics_v2_12.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_107_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_107();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1738199223", "1738199223", "UNI49_010_B30A_main", "box_MissionBlockLayer_107.Deactivated", "box_MissionBlockLayer_107.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_55_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_25();
    l0 = self.box_ProximityTrigger_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1588588736", "1588588736", "UNI49_010_B30A_main", "box_AddActivityObjective_v2_55.Out", "box_ProximityTrigger_v2_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GodMode_v3_41_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_54();
    l0 = self.box_GodMode_v3_41;
    l1 = self.box_Delay_v5_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1894967923", "1894967923", "UNI49_010_B30A_main", "box_GodMode_v3_41.Enabled", "box_Delay_v5_54.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_32_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_52();
    l0 = self.box_EntityStatusListener_32;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1294789753", "1294789753", "UNI49_010_B30A_main", "box_EntityStatusListener_32.Loaded", "box_ActivityObjectiveMarkerModifier_v3_52.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_53_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|895237704", "895237704", "UNI49_010_B30A_main", "box_EndActivityObjective_v2_53.Out", "box_OutputOrder_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_4_Out()
    local l0;
    self:OnExit_box_GetPlayerGroup_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1022673850", "1022673850", "UNI49_010_B30A_main", "box_GetPlayerGroup_v2_4.Out", "box_ActivityAcknowledgeGate_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_StaticBreakableListener_48_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_StaticBreakableListener_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1432970667", "1432970667", "UNI49_010_B30A_main", "box_StaticBreakableListener_48.OnBreak", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_52_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_48();
    l0 = self.box_StaticBreakableListener_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|371353067", "371353067", "UNI49_010_B30A_main", "box_ActivityObjectiveMarkerModifier_v3_52.Enabled", "box_StaticBreakableListener_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetActivityObjectiveProgress_v2_13_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_37();
    l0 = self.box_MultipleAND_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|256052627", "256052627", "UNI49_010_B30A_main", "box_SetActivityObjectiveProgress_v2_13.Out", "box_MultipleAND_v2_37.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_17;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|89141377", "89141377", "UNI49_010_B30A_main", "box_Delay_v5_17.TimeElapsed", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_53();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1028593491", "1028593491", "UNI49_010_B30A_main", "box_EndActivityObjective_v2_36.Out", "box_EndActivityObjective_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_56();
    l0 = self.box_Delay_v5_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|557261493", "557261493", "UNI49_010_B30A_main", "box_OutputOrder_v2_22.Out", "box_Delay_v5_56.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_26();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1814597200", "1814597200", "UNI49_010_B30A_main", "box_OutputOrder_v2_22.Out", "box_Simple_Node_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1960133887", "1960133887", "UNI49_010_B30A_main", "box_OutputOrder_v2_22.Out", "box_Delay_v5_17.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_22_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_5();
    l0 = self.box_Music_Quest_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|4919051", "4919051", "UNI49_010_B30A_main", "box_OutputOrder_v2_22.Out", "box_Music_Quest_v2_5.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box__Spawner_v2_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box__Spawner_v2_62();
    l0 = self.box__Spawner_v2_27;
    l1 = self.box__Spawner_v2_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1976374168", "1976374168", "UNI49_010_B30A_main", "box__Spawner_v2_27.Out", "box__Spawner_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_61();
    l0 = self.box_ActivityInitialized_8;
    l1 = self.box_GunsForHireSystemModifier_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|981749842", "981749842", "UNI49_010_B30A_main", "box_ActivityInitialized_8.Out", "box_GunsForHireSystemModifier_61.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_9_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_4();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|568465394", "568465394", "UNI49_010_B30A_main", "box_GetLocalPlayer_v2_9.Out", "box_GetPlayerGroup_v2_4.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_12_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|19967723", "19967723", "UNI49_010_B30A_main", "box_IntegerArithmetics_v2_12.Out", "box_Delay_v5_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GunsForHireSystemModifier_61_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_68();
    l0 = self.box_GunsForHireSystemModifier_61;
    l1 = self.box_OverrideMenuAccessibility_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|584840712", "584840712", "UNI49_010_B30A_main", "box_GunsForHireSystemModifier_61.Disabled", "box_OverrideMenuAccessibility_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|968610362", "968610362", "UNI49_010_B30A_main", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1436038414", "1436038414", "UNI49_010_B30A_main", "box_ActivityAcknowledgeGate_7.Reloaded", "box_OutputOrder_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_108_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LockTimeOfDay_2();
    l0 = self.box_LockTimeOfDay_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1345428779", "1345428779", "UNI49_010_B30A_main", "box_OutputOrder_v2_108.Out", "box_LockTimeOfDay_2.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_108_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_107();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|831934890", "831934890", "UNI49_010_B30A_main", "box_OutputOrder_v2_108.Out", "box_MissionBlockLayer_107.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjectiveProgress_v2_6_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1475686724", "1475686724", "UNI49_010_B30A_main", "box_AddActivityObjectiveProgress_v2_6.Out", "box_SetActivityObjectiveProgress_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_77_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetPosition_76();
    l0 = self.box_Delay_v5_77;
    l1 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|81723107", "81723107", "UNI49_010_B30A_main", "box_Delay_v5_77.TimeElapsed", "box_GetPosition_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|761717841", "761717841", "UNI49_010_B30A_main", "box_OutputOrder_v2_69.Out", "box_AddActivityObjective_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|728681213", "728681213", "UNI49_010_B30A_main", "box_OutputOrder_v2_69.Out", "box_OutputOrder_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_106();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|271068734", "271068734", "UNI49_010_B30A_main", "box_OutputOrder_v2_69.Out", "box_Simple_Node_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_13();
    l0 = self.box_Delay_v5_20;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|731869369", "731869369", "UNI49_010_B30A_main", "box_Delay_v5_20.TimeElapsed", "box_SetActivityObjectiveProgress_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_71();
    l0 = self.box_UniversalInteractionModifier_v2_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|629844090", "629844090", "UNI49_010_B30A_main", "box_OutputOrder_v2_75.Out", "box_UniversalInteractionModifier_v2_71.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_70();
    l0 = self.box_UniversalInteractionModifier_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1196469242", "1196469242", "UNI49_010_B30A_main", "box_OutputOrder_v2_75.Out", "box_UniversalInteractionModifier_v2_70.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_75_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_72();
    l0 = self.box_UniversalInteractionModifier_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|985395548", "985395548", "UNI49_010_B30A_main", "box_OutputOrder_v2_75.Out", "box_UniversalInteractionModifier_v2_72.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_75_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_73();
    l0 = self.box_UniversalInteractionModifier_v2_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1090289166", "1090289166", "UNI49_010_B30A_main", "box_OutputOrder_v2_75.Out", "box_UniversalInteractionModifier_v2_73.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_75_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_74();
    l0 = self.box_UniversalInteractionModifier_v2_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1621848462", "1621848462", "UNI49_010_B30A_main", "box_OutputOrder_v2_75.Out", "box_UniversalInteractionModifier_v2_74.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_44_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_44_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_109();
    l0 = self.box_Delay_v5_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|737011909", "737011909", "UNI49_010_B30A_main", "box_IntegerArithmetics_v2_44.Out", "box_Delay_v5_109.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IntegerArithmetics_v2_49_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_49_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_110();
    l0 = self.box_Delay_v5_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|657449054", "657449054", "UNI49_010_B30A_main", "box_IntegerArithmetics_v2_49.Out", "box_Delay_v5_110.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleAND_v2_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_111();
    l0 = self.box_MultipleAND_v2_37;
    l1 = self.box_Delay_v5_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|604588189", "604588189", "UNI49_010_B30A_main", "box_MultipleAND_v2_37.Out", "box_Delay_v5_111.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_96_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_91();
    l0 = self.box_SoundModifier_v2_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1596354924", "1596354924", "UNI49_010_B30A_main", "box_OutputOrder_v2_96.Out", "box_SoundModifier_v2_91.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_96_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_102();
    l0 = self.box_SoundModifier_v2_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|136381496", "136381496", "UNI49_010_B30A_main", "box_OutputOrder_v2_96.Out", "box_SoundModifier_v2_102.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_96_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_104();
    l0 = self.box_SoundModifier_v2_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1481081875", "1481081875", "UNI49_010_B30A_main", "box_OutputOrder_v2_96.Out", "box_SoundModifier_v2_104.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_96_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_105();
    l0 = self.box_SoundModifier_v2_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|2000975839", "2000975839", "UNI49_010_B30A_main", "box_OutputOrder_v2_96.Out", "box_SoundModifier_v2_105.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_96_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_85();
    l0 = self.box_SoundModifier_v2_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|270793818", "270793818", "UNI49_010_B30A_main", "box_OutputOrder_v2_96.Out", "box_SoundModifier_v2_85.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_96_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_92();
    l0 = self.box_SoundModifier_v2_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1444659058", "1444659058", "UNI49_010_B30A_main", "box_OutputOrder_v2_96.Out", "box_SoundModifier_v2_92.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_96_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_103();
    l0 = self.box_SoundModifier_v2_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|520816004", "520816004", "UNI49_010_B30A_main", "box_OutputOrder_v2_96.Out", "box_SoundModifier_v2_103.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_96_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_84();
    l0 = self.box_SoundModifier_v2_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1446919570", "1446919570", "UNI49_010_B30A_main", "box_OutputOrder_v2_96.Out", "box_SoundModifier_v2_84.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_47();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|372949247", "372949247", "UNI49_010_B30A_main", "box_OutputOrder_v2_45.Out", "box_ActivityObjectiveMarkerModifier_v3_47.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_44();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|991391361", "991391361", "UNI49_010_B30A_main", "box_OutputOrder_v2_45.Out", "box_IntegerArithmetics_v2_44.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|@Alarm_Sound_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_106_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|@n_OnLeaveZone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_21_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|@Stop");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_59_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|20154979");
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

function export:OnEnter_box_GetActivityFact_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|37535204");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_38_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_38_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015283945191285",
        -- Fact,
        [1] = "PhoneCall",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_70()
    local params;
    params = {
        -- usableEntity,
        [4] = "2101134967403725212",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|79236276");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
                [2] = self.f_box_OutputOrder_v2_30_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|140562214");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_46_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI49_010_B30_OBJ2_DESTROY",
            id = "869555",
        },
        -- Progress,
        [1] = self.iDestroyCount,
        -- ProgressId,
        [2] = self.ProgressID,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_54()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_91()
    local params;
    params = {
        -- Pawns,
        [0] = "2104160029809601494",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|199674533");
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
                [0] = self.f_box_OutputOrder_v2_99_Out_0,
                [1] = self.f_box_OutputOrder_v2_99_Out_1,
                [2] = self.f_box_OutputOrder_v2_99_Out_2,
                [3] = self.f_box_OutputOrder_v2_99_Out_3,
                [4] = self.f_box_OutputOrder_v2_99_Out_4,
            },
            count = 5,
        },
    });
    params = {
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

function export:OnEnter_box_UniversalInteractionModifier_v2_73()
    local params;
    params = {
        -- usableEntity,
        [4] = "2101134946237170051",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_110()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_16()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "3122034167",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_64()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eTrigger,
        [7] = "2101232689485977875",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_GoTo",
            id = "373019",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_98()
    local params;
    params = {
        -- Pawns,
        [0] = "2104160018810039246",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|415034869");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_26_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_102()
    local params;
    params = {
        -- Pawns,
        [0] = "2104160035010538456",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_81()
    local params;
    params = {
        -- Pawns,
        [0] = "2104160014034824140",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|450887772");
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

function export:OnEnter_box_ProximityTrigger_v2_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104560757315233008",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|463355995");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|487714637");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_84()
    local params;
    params = {
        -- Pawns,
        [0] = "2104160055803800548",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|498284137");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_66_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI49_010_B30_OBJ2_DESTROY",
            id = "869555",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_LockTimeOfDay_2()
    local params;
    params = {
        -- Hour,
        [0] = 3,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_GetPosition_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|668720963");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_76_Out,
    });
    l0 = self.box_UniversalInteractionListener_23;
    params = {
        -- id,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_105()
    local params;
    params = {
        -- Pawns,
        [0] = "2104160041526389724",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|713548266");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_63_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2104560754337277164",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI49_010_B30_OBJ2_DESTROY",
            id = "869555",
        },
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_43()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2104148841300249316",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_97()
    local params;
    params = {
        -- Pawns,
        [0] = "2101645995451371354",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_68()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = false,
        -- AvatarCreationMenuEnabled,
        [1] = true,
        -- AvatarCustomizationMenuEnabled,
        [2] = true,
        -- ChallengeMenuEnabled,
        [3] = true,
        -- LootMenuEnabled,
        [4] = true,
        -- OnlineMenuEnabled,
        [5] = true,
        -- PerksMenuEnabled,
        [6] = false,
        -- ResistanceMenuEnabled,
        [7] = true,
        -- SquadMenuEnabled,
        [8] = true,
        -- WorldmapMenuEnabled,
        [9] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_111()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_34()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2104148840773864160",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_23()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2101080400079098229",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_100()
    local params;
    params = {
        -- Pawns,
        [0] = "2101646026329837418",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_104()
    local params;
    params = {
        -- Pawns,
        [0] = "2104160038353398746",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|834224168");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_79_Out,
    });
    params = {
        -- x,
        [0] = self._sld_xPos_box_GetPosition_76,
        -- y,
        [1] = self._sld_yPos_box_GetPosition_76,
        -- z,
        [2] = self._sld_zPos_box_GetPosition_76,
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|837628088");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_67_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|850927266");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_11_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI49_010_B30_OBJ2_DESTROY",
            id = "869555",
        },
        -- Progress,
        [1] = self.iDestroyCount,
        -- ProgressId,
        [2] = self.ProgressID,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|859430368");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_29_Out,
    });
    params = {
        -- Fact,
        [0] = "PhoneCall",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|895118071");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_51_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI49_010_B30_OBJ2_DESTROY",
            id = "869555",
        },
        -- Progress,
        [1] = self.iDestroyCount,
        -- ProgressId,
        [2] = self.ProgressID,
    };
    return params;
end;

function export:OnEnter_box__Spawner_v2_62()
    local params;
    params = {
        -- AISpawner01,
        [0] = "2101439174600051030",
        -- AISpawner02,
        [1] = "2104491778779404234",
        -- AISpawner03,
        [2] = "2104491814953179338",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|918037062");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_47_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2104358859496779218",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI49_010_B30_OBJ2_DESTROY",
            id = "869555",
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104148840773864160",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_87()
    local params;
    params = {
        -- Pawns,
        [0] = "2101646024327057256",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_57()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|964572870");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1002898569");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_10_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI49_010_B22_OBJ_REACH",
            id = "705093",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1028930966");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
                [2] = self.f_box_OutputOrder_v2_65_Out_2,
            },
            count = 3,
        },
    });
    params = {
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
        [5] = "301488204",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_56()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1071402183");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_33_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2104358832344952261",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI49_010_B30_OBJ2_DESTROY",
            id = "869555",
        },
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
        [2] = "2104148841300249316",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1166020623");
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
                [0] = self.f_box_OutputOrder_v2_83_Out_0,
                [1] = self.f_box_OutputOrder_v2_83_Out_1,
                [2] = self.f_box_OutputOrder_v2_83_Out_2,
                [3] = self.f_box_OutputOrder_v2_83_Out_3,
                [4] = self.f_box_OutputOrder_v2_83_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_72()
    local params;
    params = {
        -- usableEntity,
        [4] = "2101134937391382896",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1209745370");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_28_Out,
    });
    params = {
        -- Message,
        [0] = "UNI49_B30A_Started",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1213736679");
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

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1242918680");
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

function export:OnEnter_box_SoundModifier_v2_92()
    local params;
    params = {
        -- Pawns,
        [0] = "2104160046349839328",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1257558983");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_107_Deactivated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160223954081940",
        -- missionLayerId,
        [1] = "36167423208822934",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1272397281");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_55_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI49_010_B30_OBJ2_DESTROY",
            id = "869555",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_103()
    local params;
    params = {
        -- Pawns,
        [0] = "2104160052108618722",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    params = {
        -- blendTime,
        [1] = 0,
        -- endPos,
        [2] = l0:GetDataOutValue(0),
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104908311353653277",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_GodMode_v3_41()
    local params;
    params = {
        -- disableAfterBeat,
        [0] = true,
        -- Mode,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_88()
    local params;
    params = {
        -- Pawns,
        [0] = "2104160027353836500",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_32()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104148872984021735",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1405382842");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_53_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI49_010_B22_OBJ_REACH",
            id = "705093",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1427153776");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_71()
    local params;
    params = {
        -- usableEntity,
        [4] = "2101135059502252491",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_48()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2104148872984021735",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1477054317");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_52_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2104358860822179286",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI49_010_B30_OBJ2_DESTROY",
            id = "869555",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_85()
    local params;
    params = {
        -- Pawns,
        [0] = "2104160043445283806",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_101()
    local params;
    params = {
        -- Pawns,
        [0] = "2101646003202445148",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_80()
    local params;
    params = {
        -- Pawns,
        [0] = "2101646022617878374",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_90()
    local params;
    params = {
        -- Pawns,
        [0] = "2101646019025456996",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_95()
    local params;
    params = {
        -- Pawns,
        [0] = "2104160024401046482",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1561627074");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_13_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI49_010_B30_OBJ2_DESTROY",
            id = "869555",
        },
        -- Progress,
        [1] = self.iDestroyCount,
        -- ProgressId,
        [2] = self.ProgressID,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1617298950");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_36_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI49_010_B30_OBJ2_DESTROY",
            id = "869555",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1627014791");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
                [2] = self.f_box_OutputOrder_v2_22_Out_2,
                [3] = self.f_box_OutputOrder_v2_22_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__Spawner_v2_27()
    local params;
    params = {
        -- AISpawner01,
        [0] = "2101340728757065762",
        -- AISpawner02,
        [1] = "2104491359072179275",
        -- AISpawner03,
        [2] = "2104909298397103494",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_94()
    local params;
    params = {
        -- Pawns,
        [0] = "2101646008579542880",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1766640349");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_82()
    local params;
    params = {
        -- Pawns,
        [0] = "2104160021441965008",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1832197871");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_12_Out,
    });
    params = {
        -- A,
        [0] = self.iDestroyCount,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_61()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_86()
    local params;
    params = {
        -- Pawns,
        [0] = "2101646005660307294",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1869129314");
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

function export:OnEnter_box_AddActivityObjectiveProgress_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1898868884");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_6_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI49_010_B30_OBJ2_DESTROY",
            id = "869555",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_77()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_74()
    local params;
    params = {
        -- usableEntity,
        [4] = "2101134934933520733",
    };
    return params;
end;

function export:OnEnter_box__Spawner_v2_60()
    local params;
    params = {
        -- AISpawner01,
        [0] = "2101345585045968804",
        -- AISpawner02,
        [1] = "2104491747808663264",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1950240583");
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

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|1998163486");
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
                [0] = self.f_box_OutputOrder_v2_75_Out_0,
                [1] = self.f_box_OutputOrder_v2_75_Out_1,
                [2] = self.f_box_OutputOrder_v2_75_Out_2,
                [3] = self.f_box_OutputOrder_v2_75_Out_3,
                [4] = self.f_box_OutputOrder_v2_75_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|2071333123");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_44_Out,
    });
    params = {
        -- A,
        [0] = self.iDestroyCount,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|2081861730");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_49_Out,
    });
    params = {
        -- A,
        [0] = self.iDestroyCount,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_5()
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
        [6] = "1236862197",
        -- StopEvent,
        [7] = "1805296101",
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

function export:OnEnter_box_SoundModifier_v2_93()
    local params;
    params = {
        -- Pawns,
        [0] = "2101646015552573282",
        -- SoundId,
        [1] = "3421725274",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_37()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|2118388805");
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
                [0] = self.f_box_OutputOrder_v2_96_Out_0,
                [1] = self.f_box_OutputOrder_v2_96_Out_1,
                [2] = self.f_box_OutputOrder_v2_96_Out_2,
                [3] = self.f_box_OutputOrder_v2_96_Out_3,
                [4] = self.f_box_OutputOrder_v2_96_Out_4,
                [5] = self.f_box_OutputOrder_v2_96_Out_5,
                [6] = self.f_box_OutputOrder_v2_96_Out_6,
                [7] = self.f_box_OutputOrder_v2_96_Out_7,
            },
            count = 8,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B30A.domino|@UNI49_010_B30A_main|2121748917");
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

function export:OnExit_box_GetPosition_76_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_xPos_box_GetPosition_76 = l0:GetDataOutValue(2);
    self._sld_yPos_box_GetPosition_76 = l0:GetDataOutValue(4);
    self._sld_zPos_box_GetPosition_76 = l0:GetDataOutValue(5);
end;

function export:OnExit_box_CreateVector3_79_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_78;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.ePlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iDestroyCount = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.ProgressID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iDestroyCount = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_49_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iDestroyCount = l0:GetDataOutValue(0);
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
