LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_210/mis_210_b10.domino
-- User graph: MIS_210_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B05.WeaponsCheckAndDialog.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B10.ModernWeaponsDialogListener.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B10.RadiusFromTheLeaderCheck.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3541336050.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1306155232.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_210_B10 = nil;
    Globals.MIS_210_B10 = {
        eQgMMIS210 = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B10.MIS_210_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua")] = {
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
                name = "bRequiresAllPlayer",
                type = "bool",
            },
            [3] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [4] = {
                name = "bUse2d_ProximityCheck",
                type = "bool",
            },
            [5] = {
                name = "bUseDetectionModifier",
                type = "bool",
            },
            [6] = {
                name = "eMarker",
                type = "entity",
            },
            [7] = {
                name = "eRadiusTarget",
                type = "entity",
            },
            [8] = {
                name = "eTrigger",
                type = "entity",
            },
            [9] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [10] = {
                name = "fObjectiveTimer",
                type = "float",
            },
            [11] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [12] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 13,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
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
                name = "eObjectiveAreaMarker",
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
                name = "othersSpawned",
                type = "list",
            },
            [2] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B05.WeaponsCheckAndDialog.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "DialogDone",
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
                name = "Bow1",
                type = "entity",
            },
            [1] = {
                name = "Bow2",
                type = "entity",
            },
            [2] = {
                name = "Bow3",
                type = "entity",
            },
            [3] = {
                name = "BowDialogFact",
                type = "string",
            },
            [4] = {
                name = "QuestGiver",
                type = "entity",
            },
            [5] = {
                name = "QuestGiverGroup",
                type = "group",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B10.ModernWeaponsDialogListener.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "ProhibitedWeaponUsed",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AllEnemyGroup",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B10.RadiusFromTheLeaderCheck.debug.lua")] = {
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
                name = "FailFarDistance",
                type = "float",
            },
            [3] = {
                name = "FailNearDistance",
                type = "float",
            },
            [4] = {
                name = "LeadeID",
                type = "entity",
            },
            [5] = {
                name = "WarningFarDistance",
                type = "float",
            },
            [6] = {
                name = "WarningNearDistance",
                type = "float",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "CurrentWarnedPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_210_B10";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10";
    self.ePlayer = nil;
    self.gPlayers = nil;
    self.ePlayer2 = nil;
    self.ePlayer1 = nil;
    self.SomeoneNear = false;
    self.ModernWeaponUsed = false;
    self.box_ExitZoneWarningListener_v3_51 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|5975366");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_51_FailingZoneEntered,
    });
    self.box_Gate_v3_61 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|17737335");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_61_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_61_Out,
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|220036789");
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
    self.box_SpawnAI_37 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|379366889");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_37_Success,
    });
    self.box_Reach_GoTo_v3_49 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|390479885");
    l0:SetConnections({
        -- PlayerDetected,
        [1] = self.f_box_Reach_GoTo_v3_49_PlayerDetected,
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_49_Success,
    });
    self.box_Music_Quest_v2_45 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|402721196");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|462795048");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_RemoveEntity_v2_34 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|631838636");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_34_Out,
    });
    self.box_Brick_Secure_Area_v5_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
    l0 = self.box_Brick_Secure_Area_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Secure_Area_v5_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|686134574");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_Brick_Secure_Area_v5_14_Started,
        -- Success,
        [1] = self.f_box_Brick_Secure_Area_v5_14_Success,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|714294752");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|724748298");
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
    self.box_OnceOnly_v3_25 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|739919101");
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
                [0] = self.f_box_OnceOnly_v3_25_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|771964235");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
    self.box_Brick_Secure_Area_v5_56 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
    l0 = self.box_Brick_Secure_Area_v5_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Secure_Area_v5_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|945133174");
    l0:SetConnections({
        -- Success,
        [1] = self.f_box_Brick_Secure_Area_v5_56_Success,
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1056455869");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_WeaponsCheckAndDialog_31 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B05.WeaponsCheckAndDialog.debug.lua");
    l0 = self.box_WeaponsCheckAndDialog_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WeaponsCheckAndDialog_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1096520156");
    l0:SetConnections({
        -- DialogDone,
        [0] = self.f_box_WeaponsCheckAndDialog_31_DialogDone,
        -- Out,
        [1] = self.f_box_WeaponsCheckAndDialog_31_Out,
    });
    self.box_ModernWeaponsDialogListener_36 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B10.ModernWeaponsDialogListener.debug.lua");
    l0 = self.box_ModernWeaponsDialogListener_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ModernWeaponsDialogListener_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1187987592");
    l0:SetConnections({
        -- ProhibitedWeaponUsed,
        [0] = self.f_box_ModernWeaponsDialogListener_36_ProhibitedWeaponUsed,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1448706911");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_RemoveEntity_v2_5 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1468762868");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_33 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1500523151");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_55 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1626024875");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_v2_28 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1699007565");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_28_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_28_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_28_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_28_LoadedIdReceived,
    });
    self.box_RemoveEntity_v2_35 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1718663511");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_35_Out,
    });
    self.box_OnceOnly_v3_47 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1738043806");
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
                [0] = self.f_box_OnceOnly_v3_47_Out_0,
            },
            count = 2,
        },
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1974371017");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_OnceOnly_v3_13 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1979903813");
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
                [0] = self.f_box_OnceOnly_v3_13_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_29 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|2096556647");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_29_Success,
    });
    self.box_RadiusFromTheLeaderCheck_7 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B10.RadiusFromTheLeaderCheck.debug.lua");
    l0 = self.box_RadiusFromTheLeaderCheck_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadiusFromTheLeaderCheck_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|2104167055");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_RadiusFromTheLeaderCheck_7_FailingZoneEntered,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|503393449", "503393449", "MIS_210_B10", "In", "box_OutputOrder_v2_12.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1495276226", "1495276226", "MIS_210_B10", "OnLeaveZone", "box_MultipleOR_24.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_52_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_51();
    l0 = self.box_ExitZoneWarningListener_v3_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|781146368", "781146368", "MIS_210_B10", "box_Simple_Node_52.Out", "box_ExitZoneWarningListener_v3_51.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_50_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|81022010", "81022010", "MIS_210_B10", "box_Simple_Node_50.Out", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ExitZoneWarningListener_v3_51_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_50();
    l0 = self.box_ExitZoneWarningListener_v3_51;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1793280452", "1793280452", "MIS_210_B10", "box_ExitZoneWarningListener_v3_51.FailingZoneEntered", "box_Simple_Node_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_61_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_58();
    l0 = self.box_Gate_v3_61;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|496429182", "496429182", "MIS_210_B10", "box_Gate_v3_61.Closed", "box_ActivityObjectiveMarkerModifier_v3_58.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_61_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_58();
    l0 = self.box_Gate_v3_61;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|240582292", "240582292", "MIS_210_B10", "box_Gate_v3_61.Out", "box_ActivityObjectiveMarkerModifier_v3_58.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|187490052", "187490052", "MIS_210_B10", "box_OutputOrder_v2_12.Out", "box_ActivityAcknowledgeGate_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1897773870", "1897773870", "MIS_210_B10", "box_OutputOrder_v2_12.Out", "box_Print_v2_11.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_40_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1929830983", "1929830983", "MIS_210_B10", "box_Compare_Boolean_40.A_is_False", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_40_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_41();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1354063548", "1354063548", "MIS_210_B10", "box_Compare_Boolean_40.A_is_True", "box_SetActivityFact_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_42_Out()
    self:OnExit_box_SetBoolean_v2_42_Out();
