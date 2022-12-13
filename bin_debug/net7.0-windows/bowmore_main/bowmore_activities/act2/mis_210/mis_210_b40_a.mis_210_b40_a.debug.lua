LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_210/mis_210_b40_a.domino
-- User graph: MIS_210_B40_a
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
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/BurnableObjectListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystemScaleModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B40_a.Gas1Bypass.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1469470615.bnk]], "CSoundResource");
        cboxRes:LoadResource([[451671650.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1362558295.bnk]], "CSoundResource");
        cboxRes:LoadResource([[390070769.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3585884456.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2116203177.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B40_a.MIS_210_B40_a.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/BurnableObjectListener_v2.lua")] = {
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
                name = "AlmostBurnedOut",
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
                name = "StartedBurning",
                delayed = true,
            },
            [4] = {
                name = "StoppedBurning",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "checkOnEnable",
                type = "bool",
            },
            [2] = {
                name = "objectId",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/LookAtTrigger_v2.lua")] = {
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
                name = "EnterFOV",
                delayed = true,
            },
            [3] = {
                name = "LeaveFOV",
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
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "LookingPawn",
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
    metadataTable[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")] = {
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
                name = "Scale",
                type = "float",
            },
            [1] = {
                name = "ScaleTime",
                type = "float",
            },
            [2] = {
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v3.lua")] = {
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
                name = "OnAllInside",
                delayed = true,
            },
            [5] = {
                name = "OnEmpty",
                delayed = true,
            },
            [6] = {
                name = "OnOccupied",
                delayed = true,
            },
            [7] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 8,
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
                name = "requiresPawnsActive",
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
    metadataTable[GetPathID("Domino/System/TriggerState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsUnusable",
            },
            [1] = {
                name = "SetAsUsable",
            },
            [2] = {
                name = "SetDisabled",
            },
            [3] = {
                name = "SetEnabled",
            },
        },
        controlInCount = 4,
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
                name = "OnSetUnusable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUsable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "CheckAngle",
                type = "bool",
            },
            [1] = {
                name = "CheckLookAt",
                type = "bool",
            },
            [2] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B40_a.Gas1Bypass.debug.lua")] = {
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
    self._name = "MIS_210_B40_a";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a";
    self.ePlayer = nil;
    self.iGasDone = 0;
    self.iTotalGas = 0;
    self.IsValve1Done = false;
    self.box_RemoveEntity_v2_20 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1272726");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_20_Out,
    });
    self.box_Gate_v3_87 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|32955522");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_87_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_87_Out,
    });
    self.box_ActivityInitialized_8 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|95078866");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_8_Out,
    });
    self.box_StaticBreakableListener_61 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|95178006");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_61_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_61_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_61_OnBreakAll,
    });
    self.box_Gate_v3_140 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|127397481");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_140_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_140_Out,
    });
    self.box_Delay_v5_163 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|154843406");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_163_TimeElapsed,
    });
    self.box_OnceOnly_v3_142 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|169684154");
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
                [0] = self.f_box_OnceOnly_v3_142_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_149 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|214860785");
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
                [0] = self.f_box_OnceOnly_v3_149_Out_0,
            },
            count = 2,
        },
    });
    self.box_BurnableObjectListener_v2_80 = cbox:CreateBox("Domino/System/BurnableObjectListener_v2.lua");
    l0 = self.box_BurnableObjectListener_v2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BurnableObjectListener_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|233148151");
    l0:SetConnections({
        -- AlmostBurnedOut,
        [0] = self.f_box_BurnableObjectListener_v2_80_AlmostBurnedOut,
    });
    self.box_SoundModifier_v2_71 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|240868987");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_71_Started,
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|250628604");
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_MultipleOR_147 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|262111479");
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
        [0] = self.f_box_MultipleOR_147_Out,
    });
    self.box_PositionModifier_v2_23 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|300893835");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_23_Done,
    });
    self.box_SoundModifier_v2_34 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|332551375");
    l0:SetConnections({
    });
    self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|334766658");
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
        [0] = self.f_box_MultipleOR_41_Out,
    });
    self.box_SoundModifier_v2_36 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|336923626");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_76 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|348232352");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_76_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_76_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_76_OnBreakAll,
    });
    self.box_LookAtTrigger_v2_146 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|354472473");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LookAtTrigger_v2_146_Disabled,
        -- Enabled,
        [1] = self.f_box_LookAtTrigger_v2_146_Enabled,
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_146_EnterFOV,
    });
    self.box_OnceOnly_v3_148 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|392545299");
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
                [0] = self.f_box_OnceOnly_v3_148_Out_0,
            },
            count = 2,
        },
    });
    self.box_LookAtTrigger_v2_129 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|430623359");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LookAtTrigger_v2_129_Disabled,
        -- Enabled,
        [1] = self.f_box_LookAtTrigger_v2_129_Enabled,
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_129_EnterFOV,
    });
    self.box_SoundModifier_v2_90 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|440941931");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_75 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|444744123");
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
                [0] = self.f_box_OnceOnly_v3_75_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_141 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|448832249");
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
        [0] = self.f_box_MultipleOR_141_Out,
    });
    self.box_ProximityTrigger_v3_48 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|462254746");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_48_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_48_Enter,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_48_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_48_OnOccupied,
    });
    self.box_MultipleOR_180 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|477993658");
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
        [0] = self.f_box_MultipleOR_180_Out,
    });
    self.box_SoundModifier_v2_81 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|493027308");
    l0:SetConnections({
    });
    self.box_MultipleOR_84 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|549157056");
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
        [0] = self.f_box_MultipleOR_84_Out,
    });
    self.box_SoundModifier_v2_100 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|549610544");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_101 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|586351574");
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
                [0] = self.f_box_OnceOnly_v3_101_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_155 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|610481465");
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
                [0] = self.f_box_OnceOnly_v3_155_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|625770782");
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
        [0] = self.f_box_MultipleOR_44_Out,
    });
    self.box_MultipleOR_47 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|674426583");
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
        [0] = self.f_box_MultipleOR_47_Out,
    });
    self.box_OnceOnly_v3_73 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|681643335");
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
    self.box_OnceOnly_v3_145 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|698104801");
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
                [0] = self.f_box_OnceOnly_v3_145_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_151 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|704968440");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_151_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_151_Out,
    });
    self.box_OnceOnly_v3_60 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|715114378");
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
                [0] = self.f_box_OnceOnly_v3_60_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|736661807");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_StaticBreakableListener_31 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|743567287");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_31_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_31_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_31_OnBreakAll,
    });
    self.box_SoundModifier_v2_85 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|746453693");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_85_Started,
    });
    self.box_Delay_v5_131 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|813998235");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_131_TimeElapsed,
    });
    self.box_OnceOnly_v3_93 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|817190411");
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
                [0] = self.f_box_OnceOnly_v3_93_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_153 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|842138866");
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
        [0] = self.f_box_MultipleOR_153_Out,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|938744351");
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
    self.box_SoundModifier_v2_53 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|949725760");
    l0:SetConnections({
    });
    self.box_MultipleOR_133 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|951280065");
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
        [0] = self.f_box_MultipleOR_133_Out,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|964124387");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_SoundModifier_v2_29 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1016425837");
    l0:SetConnections({
    });
    self.box_Delay_v5_134 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1018312499");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_134_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_134_TimeElapsed,
    });
    self.box_OnceOnly_v3_14 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1043320176");
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
                [0] = self.f_box_OnceOnly_v3_14_Out_0,
            },
            count = 2,
        },
    });
    self.box_BurnableObjectListener_v2_95 = cbox:CreateBox("Domino/System/BurnableObjectListener_v2.lua");
    l0 = self.box_BurnableObjectListener_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BurnableObjectListener_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1068896325");
    l0:SetConnections({
        -- AlmostBurnedOut,
        [0] = self.f_box_BurnableObjectListener_v2_95_AlmostBurnedOut,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1074572669");
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
    self.box_SoundModifier_v2_54 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1119988139");
    l0:SetConnections({
    });
    self.box_MultipleOR_176 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1134926093");
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
        [0] = self.f_box_MultipleOR_176_Out,
    });
    self.box_MultipleOR_135 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1150588732");
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
    self.box_SoundModifier_v2_35 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1165869505");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_35_Started,
    });
    self.box_SoundModifier_v2_69 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1176754264");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_57 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1220503593");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_58 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1242799678");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_166 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1261385222");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_38 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1265476856");
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
                [0] = self.f_box_OnceOnly_v3_38_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_144 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1282268956");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_144_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_144_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_9 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1312488988");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_9_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_9_Reloaded,
    });
    self.box_SpawnAI_117 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1312565960");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_117_Success,
    });
    self.box_MultipleOR_123 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1312965013");
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
        [0] = self.f_box_MultipleOR_123_Out,
    });
    self.box_PositionModifier_v2_22 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1370313607");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_22_StartOut,
    });
    self.box_MultipleOR_96 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1390843424");
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
        [0] = self.f_box_MultipleOR_96_Out,
    });
    self.box_MultipleAND_v2_17 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1395452305");
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
        [0] = self.f_box_MultipleAND_v2_17_Out,
    });
    self.box_Delay_v5_161 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1404873176");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_161_TimeElapsed,
    });
    self.box_OnceOnly_v3_143 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1422371718");
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
                [0] = self.f_box_OnceOnly_v3_143_Out_0,
            },
            count = 2,
        },
    });
    self.box_RemoveEntity_v2_26 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1474208210");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_26_Out,
    });
    self.box_OnceOnly_v3_130 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1474325767");
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
                [0] = self.f_box_OnceOnly_v3_130_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_82 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1487809220");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_82_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_82_Unloaded,
    });
    self.box_SoundModifier_v2_39 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1546564571");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_42 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1595553130");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_42_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_42_Enter,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_42_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_42_OnOccupied,
    });
    self.box_SpawnAI_116 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1613366270");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_116_Spawned,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1628418110");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_MultipleAND_v2_50 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1628555583");
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
        [0] = self.f_box_MultipleAND_v2_50_Out,
    });
    self.box_OnceOnly_v3_45 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1634010914");
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
                [0] = self.f_box_OnceOnly_v3_45_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_150 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1669014508");
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
        [0] = self.f_box_MultipleOR_150_Out,
    });
    self.box_LookAtTrigger_v2_128 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1698873954");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LookAtTrigger_v2_128_Disabled,
        -- Enabled,
        [1] = self.f_box_LookAtTrigger_v2_128_Enabled,
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_128_EnterFOV,
    });
    self.box_StaticBreakableListener_55 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1718031535");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_55_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_55_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_55_OnBreakAll,
    });
    self.box_OnceOnly_v3_94 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1752656660");
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
                [0] = self.f_box_OnceOnly_v3_94_Out_0,
            },
            count = 2,
        },
    });
    self.box_GunsForHireSystemModifier_106 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1858906111");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_106_Disabled,
    });
    self.box_BurnableObjectListener_v2_177 = cbox:CreateBox("Domino/System/BurnableObjectListener_v2.lua");
    l0 = self.box_BurnableObjectListener_v2_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BurnableObjectListener_v2_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1948149593");
    l0:SetConnections({
        -- AlmostBurnedOut,
        [0] = self.f_box_BurnableObjectListener_v2_177_AlmostBurnedOut,
    });
    self.box_BurnableObjectListener_v2_56 = cbox:CreateBox("Domino/System/BurnableObjectListener_v2.lua");
    l0 = self.box_BurnableObjectListener_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BurnableObjectListener_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1949376920");
    l0:SetConnections({
        -- AlmostBurnedOut,
        [0] = self.f_box_BurnableObjectListener_v2_56_AlmostBurnedOut,
    });
    self.box_Music_Quest_v2_165 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1955773242");
    l0:SetConnections({
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1993105503");
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
    self.box_Gas1Bypass_1 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B40_a.Gas1Bypass.debug.lua");
    l0 = self.box_Gas1Bypass_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gas1Bypass_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2033864628");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_98 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2108611698");
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
                [0] = self.f_box_OnceOnly_v3_98_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2124894122");
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
        [0] = self.f_box_MultipleOR_18_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|827927599", "827927599", "MIS_210_B40_a", "In", "box_OutputOrder_v2_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_164();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|699738624", "699738624", "MIS_210_B40_a", "OnLeaveZone", "box_OutputOrder_v2_164.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_136_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_128();
    l0 = self.box_LookAtTrigger_v2_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1201245461", "1201245461", "MIS_210_B40_a", "box_Simple_Node_136.Out", "box_LookAtTrigger_v2_128.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_156_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_146();
    l0 = self.box_LookAtTrigger_v2_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|381525671", "381525671", "MIS_210_B40_a", "box_Simple_Node_156.Out", "box_LookAtTrigger_v2_146.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_103_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_29();
    l0 = self.box_SoundModifier_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1035690032", "1035690032", "MIS_210_B40_a", "box_Simple_Node_103.Out", "box_SoundModifier_v2_29.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
    params = self:OnEnter_box_SoundModifier_v2_71();
    l0 = self.box_SoundModifier_v2_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1674319543", "1674319543", "MIS_210_B40_a", "box_Simple_Node_103.Out", "box_SoundModifier_v2_71.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_102_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_35();
    l0 = self.box_SoundModifier_v2_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|548797314", "548797314", "MIS_210_B40_a", "box_Simple_Node_102.Out", "box_SoundModifier_v2_35.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1194249649", "1194249649", "MIS_210_B40_a", "box_Simple_Node_102.Out", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_104_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_58();
    l0 = self.box_SoundModifier_v2_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1490877589", "1490877589", "MIS_210_B40_a", "box_Simple_Node_104.Out", "box_SoundModifier_v2_58.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
    params = self:OnEnter_box_SoundModifier_v2_85();
    l0 = self.box_SoundModifier_v2_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|234187715", "234187715", "MIS_210_B40_a", "box_Simple_Node_104.Out", "box_SoundModifier_v2_85.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_105_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_Gas1Bypass_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1104092452", "1104092452", "MIS_210_B40_a", "box_Simple_Node_105.Out", "box_Gas1Bypass_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
    params = self:OnEnter_box_OutputOrder_v2_70();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|945980050", "945980050", "MIS_210_B40_a", "box_Simple_Node_105.Out", "box_OutputOrder_v2_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_138_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|385967782", "385967782", "MIS_210_B40_a", "box_Simple_Node_138.Out", "box_MultipleOR_141.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_157_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1965480529", "1965480529", "MIS_210_B40_a", "box_Simple_Node_157.Out", "box_MultipleOR_150.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntity_v2_20_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_20;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1833035237", "1833035237", "MIS_210_B40_a", "box_RemoveEntity_v2_20.Out", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_122_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|568185898", "568185898", "MIS_210_B40_a", "box_ActivityObjectiveMarkerModifier_v3_122.Enabled", "box_OutputOrder_v2_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_162_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_126();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1977342589", "1977342589", "MIS_210_B40_a", "box_OutputOrder_v2_162.Out", "box_TriggerState_v2_126.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_162_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_159();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2127132894", "2127132894", "MIS_210_B40_a", "box_OutputOrder_v2_162.Out", "box_ParticleSystem_v3_159.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_87_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_132();
    l0 = self.box_Gate_v3_87;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1383651578", "1383651578", "MIS_210_B40_a", "box_Gate_v3_87.Closed", "box_OutputOrder_v2_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_87_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_129();
    l0 = self.box_Gate_v3_87;
    l1 = self.box_LookAtTrigger_v2_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|68787171", "68787171", "MIS_210_B40_a", "box_Gate_v3_87.Out", "box_LookAtTrigger_v2_129.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_AddActivityObjectiveProgress_v2_64_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_64_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_122();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1008446621", "1008446621", "MIS_210_B40_a", "box_AddActivityObjectiveProgress_v2_64.Out", "box_ActivityObjectiveMarkerModifier_v3_122.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_97_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_102();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1413063049", "1413063049", "MIS_210_B40_a", "box_OutputOrder_v2_97.Out", "box_Simple_Node_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_97_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_140();
    l0 = self.box_Gate_v3_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1865712721", "1865712721", "MIS_210_B40_a", "box_OutputOrder_v2_97.Out", "box_Gate_v3_140.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_ActivityInitialized_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_3();
    l0 = self.box_ActivityInitialized_8;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|357367232", "357367232", "MIS_210_B40_a", "box_ActivityInitialized_8.Out", "box_GetLocalPlayer_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_61_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_177();
    l0 = self.box_StaticBreakableListener_61;
    l1 = self.box_BurnableObjectListener_v2_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|400989064", "400989064", "MIS_210_B40_a", "box_StaticBreakableListener_61.Enabled", "box_BurnableObjectListener_v2_177.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_61_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_61;
    l1 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|815170674", "815170674", "MIS_210_B40_a", "box_StaticBreakableListener_61.OnBreak", "box_MultipleOR_176.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_61_OnBreakAll()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_61;
    l1 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1299875813", "1299875813", "MIS_210_B40_a", "box_StaticBreakableListener_61.OnBreakAll", "box_MultipleOR_176.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityFact_25_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_178();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|50669047", "50669047", "MIS_210_B40_a", "box_GetActivityFact_25.FactNotSet", "box_Compare_Boolean_178.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_25_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1084421449", "1084421449", "MIS_210_B40_a", "box_GetActivityFact_25.FactSet", "box_MultipleOR_180.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_140_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_46();
    l0 = self.box_Gate_v3_140;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|542695508", "542695508", "MIS_210_B40_a", "box_Gate_v3_140.Closed", "box_ActivityObjectiveMarkerModifier_v3_46.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_140_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_140;
    l1 = self.box_OnceOnly_v3_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1918974104", "1918974104", "MIS_210_B40_a", "box_Gate_v3_140.Out", "box_OnceOnly_v3_143.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_163_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystemScaleModifier_168();
    l0 = self.box_Delay_v5_163;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|502957237", "502957237", "MIS_210_B40_a", "box_Delay_v5_163.TimeElapsed", "box_ParticleSystemScaleModifier_168.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_142_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_134();
    l0 = self.box_OnceOnly_v3_142;
    l1 = self.box_Delay_v5_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1968367180", "1968367180", "MIS_210_B40_a", "box_OnceOnly_v3_142.Out", "box_Delay_v5_134.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_OnceOnly_v3_149_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_51();
    l0 = self.box_OnceOnly_v3_149;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|164655230", "164655230", "MIS_210_B40_a", "box_OnceOnly_v3_149.Out", "box_ActivityObjectiveMarkerModifier_v3_51.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BurnableObjectListener_v2_80_AlmostBurnedOut()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_80;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|910212869", "910212869", "MIS_210_B40_a", "box_BurnableObjectListener_v2_80.AlmostBurnedOut", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StaticBreakableBreaker_19_Destroyed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1039190383", "1039190383", "MIS_210_B40_a", "box_StaticBreakableBreaker_19.Destroyed", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SoundModifier_v2_71_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_91();
    l0 = self.box_SoundModifier_v2_71;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|923726628", "923726628", "MIS_210_B40_a", "box_SoundModifier_v2_71.Started", "box_OutputOrder_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_72_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1896544033", "1896544033", "MIS_210_B40_a", "box_OutputOrder_v2_72.Out", "box_MultipleOR_4.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_72_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1472868333", "1472868333", "MIS_210_B40_a", "box_OutputOrder_v2_72.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_52_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_52;
    l1 = self.box_OnceOnly_v3_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1494248762", "1494248762", "MIS_210_B40_a", "box_MultipleOR_52.Out", "box_OnceOnly_v3_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_147_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_147;
    l1 = self.box_OnceOnly_v3_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|102460382", "102460382", "MIS_210_B40_a", "box_MultipleOR_147.Out", "box_OnceOnly_v3_148.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_178_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_179();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1911036092", "1911036092", "MIS_210_B40_a", "box_Compare_Boolean_178.A_is_False", "box_OutputOrder_v2_179.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_178_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1405104208", "1405104208", "MIS_210_B40_a", "box_Compare_Boolean_178.A_is_True", "box_MultipleOR_180.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PositionModifier_v2_23_Done()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_27();
    l0 = self.box_PositionModifier_v2_23;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|741770007", "741770007", "MIS_210_B40_a", "box_PositionModifier_v2_23.Done", "box_GetActivityFact_27.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_53();
    l0 = self.box_SoundModifier_v2_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1722523395", "1722523395", "MIS_210_B40_a", "box_OutputOrder_v2_13.Out", "box_SoundModifier_v2_53.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_36();
    l0 = self.box_SoundModifier_v2_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1792878811", "1792878811", "MIS_210_B40_a", "box_OutputOrder_v2_13.Out", "box_SoundModifier_v2_36.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_62();
    l0 = self.box_MultipleOR_41;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|988442763", "988442763", "MIS_210_B40_a", "box_MultipleOR_41.Out", "box_IntegerArithmetics_v2_62.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_76_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_80();
    l0 = self.box_StaticBreakableListener_76;
    l1 = self.box_BurnableObjectListener_v2_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2051245121", "2051245121", "MIS_210_B40_a", "box_StaticBreakableListener_76.Enabled", "box_BurnableObjectListener_v2_80.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_76_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_76;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1274220696", "1274220696", "MIS_210_B40_a", "box_StaticBreakableListener_76.OnBreak", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_76_OnBreakAll()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_76;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1391811992", "1391811992", "MIS_210_B40_a", "box_StaticBreakableListener_76.OnBreakAll", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetContextualStrategy_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_74();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|533528302", "533528302", "MIS_210_B40_a", "box_SetContextualStrategy_67.Out", "box_SetContextualStrategy_74.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_146_Disabled()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_146;
    l1 = self.box_MultipleOR_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|512221610", "512221610", "MIS_210_B40_a", "box_LookAtTrigger_v2_146.Disabled", "box_MultipleOR_147.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_LookAtTrigger_v2_146_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_144();
    l0 = self.box_LookAtTrigger_v2_146;
    l1 = self.box_Delay_v5_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|323864373", "323864373", "MIS_210_B40_a", "box_LookAtTrigger_v2_146.Enabled", "box_Delay_v5_144.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_LookAtTrigger_v2_146_EnterFOV()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_146;
    l1 = self.box_MultipleOR_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1663873980", "1663873980", "MIS_210_B40_a", "box_LookAtTrigger_v2_146.EnterFOV", "box_MultipleOR_147.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_148_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_144();
    l0 = self.box_OnceOnly_v3_148;
    l1 = self.box_Delay_v5_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2065211679", "2065211679", "MIS_210_B40_a", "box_OnceOnly_v3_148.Out", "box_Delay_v5_144.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_SetBoolean_v2_88_Out()
    self:OnExit_box_SetBoolean_v2_88_Out();
end;

function export:f_box_OutputOrder_v2_137_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1257884323", "1257884323", "MIS_210_B40_a", "box_OutputOrder_v2_137.Out", "box_Simple_Node_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_137_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_138();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|604918683", "604918683", "MIS_210_B40_a", "box_OutputOrder_v2_137.Out", "box_Simple_Node_138.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_129_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_131();
    l0 = self.box_LookAtTrigger_v2_129;
    l1 = self.box_Delay_v5_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|331202724", "331202724", "MIS_210_B40_a", "box_LookAtTrigger_v2_129.Disabled", "box_Delay_v5_131.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_LookAtTrigger_v2_129_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_131();
    l0 = self.box_LookAtTrigger_v2_129;
    l1 = self.box_Delay_v5_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1247566558", "1247566558", "MIS_210_B40_a", "box_LookAtTrigger_v2_129.Enabled", "box_Delay_v5_131.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_LookAtTrigger_v2_129_EnterFOV()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_129;
    l1 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1692261748", "1692261748", "MIS_210_B40_a", "box_LookAtTrigger_v2_129.EnterFOV", "box_MultipleOR_123.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1982412554", "1982412554", "MIS_210_B40_a", "box_OutputOrder_v2_28.Out", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_17();
    l0 = self.box_MultipleAND_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2040550720", "2040550720", "MIS_210_B40_a", "box_OutputOrder_v2_28.Out", "box_MultipleAND_v2_17.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OnceOnly_v3_75_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = self.box_OnceOnly_v3_75;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|425171756", "425171756", "MIS_210_B40_a", "box_OnceOnly_v3_75.Out", "box_OutputOrder_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_141_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_140();
    l0 = self.box_MultipleOR_141;
    l1 = self.box_Gate_v3_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1235341376", "1235341376", "MIS_210_B40_a", "box_MultipleOR_141.Out", "box_Gate_v3_140.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_48_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_48;
    l1 = self.box_MultipleOR_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1319925856", "1319925856", "MIS_210_B40_a", "box_ProximityTrigger_v3_48.Disabled", "box_MultipleOR_153.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v3_48_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_48;
    l1 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1873970975", "1873970975", "MIS_210_B40_a", "box_ProximityTrigger_v3_48.Enter", "box_MultipleOR_44.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_48_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_59();
    l0 = self.box_ProximityTrigger_v3_48;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|322725932", "322725932", "MIS_210_B40_a", "box_ProximityTrigger_v3_48.OnEmpty", "box_ActivityObjectiveMarkerModifier_v3_59.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_48_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_48;
    l1 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|557220251", "557220251", "MIS_210_B40_a", "box_ProximityTrigger_v3_48.OnOccupied", "box_MultipleOR_44.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_180_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_105();
    l0 = self.box_MultipleOR_180;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|386581124", "386581124", "MIS_210_B40_a", "box_MultipleOR_180.Out", "box_Simple_Node_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|269727087", "269727087", "MIS_210_B40_a", "box_OutputOrder_v2_70.Out", "box_MultipleOR_47.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_70_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|785418260", "785418260", "MIS_210_B40_a", "box_OutputOrder_v2_70.Out", "box_MultipleOR_37.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_84_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_84;
    l1 = self.box_OnceOnly_v3_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|55899819", "55899819", "MIS_210_B40_a", "box_MultipleOR_84.Out", "box_OnceOnly_v3_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|697116533", "697116533", "MIS_210_B40_a", "box_OutputOrder_v2_6.Out", "box_ActivityAcknowledgeGate_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|583228344", "583228344", "MIS_210_B40_a", "box_OutputOrder_v2_6.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_101_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = self.box_OnceOnly_v3_101;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1009925028", "1009925028", "MIS_210_B40_a", "box_OnceOnly_v3_101.Out", "box_OutputOrder_v2_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1010850208", "1010850208", "MIS_210_B40_a", "box_OutputOrder_v2_15.Out", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_17();
    l0 = self.box_MultipleAND_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|75611360", "75611360", "MIS_210_B40_a", "box_OutputOrder_v2_15.Out", "box_MultipleAND_v2_17.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_OnceOnly_v3_155_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_154();
    l0 = self.box_OnceOnly_v3_155;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1672940822", "1672940822", "MIS_210_B40_a", "box_OnceOnly_v3_155.Out", "box_OutputOrder_v2_154.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_127_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_161();
    l0 = self.box_Delay_v5_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1047115649", "1047115649", "MIS_210_B40_a", "box_ParticleSystem_v3_127.Started", "box_Delay_v5_161.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_44_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_44;
    l1 = self.box_OnceOnly_v3_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1873951692", "1873951692", "MIS_210_B40_a", "box_MultipleOR_44.Out", "box_OnceOnly_v3_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_164_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_165();
    l0 = self.box_Music_Quest_v2_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|39959871", "39959871", "MIS_210_B40_a", "box_OutputOrder_v2_164.Out", "box_Music_Quest_v2_165.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_164_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1369405830", "1369405830", "MIS_210_B40_a", "box_OutputOrder_v2_164.Out", "box_ActivityRetry_v2_2.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_47_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_47;
    l1 = self.box_OnceOnly_v3_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|290348743", "290348743", "MIS_210_B40_a", "box_MultipleOR_47.Out", "box_OnceOnly_v3_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_73_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_128();
    l0 = self.box_OnceOnly_v3_73;
    l1 = self.box_LookAtTrigger_v2_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1132657567", "1132657567", "MIS_210_B40_a", "box_OnceOnly_v3_73.Out", "box_LookAtTrigger_v2_128.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_145_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_137();
    l0 = self.box_OnceOnly_v3_145;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|325796337", "325796337", "MIS_210_B40_a", "box_OnceOnly_v3_145.Out", "box_OutputOrder_v2_137.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_151_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_51();
    l0 = self.box_Gate_v3_151;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1324363296", "1324363296", "MIS_210_B40_a", "box_Gate_v3_151.Closed", "box_ActivityObjectiveMarkerModifier_v3_51.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_151_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_151;
    l1 = self.box_OnceOnly_v3_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1533170890", "1533170890", "MIS_210_B40_a", "box_Gate_v3_151.Out", "box_OnceOnly_v3_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_60_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_60;
    l1 = self.box_MultipleOR_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|364524660", "364524660", "MIS_210_B40_a", "box_OnceOnly_v3_60.Out", "box_MultipleOR_153.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_32_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_32;
    l1 = self.box_OnceOnly_v3_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|554600511", "554600511", "MIS_210_B40_a", "box_MultipleOR_32.Out", "box_OnceOnly_v3_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StaticBreakableListener_31_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_56();
    l0 = self.box_StaticBreakableListener_31;
    l1 = self.box_BurnableObjectListener_v2_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1708948410", "1708948410", "MIS_210_B40_a", "box_StaticBreakableListener_31.Enabled", "box_BurnableObjectListener_v2_56.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_31_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_31;
    l1 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1351252835", "1351252835", "MIS_210_B40_a", "box_StaticBreakableListener_31.OnBreak", "box_MultipleOR_84.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_31_OnBreakAll()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_31;
    l1 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|584418035", "584418035", "MIS_210_B40_a", "box_StaticBreakableListener_31.OnBreakAll", "box_MultipleOR_84.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SoundModifier_v2_85_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = self.box_SoundModifier_v2_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1716066149", "1716066149", "MIS_210_B40_a", "box_SoundModifier_v2_85.Started", "box_OutputOrder_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_179_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_31();
    l0 = self.box_StaticBreakableListener_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1410168991", "1410168991", "MIS_210_B40_a", "box_OutputOrder_v2_179.Out", "box_StaticBreakableListener_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_179_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|520905669", "520905669", "MIS_210_B40_a", "box_OutputOrder_v2_179.Out", "box_OnceOnly_v3_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_131_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_131;
    l1 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2083492941", "2083492941", "MIS_210_B40_a", "box_Delay_v5_131.TimeElapsed", "box_MultipleOR_123.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_93_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_OnceOnly_v3_93;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|532492469", "532492469", "MIS_210_B40_a", "box_OnceOnly_v3_93.Out", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1283466218", "1283466218", "MIS_210_B40_a", "box_SetActivityFact_43.Out", "box_OutputOrder_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_152_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_156();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|74143432", "74143432", "MIS_210_B40_a", "box_OutputOrder_v2_152.Out", "box_Simple_Node_156.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_152_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_65();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|347107661", "347107661", "MIS_210_B40_a", "box_OutputOrder_v2_152.Out", "box_SetActivityFact_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_153_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_59();
    l0 = self.box_MultipleOR_153;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|331977491", "331977491", "MIS_210_B40_a", "box_MultipleOR_153.Out", "box_ActivityObjectiveMarkerModifier_v3_59.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_21_FactNotSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1767486135", "1767486135", "MIS_210_B40_a", "box_GetActivityFact_21.FactNotSet", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityFact_21_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_20();
    l0 = self.box_RemoveEntity_v2_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1343278119", "1343278119", "MIS_210_B40_a", "box_GetActivityFact_21.FactSet", "box_RemoveEntity_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystemScaleModifier_168_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_169();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1420468951", "1420468951", "MIS_210_B40_a", "box_ParticleSystemScaleModifier_168.Out", "box_TriggerState_v2_169.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_76();
    l0 = self.box_StaticBreakableListener_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2007171575", "2007171575", "MIS_210_B40_a", "box_OutputOrder_v2_49.Out", "box_StaticBreakableListener_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1913140203", "1913140203", "MIS_210_B40_a", "box_OutputOrder_v2_49.Out", "box_OnceOnly_v3_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_82();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_EntityStatusListener_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|125619987", "125619987", "MIS_210_B40_a", "box_MultipleOR_4.Out", "box_EntityStatusListener_82.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_133_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_92();
    l0 = self.box_MultipleOR_133;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1460850818", "1460850818", "MIS_210_B40_a", "box_MultipleOR_133.Out", "box_ActivityObjectiveMarkerModifier_v3_92.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_50();
    l0 = self.box_MultipleOR_16;
    l1 = self.box_MultipleAND_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|48652615", "48652615", "MIS_210_B40_a", "box_MultipleOR_16.Out", "box_MultipleAND_v2_50.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_132_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_129();
    l0 = self.box_LookAtTrigger_v2_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1899624433", "1899624433", "MIS_210_B40_a", "box_OutputOrder_v2_132.Out", "box_LookAtTrigger_v2_129.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_132_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_63();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|553554141", "553554141", "MIS_210_B40_a", "box_OutputOrder_v2_132.Out", "box_ActivityObjectiveMarkerModifier_v3_63.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_24();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|173037098", "173037098", "MIS_210_B40_a", "box_OutputOrder_v2_10.Out", "box_GetActivityFact_24.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_21();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|955630386", "955630386", "MIS_210_B40_a", "box_OutputOrder_v2_10.Out", "box_GetActivityFact_21.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_134_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_134;
    l1 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1987884964", "1987884964", "MIS_210_B40_a", "box_Delay_v5_134.Stopped", "box_MultipleOR_141.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_134_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_42();
    l0 = self.box_Delay_v5_134;
    l1 = self.box_ProximityTrigger_v3_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1618985982", "1618985982", "MIS_210_B40_a", "box_Delay_v5_134.TimeElapsed", "box_ProximityTrigger_v3_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_51_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_152();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|265025321", "265025321", "MIS_210_B40_a", "box_ActivityObjectiveMarkerModifier_v3_51.Disabled", "box_OutputOrder_v2_152.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_51_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_48();
    l0 = self.box_ProximityTrigger_v3_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|16152483", "16152483", "MIS_210_B40_a", "box_ActivityObjectiveMarkerModifier_v3_51.Enabled", "box_ProximityTrigger_v3_48.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_120_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|612996809", "612996809", "MIS_210_B40_a", "box_OutputOrder_v2_120.Out", "box_MultipleOR_4.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_120_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_117();
    l0 = self.box_SpawnAI_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1977667680", "1977667680", "MIS_210_B40_a", "box_OutputOrder_v2_120.Out", "box_SpawnAI_117.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_14_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_87();
    l0 = self.box_OnceOnly_v3_14;
    l1 = self.box_Gate_v3_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|363660369", "363660369", "MIS_210_B40_a", "box_OnceOnly_v3_14.Out", "box_Gate_v3_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_55();
    l0 = self.box_StaticBreakableListener_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|421645536", "421645536", "MIS_210_B40_a", "box_OutputOrder_v2_30.Out", "box_StaticBreakableListener_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1583301995", "1583301995", "MIS_210_B40_a", "box_OutputOrder_v2_30.Out", "box_OnceOnly_v3_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BurnableObjectListener_v2_95_AlmostBurnedOut()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_95;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|648663826", "648663826", "MIS_210_B40_a", "box_BurnableObjectListener_v2_95.AlmostBurnedOut", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_50();
    l0 = self.box_MultipleOR_12;
    l1 = self.box_MultipleAND_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|746708621", "746708621", "MIS_210_B40_a", "box_MultipleOR_12.Out", "box_MultipleAND_v2_50.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_99_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_103();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2046192830", "2046192830", "MIS_210_B40_a", "box_OutputOrder_v2_99.Out", "box_Simple_Node_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_127();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|954891787", "954891787", "MIS_210_B40_a", "box_OutputOrder_v2_99.Out", "box_ParticleSystem_v3_127.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_99_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_87();
    l0 = self.box_Gate_v3_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2028282291", "2028282291", "MIS_210_B40_a", "box_OutputOrder_v2_99.Out", "box_Gate_v3_87.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_89_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_64();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|783009925", "783009925", "MIS_210_B40_a", "box_AddActivityObjective_v2_89.Out", "box_AddActivityObjectiveProgress_v2_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_176_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_176;
    l1 = self.box_OnceOnly_v3_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|683514712", "683514712", "MIS_210_B40_a", "box_MultipleOR_176.Out", "box_OnceOnly_v3_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TriggerState_v2_169_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_172();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|10817510", "10817510", "MIS_210_B40_a", "box_TriggerState_v2_169.Enabled", "box_TriggerState_v2_172.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_135_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_135;
    l1 = self.box_OnceOnly_v3_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1024581251", "1024581251", "MIS_210_B40_a", "box_MultipleOR_135.Out", "box_OnceOnly_v3_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityFact_27_FactNotSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|634048099", "634048099", "MIS_210_B40_a", "box_GetActivityFact_27.FactNotSet", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityFact_27_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_19();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|58466959", "58466959", "MIS_210_B40_a", "box_GetActivityFact_27.FactSet", "box_StaticBreakableBreaker_19.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_35_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_SoundModifier_v2_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|291288834", "291288834", "MIS_210_B40_a", "box_SoundModifier_v2_35.Started", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_156();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|549925573", "549925573", "MIS_210_B40_a", "box_OutputOrder_v2_154.Out", "box_Simple_Node_156.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_157();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1241345410", "1241345410", "MIS_210_B40_a", "box_OutputOrder_v2_154.Out", "box_Simple_Node_157.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_54();
    l0 = self.box_SoundModifier_v2_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2045283679", "2045283679", "MIS_210_B40_a", "box_OutputOrder_v2_79.Out", "box_SoundModifier_v2_54.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_34();
    l0 = self.box_SoundModifier_v2_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1148345323", "1148345323", "MIS_210_B40_a", "box_OutputOrder_v2_79.Out", "box_SoundModifier_v2_34.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_38_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_97();
    l0 = self.box_OnceOnly_v3_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1212697752", "1212697752", "MIS_210_B40_a", "box_OnceOnly_v3_38.Out", "box_OutputOrder_v2_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_144_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_144;
    l1 = self.box_MultipleOR_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1762071", "1762071", "MIS_210_B40_a", "box_Delay_v5_144.Stopped", "box_MultipleOR_150.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_144_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_48();
    l0 = self.box_Delay_v5_144;
    l1 = self.box_ProximityTrigger_v3_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|522159948", "522159948", "MIS_210_B40_a", "box_Delay_v5_144.TimeElapsed", "box_ProximityTrigger_v3_48.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_139_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2079583146", "2079583146", "MIS_210_B40_a", "box_OutputOrder_v2_139.Out", "box_Simple_Node_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_139_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_43();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1482878120", "1482878120", "MIS_210_B40_a", "box_OutputOrder_v2_139.Out", "box_SetActivityFact_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_65_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|709872247", "709872247", "MIS_210_B40_a", "box_SetActivityFact_65.Out", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_9_Acknowledged()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_72();
    l0 = self.box_ActivityAcknowledgeGate_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|578501247", "578501247", "MIS_210_B40_a", "box_ActivityAcknowledgeGate_9.Acknowledged", "box_OutputOrder_v2_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_9_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_120();
    l0 = self.box_ActivityAcknowledgeGate_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1043558590", "1043558590", "MIS_210_B40_a", "box_ActivityAcknowledgeGate_9.Reloaded", "box_OutputOrder_v2_120.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_117_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_116();
    l0 = self.box_SpawnAI_117;
    l1 = self.box_SpawnAI_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|975976884", "975976884", "MIS_210_B40_a", "box_SpawnAI_117.Success", "box_SpawnAI_116.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_123_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_123;
    l1 = self.box_OnceOnly_v3_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1424778770", "1424778770", "MIS_210_B40_a", "box_MultipleOR_123.Out", "box_OnceOnly_v3_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PositionModifier_v2_22_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_23();
    l0 = self.box_PositionModifier_v2_22;
    l1 = self.box_PositionModifier_v2_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1900132214", "1900132214", "MIS_210_B40_a", "box_PositionModifier_v2_22.StartOut", "box_PositionModifier_v2_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_96_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_96;
    l1 = self.box_OnceOnly_v3_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|556164174", "556164174", "MIS_210_B40_a", "box_MultipleOR_96.Out", "box_OnceOnly_v3_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_86();
    l0 = self.box_MultipleAND_v2_17;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|353173970", "353173970", "MIS_210_B40_a", "box_MultipleAND_v2_17.Out", "box_EndActivityObjective_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_161_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_162();
    l0 = self.box_Delay_v5_161;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2022917541", "2022917541", "MIS_210_B40_a", "box_Delay_v5_161.TimeElapsed", "box_OutputOrder_v2_162.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_143_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_46();
    l0 = self.box_OnceOnly_v3_143;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1605291922", "1605291922", "MIS_210_B40_a", "box_OnceOnly_v3_143.Out", "box_ActivityObjectiveMarkerModifier_v3_46.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_89();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1532255209", "1532255209", "MIS_210_B40_a", "box_SetContextualStrategy_74.Out", "box_AddActivityObjective_v2_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_26_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_26;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|882613139", "882613139", "MIS_210_B40_a", "box_RemoveEntity_v2_26.Out", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_130_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_63();
    l0 = self.box_OnceOnly_v3_130;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|275770589", "275770589", "MIS_210_B40_a", "box_OnceOnly_v3_130.Out", "box_ActivityObjectiveMarkerModifier_v3_63.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_86_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|326956705", "326956705", "MIS_210_B40_a", "box_EndActivityObjective_v2_86.Out", "box_ActivityEnd_11.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_82_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_61();
    l0 = self.box_EntityStatusListener_82;
    l1 = self.box_StaticBreakableListener_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|11847702", "11847702", "MIS_210_B40_a", "box_EntityStatusListener_82.Loaded", "box_StaticBreakableListener_61.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_82_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_82;
    l1 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1855912374", "1855912374", "MIS_210_B40_a", "box_EntityStatusListener_82.Unloaded", "box_MultipleOR_176.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1911214865", "1911214865", "MIS_210_B40_a", "box_OutputOrder_v2_40.Out", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1122776398", "1122776398", "MIS_210_B40_a", "box_OutputOrder_v2_40.Out", "box_MultipleOR_37.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_91_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_81();
    l0 = self.box_SoundModifier_v2_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|204104630", "204104630", "MIS_210_B40_a", "box_OutputOrder_v2_91.Out", "box_SoundModifier_v2_81.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_91_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_69();
    l0 = self.box_SoundModifier_v2_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|145646461", "145646461", "MIS_210_B40_a", "box_OutputOrder_v2_91.Out", "box_SoundModifier_v2_69.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_42_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_42;
    l1 = self.box_MultipleOR_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1233864837", "1233864837", "MIS_210_B40_a", "box_ProximityTrigger_v3_42.Disabled", "box_MultipleOR_133.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v3_42_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_42;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1334975195", "1334975195", "MIS_210_B40_a", "box_ProximityTrigger_v3_42.Enter", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_42_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_92();
    l0 = self.box_ProximityTrigger_v3_42;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|517088539", "517088539", "MIS_210_B40_a", "box_ProximityTrigger_v3_42.OnEmpty", "box_ActivityObjectiveMarkerModifier_v3_92.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_42_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_42;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|718405029", "718405029", "MIS_210_B40_a", "box_ProximityTrigger_v3_42.OnOccupied", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_116_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_SpawnAI_116;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|865639805", "865639805", "MIS_210_B40_a", "box_SpawnAI_116.Spawned", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_17();
    l0 = self.box_MultipleOR_37;
    l1 = self.box_MultipleAND_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1415522007", "1415522007", "MIS_210_B40_a", "box_MultipleOR_37.Out", "box_MultipleAND_v2_17.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleAND_v2_50_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_50;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1028011747", "1028011747", "MIS_210_B40_a", "box_MultipleAND_v2_50.Out", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_45_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_45;
    l1 = self.box_MultipleOR_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|412636420", "412636420", "MIS_210_B40_a", "box_OnceOnly_v3_45.Out", "box_MultipleOR_133.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_150_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_151();
    l0 = self.box_MultipleOR_150;
    l1 = self.box_Gate_v3_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|918209246", "918209246", "MIS_210_B40_a", "box_MultipleOR_150.Out", "box_Gate_v3_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_LookAtTrigger_v2_128_Disabled()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_128;
    l1 = self.box_MultipleOR_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|203794919", "203794919", "MIS_210_B40_a", "box_LookAtTrigger_v2_128.Disabled", "box_MultipleOR_135.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_LookAtTrigger_v2_128_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_134();
    l0 = self.box_LookAtTrigger_v2_128;
    l1 = self.box_Delay_v5_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|812507329", "812507329", "MIS_210_B40_a", "box_LookAtTrigger_v2_128.Enabled", "box_Delay_v5_134.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_LookAtTrigger_v2_128_EnterFOV()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_128;
    l1 = self.box_MultipleOR_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|800896733", "800896733", "MIS_210_B40_a", "box_LookAtTrigger_v2_128.EnterFOV", "box_MultipleOR_135.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_55_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_95();
    l0 = self.box_StaticBreakableListener_55;
    l1 = self.box_BurnableObjectListener_v2_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|27656983", "27656983", "MIS_210_B40_a", "box_StaticBreakableListener_55.Enabled", "box_BurnableObjectListener_v2_95.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_55_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_55;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|31210447", "31210447", "MIS_210_B40_a", "box_StaticBreakableListener_55.OnBreak", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_55_OnBreakAll()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_55;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1308689793", "1308689793", "MIS_210_B40_a", "box_StaticBreakableListener_55.OnBreakAll", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_104();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1373177072", "1373177072", "MIS_210_B40_a", "box_OutputOrder_v2_68.Out", "box_Simple_Node_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_151();
    l0 = self.box_Gate_v3_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|934560281", "934560281", "MIS_210_B40_a", "box_OutputOrder_v2_68.Out", "box_Gate_v3_151.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_159_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_163();
    l0 = self.box_Delay_v5_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1624870925", "1624870925", "MIS_210_B40_a", "box_ParticleSystem_v3_159.Started", "box_Delay_v5_163.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_94_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_88();
    l0 = self.box_OnceOnly_v3_94;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|232666714", "232666714", "MIS_210_B40_a", "box_OnceOnly_v3_94.Out", "box_SetBoolean_v2_88.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_24_FactNotSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1018517657", "1018517657", "MIS_210_B40_a", "box_GetActivityFact_24.FactNotSet", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityFact_24_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_26();
    l0 = self.box_RemoveEntity_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1132498522", "1132498522", "MIS_210_B40_a", "box_GetActivityFact_24.FactSet", "box_RemoveEntity_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_63_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|766277939", "766277939", "MIS_210_B40_a", "box_ActivityObjectiveMarkerModifier_v3_63.Disabled", "box_MultipleOR_47.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GunsForHireSystemModifier_106_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_67();
    l0 = self.box_GunsForHireSystemModifier_106;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1387816073", "1387816073", "MIS_210_B40_a", "box_GunsForHireSystemModifier_106.Disabled", "box_SetContextualStrategy_67.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_46_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_139();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|928273519", "928273519", "MIS_210_B40_a", "box_ActivityObjectiveMarkerModifier_v3_46.Disabled", "box_OutputOrder_v2_139.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_46_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_42();
    l0 = self.box_ProximityTrigger_v3_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1716903219", "1716903219", "MIS_210_B40_a", "box_ActivityObjectiveMarkerModifier_v3_46.Enabled", "box_ProximityTrigger_v3_42.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_92_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1089401445", "1089401445", "MIS_210_B40_a", "box_ActivityObjectiveMarkerModifier_v3_92.Disabled", "box_OnceOnly_v3_145.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetLocalPlayer_v2_3_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_106();
    l0 = self.box_GunsForHireSystemModifier_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1177036476", "1177036476", "MIS_210_B40_a", "box_GetLocalPlayer_v2_3.Out", "box_GunsForHireSystemModifier_106.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_BurnableObjectListener_v2_177_AlmostBurnedOut()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_177;
    l1 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2121276749", "2121276749", "MIS_210_B40_a", "box_BurnableObjectListener_v2_177.AlmostBurnedOut", "box_MultipleOR_176.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BurnableObjectListener_v2_56_AlmostBurnedOut()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_56;
    l1 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1589114277", "1589114277", "MIS_210_B40_a", "box_BurnableObjectListener_v2_56.AlmostBurnedOut", "box_MultipleOR_84.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_22();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_PositionModifier_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|763347890", "763347890", "MIS_210_B40_a", "box_MultipleOR_7.Out", "box_PositionModifier_v2_22.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_25();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|584864373", "584864373", "MIS_210_B40_a", "box_OutputOrder_v2_83.Out", "box_GetActivityFact_25.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|360616097", "360616097", "MIS_210_B40_a", "box_OutputOrder_v2_83.Out", "box_OutputOrder_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2085982216", "2085982216", "MIS_210_B40_a", "box_OutputOrder_v2_83.Out", "box_OutputOrder_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_166();
    l0 = self.box_Music_Quest_v2_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|890792069", "890792069", "MIS_210_B40_a", "box_OutputOrder_v2_83.Out", "box_Music_Quest_v2_166.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_59_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|200215424", "200215424", "MIS_210_B40_a", "box_ActivityObjectiveMarkerModifier_v3_59.Disabled", "box_OnceOnly_v3_155.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_57();
    l0 = self.box_SoundModifier_v2_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1771652237", "1771652237", "MIS_210_B40_a", "box_OutputOrder_v2_33.Out", "box_SoundModifier_v2_57.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_100();
    l0 = self.box_SoundModifier_v2_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2112254755", "2112254755", "MIS_210_B40_a", "box_OutputOrder_v2_33.Out", "box_SoundModifier_v2_100.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_39();
    l0 = self.box_SoundModifier_v2_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2088345237", "2088345237", "MIS_210_B40_a", "box_OutputOrder_v2_33.Out", "box_SoundModifier_v2_39.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_90();
    l0 = self.box_SoundModifier_v2_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|986044754", "986044754", "MIS_210_B40_a", "box_OutputOrder_v2_33.Out", "box_SoundModifier_v2_90.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_98_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_146();
    l0 = self.box_OnceOnly_v3_98;
    l1 = self.box_LookAtTrigger_v2_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1114467460", "1114467460", "MIS_210_B40_a", "box_OnceOnly_v3_98.Out", "box_LookAtTrigger_v2_146.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_62_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_62_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_66();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|485343320", "485343320", "MIS_210_B40_a", "box_IntegerArithmetics_v2_62.Out", "box_SetActivityObjectiveProgress_v2_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_18_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_18;
    l1 = self.box_ActivityInitialized_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|358336780", "358336780", "MIS_210_B40_a", "box_MultipleOR_18.Out", "box_ActivityInitialized_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:OnEnter_box_Simple_Node_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|@EndLookAt2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_136_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|@EndLookAt3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_156_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|@Gas_Sound_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_103_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|@Gas_Sound_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_102_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|@Gas_Sound_3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_104_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|@Gas1AlreadyDone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_105_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|@StartNewObj2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_138_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|@StartNewObj3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_157_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_20()
    local params;
    params = {
        -- Group,
        [0] = "2107729079011645545",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|5709523");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_122_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2109469347243115027",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_210_B40_B50_OBJ_Ignite",
            id = "959308",
        },
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|6792102");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109388366718968385",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|19137377");
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
                [0] = self.f_box_OutputOrder_v2_162_Out_0,
                [1] = self.f_box_OutputOrder_v2_162_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_87()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|45687290");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_64_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_210_B40_B50_OBJ_Ignite",
            id = "959308",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|75767917");
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
                [0] = self.f_box_OutputOrder_v2_97_Out_0,
                [1] = self.f_box_OutputOrder_v2_97_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_61()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2108680496318782888",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|116238241");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_25_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_25_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015330774929869",
        -- Fact,
        [1] = "Gas1Done",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_140()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_163()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_BurnableObjectListener_v2_80()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkOnEnable,
        [1] = false,
        -- objectId,
        [2] = "2108639771692632009",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|238777117");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_19_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2108680496318782888",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_71()
    local params;
    params = {
        -- Pawns,
        [0] = "2109191175849137135",
        -- SoundId,
        [1] = "1362558295",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|247212783");
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
                [0] = self.f_box_OutputOrder_v2_72_Out_0,
                [1] = self.f_box_OutputOrder_v2_72_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|277488342");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_178_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_178_A_is_True,
    });
    params = {
        -- A,
        [0] = self.IsValve1Done,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_23()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2108612434439702634",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107725929483610692",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|326499789");
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

function export:OnEnter_box_SoundModifier_v2_34()
    local params;
    params = {
        -- Pawns,
        [0] = "2109191186460726259",
        -- SoundId,
        [1] = "2116203177",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_36()
    local params;
    params = {
        -- Pawns,
        [0] = "2109191180926342129",
        -- SoundId,
        [1] = "2116203177",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_76()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2108639771692632009",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|352618304");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_67_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108032113004516163",
        -- Group,
        [1] = "#319A218F",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_146()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109470643750762221",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|413963952");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_88_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|419572249");
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

function export:OnEnter_box_LookAtTrigger_v2_129()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109468837519835383",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|435775617");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_90()
    local params;
    params = {
        -- Pawns,
        [0] = "2109191152323285995",
        -- SoundId,
        [1] = "3585884456",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_48()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109387043172786721",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_81()
    local params;
    params = {
        -- Pawns,
        [0] = "2109191104432722907",
        -- SoundId,
        [1] = "390070769",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|522496409");
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

function export:OnEnter_box_SoundModifier_v2_100()
    local params;
    params = {
        -- Pawns,
        [0] = "2109191149454382057",
        -- SoundId,
        [1] = "3585884456",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|564874858");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|591694171");
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

function export:OnEnter_box_ParticleSystem_v3_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|625394208");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_127_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109481638548234210",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|646387662");
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
                [0] = self.f_box_OutputOrder_v2_164_Out_0,
                [1] = self.f_box_OutputOrder_v2_164_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_151()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2108680496318782888",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_85()
    local params;
    params = {
        -- Pawns,
        [0] = "2109191186460726259",
        -- SoundId,
        [1] = "1362558295",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|803741200");
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
                [0] = self.f_box_OutputOrder_v2_179_Out_0,
                [1] = self.f_box_OutputOrder_v2_179_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|809800206");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_131()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 60,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|829775843");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_43_Out,
    });
    params = {
        -- Fact,
        [0] = "Gas2ValveDestroyed",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|840550507");
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
                [0] = self.f_box_OutputOrder_v2_152_Out_0,
                [1] = self.f_box_OutputOrder_v2_152_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|885485668");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_21_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_21_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015330774929869",
        -- Fact,
        [1] = "wallGas3Done",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystemScaleModifier_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystemScaleModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystemScaleModifier_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|896685224");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ParticleSystemScaleModifier_168_Out,
    });
    params = {
        -- Scale,
        [0] = 4,
        -- ScaleTime,
        [1] = 8,
        -- TargetEntities,
        [2] = "2109481723138957284",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|907485462");
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
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|932574983");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_210_B40_B50_OBJ_Ignite",
            id = "959308",
        },
        -- Progress,
        [1] = self.iGasDone,
        -- ProgressId,
        [2] = self.iTotalGas,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_53()
    local params;
    params = {
        -- Pawns,
        [0] = "2109191112355763165",
        -- SoundId,
        [1] = "390070769",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|968699776");
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
                [0] = self.f_box_OutputOrder_v2_132_Out_0,
                [1] = self.f_box_OutputOrder_v2_132_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|975944082");
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

function export:OnEnter_box_SoundModifier_v2_29()
    local params;
    params = {
        -- Pawns,
        [0] = "2109191122166240225",
        -- SoundId,
        [1] = "3585884456",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_134()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 90,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1023892901");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_51_Disabled,
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_51_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2107716071736748584",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_210_B40_B50_OBJ_Ignite",
            id = "959308",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1032152846");
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
            },
            count = 3,
        },
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1051261490");
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