end;

function export:f_box_MultipleOR_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_8();
    l0 = self.box_MultipleOR_39;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1607254635", "1607254635", "MIS_210_B10", "box_MultipleOR_39.Out", "box_ActivityEnd_8.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_22_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_49();
    l0 = self.box_Reach_GoTo_v3_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|798789379", "798789379", "MIS_210_B10", "box_ActivityObjectiveMarkerModifier_v3_22.Enabled", "box_Reach_GoTo_v3_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_22();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1043687326", "1043687326", "MIS_210_B10", "box_OutputOrder_v2_15.Out", "box_ActivityObjectiveMarkerModifier_v3_22.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_44();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|33975083", "33975083", "MIS_210_B10", "box_OutputOrder_v2_15.Out", "box_ActivityObjectiveMarkerModifier_v3_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Secure_Area_v5_56();
    l0 = self.box_Brick_Secure_Area_v5_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|404541136", "404541136", "MIS_210_B10", "box_OutputOrder_v2_57.Out", "box_Brick_Secure_Area_v5_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|40155832", "40155832", "MIS_210_B10", "box_OutputOrder_v2_57.Out", "box_Delay_v5_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_57_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ModernWeaponsDialogListener_36();
    l0 = self.box_ModernWeaponsDialogListener_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1455315741", "1455315741", "MIS_210_B10", "box_OutputOrder_v2_57.Out", "box_ModernWeaponsDialogListener_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_58_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|342711839", "342711839", "MIS_210_B10", "box_ActivityObjectiveMarkerModifier_v3_58.Disabled", "box_OutputOrder_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_37_Success()
    local l0, l1;
    l0 = self.box_SpawnAI_37;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|555819037", "555819037", "MIS_210_B10", "box_SpawnAI_37.Success", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Reach_GoTo_v3_49_PlayerDetected()
    local l0, l1;
    l0 = self.box_Reach_GoTo_v3_49;
    l1 = self.box_OnceOnly_v3_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|614845341", "614845341", "MIS_210_B10", "box_Reach_GoTo_v3_49.PlayerDetected", "box_OnceOnly_v3_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Reach_GoTo_v3_49_Success()
    local l0, l1;
    l0 = self.box_Reach_GoTo_v3_49;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|318545753", "318545753", "MIS_210_B10", "box_Reach_GoTo_v3_49.Success", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_4();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|62123539", "62123539", "MIS_210_B10", "box_ActivityInitialized_2.Out", "box_GetLocalPlayer_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_41_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|763884554", "763884554", "MIS_210_B10", "box_SetActivityFact_41.Out", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_20();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|9915544", "9915544", "MIS_210_B10", "box_SetContextualStrategy_19.Out", "box_SetContextualStrategy_20.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_55();
    l0 = self.box_Music_Quest_v2_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|236077071", "236077071", "MIS_210_B10", "box_OutputOrder_v2_54.Out", "box_Music_Quest_v2_55.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|2095372881", "2095372881", "MIS_210_B10", "box_OutputOrder_v2_54.Out", "box_ActivityRetry_v2_6.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_44_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Secure_Area_v5_14();
    l0 = self.box_Brick_Secure_Area_v5_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|740031550", "740031550", "MIS_210_B10", "box_ActivityObjectiveMarkerModifier_v3_44.Enabled", "box_Brick_Secure_Area_v5_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_35();
    l0 = self.box_RemoveEntity_v2_34;
    l1 = self.box_RemoveEntity_v2_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1573420556", "1573420556", "MIS_210_B10", "box_RemoveEntity_v2_34.Out", "box_RemoveEntity_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_34();
    l0 = self.box_RemoveEntity_v2_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|815094940", "815094940", "MIS_210_B10", "box_SetContextualStrategy_43.Out", "box_RemoveEntity_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Brick_Secure_Area_v5_14_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = self.box_Brick_Secure_Area_v5_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|187191184", "187191184", "MIS_210_B10", "box_Brick_Secure_Area_v5_14.Started", "box_OutputOrder_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Secure_Area_v5_14_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = self.box_Brick_Secure_Area_v5_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1309090600", "1309090600", "MIS_210_B10", "box_Brick_Secure_Area_v5_14.Success", "box_OutputOrder_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_26_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_26;
    l1 = self.box_OnceOnly_v3_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|906575526", "906575526", "MIS_210_B10", "box_MultipleOR_26.Out", "box_OnceOnly_v3_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = self.box_MultipleOR_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|789341071", "789341071", "MIS_210_B10", "box_MultipleOR_24.Out", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_25_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_OnceOnly_v3_25;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1470667589", "1470667589", "MIS_210_B10", "box_OnceOnly_v3_25.Out", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_9;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|36564730", "36564730", "MIS_210_B10", "box_MultipleOR_9.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_GetLocalPlayer_v2_4_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_16();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|337327540", "337327540", "MIS_210_B10", "box_GetLocalPlayer_v2_4.Out", "box_GetPlayerGroup_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Secure_Area_v5_56_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_61();
    l0 = self.box_Brick_Secure_Area_v5_56;
    l1 = self.box_Gate_v3_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|2131084269", "2131084269", "MIS_210_B10", "box_Brick_Secure_Area_v5_56.Success", "box_Gate_v3_61.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_21;
    l1 = self.box_OnceOnly_v3_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1234888277", "1234888277", "MIS_210_B10", "box_Delay_v5_21.TimeElapsed", "box_OnceOnly_v3_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_WeaponsCheckAndDialog_31_DialogDone()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_32();
    l0 = self.box_WeaponsCheckAndDialog_31;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1477500780", "1477500780", "MIS_210_B10", "box_WeaponsCheckAndDialog_31.DialogDone", "box_SetActivityFact_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_WeaponsCheckAndDialog_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_17();
    l0 = self.box_WeaponsCheckAndDialog_31;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|425553398", "425553398", "MIS_210_B10", "box_WeaponsCheckAndDialog_31.Out", "box_SetContextualStrategy_17.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ModernWeaponsDialogListener_36_ProhibitedWeaponUsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_42();
    l0 = self.box_ModernWeaponsDialogListener_36;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1328754831", "1328754831", "MIS_210_B10", "box_ModernWeaponsDialogListener_36.ProhibitedWeaponUsed", "box_SetBoolean_v2_42.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = self.box_Delay_v5_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|458289423", "458289423", "MIS_210_B10", "box_Delay_v5_18.TimeElapsed", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_44();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|88407129", "88407129", "MIS_210_B10", "box_OutputOrder_v2_48.Out", "box_ActivityObjectiveMarkerModifier_v3_44.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_60();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1272697311", "1272697311", "MIS_210_B10", "box_OutputOrder_v2_48.Out", "box_SetContextualStrategy_60.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_22();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1502858677", "1502858677", "MIS_210_B10", "box_AddActivityObjective_v2_38.Out", "box_ActivityObjectiveMarkerModifier_v3_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_38();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|697354656", "697354656", "MIS_210_B10", "box_OutputOrder_v2_1.Out", "box_AddActivityObjective_v2_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_51();
    l0 = self.box_ExitZoneWarningListener_v3_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1508470761", "1508470761", "MIS_210_B10", "box_OutputOrder_v2_1.Out", "box_ExitZoneWarningListener_v3_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_WeaponsCheckAndDialog_31();
    l0 = self.box_WeaponsCheckAndDialog_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1153068708", "1153068708", "MIS_210_B10", "box_OutputOrder_v2_1.Out", "box_WeaponsCheckAndDialog_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_45();
    l0 = self.box_Music_Quest_v2_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|897322425", "897322425", "MIS_210_B10", "box_OutputOrder_v2_1.Out", "box_Music_Quest_v2_45.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_5();
    l0 = self.box_RemoveEntity_v2_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1796663938", "1796663938", "MIS_210_B10", "box_OutputOrder_v2_1.Out", "box_RemoveEntity_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadiusFromTheLeaderCheck_7();
    l0 = self.box_RadiusFromTheLeaderCheck_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1506321486", "1506321486", "MIS_210_B10", "box_OutputOrder_v2_1.Out", "box_RadiusFromTheLeaderCheck_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_61();
    l0 = self.box_Gate_v3_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|718196498", "718196498", "MIS_210_B10", "box_SetContextualStrategy_27.Out", "box_Gate_v3_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_28_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_28_LoadedIdReceived();
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_CharacterLoadedIdListener_v2_28;
    l1 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1211872560", "1211872560", "MIS_210_B10", "box_CharacterLoadedIdListener_v2_28.LoadedIdReceived", "box_Delay_v5_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_33();
    l0 = self.box_RemoveEntity_v2_35;
    l1 = self.box_RemoveEntity_v2_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|898076211", "898076211", "MIS_210_B10", "box_RemoveEntity_v2_35.Out", "box_RemoveEntity_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_47_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_23();
    l0 = self.box_OnceOnly_v3_47;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|689406899", "689406899", "MIS_210_B10", "box_OnceOnly_v3_47.Out", "box_SetContextualStrategy_23.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_60_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_27();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1444402343", "1444402343", "MIS_210_B10", "box_SetContextualStrategy_60.Out", "box_SetContextualStrategy_27.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_16_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_28();
    l0 = self.box_CharacterLoadedIdListener_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1801883441", "1801883441", "MIS_210_B10", "box_GetPlayerGroup_v2_16.Out", "box_CharacterLoadedIdListener_v2_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_52();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1656689726", "1656689726", "MIS_210_B10", "box_OutputOrder_v2_30.Out", "box_Simple_Node_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_40();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1058062212", "1058062212", "MIS_210_B10", "box_OutputOrder_v2_30.Out", "box_Compare_Boolean_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_43();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1095943302", "1095943302", "MIS_210_B10", "box_SetContextualStrategy_23.Out", "box_SetContextualStrategy_43.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_19();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|426045547", "426045547", "MIS_210_B10", "box_SetContextualStrategy_17.Out", "box_SetContextualStrategy_19.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|170446294", "170446294", "MIS_210_B10", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_29();
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_SpawnAI_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|299972147", "299972147", "MIS_210_B10", "box_ActivityAcknowledgeGate_3.Reloaded", "box_SpawnAI_29.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_13_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_13;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|982634142", "982634142", "MIS_210_B10", "box_OnceOnly_v3_13.Out", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_29_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_37();
    l0 = self.box_SpawnAI_29;
    l1 = self.box_SpawnAI_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|112987044", "112987044", "MIS_210_B10", "box_SpawnAI_29.Success", "box_SpawnAI_37.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_RadiusFromTheLeaderCheck_7_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_10();
    l0 = self.box_RadiusFromTheLeaderCheck_7;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|822800629", "822800629", "MIS_210_B10", "box_RadiusFromTheLeaderCheck_7.FailingZoneEntered", "box_ActivityRetry_v2_10.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|@DisableFailArea");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_52_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|@FailLeaveArea");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_50_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_51()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2109317397702776372",
        -- WarningZoneTrigger,
        [3] = "2109316466785392175",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_61()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|41487495");
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