function export:OnEnter_box_BurnableObjectListener_v2_95()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkOnEnable,
        [1] = false,
        -- objectId,
        [2] = "2108640383352178862",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1102036790");
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

function export:OnEnter_box_AddActivityObjective_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1111848699");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_89_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_210_B40_B50_OBJ_Ignite",
            id = "959308",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_54()
    local params;
    params = {
        -- Pawns,
        [0] = "2109191118296994783",
        -- SoundId,
        [1] = "390070769",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1143655785");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_169_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109509673045475562",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1165613820");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_27_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_27_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015330774929869",
        -- Fact,
        [1] = "Gas1Done",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_35()
    local params;
    params = {
        -- Pawns,
        [0] = "2109191180926342129",
        -- SoundId,
        [1] = "1362558295",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_69()
    local params;
    params = {
        -- Pawns,
        [0] = "2109191175849137135",
        -- SoundId,
        [1] = "2116203177",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1215450689");
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
                [0] = self.f_box_OutputOrder_v2_154_Out_0,
                [1] = self.f_box_OutputOrder_v2_154_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_57()
    local params;
    params = {
        -- Pawns,
        [0] = "2109191145987789799",
        -- SoundId,
        [1] = "3585884456",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1233218269");
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
                [0] = self.f_box_OutputOrder_v2_79_Out_0,
                [1] = self.f_box_OutputOrder_v2_79_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_58()
    local params;
    params = {
        -- Pawns,
        [0] = "2109191129747444707",
        -- SoundId,
        [1] = "3585884456",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_166()
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
        [6] = "1469470615",
        -- StopEvent,
        [7] = "451671650",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = true,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_144()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 90,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1309055218");
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
                [0] = self.f_box_OutputOrder_v2_139_Out_0,
                [1] = self.f_box_OutputOrder_v2_139_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1309961319");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_65_Out,
    });
    params = {
        -- Fact,
        [0] = "Gas3ValveDestroyed",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_117()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108614113146980023",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_22()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2107729815984407922",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108611428878395423",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_17()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_161()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1463209004");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_74_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108032113004516163",
        -- Group,
        [1] = "#A488FD80",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_26()
    local params;
    params = {
        -- Group,
        [0] = "2107729079009548361",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1483475332");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_86_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_210_B40_B50_OBJ_Ignite",
            id = "959308",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_82()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108680496318782888",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1492058828");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1542017804");
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
                [0] = self.f_box_OutputOrder_v2_91_Out_0,
                [1] = self.f_box_OutputOrder_v2_91_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_39()
    local params;
    params = {
        -- Pawns,
        [0] = "2109191153466233837",
        -- SoundId,
        [1] = "3585884456",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_42()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109387185015759405",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_116()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108614113151174336",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_50()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_128()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109469643549725567",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_55()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2108640383352178862",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1726933825");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1727984613");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_159_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109481723138957284",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1728630237");
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
        [8] = "MIS_210_B40a_Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1754979020");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_24_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_24_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015330774929869",
        -- Fact,
        [1] = "wallGas2Done",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1810700753");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109388366718968385",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1842787852");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_63_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2107245702538073164",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_210_B40_B50_OBJ_Ignite",
            id = "959308",
        },
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_106()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1874677153");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_46_Disabled,
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_46_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2107716067586484768",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_210_B40_B50_OBJ_Ignite",
            id = "959308",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1906273589");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_92_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2109387171776438827",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_210_B40_B50_OBJ_Ignite",
            id = "959308",
        },
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1917862682");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_3_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BurnableObjectListener_v2_177()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkOnEnable,
        [1] = false,
        -- objectId,
        [2] = "2108680496318782888",
    };
    return params;
end;

function export:OnEnter_box_BurnableObjectListener_v2_56()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkOnEnable,
        [1] = false,
        -- objectId,
        [2] = "2108680496318782888",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_165()
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
        [6] = "1469470615",
        -- StopEvent,
        [7] = "451671650",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|1996786954");
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2019525785");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_59_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2109387139354468901",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_210_B40_B50_OBJ_Ignite",
            id = "959308",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2024920119");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
                [2] = self.f_box_OutputOrder_v2_33_Out_2,
                [3] = self.f_box_OutputOrder_v2_33_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2086319764");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B40_a.domino|@MIS_210_B40_a|2124128108");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_62_Out,
    });
    params = {
        -- A,
        [0] = self.iGasDone,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_64_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.iTotalGas = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_88_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.IsValve1Done = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.ePlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_62_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iGasDone = l0:GetDataOutValue(0);
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