function export:OnEnter_box_ActivityEnd_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|131079124");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|153578159");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_40_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_40_A_is_True,
    });
    params = {
        -- A,
        [0] = self.ModernWeaponUsed,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|180718879");
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
        [8] = "MIS_210_B10_Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|183060518");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|222339292");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_22_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2108532740644148966",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_210_B10_OBJ_MOVE",
            id = "959304",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|273159398");
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

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|290405418");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [1] = self.f_box_OutputOrder_v2_57_Out_1,
                [2] = self.f_box_OutputOrder_v2_57_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|343786950");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_58_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2109649868464086361",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_210_B10_OBJ_MOVE",
            id = "959304",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_37()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108530339801474274",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_49()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresAllPlayer,
        [2] = false,
        -- bRequiresObjective,
        [3] = false,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eTrigger,
        [8] = "2107630794510960459",
        -- fDistanceFromTarget,
        [9] = 1,
        -- fObjectiveTimer,
        [10] = 0,
        -- gEnemyGroup,
        [11] = "#EAF8B15E",
        -- opt_Objective,
        [12] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_GoTo",
            id = "373019",
        },
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_45()
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
        [6] = "1306155232",
        -- StopEvent,
        [7] = "3541336050",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = true,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|557001743");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_41_Out,
    });
    params = {
        -- Fact,
        [0] = "ProhibitedWeaponUsed",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|566469728");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_19_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2107852524879873473",
        -- Group,
        [1] = "#6D55F15A",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|587448962");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|611266568");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_44_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2108532740644148966",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_210_B10_OBJ_MOVE",
            id = "959304",
        },
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_34()
    local params;
    params = {
        -- Group,
        [0] = "2107853059622178806",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|660202242");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_43_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2107853476911386676",
        -- Group,
        [1] = "#319A218F",
    };
    return params;
end;

function export:OnEnter_box_Brick_Secure_Area_v5_14()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bRequiresObjective,
        [1] = false,
        -- gEnemyGroup,
        [3] = "#0FE56BF5",
        -- Objective,
        [4] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_Secure_Area",
            id = "376594",
        },
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|825371198");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Secure_Area_v5_56()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bRequiresObjective,
        [1] = false,
        -- gEnemyGroup,
        [3] = "#96EC3A4F",
        -- Objective,
        [4] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_Secure_Area",
            id = "376594",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_WeaponsCheckAndDialog_31()
    local params;
    params = {
        -- Bow1,
        [0] = "2108031829960297835",
        -- Bow2,
        [1] = "2109206123318930867",
        -- QuestGiver,
        [4] = Globals.MIS_210_B10.eQgMMIS210,
        -- QuestGiverGroup,
        [5] = "#319A218F",
    };
    return params;
end;

function export:OnEnter_box_ModernWeaponsDialogListener_36()
    local params;
    params = {
        -- AllEnemyGroup,
        [0] = "#EAF8B15E",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1460371107");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "BowDialogDone",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1465362848");
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

function export:OnEnter_box_RemoveEntity_v2_5()
    local params;
    params = {
        -- Group,
        [0] = "2108721709457607021",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_33()
    local params;
    params = {
        -- Group,
        [0] = "2107853325155176483",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1507560828");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_38_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_210_B10_OBJ_MOVE",
            id = "959304",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1590218772");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
                [3] = self.f_box_OutputOrder_v2_1_Out_3,
                [4] = self.f_box_OutputOrder_v2_1_Out_4,
                [5] = self.f_box_OutputOrder_v2_1_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1602338636");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2107852564711081414",
        -- Group,
        [1] = "#1A52C1CC",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_55()
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
        [6] = "1306155232",
        -- StopEvent,
        [7] = "3541336050",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1637914842");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_27_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2107853609612874416",
        -- Group,
        [1] = "#319A218F",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_28()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015344322536250",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_35()
    local params;
    params = {
        -- Group,
        [0] = "2107853354488041516",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1798847967");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_60_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2107853609612874416",
        -- Group,
        [1] = "#A488FD80",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1815603092");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1829095659");
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

function export:OnEnter_box_SetContextualStrategy_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1861583097");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_23_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2107853476911386676",
        -- Group,
        [1] = "#A488FD80",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1893448521");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_17_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2107852451112551774",
        -- Group,
        [1] = "#319A218F",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1984305831");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B10.domino|@MIS_210_B10|1998533538");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_210_B10_CHOSEN_FAIL",
            id = "1036169",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_29()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108530290319172597",
    };
    return params;
end;

function export:OnEnter_box_RadiusFromTheLeaderCheck_7()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailFarDistance,
        [2] = 100,
        -- FailNearDistance,
        [3] = 80,
        -- LeadeID,
        [4] = Globals.MIS_210_B10.eQgMMIS210,
        -- WarningFarDistance,
        [5] = 70,
        -- WarningNearDistance,
        [6] = 60,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_42_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.ModernWeaponUsed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.ePlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_28_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_28;
    Globals.MIS_210_B10.eQgMMIS210 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayers = l0:GetDataOutValue(0);
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
