LUAC�Q -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/treasurehunt/th_e201.domino
-- User graph: TH_E201_B10
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/ListFinder.lua");
        cboxRes:RegisterBox("Domino/System/ListWriter_v2.lua");
        cboxRes:RegisterBox("Domino/System/MetaBreakableModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/System/UnlockDoor.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/TreasureHunt/TH_E201.TH_E201_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/DynamicLightModifier.lua")] = {
        stateless = true,
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
                name = "dynamicLightId",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/ListFinder.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Find",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Found",
                delayed = false,
            },
            [1] = {
                name = "NotFound",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Data",
                type = "entity",
            },
            [1] = {
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Index",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/ListWriter_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Remove",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Data",
                type = "entity",
            },
            [1] = {
                name = "Index",
                type = "int",
            },
            [2] = {
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MetaBreakableModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDamageable",
            },
            [1] = {
                name = "SetDisabled",
            },
            [2] = {
                name = "SetEnabled",
            },
            [3] = {
                name = "SetUnDamageable",
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
                name = "OnSetDamageable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUnDamageable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/SetInteger_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromFloat",
            },
            [1] = {
                name = "FromInteger",
            },
            [2] = {
                name = "FromString",
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
            [0] = {
                name = "Float",
                type = "float",
            },
            [1] = {
                name = "Integer",
                type = "int",
            },
            [2] = {
                name = "String",
                type = "string",
            },
            [3] = {
                name = "UseFloor",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "Target",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/StimsEmitter_v2.lua")] = {
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
                name = "StimsEmitter",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/UnlockDoor.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Unlock",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "door",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "TH_E201_B10";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10";
    self.Out = DummyFunction;
    self.iFishCounter = 0;
    self.lFishInteracted = {
    };
    self.eInteractor = nil;
    self.eInteractFish1 = nil;
    self.eInteractFish2 = nil;
    self.eInteractFish3 = nil;
    self.eInteractFish4 = nil;
    self.eInteractFish5 = nil;
    self.eInteractFish6 = nil;
    self.fire = "";
    self.bIsDoorUnlocked = false;
    self.box_UniversalInteractionModifier_v2_192 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|36259334");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_192_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_259 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_259;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_259");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|44566843");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_17 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|45887110");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_17_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_231 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|81119151");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_231_Interacted,
    });
    self.box_UniversalInteractionModifier_v2_119 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|93676414");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_119_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_293 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_293;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_293");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|108973071");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_293_Disabled,
    });
    self.box_StartCelebration_39 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|116420219");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_39_Ended,
    });
    self.box_UniversalInteractionModifier_v2_228 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|133794947");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_228_Interacted,
    });
    self.box_Delay_v5_334 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_334;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_334");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|174837103");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_334_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_15 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|192404676");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_15_Disabled,
    });
    self.box_Delay_v5_280 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_280;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_280");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|197543192");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_280_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_31 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|199230430");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_155 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|205108041");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_155_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_112 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|210762123");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_112_Disabled,
    });
    self.box_Delay_v5_290 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_290;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_290");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|215429788");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_290_TimeElapsed,
    });
    self.box_MetaBreakableModifier_v2_201 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|239440851");
    l0:SetConnections({
    });
    self.box_Delay_v5_330 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_330;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_330");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|242199766");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_330_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_210 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|242221851");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_151 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|247701368");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_151_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_100 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|262244799");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_100_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_100_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_219 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|264480942");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_219_Interacted,
    });
    self.box_MetaBreakableModifier_v2_262 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_262;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_262");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|272826022");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_262_OnSetUnDamageable,
    });
    self.box_UniversalInteractionModifier_v2_63 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|297798521");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_63_Interacted,
    });
    self.box_MetaBreakableModifier_v2_203 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|309380279");
    l0:SetConnections({
    });
    self.box_Delay_v5_324 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_324;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_324");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|322189410");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_324_TimeElapsed,
    });
    self.box_Delay_v5_325 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_325;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_325");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|348210801");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_325_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_131 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|353806858");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_131_Disabled,
    });
    self.box_Delay_v5_285 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_285;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_285");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|386040555");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_285_TimeElapsed,
    });
    self.box_Delay_v5_332 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_332;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_332");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|391482889");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_332_TimeElapsed,
    });
    self.box_Delay_v5_279 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_279;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_279");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|395560538");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_279_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_30 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|398781441");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_241 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|399183486");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_241_Interacted,
    });
    self.box_UniversalInteractionModifier_v2_260 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_260");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|415908966");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_260_Enabled,
    });
    self.box_Delay_v5_275 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_275;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_275");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|422892980");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_275_TimeElapsed,
    });
    self.box_UniversalInteractionListener_102 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|431298296");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionListener_102_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_102_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_102_Interacted,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|460430059");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_MetaBreakableModifier_v2_211 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|460559484");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_211_OnSetUnDamageable,
    });
    self.box_UniversalInteractionModifier_v2_79 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|464201562");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_61 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|465935716");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_55 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|468283911");
    l0:SetConnections({
    });
    self.box_MetaBreakableModifier_v2_111 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|478180833");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_250 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|505732648");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_250_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_176 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|521538551");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_126 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|524492437");
    l0:SetConnections({
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_126_Use,
    });
    self.box_Delay_v5_243 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|527305477");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_243_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|536500854");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_UniversalInteractionModifier_v2_197 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|545381844");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_197_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_54 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|623961487");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_54_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_54_Enabled,
    });
    self.box_Delay_v5_230 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|663936375");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_230_TimeElapsed,
    });
    self.box_MetaBreakableModifier_v2_264 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_264;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_264");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|672729402");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_302 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_302;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_302");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|676720301");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_302_Enter,
    });
    self.box_Delay_v5_216 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|693156994");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_216_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_240 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|704005489");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_240_Interacted,
    });
    self.box_UniversalInteractionModifier_v2_59 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|704711154");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_110 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|711939887");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_213 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|714010810");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_213_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_74 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|725308107");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_133 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|733432205");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_133_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_133_Enabled,
    });
    self.box_MultipleOR_299 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_299;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_299");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|742981654");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 7,
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
        [0] = self.f_box_MultipleOR_299_Out,
    });
    self.box_MultipleOR_142 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|784931744");
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
        [0] = self.f_box_MultipleOR_142_Out,
    });
    self.box_UniversalInteractionModifier_v2_215 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|797353081");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_215_Interacted,
    });
    self.box_UniversalInteractionModifier_v2_120 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|798203403");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_120_Enabled,
    });
    self.box_Delay_v5_227 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|804782264");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_227_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_81 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|806384497");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_81_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_136 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|815883667");
    l0:SetConnections({
    });
    self.box_MetaBreakableModifier_v2_266 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_266;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_266");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|864381804");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_266_OnSetUnDamageable,
    });
    self.box_RemoveEntity_v2_292 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_292;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_292");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|865612051");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_292_Out,
    });
    self.box_Delay_v5_331 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_331;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_331");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|900142377");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_331_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_77 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|908018116");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_77_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_77_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_193 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|911843678");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_193_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_222 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|921551583");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_19 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|922759645");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_19_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_90 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|924917783");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_90_Disabled,
    });
    self.box_UniversalInteractionListener_71 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|937071631");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionListener_71_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_71_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_71_Interacted,
    });
    self.box_Delay_v5_282 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_282;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_282");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|953018502");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_282_TimeElapsed,
    });
    self.box_OnceOnly_v3_312 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_312;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_312");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|964850558");
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
                [0] = self.f_box_OnceOnly_v3_312_Out_0,
            },
            count = 2,
        },
    });
    self.box_UniversalInteractionModifier_v2_237 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|967138818");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_237_Enabled,
    });
    self.box_MetaBreakableModifier_v2_265 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_265;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_265");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|982556152");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_265_OnSetUnDamageable,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|982608201");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_Delay_v5_326 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_326;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_326");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|982689771");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_326_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_198 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|987360275");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_198_Disabled,
    });
    self.box_ProximityTrigger_v3_127 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|993372366");
    l0:SetConnections({
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_127_Use,
    });
    self.box_RemoveEntity_v2_37 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1013137127");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_37_Out,
    });
    self.box_RemoveEntity_v2_298 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_298;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_298");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1037088172");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_143 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1042530578");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_143_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_143_Enabled,
    });
    self.box_Delay_v5_311 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_311;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_311");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1043744152");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_311_TimeElapsed,
    });
    self.box_Delay_v5_295 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_295;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_295");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1044791423");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_295_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_186 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1060444330");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_186_Interacted,
    });
    self.box_SpawnAI_267 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_267;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_267");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1060918164");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_267_Spawned,
    });
    self.box_UniversalInteractionModifier_v2_89 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1062300714");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_89_Interacted,
    });
    self.box_Gate_v3_64 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1077466575");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_64_Out,
    });
    self.box_UniversalInteractionModifier_v2_284 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_284;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_284");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1079393171");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_221 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1088761739");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_170 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1091385530");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_170_Enabled,
    });
    self.box_MetaBreakableModifier_v2_263 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_263;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_263");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1097586604");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_263_OnSetUnDamageable,
    });
    self.box_MultipleAND_v2_303 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_303;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_303");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1112461361");
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
        [0] = self.f_box_MultipleAND_v2_303_Out,
    });
    self.box_UniversalInteractionModifier_v2_251 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1132270217");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_251_Interacted,
    });
    self.box_UniversalInteractionModifier_v2_249 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1180258745");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_300 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_300;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_300");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1188771338");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_300_Enter,
    });
    self.box_UniversalInteractionModifier_v2_238 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1210889153");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_238_Interacted,
    });
    self.box_MultipleOR_66 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1236499922");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 8,
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
        [0] = self.f_box_MultipleOR_66_Out,
    });
    self.box_Delay_v5_333 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_333;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_333");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1254409713");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_333_TimeElapsed,
    });
    self.box_MultipleOR_177 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1257483964");
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
        [0] = self.f_box_MultipleOR_177_Out,
    });
    self.box_UniversalInteractionModifier_v2_223 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1259381436");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_223_Enabled,
    });
    self.box_Delay_v5_329 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_329;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_329");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1273375599");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_329_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_207 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1276202386");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_207_Interacted,
    });
    self.box_UniversalInteractionModifier_v2_62 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1289740252");
    l0:SetConnections({
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1311151289");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_Gate_v3_317 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_317;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_317");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1317994660");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_317_Out,
    });
    self.box_UniversalInteractionListener_108 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1349870949");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionListener_108_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_108_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_108_Interacted,
    });
    self.box_ProximityTrigger_v3_276 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_276;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_276");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1352966712");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_276_Enter,
    });
    self.box_UniversalInteractionModifier_v2_168 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1353343786");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_168_Interacted,
    });
    self.box_Delay_v5_209 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1371912999");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_209_TimeElapsed,
    });
    self.box_Delay_v5_258 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_258");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1373713784");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_258_TimeElapsed,
    });
    self.box_UniversalInteractionListener_188 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1373719297");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionListener_188_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_188_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_188_Interacted,
    });
    self.box_ProximityRadiusListener_v3_185 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1389152224");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_185_SomeoneNear,
    });
    self.box_UniversalInteractionModifier_v2_205 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1405717843");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_205_Interacted,
    });
    self.box_Gate_v3_58 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1408194673");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_58_Out,
    });
    self.box_UniversalInteractionModifier_v2_229 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_229;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1427459931");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_130 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1430568720");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_130_Disabled,
    });
    self.box_StartCelebration_315 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_315;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_315");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1437355721");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_315_Ended,
    });
    self.box_Delay_v5_124 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1444474394");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_124_TimeElapsed,
    });
    self.box_MetaBreakableModifier_v2_113 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1458257723");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_128 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1462490103");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_128_Interacted,
    });
    self.box_Gate_v3_41 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1479494724");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_41_Out,
    });
    self.box_Delay_v5_327 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_327;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_327");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1497668684");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_327_TimeElapsed,
    });
    self.box_UniversalInteractionListener_72 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1499539079");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionListener_72_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_72_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_72_Interacted,
    });
    self.box_UniversalInteractionModifier_v2_106 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1505486099");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_268 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_268;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_268");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1515697254");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_268_Out,
    });
    self.box_UniversalInteractionModifier_v2_190 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1554096650");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_190_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_287 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_287;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_287");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1554970761");
    l0:SetConnections({
    });
    self.box_Delay_v5_283 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_283;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_283");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1559482357");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_283_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_199 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1564210965");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_199_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_239 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1570327981");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_239_Interacted,
    });
    self.box_MultipleOR_116 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1609792903");
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
        [0] = self.f_box_MultipleOR_116_Out,
    });
    self.box_Delay_v5_314 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_314;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_314");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1612572214");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_314_TimeElapsed,
    });
    self.box_UniversalInteractionListener_140 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1612835897");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionListener_140_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_140_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_140_Interacted,
    });
    self.box_UniversalInteractionModifier_v2_117 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1618170742");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_117_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_200 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1639254157");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_248 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_248");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1641575299");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_248_Enabled,
    });
    self.box_MultipleOR_182 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1686940128");
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
        [0] = self.f_box_MultipleOR_182_Out,
    });
    self.box_Delay_v5_68 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1703539787");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_68_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_28 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1707367624");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_28_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_139 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1733502455");
    l0:SetConnections({
    });
    self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1777092663");
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
        [0] = self.f_box_MultipleOR_49_Out,
    });
    self.box_MetaBreakableModifier_v2_204 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1784887033");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_29 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1795711856");
    l0:SetConnections({
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_29_Use,
    });
    self.box_UniversalInteractionModifier_v2_196 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1805134574");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_196_Disabled,
    });
    self.box_ProximityRadiusListener_v3_194 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1809045514");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_194_SomeoneNear,
    });
    self.box_UniversalInteractionModifier_v2_7 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1834726389");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_7_Interacted,
    });
    self.box_UniversalInteractionModifier_v2_271 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_271;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_271");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1870740204");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_125 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1877475452");
    l0:SetConnections({
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_125_Use,
    });
    self.box_Delay_v5_220 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1922911076");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_220_TimeElapsed,
    });
    self.box_Delay_v5_328 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_328;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_328");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1939852399");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_328_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_86 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1941839217");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_86_Disabled,
    });
    self.box_ProximityTrigger_v3_42 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1979029069");
    l0:SetConnections({
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_42_Use,
    });
    self.box_UniversalInteractionModifier_v2_38 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2000108277");
    l0:SetConnections({
    });
    self.box_UniversalInteractionListener_114 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2045592950");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionListener_114_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_114_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_114_Interacted,
    });
    self.box_UniversalInteractionModifier_v2_22 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2061874526");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_22_Interacted,
    });
    self.box_MetaBreakableModifier_v2_261 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_261");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2068526910");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_261_OnSetUnDamageable,
    });
    self.box_MetaBreakableModifier_v2_202 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2074590376");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_171 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2076203616");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_244 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_244");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2084152777");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_244_Interacted,
    });
    self.box_Gate_v3_9 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2088519938");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_9_Out,
    });
    self.box_UniversalInteractionModifier_v2_254 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_254;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_254");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2091244477");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_254_Enabled,
    });
    self.box_Reach_GoTo_v3_301 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_301;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_301");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2101985961");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_Reach_GoTo_v3_301_Started,
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_301_Success,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1820932489", "1820932489", "TH_E201_B10", "In", "box_ActivityAcknowledgeGate_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_178();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1601929494", "1601929494", "TH_E201_B10", "OnLeaveZone", "box_OutputOrder_v2_178.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_161_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_80();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1702468055", "1702468055", "TH_E201_B10", "box_Simple_Node_161.Out", "box_Compare_Integers_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Compare_Integers_141();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1407772454", "1407772454", "TH_E201_B10", "box_Simple_Node_161.Out", "box_Compare_Integers_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Compare_Integers_20();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1154604758", "1154604758", "TH_E201_B10", "box_Simple_Node_161.Out", "box_Compare_Integers_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Compare_Integers_57();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1715433180", "1715433180", "TH_E201_B10", "box_Simple_Node_161.Out", "box_Compare_Integers_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Compare_Integers_99();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|238833184", "238833184", "TH_E201_B10", "box_Simple_Node_161.Out", "box_Compare_Integers_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_159_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|649744780", "649744780", "TH_E201_B10", "box_Simple_Node_159.Out", "box_OutputOrder_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_319_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_41();
    l0 = self.box_Gate_v3_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|78847714", "78847714", "TH_E201_B10", "box_Simple_Node_319.Out", "box_Gate_v3_41.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_320_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_9();
    l0 = self.box_Gate_v3_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1658737673", "1658737673", "TH_E201_B10", "box_Simple_Node_320.Out", "box_Gate_v3_9.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_321_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_58();
    l0 = self.box_Gate_v3_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2136884195", "2136884195", "TH_E201_B10", "box_Simple_Node_321.Out", "box_Gate_v3_58.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_322_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_64();
    l0 = self.box_Gate_v3_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|224349641", "224349641", "TH_E201_B10", "box_Simple_Node_322.Out", "box_Gate_v3_64.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_323_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_317();
    l0 = self.box_Gate_v3_317;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|449584746", "449584746", "TH_E201_B10", "box_Simple_Node_323.Out", "box_Gate_v3_317.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_214_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_195();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1491947750", "1491947750", "TH_E201_B10", "box_Simple_Node_214.Out", "box_OutputOrder_v2_195.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_183_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_181();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1157268726", "1157268726", "TH_E201_B10", "box_Simple_Node_183.Out", "box_OutputOrder_v2_181.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_253_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_313();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|869858247", "869858247", "TH_E201_B10", "box_Simple_Node_253.Out", "box_OutputOrder_v2_313.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_83_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2124324208", "2124324208", "TH_E201_B10", "box_Simple_Node_83.Out", "box_MultipleOR_142.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_252_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_188();
    l0 = self.box_UniversalInteractionListener_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|277853651", "277853651", "TH_E201_B10", "box_Simple_Node_252.Out", "box_UniversalInteractionListener_188.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_82_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_9();
    l0 = self.box_Gate_v3_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|863598494", "863598494", "TH_E201_B10", "box_Simple_Node_82.Out", "box_Gate_v3_9.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionListener_108();
    l0 = self.box_UniversalInteractionListener_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2015048359", "2015048359", "TH_E201_B10", "box_Simple_Node_82.Out", "box_UniversalInteractionListener_108.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_100();
    l0 = self.box_UniversalInteractionModifier_v2_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|933502715", "933502715", "TH_E201_B10", "box_Simple_Node_82.Out", "box_UniversalInteractionModifier_v2_100.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_77();
    l0 = self.box_UniversalInteractionModifier_v2_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1486198889", "1486198889", "TH_E201_B10", "box_Simple_Node_82.Out", "box_UniversalInteractionModifier_v2_77.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_41();
    l0 = self.box_Gate_v3_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2099843381", "2099843381", "TH_E201_B10", "box_Simple_Node_82.Out", "box_Gate_v3_41.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_317();
    l0 = self.box_Gate_v3_317;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|56171847", "56171847", "TH_E201_B10", "box_Simple_Node_82.Out", "box_Gate_v3_317.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_143();
    l0 = self.box_UniversalInteractionModifier_v2_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2012673855", "2012673855", "TH_E201_B10", "box_Simple_Node_82.Out", "box_UniversalInteractionModifier_v2_143.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_133();
    l0 = self.box_UniversalInteractionModifier_v2_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1346645460", "1346645460", "TH_E201_B10", "box_Simple_Node_82.Out", "box_UniversalInteractionModifier_v2_133.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_UniversalInteractionModifier_v2_54();
    l0 = self.box_UniversalInteractionModifier_v2_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|853562648", "853562648", "TH_E201_B10", "box_Simple_Node_82.Out", "box_UniversalInteractionModifier_v2_54.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_58();
    l0 = self.box_Gate_v3_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|58288353", "58288353", "TH_E201_B10", "box_Simple_Node_82.Out", "box_Gate_v3_58.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_64();
    l0 = self.box_Gate_v3_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|749253426", "749253426", "TH_E201_B10", "box_Simple_Node_82.Out", "box_Gate_v3_64.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_173_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_56();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|141724308", "141724308", "TH_E201_B10", "box_Simple_Node_173.Out", "box_EndActivityObjective_v2_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_61();
    l0 = self.box_UniversalInteractionModifier_v2_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|281097648", "281097648", "TH_E201_B10", "box_OutputOrder_v2_154.Out", "box_UniversalInteractionModifier_v2_61.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_154_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_43();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|485186029", "485186029", "TH_E201_B10", "box_OutputOrder_v2_154.Out", "box_TriggerState_v2_43.SetAsUsable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUsable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_87();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|525825305", "525825305", "TH_E201_B10", "box_OutputOrder_v2_154.Out", "box_TriggerState_v2_87.SetAsUsable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUsable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_152();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2005818905", "2005818905", "TH_E201_B10", "box_OutputOrder_v2_154.Out", "box_TriggerState_v2_152.SetAsUsable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUsable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_150();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|226213913", "226213913", "TH_E201_B10", "box_OutputOrder_v2_154.Out", "box_TriggerState_v2_150.SetAsUsable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUsable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_53();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1796414836", "1796414836", "TH_E201_B10", "box_OutputOrder_v2_154.Out", "box_TriggerState_v2_53.SetAsUsable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUsable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1300842181", "1300842181", "TH_E201_B10", "box_OutputOrder_v2_154.Out", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_83();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|972628780", "972628780", "TH_E201_B10", "box_OutputOrder_v2_154.Out", "box_Simple_Node_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_192_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_283();
    l0 = self.box_UniversalInteractionModifier_v2_192;
    l1 = self.box_Delay_v5_283;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1674450302", "1674450302", "TH_E201_B10", "box_UniversalInteractionModifier_v2_192.Disabled", "box_Delay_v5_283.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_17_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_15();
    l0 = self.box_UniversalInteractionModifier_v2_17;
    l1 = self.box_UniversalInteractionModifier_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1563889887", "1563889887", "TH_E201_B10", "box_UniversalInteractionModifier_v2_17.Disabled", "box_UniversalInteractionModifier_v2_15.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ListWriter_v2_172_Removed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|236910622", "236910622", "TH_E201_B10", "box_ListWriter_v2_172.Removed", "box_MultipleOR_116.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_ListWriter_v2_21_Removed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|545019179", "545019179", "TH_E201_B10", "box_ListWriter_v2_21.Removed", "box_MultipleOR_116.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_308_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_173();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1240609483", "1240609483", "TH_E201_B10", "box_OutputOrder_v2_308.Out", "box_Simple_Node_173.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_308_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_306();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1599072372", "1599072372", "TH_E201_B10", "box_OutputOrder_v2_308.Out", "box_MissionBlockLayer_306.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_308_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_307();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|179907216", "179907216", "TH_E201_B10", "box_OutputOrder_v2_308.Out", "box_MissionBlockLayer_307.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_231_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_230();
    l0 = self.box_UniversalInteractionModifier_v2_231;
    l1 = self.box_Delay_v5_230;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|247183495", "247183495", "TH_E201_B10", "box_UniversalInteractionModifier_v2_231.Interacted", "box_Delay_v5_230.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_304_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_194();
    l0 = self.box_ProximityRadiusListener_v3_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1408458100", "1408458100", "TH_E201_B10", "box_OutputOrder_v2_304.Out", "box_ProximityRadiusListener_v3_194.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_304_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_302();
    l0 = self.box_ProximityTrigger_v3_302;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|408957473", "408957473", "TH_E201_B10", "box_OutputOrder_v2_304.Out", "box_ProximityTrigger_v3_302.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_119_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_172();
    l0 = self.box_UniversalInteractionModifier_v2_119;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|552718560", "552718560", "TH_E201_B10", "box_UniversalInteractionModifier_v2_119.Disabled", "box_ListWriter_v2_172.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListFinder_149_Found()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_155();
    l0 = self.box_UniversalInteractionModifier_v2_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1417943823", "1417943823", "TH_E201_B10", "box_ListFinder_149.Found", "box_UniversalInteractionModifier_v2_155.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_293_Disabled()
    local l0, l1;
    l0 = self.box_UniversalInteractionModifier_v2_293;
    l1 = self.box_MultipleOR_299;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|465096854", "465096854", "TH_E201_B10", "box_UniversalInteractionModifier_v2_293.Disabled", "box_MultipleOR_299.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_StartCelebration_39_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_70();
    l0 = self.box_StartCelebration_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|215120004", "215120004", "TH_E201_B10", "box_StartCelebration_39.Ended", "box_OutputOrder_v2_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_134_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_164();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1391135986", "1391135986", "TH_E201_B10", "box_OutputOrder_v2_134.Out", "box_TriggerState_v2_164.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_134_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_121();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1302247154", "1302247154", "TH_E201_B10", "box_OutputOrder_v2_134.Out", "box_TriggerState_v2_121.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_134_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_138();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1632514359", "1632514359", "TH_E201_B10", "box_OutputOrder_v2_134.Out", "box_TriggerState_v2_138.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_134_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_137();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|353941562", "353941562", "TH_E201_B10", "box_OutputOrder_v2_134.Out", "box_TriggerState_v2_137.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_134_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_123();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1941844991", "1941844991", "TH_E201_B10", "box_OutputOrder_v2_134.Out", "box_TriggerState_v2_123.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_134_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_284();
    l0 = self.box_UniversalInteractionModifier_v2_284;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|731056340", "731056340", "TH_E201_B10", "box_OutputOrder_v2_134.Out", "box_UniversalInteractionModifier_v2_284.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_134_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_176();
    l0 = self.box_UniversalInteractionModifier_v2_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|866960858", "866960858", "TH_E201_B10", "box_OutputOrder_v2_134.Out", "box_UniversalInteractionModifier_v2_176.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_134_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_171();
    l0 = self.box_UniversalInteractionModifier_v2_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|890468701", "890468701", "TH_E201_B10", "box_OutputOrder_v2_134.Out", "box_UniversalInteractionModifier_v2_171.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_134_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_271();
    l0 = self.box_UniversalInteractionModifier_v2_271;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1220735906", "1220735906", "TH_E201_B10", "box_OutputOrder_v2_134.Out", "box_UniversalInteractionModifier_v2_271.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_134_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_287();
    l0 = self.box_UniversalInteractionModifier_v2_287;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|593203429", "593203429", "TH_E201_B10", "box_OutputOrder_v2_134.Out", "box_UniversalInteractionModifier_v2_287.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_134_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_136();
    l0 = self.box_UniversalInteractionModifier_v2_136;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1581601887", "1581601887", "TH_E201_B10", "box_OutputOrder_v2_134.Out", "box_UniversalInteractionModifier_v2_136.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_134_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_298();
    l0 = self.box_RemoveEntity_v2_298;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|909456881", "909456881", "TH_E201_B10", "box_OutputOrder_v2_134.Out", "box_RemoveEntity_v2_298.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_228_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_227();
    l0 = self.box_UniversalInteractionModifier_v2_228;
    l1 = self.box_Delay_v5_227;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1341017032", "1341017032", "TH_E201_B10", "box_UniversalInteractionModifier_v2_228.Interacted", "box_Delay_v5_227.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Integers_20_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_79();
    l0 = self.box_UniversalInteractionModifier_v2_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|162803045", "162803045", "TH_E201_B10", "box_Compare_Integers_20.A_eq_B", "box_UniversalInteractionModifier_v2_79.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_181_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|590168829", "590168829", "TH_E201_B10", "box_OutputOrder_v2_181.Out", "box_MultipleOR_177.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_181_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|975323543", "975323543", "TH_E201_B10", "box_OutputOrder_v2_181.Out", "box_MultipleOR_182.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_195_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_211();
    l0 = self.box_MetaBreakableModifier_v2_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1895038476", "1895038476", "TH_E201_B10", "box_OutputOrder_v2_195.Out", "box_MetaBreakableModifier_v2_211.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_195_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_193();
    l0 = self.box_UniversalInteractionModifier_v2_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|144094145", "144094145", "TH_E201_B10", "box_OutputOrder_v2_195.Out", "box_UniversalInteractionModifier_v2_193.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_195_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_262();
    l0 = self.box_MetaBreakableModifier_v2_262;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1570430895", "1570430895", "TH_E201_B10", "box_OutputOrder_v2_195.Out", "box_MetaBreakableModifier_v2_262.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(3, params);
end;

function export:f_box_Delay_v5_334_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_89();
    l0 = self.box_Delay_v5_334;
    l1 = self.box_UniversalInteractionModifier_v2_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1228473573", "1228473573", "TH_E201_B10", "box_Delay_v5_334.TimeElapsed", "box_UniversalInteractionModifier_v2_89.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_15_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_112();
    l0 = self.box_UniversalInteractionModifier_v2_15;
    l1 = self.box_UniversalInteractionModifier_v2_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1573872202", "1573872202", "TH_E201_B10", "box_UniversalInteractionModifier_v2_15.Disabled", "box_UniversalInteractionModifier_v2_112.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_280_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_278();
    l0 = self.box_Delay_v5_280;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1668362170", "1668362170", "TH_E201_B10", "box_Delay_v5_280.TimeElapsed", "box_ParticleSystem_v3_278.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_155_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_327();
    l0 = self.box_UniversalInteractionModifier_v2_155;
    l1 = self.box_Delay_v5_327;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|206747755", "206747755", "TH_E201_B10", "box_UniversalInteractionModifier_v2_155.Enabled", "box_Delay_v5_327.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_112_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_110();
    l0 = self.box_UniversalInteractionModifier_v2_112;
    l1 = self.box_UniversalInteractionModifier_v2_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|831826544", "831826544", "TH_E201_B10", "box_UniversalInteractionModifier_v2_112.Disabled", "box_UniversalInteractionModifier_v2_110.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_290_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_236();
    l0 = self.box_Delay_v5_290;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|568991017", "568991017", "TH_E201_B10", "box_Delay_v5_290.TimeElapsed", "box_OutputOrder_v2_236.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_122_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_126();
    l0 = self.box_ProximityTrigger_v3_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|394317856", "394317856", "TH_E201_B10", "box_OutputOrder_v2_122.Out", "box_ProximityTrigger_v3_126.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_122_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_29();
    l0 = self.box_ProximityTrigger_v3_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2038142019", "2038142019", "TH_E201_B10", "box_OutputOrder_v2_122.Out", "box_ProximityTrigger_v3_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_122_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_125();
    l0 = self.box_ProximityTrigger_v3_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|168292681", "168292681", "TH_E201_B10", "box_OutputOrder_v2_122.Out", "box_ProximityTrigger_v3_125.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_122_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_42();
    l0 = self.box_ProximityTrigger_v3_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1225399312", "1225399312", "TH_E201_B10", "box_OutputOrder_v2_122.Out", "box_ProximityTrigger_v3_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_122_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_127();
    l0 = self.box_ProximityTrigger_v3_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1772294599", "1772294599", "TH_E201_B10", "box_OutputOrder_v2_122.Out", "box_ProximityTrigger_v3_127.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_156_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_35();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|991585171", "991585171", "TH_E201_B10", "box_OutputOrder_v2_156.Out", "box_TriggerState_v2_35.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_156_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_158();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1321944771", "1321944771", "TH_E201_B10", "box_OutputOrder_v2_156.Out", "box_ListWriter_v2_158.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_156_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_46();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|405553351", "405553351", "TH_E201_B10", "box_OutputOrder_v2_156.Out", "box_IntegerArithmetics_v2_46.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_156_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_161();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2031518457", "2031518457", "TH_E201_B10", "box_OutputOrder_v2_156.Out", "box_Simple_Node_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_156_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_320();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|109849469", "109849469", "TH_E201_B10", "box_OutputOrder_v2_156.Out", "box_Simple_Node_320.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_330_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_131();
    l0 = self.box_Delay_v5_330;
    l1 = self.box_UniversalInteractionModifier_v2_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1672176318", "1672176318", "TH_E201_B10", "box_Delay_v5_330.TimeElapsed", "box_UniversalInteractionModifier_v2_131.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ListWriter_v2_91_Removed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1168686899", "1168686899", "TH_E201_B10", "box_ListWriter_v2_91.Removed", "box_MultipleOR_116.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_UniversalInteractionModifier_v2_151_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_6();
    l0 = self.box_UniversalInteractionModifier_v2_151;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2103356771", "2103356771", "TH_E201_B10", "box_UniversalInteractionModifier_v2_151.Disabled", "box_ListWriter_v2_6.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_316_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_315();
    l0 = self.box_StartCelebration_315;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1944688887", "1944688887", "TH_E201_B10", "box_EndActivityObjective_v2_316.Out", "box_StartCelebration_315.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_100_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_114();
    l0 = self.box_UniversalInteractionModifier_v2_100;
    l1 = self.box_UniversalInteractionListener_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|790507264", "790507264", "TH_E201_B10", "box_UniversalInteractionModifier_v2_100.Disabled", "box_UniversalInteractionListener_114.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_100_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_114();
    l0 = self.box_UniversalInteractionModifier_v2_100;
    l1 = self.box_UniversalInteractionListener_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|671589236", "671589236", "TH_E201_B10", "box_UniversalInteractionModifier_v2_100.Enabled", "box_UniversalInteractionListener_114.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_255_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_255_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_185();
    l0 = self.box_ProximityRadiusListener_v3_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1373507774", "1373507774", "TH_E201_B10", "box_GetPlayerGroup_v2_255.Out", "box_ProximityRadiusListener_v3_185.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_219_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_279();
    l0 = self.box_UniversalInteractionModifier_v2_219;
    l1 = self.box_Delay_v5_279;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1013282321", "1013282321", "TH_E201_B10", "box_UniversalInteractionModifier_v2_219.Interacted", "box_Delay_v5_279.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MetaBreakableModifier_v2_262_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_261();
    l0 = self.box_MetaBreakableModifier_v2_262;
    l1 = self.box_MetaBreakableModifier_v2_261;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|383318200", "383318200", "TH_E201_B10", "box_MetaBreakableModifier_v2_262.OnSetUnDamageable", "box_MetaBreakableModifier_v2_261.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_TriggerState_v2_146_OnSetUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_54();
    l0 = self.box_UniversalInteractionModifier_v2_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|289286915", "289286915", "TH_E201_B10", "box_TriggerState_v2_146.OnSetUnusable", "box_UniversalInteractionModifier_v2_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_TriggerState_v2_286_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_299;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1148103469", "1148103469", "TH_E201_B10", "box_TriggerState_v2_286.Disabled", "box_MultipleOR_299.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_UniversalInteractionModifier_v2_63_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_328();
    l0 = self.box_UniversalInteractionModifier_v2_63;
    l1 = self.box_Delay_v5_328;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1773130510", "1773130510", "TH_E201_B10", "box_UniversalInteractionModifier_v2_63.Interacted", "box_Delay_v5_328.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_324_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_86();
    l0 = self.box_Delay_v5_324;
    l1 = self.box_UniversalInteractionModifier_v2_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|315702408", "315702408", "TH_E201_B10", "box_Delay_v5_324.TimeElapsed", "box_UniversalInteractionModifier_v2_86.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_TriggerState_v2_69_OnSetUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_133();
    l0 = self.box_UniversalInteractionModifier_v2_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|793686195", "793686195", "TH_E201_B10", "box_TriggerState_v2_69.OnSetUnusable", "box_UniversalInteractionModifier_v2_133.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_325_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_7();
    l0 = self.box_Delay_v5_325;
    l1 = self.box_UniversalInteractionModifier_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1303893977", "1303893977", "TH_E201_B10", "box_Delay_v5_325.TimeElapsed", "box_UniversalInteractionModifier_v2_7.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_131_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_94();
    l0 = self.box_UniversalInteractionModifier_v2_131;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|394888956", "394888956", "TH_E201_B10", "box_UniversalInteractionModifier_v2_131.Disabled", "box_ListWriter_v2_94.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_285_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_232();
    l0 = self.box_Delay_v5_285;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1585782733", "1585782733", "TH_E201_B10", "box_Delay_v5_285.TimeElapsed", "box_OutputOrder_v2_232.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_332_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_128();
    l0 = self.box_Delay_v5_332;
    l1 = self.box_UniversalInteractionModifier_v2_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1530258508", "1530258508", "TH_E201_B10", "box_Delay_v5_332.TimeElapsed", "box_UniversalInteractionModifier_v2_128.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_279_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_187();
    l0 = self.box_Delay_v5_279;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1475328842", "1475328842", "TH_E201_B10", "box_Delay_v5_279.TimeElapsed", "box_OutputOrder_v2_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_241_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_258();
    l0 = self.box_UniversalInteractionModifier_v2_241;
    l1 = self.box_Delay_v5_258;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|566085769", "566085769", "TH_E201_B10", "box_UniversalInteractionModifier_v2_241.Interacted", "box_Delay_v5_258.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_260_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_251();
    l0 = self.box_UniversalInteractionModifier_v2_260;
    l1 = self.box_UniversalInteractionModifier_v2_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1258135320", "1258135320", "TH_E201_B10", "box_UniversalInteractionModifier_v2_260.Enabled", "box_UniversalInteractionModifier_v2_251.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_275_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_147();
    l0 = self.box_Delay_v5_275;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1028678962", "1028678962", "TH_E201_B10", "box_Delay_v5_275.TimeElapsed", "box_OutputOrder_v2_147.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_102_Interacted()
    local params, l0, l1;
    self:OnExit_box_UniversalInteractionListener_102_Interacted();
    params = self:OnEnter_box_Gate_v3_58();
    l0 = self.box_UniversalInteractionListener_102;
    l1 = self.box_Gate_v3_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2006502141", "2006502141", "TH_E201_B10", "box_UniversalInteractionListener_102.Interacted", "box_Gate_v3_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1273479101", "1273479101", "TH_E201_B10", "box_MultipleOR_2.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MetaBreakableModifier_v2_211_OnSetUnDamageable()
    local l0, l1;
    l0 = self.box_MetaBreakableModifier_v2_211;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|353351607", "353351607", "TH_E201_B10", "box_MetaBreakableModifier_v2_211.OnSetUnDamageable", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TriggerState_v2_101_OnSetUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_143();
    l0 = self.box_UniversalInteractionModifier_v2_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1978484189", "1978484189", "TH_E201_B10", "box_TriggerState_v2_101.OnSetUnusable", "box_UniversalInteractionModifier_v2_143.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_250_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_229();
    l0 = self.box_UniversalInteractionModifier_v2_250;
    l1 = self.box_UniversalInteractionModifier_v2_229;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|897347354", "897347354", "TH_E201_B10", "box_UniversalInteractionModifier_v2_250.Enabled", "box_UniversalInteractionModifier_v2_229.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_147_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_186();
    l0 = self.box_UniversalInteractionModifier_v2_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1698195326", "1698195326", "TH_E201_B10", "box_OutputOrder_v2_147.Out", "box_UniversalInteractionModifier_v2_186.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_147_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_186();
    l0 = self.box_UniversalInteractionModifier_v2_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|974601990", "974601990", "TH_E201_B10", "box_OutputOrder_v2_147.Out", "box_UniversalInteractionModifier_v2_186.ForceInteraction", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_126_Use()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_126;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1050809520", "1050809520", "TH_E201_B10", "box_ProximityTrigger_v3_126.Use", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_243_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_245();
    l0 = self.box_Delay_v5_243;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1438893405", "1438893405", "TH_E201_B10", "box_Delay_v5_243.TimeElapsed", "box_OutputOrder_v2_245.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2064586279", "2064586279", "TH_E201_B10", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|483421304", "483421304", "TH_E201_B10", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_234_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_239();
    l0 = self.box_UniversalInteractionModifier_v2_239;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1680687766", "1680687766", "TH_E201_B10", "box_OutputOrder_v2_234.Out", "box_UniversalInteractionModifier_v2_239.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_234_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_239();
    l0 = self.box_UniversalInteractionModifier_v2_239;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1329483988", "1329483988", "TH_E201_B10", "box_OutputOrder_v2_234.Out", "box_UniversalInteractionModifier_v2_239.ForceInteraction", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_197_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_198();
    l0 = self.box_UniversalInteractionModifier_v2_197;
    l1 = self.box_UniversalInteractionModifier_v2_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|601891620", "601891620", "TH_E201_B10", "box_UniversalInteractionModifier_v2_197.Disabled", "box_UniversalInteractionModifier_v2_198.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_88_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_269();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|650409906", "650409906", "TH_E201_B10", "box_OutputOrder_v2_88.Out", "box_ParticleSystem_v3_269.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_88_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_256();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1988205844", "1988205844", "TH_E201_B10", "box_OutputOrder_v2_88.Out", "box_ParticleSystem_v3_256.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_88_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_274();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|538955681", "538955681", "TH_E201_B10", "box_OutputOrder_v2_88.Out", "box_ParticleSystem_v3_274.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_36_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1377530596", "1377530596", "TH_E201_B10", "box_TriggerState_v2_36.Disabled", "box_MultipleOR_66.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_UniversalInteractionModifier_v2_54_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_72();
    l0 = self.box_UniversalInteractionModifier_v2_54;
    l1 = self.box_UniversalInteractionListener_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1832298903", "1832298903", "TH_E201_B10", "box_UniversalInteractionModifier_v2_54.Disabled", "box_UniversalInteractionListener_72.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_54_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_72();
    l0 = self.box_UniversalInteractionModifier_v2_54;
    l1 = self.box_UniversalInteractionListener_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1949933159", "1949933159", "TH_E201_B10", "box_UniversalInteractionModifier_v2_54.Enabled", "box_UniversalInteractionListener_72.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_TriggerState_v2_294_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_299;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|26691902", "26691902", "TH_E201_B10", "box_TriggerState_v2_294.Disabled", "box_MultipleOR_299.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_ListFinder_5_Found()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_120();
    l0 = self.box_UniversalInteractionModifier_v2_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|221285504", "221285504", "TH_E201_B10", "box_ListFinder_5.Found", "box_UniversalInteractionModifier_v2_120.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_230_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_233();
    l0 = self.box_Delay_v5_230;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1973489222", "1973489222", "TH_E201_B10", "box_Delay_v5_230.TimeElapsed", "box_OutputOrder_v2_233.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_302_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_303();
    l0 = self.box_ProximityTrigger_v3_302;
    l1 = self.box_MultipleAND_v2_303;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|799556161", "799556161", "TH_E201_B10", "box_ProximityTrigger_v3_302.Enter", "box_MultipleAND_v2_303.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_216_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_234();
    l0 = self.box_Delay_v5_216;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1927244455", "1927244455", "TH_E201_B10", "box_Delay_v5_216.TimeElapsed", "box_OutputOrder_v2_234.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_240_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_290();
    l0 = self.box_UniversalInteractionModifier_v2_240;
    l1 = self.box_Delay_v5_290;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1763237879", "1763237879", "TH_E201_B10", "box_UniversalInteractionModifier_v2_240.Interacted", "box_Delay_v5_290.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_213_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_210();
    l0 = self.box_UniversalInteractionModifier_v2_213;
    l1 = self.box_UniversalInteractionModifier_v2_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|813755670", "813755670", "TH_E201_B10", "box_UniversalInteractionModifier_v2_213.Enabled", "box_UniversalInteractionModifier_v2_210.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_178_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_183();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1494133324", "1494133324", "TH_E201_B10", "box_OutputOrder_v2_178.Out", "box_Simple_Node_183.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_178_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1599629575", "1599629575", "TH_E201_B10", "box_OutputOrder_v2_178.Out", "box_ActivityRetry_v2_4.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_133_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_102();
    l0 = self.box_UniversalInteractionModifier_v2_133;
    l1 = self.box_UniversalInteractionListener_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|487228700", "487228700", "TH_E201_B10", "box_UniversalInteractionModifier_v2_133.Disabled", "box_UniversalInteractionListener_102.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_133_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_102();
    l0 = self.box_UniversalInteractionModifier_v2_133;
    l1 = self.box_UniversalInteractionListener_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1008017176", "1008017176", "TH_E201_B10", "box_UniversalInteractionModifier_v2_133.Enabled", "box_UniversalInteractionListener_102.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_236_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_238();
    l0 = self.box_UniversalInteractionModifier_v2_238;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1930027824", "1930027824", "TH_E201_B10", "box_OutputOrder_v2_236.Out", "box_UniversalInteractionModifier_v2_238.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_236_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_238();
    l0 = self.box_UniversalInteractionModifier_v2_238;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1717719943", "1717719943", "TH_E201_B10", "box_OutputOrder_v2_236.Out", "box_UniversalInteractionModifier_v2_238.ForceInteraction", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_299_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_291();
    l0 = self.box_MultipleOR_299;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1065421437", "1065421437", "TH_E201_B10", "box_MultipleOR_299.Out", "box_ActivityEnd_291.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_313_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_312;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1603993380", "1603993380", "TH_E201_B10", "box_OutputOrder_v2_313.Out", "box_OnceOnly_v3_312.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_313_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_314();
    l0 = self.box_Delay_v5_314;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1563631072", "1563631072", "TH_E201_B10", "box_OutputOrder_v2_313.Out", "box_Delay_v5_314.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_142_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_108();
    l0 = self.box_MultipleOR_142;
    l1 = self.box_UniversalInteractionListener_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1109405692", "1109405692", "TH_E201_B10", "box_MultipleOR_142.Out", "box_UniversalInteractionListener_108.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_215_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_285();
    l0 = self.box_UniversalInteractionModifier_v2_215;
    l1 = self.box_Delay_v5_285;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|405063451", "405063451", "TH_E201_B10", "box_UniversalInteractionModifier_v2_215.Interacted", "box_Delay_v5_285.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_120_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_325();
    l0 = self.box_UniversalInteractionModifier_v2_120;
    l1 = self.box_Delay_v5_325;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1243032651", "1243032651", "TH_E201_B10", "box_UniversalInteractionModifier_v2_120.Enabled", "box_Delay_v5_325.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_227_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_226();
    l0 = self.box_Delay_v5_227;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1918898424", "1918898424", "TH_E201_B10", "box_Delay_v5_227.TimeElapsed", "box_OutputOrder_v2_226.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_81_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_333();
    l0 = self.box_UniversalInteractionModifier_v2_81;
    l1 = self.box_Delay_v5_333;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|745884940", "745884940", "TH_E201_B10", "box_UniversalInteractionModifier_v2_81.Enabled", "box_Delay_v5_333.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_225_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_260();
    l0 = self.box_UniversalInteractionModifier_v2_260;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|222566574", "222566574", "TH_E201_B10", "box_OutputOrder_v2_225.Out", "box_UniversalInteractionModifier_v2_260.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_225_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_235();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1086789648", "1086789648", "TH_E201_B10", "box_OutputOrder_v2_225.Out", "box_MissionBlockLayer_235.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_225_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_247();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1557974574", "1557974574", "TH_E201_B10", "box_OutputOrder_v2_225.Out", "box_MissionBlockLayer_247.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_266_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_263();
    l0 = self.box_MetaBreakableModifier_v2_266;
    l1 = self.box_MetaBreakableModifier_v2_263;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1676359514", "1676359514", "TH_E201_B10", "box_MetaBreakableModifier_v2_266.OnSetUnDamageable", "box_MetaBreakableModifier_v2_263.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_RemoveEntity_v2_292_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_292;
    l1 = self.box_MultipleOR_299;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|9967355", "9967355", "TH_E201_B10", "box_RemoveEntity_v2_292.Out", "box_MultipleOR_299.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_141_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_59();
    l0 = self.box_UniversalInteractionModifier_v2_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2079652785", "2079652785", "TH_E201_B10", "box_Compare_Integers_141.A_eq_B", "box_UniversalInteractionModifier_v2_59.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_60();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1800737252", "1800737252", "TH_E201_B10", "box_OutputOrder_v2_34.Out", "box_TriggerState_v2_60.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_157();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|962080485", "962080485", "TH_E201_B10", "box_OutputOrder_v2_34.Out", "box_ListWriter_v2_157.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_67();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2133900565", "2133900565", "TH_E201_B10", "box_OutputOrder_v2_34.Out", "box_IntegerArithmetics_v2_67.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_161();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|277734611", "277734611", "TH_E201_B10", "box_OutputOrder_v2_34.Out", "box_Simple_Node_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_322();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1982485037", "1982485037", "TH_E201_B10", "box_OutputOrder_v2_34.Out", "box_Simple_Node_322.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_101();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1649402210", "1649402210", "TH_E201_B10", "box_OutputOrder_v2_65.Out", "box_TriggerState_v2_101.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_144();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|102100837", "102100837", "TH_E201_B10", "box_OutputOrder_v2_65.Out", "box_ListWriter_v2_144.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_97();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1512195905", "1512195905", "TH_E201_B10", "box_OutputOrder_v2_65.Out", "box_IntegerArithmetics_v2_97.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_161();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1279523945", "1279523945", "TH_E201_B10", "box_OutputOrder_v2_65.Out", "box_Simple_Node_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_319();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|193192782", "193192782", "TH_E201_B10", "box_OutputOrder_v2_65.Out", "box_Simple_Node_319.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_224_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_192();
    l0 = self.box_UniversalInteractionModifier_v2_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1100839465", "1100839465", "TH_E201_B10", "box_OutputOrder_v2_224.Out", "box_UniversalInteractionModifier_v2_192.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_224_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_217();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|797246200", "797246200", "TH_E201_B10", "box_OutputOrder_v2_224.Out", "box_MissionBlockLayer_217.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_224_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_246();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1133389346", "1133389346", "TH_E201_B10", "box_OutputOrder_v2_224.Out", "box_MissionBlockLayer_246.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_224_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_252();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2057093733", "2057093733", "TH_E201_B10", "box_OutputOrder_v2_224.Out", "box_Simple_Node_252.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_331_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_130();
    l0 = self.box_Delay_v5_331;
    l1 = self.box_UniversalInteractionModifier_v2_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|37425316", "37425316", "TH_E201_B10", "box_Delay_v5_331.TimeElapsed", "box_UniversalInteractionModifier_v2_130.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_67_Out()
    self:OnExit_box_IntegerArithmetics_v2_67_Out();
end;

function export:f_box_UniversalInteractionModifier_v2_77_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_140();
    l0 = self.box_UniversalInteractionModifier_v2_77;
    l1 = self.box_UniversalInteractionListener_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2003737848", "2003737848", "TH_E201_B10", "box_UniversalInteractionModifier_v2_77.Disabled", "box_UniversalInteractionListener_140.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_77_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_140();
    l0 = self.box_UniversalInteractionModifier_v2_77;
    l1 = self.box_UniversalInteractionListener_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|434212872", "434212872", "TH_E201_B10", "box_UniversalInteractionModifier_v2_77.Enabled", "box_UniversalInteractionListener_140.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_193_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_196();
    l0 = self.box_UniversalInteractionModifier_v2_193;
    l1 = self.box_UniversalInteractionModifier_v2_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|709313868", "709313868", "TH_E201_B10", "box_UniversalInteractionModifier_v2_193.Disabled", "box_UniversalInteractionModifier_v2_196.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_19_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_17();
    l0 = self.box_UniversalInteractionModifier_v2_19;
    l1 = self.box_UniversalInteractionModifier_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1640881472", "1640881472", "TH_E201_B10", "box_UniversalInteractionModifier_v2_19.Disabled", "box_UniversalInteractionModifier_v2_17.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_90_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_21();
    l0 = self.box_UniversalInteractionModifier_v2_90;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1259025253", "1259025253", "TH_E201_B10", "box_UniversalInteractionModifier_v2_90.Disabled", "box_ListWriter_v2_21.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_71_Interacted()
    local params, l0, l1;
    self:OnExit_box_UniversalInteractionListener_71_Interacted();
    params = self:OnEnter_box_Gate_v3_41();
    l0 = self.box_UniversalInteractionListener_71;
    l1 = self.box_Gate_v3_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1498057360", "1498057360", "TH_E201_B10", "box_UniversalInteractionListener_71.Interacted", "box_Gate_v3_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_282_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_281();
    l0 = self.box_Delay_v5_282;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|456870880", "456870880", "TH_E201_B10", "box_Delay_v5_282.TimeElapsed", "box_ParticleSystem_v3_281.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_153_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_167();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|812416927", "812416927", "TH_E201_B10", "box_MissionBlockLayer_153.Activated", "box_OutputOrder_v2_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_153_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1009324866", "1009324866", "TH_E201_B10", "box_MissionBlockLayer_153.Disabled", "box_MultipleOR_182.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_179_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListFinder_5();
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1043678333", "1043678333", "TH_E201_B10", "box_OutputOrder_v2_179.Out", "box_ListFinder_5.Find", clone:GetLuaBox(), l0:GetLuaBox());
    -- Find
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_179_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListFinder_149();
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1605829821", "1605829821", "TH_E201_B10", "box_OutputOrder_v2_179.Out", "box_ListFinder_149.Find", clone:GetLuaBox(), l0:GetLuaBox());
    -- Find
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_179_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListFinder_27();
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1008728007", "1008728007", "TH_E201_B10", "box_OutputOrder_v2_179.Out", "box_ListFinder_27.Find", clone:GetLuaBox(), l0:GetLuaBox());
    -- Find
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_179_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListFinder_76();
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1107110929", "1107110929", "TH_E201_B10", "box_OutputOrder_v2_179.Out", "box_ListFinder_76.Find", clone:GetLuaBox(), l0:GetLuaBox());
    -- Find
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_179_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListFinder_118();
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|674789", "674789", "TH_E201_B10", "box_OutputOrder_v2_179.Out", "box_ListFinder_118.Find", clone:GetLuaBox(), l0:GetLuaBox());
    -- Find
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_179_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListFinder_26();
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1707897713", "1707897713", "TH_E201_B10", "box_OutputOrder_v2_179.Out", "box_ListFinder_26.Find", clone:GetLuaBox(), l0:GetLuaBox());
    -- Find
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_312_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_224();
    l0 = self.box_OnceOnly_v3_312;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|646480600", "646480600", "TH_E201_B10", "box_OnceOnly_v3_312.Out", "box_OutputOrder_v2_224.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_237_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_259();
    l0 = self.box_UniversalInteractionModifier_v2_237;
    l1 = self.box_UniversalInteractionModifier_v2_259;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1050505652", "1050505652", "TH_E201_B10", "box_UniversalInteractionModifier_v2_237.Enabled", "box_UniversalInteractionModifier_v2_259.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_MetaBreakableModifier_v2_265_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_266();
    l0 = self.box_MetaBreakableModifier_v2_265;
    l1 = self.box_MetaBreakableModifier_v2_266;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1479425557", "1479425557", "TH_E201_B10", "box_MetaBreakableModifier_v2_265.OnSetUnDamageable", "box_MetaBreakableModifier_v2_266.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v3_301();
    l0 = self.box_ActivityInitialized_1;
    l1 = self.box_Reach_GoTo_v3_301;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|109811299", "109811299", "TH_E201_B10", "box_ActivityInitialized_1.Out", "box_Reach_GoTo_v3_301.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_326_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_168();
    l0 = self.box_Delay_v5_326;
    l1 = self.box_UniversalInteractionModifier_v2_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1825120623", "1825120623", "TH_E201_B10", "box_Delay_v5_326.TimeElapsed", "box_UniversalInteractionModifier_v2_168.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_198_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_199();
    l0 = self.box_UniversalInteractionModifier_v2_198;
    l1 = self.box_UniversalInteractionModifier_v2_199;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1119598692", "1119598692", "TH_E201_B10", "box_UniversalInteractionModifier_v2_198.Disabled", "box_UniversalInteractionModifier_v2_199.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_127_Use()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_127;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2095368713", "2095368713", "TH_E201_B10", "box_ProximityTrigger_v3_127.Use", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_RemoveEntity_v2_37_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_37;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1743897455", "1743897455", "TH_E201_B10", "box_RemoveEntity_v2_37.Out", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UniversalInteractionModifier_v2_143_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_71();
    l0 = self.box_UniversalInteractionModifier_v2_143;
    l1 = self.box_UniversalInteractionListener_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1268225040", "1268225040", "TH_E201_B10", "box_UniversalInteractionModifier_v2_143.Disabled", "box_UniversalInteractionListener_71.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_143_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_71();
    l0 = self.box_UniversalInteractionModifier_v2_143;
    l1 = self.box_UniversalInteractionListener_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1236370757", "1236370757", "TH_E201_B10", "box_UniversalInteractionModifier_v2_143.Enabled", "box_UniversalInteractionListener_71.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_311_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_191();
    l0 = self.box_Delay_v5_311;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1345983851", "1345983851", "TH_E201_B10", "box_Delay_v5_311.TimeElapsed", "box_StimsEmitter_v2_191.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_295_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_242();
    l0 = self.box_Delay_v5_295;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1164235025", "1164235025", "TH_E201_B10", "box_Delay_v5_295.TimeElapsed", "box_OutputOrder_v2_242.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_184_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_39();
    l0 = self.box_StartCelebration_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1458400917", "1458400917", "TH_E201_B10", "box_EndActivityObjective_v2_184.Out", "box_StartCelebration_39.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_46_Out()
    self:OnExit_box_IntegerArithmetics_v2_46_Out();
end;

function export:f_box_UniversalInteractionModifier_v2_186_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_220();
    l0 = self.box_UniversalInteractionModifier_v2_186;
    l1 = self.box_Delay_v5_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1153083625", "1153083625", "TH_E201_B10", "box_UniversalInteractionModifier_v2_186.Interacted", "box_Delay_v5_220.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_267_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_47();
    l0 = self.box_SpawnAI_267;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2010438309", "2010438309", "TH_E201_B10", "box_SpawnAI_267.Spawned", "box_SetActivityFact_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_89_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_329();
    l0 = self.box_UniversalInteractionModifier_v2_89;
    l1 = self.box_Delay_v5_329;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|735936086", "735936086", "TH_E201_B10", "box_UniversalInteractionModifier_v2_89.Interacted", "box_Delay_v5_329.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_64_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = self.box_Gate_v3_64;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1807736119", "1807736119", "TH_E201_B10", "box_Gate_v3_64.Out", "box_OutputOrder_v2_103.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_296_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_292();
    l0 = self.box_RemoveEntity_v2_292;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2024641195", "2024641195", "TH_E201_B10", "box_OutputOrder_v2_296.Out", "box_RemoveEntity_v2_292.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_296_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_289();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|993464380", "993464380", "TH_E201_B10", "box_OutputOrder_v2_296.Out", "box_TriggerState_v2_289.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_296_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_286();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1434640511", "1434640511", "TH_E201_B10", "box_OutputOrder_v2_296.Out", "box_TriggerState_v2_286.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_296_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_297();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|260367622", "260367622", "TH_E201_B10", "box_OutputOrder_v2_296.Out", "box_TriggerState_v2_297.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_296_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_288();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|772400936", "772400936", "TH_E201_B10", "box_OutputOrder_v2_296.Out", "box_TriggerState_v2_288.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_296_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_294();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|888936651", "888936651", "TH_E201_B10", "box_OutputOrder_v2_296.Out", "box_TriggerState_v2_294.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_296_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_293();
    l0 = self.box_UniversalInteractionModifier_v2_293;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|589029662", "589029662", "TH_E201_B10", "box_OutputOrder_v2_296.Out", "box_UniversalInteractionModifier_v2_293.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_170_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_332();
    l0 = self.box_UniversalInteractionModifier_v2_170;
    l1 = self.box_Delay_v5_332;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1125116224", "1125116224", "TH_E201_B10", "box_UniversalInteractionModifier_v2_170.Enabled", "box_Delay_v5_332.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MetaBreakableModifier_v2_263_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_264();
    l0 = self.box_MetaBreakableModifier_v2_263;
    l1 = self.box_MetaBreakableModifier_v2_264;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|135471771", "135471771", "TH_E201_B10", "box_MetaBreakableModifier_v2_263.OnSetUnDamageable", "box_MetaBreakableModifier_v2_264.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_MultipleAND_v2_303_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_48();
    l0 = self.box_MultipleAND_v2_303;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|687875860", "687875860", "TH_E201_B10", "box_MultipleAND_v2_303.Out", "box_GetActivityFact_48.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_60_OnSetUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_77();
    l0 = self.box_UniversalInteractionModifier_v2_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|86010197", "86010197", "TH_E201_B10", "box_TriggerState_v2_60.OnSetUnusable", "box_UniversalInteractionModifier_v2_77.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ListWriter_v2_6_Removed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1719340196", "1719340196", "TH_E201_B10", "box_ListWriter_v2_6.Removed", "box_MultipleOR_116.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_UniversalInteractionModifier_v2_251_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_253();
    l0 = self.box_UniversalInteractionModifier_v2_251;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1480057740", "1480057740", "TH_E201_B10", "box_UniversalInteractionModifier_v2_251.Interacted", "box_Simple_Node_253.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_218_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_219();
    l0 = self.box_UniversalInteractionModifier_v2_219;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1556277516", "1556277516", "TH_E201_B10", "box_OutputOrder_v2_218.Out", "box_UniversalInteractionModifier_v2_219.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_218_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_219();
    l0 = self.box_UniversalInteractionModifier_v2_219;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|682109271", "682109271", "TH_E201_B10", "box_OutputOrder_v2_218.Out", "box_UniversalInteractionModifier_v2_219.ForceInteraction", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_ListFinder_76_Found()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_170();
    l0 = self.box_UniversalInteractionModifier_v2_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|153839543", "153839543", "TH_E201_B10", "box_ListFinder_76.Found", "box_UniversalInteractionModifier_v2_170.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_300_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_184();
    l0 = self.box_ProximityTrigger_v3_300;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|310437257", "310437257", "TH_E201_B10", "box_ProximityTrigger_v3_300.Enter", "box_EndActivityObjective_v2_184.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_169_Removed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1214855037", "1214855037", "TH_E201_B10", "box_ListWriter_v2_169.Removed", "box_MultipleOR_116.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TriggerState_v2_148_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|328725576", "328725576", "TH_E201_B10", "box_TriggerState_v2_148.Disabled", "box_MultipleOR_66.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_UniversalInteractionModifier_v2_238_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_216();
    l0 = self.box_UniversalInteractionModifier_v2_238;
    l1 = self.box_Delay_v5_216;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|322265463", "322265463", "TH_E201_B10", "box_UniversalInteractionModifier_v2_238.Interacted", "box_Delay_v5_216.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Integers_57_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_139();
    l0 = self.box_UniversalInteractionModifier_v2_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|775050562", "775050562", "TH_E201_B10", "box_Compare_Integers_57.A_eq_B", "box_UniversalInteractionModifier_v2_139.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_309_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_277();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1636335229", "1636335229", "TH_E201_B10", "box_OutputOrder_v2_309.Out", "box_ParticleSystem_v3_277.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_309_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_310();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1185074174", "1185074174", "TH_E201_B10", "box_OutputOrder_v2_309.Out", "box_MissionBlockLayer_310.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_8();
    l0 = self.box_MultipleOR_66;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|172641470", "172641470", "TH_E201_B10", "box_MultipleOR_66.Out", "box_ActivityEnd_8.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_166_Out()
    self:OnExit_box_SetInteger_v2_166_Out();
end;

function export:f_box_ListFinder_26_Found()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_117();
    l0 = self.box_UniversalInteractionModifier_v2_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|172827723", "172827723", "TH_E201_B10", "box_ListFinder_26.Found", "box_UniversalInteractionModifier_v2_117.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_206_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_205();
    l0 = self.box_UniversalInteractionModifier_v2_205;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|286966404", "286966404", "TH_E201_B10", "box_OutputOrder_v2_206.Out", "box_UniversalInteractionModifier_v2_205.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_206_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_205();
    l0 = self.box_UniversalInteractionModifier_v2_205;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1147278951", "1147278951", "TH_E201_B10", "box_OutputOrder_v2_206.Out", "box_UniversalInteractionModifier_v2_205.ForceInteraction", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_333_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_63();
    l0 = self.box_Delay_v5_333;
    l1 = self.box_UniversalInteractionModifier_v2_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|305624217", "305624217", "TH_E201_B10", "box_Delay_v5_333.TimeElapsed", "box_UniversalInteractionModifier_v2_63.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_177_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_179();
    l0 = self.box_MultipleOR_177;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|717768009", "717768009", "TH_E201_B10", "box_MultipleOR_177.Out", "box_OutputOrder_v2_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_223_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_249();
    l0 = self.box_UniversalInteractionModifier_v2_223;
    l1 = self.box_UniversalInteractionModifier_v2_249;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1765672072", "1765672072", "TH_E201_B10", "box_UniversalInteractionModifier_v2_223.Enabled", "box_UniversalInteractionModifier_v2_249.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_232_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_231();
    l0 = self.box_UniversalInteractionModifier_v2_231;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1689233552", "1689233552", "TH_E201_B10", "box_OutputOrder_v2_232.Out", "box_UniversalInteractionModifier_v2_231.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_232_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_231();
    l0 = self.box_UniversalInteractionModifier_v2_231;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1266371042", "1266371042", "TH_E201_B10", "box_OutputOrder_v2_232.Out", "box_UniversalInteractionModifier_v2_231.ForceInteraction", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_329_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_151();
    l0 = self.box_Delay_v5_329;
    l1 = self.box_UniversalInteractionModifier_v2_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|602434725", "602434725", "TH_E201_B10", "box_Delay_v5_329.TimeElapsed", "box_UniversalInteractionModifier_v2_151.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_207_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_209();
    l0 = self.box_UniversalInteractionModifier_v2_207;
    l1 = self.box_Delay_v5_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1008413925", "1008413925", "TH_E201_B10", "box_UniversalInteractionModifier_v2_207.Interacted", "box_Delay_v5_209.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_TriggerState_v2_115_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2018622062", "2018622062", "TH_E201_B10", "box_TriggerState_v2_115.Disabled", "box_MultipleOR_66.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IntegerArithmetics_v2_73_Out()
    self:OnExit_box_IntegerArithmetics_v2_73_Out();
end;

function export:f_box_EndActivityObjective_v2_56_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1664969014", "1664969014", "TH_E201_B10", "box_EndActivityObjective_v2_56.Out", "box_OutputOrder_v2_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_188();
    l0 = self.box_MultipleOR_14;
    l1 = self.box_UniversalInteractionListener_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2071554199", "2071554199", "TH_E201_B10", "box_MultipleOR_14.Out", "box_UniversalInteractionListener_188.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_317_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_129();
    l0 = self.box_Gate_v3_317;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|250663871", "250663871", "TH_E201_B10", "box_Gate_v3_317.Out", "box_OutputOrder_v2_129.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_98();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|765787270", "765787270", "TH_E201_B10", "box_OutputOrder_v2_10.Out", "box_OutputOrder_v2_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_201();
    l0 = self.box_MetaBreakableModifier_v2_201;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1799120884", "1799120884", "TH_E201_B10", "box_OutputOrder_v2_10.Out", "box_MetaBreakableModifier_v2_201.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_202();
    l0 = self.box_MetaBreakableModifier_v2_202;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|172622498", "172622498", "TH_E201_B10", "box_OutputOrder_v2_10.Out", "box_MetaBreakableModifier_v2_202.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_10_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_203();
    l0 = self.box_MetaBreakableModifier_v2_203;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|502889703", "502889703", "TH_E201_B10", "box_OutputOrder_v2_10.Out", "box_MetaBreakableModifier_v2_203.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_10_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_204();
    l0 = self.box_MetaBreakableModifier_v2_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|301604196", "301604196", "TH_E201_B10", "box_OutputOrder_v2_10.Out", "box_MetaBreakableModifier_v2_204.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_10_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_113();
    l0 = self.box_MetaBreakableModifier_v2_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2015918053", "2015918053", "TH_E201_B10", "box_OutputOrder_v2_10.Out", "box_MetaBreakableModifier_v2_113.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_10_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_111();
    l0 = self.box_MetaBreakableModifier_v2_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|498370040", "498370040", "TH_E201_B10", "box_OutputOrder_v2_10.Out", "box_MetaBreakableModifier_v2_111.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_10_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_255();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1469401553", "1469401553", "TH_E201_B10", "box_OutputOrder_v2_10.Out", "box_GetPlayerGroup_v2_255.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_135();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|861639178", "861639178", "TH_E201_B10", "box_OutputOrder_v2_10.Out", "box_OutputOrder_v2_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_208();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1897780566", "1897780566", "TH_E201_B10", "box_OutputOrder_v2_10.Out", "box_GetPlayerGroup_v2_208.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_19();
    l0 = self.box_UniversalInteractionModifier_v2_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|198589271", "198589271", "TH_E201_B10", "box_OutputOrder_v2_10.Out", "box_UniversalInteractionModifier_v2_19.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_214();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|801618955", "801618955", "TH_E201_B10", "box_OutputOrder_v2_10.Out", "box_Simple_Node_214.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_107_Out()
    self:OnExit_box_IntegerArithmetics_v2_107_Out();
end;

function export:f_box_TriggerState_v2_297_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_299;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|487590379", "487590379", "TH_E201_B10", "box_TriggerState_v2_297.Disabled", "box_MultipleOR_299.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_70_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_37();
    l0 = self.box_RemoveEntity_v2_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1842114251", "1842114251", "TH_E201_B10", "box_OutputOrder_v2_70.Out", "box_RemoveEntity_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_70_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_174();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|781467647", "781467647", "TH_E201_B10", "box_OutputOrder_v2_70.Out", "box_TriggerState_v2_174.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_115();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1170647785", "1170647785", "TH_E201_B10", "box_OutputOrder_v2_70.Out", "box_TriggerState_v2_115.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_132();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1356139259", "1356139259", "TH_E201_B10", "box_OutputOrder_v2_70.Out", "box_TriggerState_v2_132.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_36();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|426653734", "426653734", "TH_E201_B10", "box_OutputOrder_v2_70.Out", "box_TriggerState_v2_36.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_148();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1345151540", "1345151540", "TH_E201_B10", "box_OutputOrder_v2_70.Out", "box_TriggerState_v2_148.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_212();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|554201305", "554201305", "TH_E201_B10", "box_OutputOrder_v2_70.Out", "box_OutputOrder_v2_212.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_190();
    l0 = self.box_UniversalInteractionModifier_v2_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1684973971", "1684973971", "TH_E201_B10", "box_OutputOrder_v2_70.Out", "box_UniversalInteractionModifier_v2_190.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_70_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_268();
    l0 = self.box_RemoveEntity_v2_268;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|604913258", "604913258", "TH_E201_B10", "box_OutputOrder_v2_70.Out", "box_RemoveEntity_v2_268.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_UniversalInteractionListener_108_Interacted()
    local params, l0, l1;
    self:OnExit_box_UniversalInteractionListener_108_Interacted();
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_UniversalInteractionListener_108;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|304183937", "304183937", "TH_E201_B10", "box_UniversalInteractionListener_108.Interacted", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_276_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_309();
    l0 = self.box_ProximityTrigger_v3_276;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|896154323", "896154323", "TH_E201_B10", "box_ProximityTrigger_v3_276.Enter", "box_OutputOrder_v2_309.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_168_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_331();
    l0 = self.box_UniversalInteractionModifier_v2_168;
    l1 = self.box_Delay_v5_331;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|119223215", "119223215", "TH_E201_B10", "box_UniversalInteractionModifier_v2_168.Interacted", "box_Delay_v5_331.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Integers_80_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_74();
    l0 = self.box_UniversalInteractionModifier_v2_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1993446276", "1993446276", "TH_E201_B10", "box_Compare_Integers_80.A_eq_B", "box_UniversalInteractionModifier_v2_74.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_209_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_206();
    l0 = self.box_Delay_v5_209;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2139787172", "2139787172", "TH_E201_B10", "box_Delay_v5_209.TimeElapsed", "box_OutputOrder_v2_206.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_258_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_225();
    l0 = self.box_Delay_v5_258;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|39585482", "39585482", "TH_E201_B10", "box_Delay_v5_258.TimeElapsed", "box_OutputOrder_v2_225.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_188_Interacted()
    local l0, l1;
    self:OnExit_box_UniversalInteractionListener_188_Interacted();
    l0 = self.box_UniversalInteractionListener_188;
    l1 = self.box_OnceOnly_v3_312;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|248261136", "248261136", "TH_E201_B10", "box_UniversalInteractionListener_188.Interacted", "box_OnceOnly_v3_312.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_208_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_208_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_304();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|291511834", "291511834", "TH_E201_B10", "box_GetPlayerGroup_v2_208.Out", "box_OutputOrder_v2_304.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_185_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_311();
    l0 = self.box_ProximityRadiusListener_v3_185;
    l1 = self.box_Delay_v5_311;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|341336596", "341336596", "TH_E201_B10", "box_ProximityRadiusListener_v3_185.SomeoneNear", "box_Delay_v5_311.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IntegerArithmetics_v2_97_Out()
    self:OnExit_box_IntegerArithmetics_v2_97_Out();
end;

function export:f_box_UniversalInteractionModifier_v2_205_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_275();
    l0 = self.box_UniversalInteractionModifier_v2_205;
    l1 = self.box_Delay_v5_275;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2139949678", "2139949678", "TH_E201_B10", "box_UniversalInteractionModifier_v2_205.Interacted", "box_Delay_v5_275.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_Gate_v3_58;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2132912569", "2132912569", "TH_E201_B10", "box_Gate_v3_58.Out", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_187_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_228();
    l0 = self.box_UniversalInteractionModifier_v2_228;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|457182901", "457182901", "TH_E201_B10", "box_OutputOrder_v2_187.Out", "box_UniversalInteractionModifier_v2_228.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_187_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_228();
    l0 = self.box_UniversalInteractionModifier_v2_228;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|90148221", "90148221", "TH_E201_B10", "box_OutputOrder_v2_187.Out", "box_UniversalInteractionModifier_v2_228.ForceInteraction", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_130_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_91();
    l0 = self.box_UniversalInteractionModifier_v2_130;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|32453479", "32453479", "TH_E201_B10", "box_UniversalInteractionModifier_v2_130.Disabled", "box_ListWriter_v2_91.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_315_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_296();
    l0 = self.box_StartCelebration_315;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1750353234", "1750353234", "TH_E201_B10", "box_StartCelebration_315.Ended", "box_OutputOrder_v2_296.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_124_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_153();
    l0 = self.box_Delay_v5_124;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1071669367", "1071669367", "TH_E201_B10", "box_Delay_v5_124.TimeElapsed", "box_MissionBlockLayer_153.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_128_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_330();
    l0 = self.box_UniversalInteractionModifier_v2_128;
    l1 = self.box_Delay_v5_330;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2474990", "2474990", "TH_E201_B10", "box_UniversalInteractionModifier_v2_128.Interacted", "box_Delay_v5_330.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_156();
    l0 = self.box_Gate_v3_41;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|330255205", "330255205", "TH_E201_B10", "box_Gate_v3_41.Out", "box_OutputOrder_v2_156.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListFinder_27_Found()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_28();
    l0 = self.box_UniversalInteractionModifier_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2027110997", "2027110997", "TH_E201_B10", "box_ListFinder_27.Found", "box_UniversalInteractionModifier_v2_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_327_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_22();
    l0 = self.box_Delay_v5_327;
    l1 = self.box_UniversalInteractionModifier_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1457293046", "1457293046", "TH_E201_B10", "box_Delay_v5_327.TimeElapsed", "box_UniversalInteractionModifier_v2_22.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_UniversalInteractionListener_72_Interacted()
    local params, l0, l1;
    self:OnExit_box_UniversalInteractionListener_72_Interacted();
    params = self:OnEnter_box_Gate_v3_317();
    l0 = self.box_UniversalInteractionListener_72;
    l1 = self.box_Gate_v3_317;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|908627011", "908627011", "TH_E201_B10", "box_UniversalInteractionListener_72.Interacted", "box_Gate_v3_317.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_300();
    l0 = self.box_ProximityTrigger_v3_300;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|932119245", "932119245", "TH_E201_B10", "box_OutputOrder_v2_44.Out", "box_ProximityTrigger_v3_300.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1764174319", "1764174319", "TH_E201_B10", "box_OutputOrder_v2_44.Out", "box_Simple_Node_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_82();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1982044849", "1982044849", "TH_E201_B10", "box_OutputOrder_v2_44.Out", "box_Simple_Node_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_52();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1017322347", "1017322347", "TH_E201_B10", "box_OutputOrder_v2_44.Out", "box_Simple_Node_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_32();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1078183673", "1078183673", "TH_E201_B10", "box_OutputOrder_v2_44.Out", "box_UnlockDoor_32.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_174_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1537981822", "1537981822", "TH_E201_B10", "box_TriggerState_v2_174.Disabled", "box_MultipleOR_66.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TriggerState_v2_288_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_299;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|550033919", "550033919", "TH_E201_B10", "box_TriggerState_v2_288.Disabled", "box_MultipleOR_299.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_RemoveEntity_v2_268_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_268;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|516024426", "516024426", "TH_E201_B10", "box_RemoveEntity_v2_268.Out", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_270();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1170682143", "1170682143", "TH_E201_B10", "box_OutputOrder_v2_33.Out", "box_ParticleSystem_v3_270.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_257();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|559453641", "559453641", "TH_E201_B10", "box_OutputOrder_v2_33.Out", "box_ParticleSystem_v3_257.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_280();
    l0 = self.box_Delay_v5_280;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|43105258", "43105258", "TH_E201_B10", "box_OutputOrder_v2_33.Out", "box_Delay_v5_280.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_277_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_282();
    l0 = self.box_Delay_v5_282;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|845428141", "845428141", "TH_E201_B10", "box_ParticleSystem_v3_277.Started", "box_Delay_v5_282.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_190_Disabled()
    local l0, l1;
    l0 = self.box_UniversalInteractionModifier_v2_190;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1820878489", "1820878489", "TH_E201_B10", "box_UniversalInteractionModifier_v2_190.Disabled", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_Delay_v5_283_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_189();
    l0 = self.box_Delay_v5_283;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|702636867", "702636867", "TH_E201_B10", "box_Delay_v5_283.TimeElapsed", "box_OutputOrder_v2_189.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_199_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_200();
    l0 = self.box_UniversalInteractionModifier_v2_199;
    l1 = self.box_UniversalInteractionModifier_v2_200;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1487387493", "1487387493", "TH_E201_B10", "box_UniversalInteractionModifier_v2_199.Disabled", "box_UniversalInteractionModifier_v2_200.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_239_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_295();
    l0 = self.box_UniversalInteractionModifier_v2_239;
    l1 = self.box_Delay_v5_295;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1444451933", "1444451933", "TH_E201_B10", "box_UniversalInteractionModifier_v2_239.Interacted", "box_Delay_v5_295.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_165_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_82();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1504572579", "1504572579", "TH_E201_B10", "box_OutputOrder_v2_165.Out", "box_Simple_Node_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_165_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_75();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1764484368", "1764484368", "TH_E201_B10", "box_OutputOrder_v2_165.Out", "box_TriggerState_v2_75.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_165_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_105();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|752578067", "752578067", "TH_E201_B10", "box_OutputOrder_v2_165.Out", "box_TriggerState_v2_105.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_165_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_96();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|623764482", "623764482", "TH_E201_B10", "box_OutputOrder_v2_165.Out", "box_TriggerState_v2_96.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_165_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_16();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1827462200", "1827462200", "TH_E201_B10", "box_OutputOrder_v2_165.Out", "box_TriggerState_v2_16.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_165_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_84();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1415228983", "1415228983", "TH_E201_B10", "box_OutputOrder_v2_165.Out", "box_TriggerState_v2_84.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UnlockDoor_32_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_18();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1430453834", "1430453834", "TH_E201_B10", "box_UnlockDoor_32.Unlocked", "box_SetActivityFact_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_146();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1048403752", "1048403752", "TH_E201_B10", "box_OutputOrder_v2_103.Out", "box_TriggerState_v2_146.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_78();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|116048513", "116048513", "TH_E201_B10", "box_OutputOrder_v2_103.Out", "box_ListWriter_v2_78.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_107();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1179585238", "1179585238", "TH_E201_B10", "box_OutputOrder_v2_103.Out", "box_IntegerArithmetics_v2_107.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_161();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1694783196", "1694783196", "TH_E201_B10", "box_OutputOrder_v2_103.Out", "box_Simple_Node_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_323();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1395487181", "1395487181", "TH_E201_B10", "box_OutputOrder_v2_103.Out", "box_Simple_Node_323.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_35_OnSetUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_100();
    l0 = self.box_UniversalInteractionModifier_v2_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|647284191", "647284191", "TH_E201_B10", "box_TriggerState_v2_35.OnSetUnusable", "box_UniversalInteractionModifier_v2_100.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_116_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_166();
    l0 = self.box_MultipleOR_116;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|664047078", "664047078", "TH_E201_B10", "box_MultipleOR_116.Out", "box_SetInteger_v2_166.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_314_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_314;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1629904380", "1629904380", "TH_E201_B10", "box_Delay_v5_314.TimeElapsed", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UniversalInteractionListener_140_Interacted()
    local params, l0, l1;
    self:OnExit_box_UniversalInteractionListener_140_Interacted();
    params = self:OnEnter_box_Gate_v3_64();
    l0 = self.box_UniversalInteractionListener_140;
    l1 = self.box_Gate_v3_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2128509234", "2128509234", "TH_E201_B10", "box_UniversalInteractionListener_140.Interacted", "box_Gate_v3_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_117_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_334();
    l0 = self.box_UniversalInteractionModifier_v2_117;
    l1 = self.box_Delay_v5_334;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1668734296", "1668734296", "TH_E201_B10", "box_UniversalInteractionModifier_v2_117.Enabled", "box_Delay_v5_334.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ListFinder_118_Found()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_81();
    l0 = self.box_UniversalInteractionModifier_v2_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|938835988", "938835988", "TH_E201_B10", "box_ListFinder_118.Found", "box_UniversalInteractionModifier_v2_81.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_248_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_222();
    l0 = self.box_UniversalInteractionModifier_v2_248;
    l1 = self.box_UniversalInteractionModifier_v2_222;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1530530371", "1530530371", "TH_E201_B10", "box_UniversalInteractionModifier_v2_248.Enabled", "box_UniversalInteractionModifier_v2_222.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_55();
    l0 = self.box_UniversalInteractionModifier_v2_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1540049368", "1540049368", "TH_E201_B10", "box_OutputOrder_v2_25.Out", "box_UniversalInteractionModifier_v2_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_31();
    l0 = self.box_UniversalInteractionModifier_v2_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1942269411", "1942269411", "TH_E201_B10", "box_OutputOrder_v2_25.Out", "box_UniversalInteractionModifier_v2_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_30();
    l0 = self.box_UniversalInteractionModifier_v2_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|802135068", "802135068", "TH_E201_B10", "box_OutputOrder_v2_25.Out", "box_UniversalInteractionModifier_v2_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_106();
    l0 = self.box_UniversalInteractionModifier_v2_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|730100824", "730100824", "TH_E201_B10", "box_OutputOrder_v2_25.Out", "box_UniversalInteractionModifier_v2_106.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_38();
    l0 = self.box_UniversalInteractionModifier_v2_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2070868901", "2070868901", "TH_E201_B10", "box_OutputOrder_v2_25.Out", "box_UniversalInteractionModifier_v2_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetActivityFact_50_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|936642114", "936642114", "TH_E201_B10", "box_GetActivityFact_50.FactNotSet", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_50_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_134();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1027102127", "1027102127", "TH_E201_B10", "box_GetActivityFact_50.FactSet", "box_OutputOrder_v2_134.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_182_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_154();
    l0 = self.box_MultipleOR_182;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1335181684", "1335181684", "TH_E201_B10", "box_MultipleOR_182.Out", "box_OutputOrder_v2_154.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_68_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_90();
    l0 = self.box_Delay_v5_68;
    l1 = self.box_UniversalInteractionModifier_v2_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1645642441", "1645642441", "TH_E201_B10", "box_Delay_v5_68.TimeElapsed", "box_UniversalInteractionModifier_v2_90.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_28_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_326();
    l0 = self.box_UniversalInteractionModifier_v2_28;
    l1 = self.box_Delay_v5_326;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1412887406", "1412887406", "TH_E201_B10", "box_UniversalInteractionModifier_v2_28.Enabled", "box_Delay_v5_326.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_242_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_244();
    l0 = self.box_UniversalInteractionModifier_v2_244;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|763890478", "763890478", "TH_E201_B10", "box_OutputOrder_v2_242.Out", "box_UniversalInteractionModifier_v2_244.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_242_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_244();
    l0 = self.box_UniversalInteractionModifier_v2_244;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|727282962", "727282962", "TH_E201_B10", "box_OutputOrder_v2_242.Out", "box_UniversalInteractionModifier_v2_244.ForceInteraction", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_Compare_Integers_163_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_305();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1159716582", "1159716582", "TH_E201_B10", "box_Compare_Integers_163.A_eq_B", "box_DynamicLightModifier_305.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_305_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_308();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|921773582", "921773582", "TH_E201_B10", "box_DynamicLightModifier_305.Enabled", "box_OutputOrder_v2_308.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_153();
    l0 = self.box_MultipleOR_49;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1689690975", "1689690975", "TH_E201_B10", "box_MultipleOR_49.Out", "box_MissionBlockLayer_153.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_29_Use()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_29;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1068622810", "1068622810", "TH_E201_B10", "box_ProximityTrigger_v3_29.Use", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityFact_48_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_267();
    l0 = self.box_SpawnAI_267;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|486590353", "486590353", "TH_E201_B10", "box_GetActivityFact_48.FactNotSet", "box_SpawnAI_267.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_196_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_197();
    l0 = self.box_UniversalInteractionModifier_v2_196;
    l1 = self.box_UniversalInteractionModifier_v2_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1775158675", "1775158675", "TH_E201_B10", "box_UniversalInteractionModifier_v2_196.Disabled", "box_UniversalInteractionModifier_v2_197.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_TriggerState_v2_289_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_299;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1581969887", "1581969887", "TH_E201_B10", "box_TriggerState_v2_289.Disabled", "box_MultipleOR_299.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_194_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_303();
    l0 = self.box_ProximityRadiusListener_v3_194;
    l1 = self.box_MultipleAND_v2_303;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|47520899", "47520899", "TH_E201_B10", "box_ProximityRadiusListener_v3_194.SomeoneNear", "box_MultipleAND_v2_303.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_245_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_241();
    l0 = self.box_UniversalInteractionModifier_v2_241;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1940638331", "1940638331", "TH_E201_B10", "box_OutputOrder_v2_245.Out", "box_UniversalInteractionModifier_v2_241.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_245_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_241();
    l0 = self.box_UniversalInteractionModifier_v2_241;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|392659655", "392659655", "TH_E201_B10", "box_OutputOrder_v2_245.Out", "box_UniversalInteractionModifier_v2_241.ForceInteraction", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_7_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_68();
    l0 = self.box_UniversalInteractionModifier_v2_7;
    l1 = self.box_Delay_v5_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1697177790", "1697177790", "TH_E201_B10", "box_UniversalInteractionModifier_v2_7.Interacted", "box_Delay_v5_68.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_125_Use()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_125;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1754034952", "1754034952", "TH_E201_B10", "box_ProximityTrigger_v3_125.Use", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_135_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_272();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|909138023", "909138023", "TH_E201_B10", "box_OutputOrder_v2_135.Out", "box_ParticleSystem_v3_272.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_135_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_273();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1253873745", "1253873745", "TH_E201_B10", "box_OutputOrder_v2_135.Out", "box_ParticleSystem_v3_273.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_135_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_276();
    l0 = self.box_ProximityTrigger_v3_276;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|295692697", "295692697", "TH_E201_B10", "box_OutputOrder_v2_135.Out", "box_ProximityTrigger_v3_276.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_212_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_213();
    l0 = self.box_UniversalInteractionModifier_v2_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2105466874", "2105466874", "TH_E201_B10", "box_OutputOrder_v2_212.Out", "box_UniversalInteractionModifier_v2_213.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_212_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_237();
    l0 = self.box_UniversalInteractionModifier_v2_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1972133626", "1972133626", "TH_E201_B10", "box_OutputOrder_v2_212.Out", "box_UniversalInteractionModifier_v2_237.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_212_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_223();
    l0 = self.box_UniversalInteractionModifier_v2_223;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1651360511", "1651360511", "TH_E201_B10", "box_OutputOrder_v2_212.Out", "box_UniversalInteractionModifier_v2_223.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_212_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_250();
    l0 = self.box_UniversalInteractionModifier_v2_250;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1667777421", "1667777421", "TH_E201_B10", "box_OutputOrder_v2_212.Out", "box_UniversalInteractionModifier_v2_250.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_212_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_248();
    l0 = self.box_UniversalInteractionModifier_v2_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1803681939", "1803681939", "TH_E201_B10", "box_OutputOrder_v2_212.Out", "box_UniversalInteractionModifier_v2_248.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_212_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_254();
    l0 = self.box_UniversalInteractionModifier_v2_254;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|682118346", "682118346", "TH_E201_B10", "box_OutputOrder_v2_212.Out", "box_UniversalInteractionModifier_v2_254.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ListWriter_v2_94_Removed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2000949937", "2000949937", "TH_E201_B10", "box_ListWriter_v2_94.Removed", "box_MultipleOR_116.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Delay_v5_220_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_218();
    l0 = self.box_Delay_v5_220;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1348155943", "1348155943", "TH_E201_B10", "box_Delay_v5_220.TimeElapsed", "box_OutputOrder_v2_218.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_328_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_119();
    l0 = self.box_Delay_v5_328;
    l1 = self.box_UniversalInteractionModifier_v2_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|920804683", "920804683", "TH_E201_B10", "box_Delay_v5_328.TimeElapsed", "box_UniversalInteractionModifier_v2_119.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_189_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_207();
    l0 = self.box_UniversalInteractionModifier_v2_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2009580382", "2009580382", "TH_E201_B10", "box_OutputOrder_v2_189.Out", "box_UniversalInteractionModifier_v2_207.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_189_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_207();
    l0 = self.box_UniversalInteractionModifier_v2_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|547301719", "547301719", "TH_E201_B10", "box_OutputOrder_v2_189.Out", "box_UniversalInteractionModifier_v2_207.ForceInteraction", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_86_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_169();
    l0 = self.box_UniversalInteractionModifier_v2_86;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1697683578", "1697683578", "TH_E201_B10", "box_UniversalInteractionModifier_v2_86.Disabled", "box_ListWriter_v2_169.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_23_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_23_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_159();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|185713960", "185713960", "TH_E201_B10", "box_IntegerArithmetics_v2_23.Out", "box_Simple_Node_159.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_42_Use()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_42;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1702964415", "1702964415", "TH_E201_B10", "box_ProximityTrigger_v3_42.Use", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_226_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_215();
    l0 = self.box_UniversalInteractionModifier_v2_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1345991459", "1345991459", "TH_E201_B10", "box_OutputOrder_v2_226.Out", "box_UniversalInteractionModifier_v2_215.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_226_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_215();
    l0 = self.box_UniversalInteractionModifier_v2_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|29897066", "29897066", "TH_E201_B10", "box_OutputOrder_v2_226.Out", "box_UniversalInteractionModifier_v2_215.ForceInteraction", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_167_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_124();
    l0 = self.box_Delay_v5_124;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1376340347", "1376340347", "TH_E201_B10", "box_OutputOrder_v2_167.Out", "box_Delay_v5_124.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_167_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_165();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1073536043", "1073536043", "TH_E201_B10", "box_OutputOrder_v2_167.Out", "box_OutputOrder_v2_165.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_167_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_88();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|674836704", "674836704", "TH_E201_B10", "box_OutputOrder_v2_167.Out", "box_OutputOrder_v2_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_167_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1351080488", "1351080488", "TH_E201_B10", "box_OutputOrder_v2_167.Out", "box_MultipleOR_177.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UniversalInteractionListener_114_Interacted()
    local params, l0, l1;
    self:OnExit_box_UniversalInteractionListener_114_Interacted();
    params = self:OnEnter_box_Gate_v3_9();
    l0 = self.box_UniversalInteractionListener_114;
    l1 = self.box_Gate_v3_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|497538690", "497538690", "TH_E201_B10", "box_UniversalInteractionListener_114.Interacted", "box_Gate_v3_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_99_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_62();
    l0 = self.box_UniversalInteractionModifier_v2_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1334656360", "1334656360", "TH_E201_B10", "box_Compare_Integers_99.A_eq_B", "box_UniversalInteractionModifier_v2_62.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_22_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_324();
    l0 = self.box_UniversalInteractionModifier_v2_22;
    l1 = self.box_Delay_v5_324;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1474787597", "1474787597", "TH_E201_B10", "box_UniversalInteractionModifier_v2_22.Interacted", "box_Delay_v5_324.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_233_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_240();
    l0 = self.box_UniversalInteractionModifier_v2_240;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1121068772", "1121068772", "TH_E201_B10", "box_OutputOrder_v2_233.Out", "box_UniversalInteractionModifier_v2_240.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_233_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_240();
    l0 = self.box_UniversalInteractionModifier_v2_240;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2079036567", "2079036567", "TH_E201_B10", "box_OutputOrder_v2_233.Out", "box_UniversalInteractionModifier_v2_240.ForceInteraction", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_MetaBreakableModifier_v2_261_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_265();
    l0 = self.box_MetaBreakableModifier_v2_261;
    l1 = self.box_MetaBreakableModifier_v2_265;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1477022400", "1477022400", "TH_E201_B10", "box_MetaBreakableModifier_v2_261.OnSetUnDamageable", "box_MetaBreakableModifier_v2_265.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_98_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_122();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1113745618", "1113745618", "TH_E201_B10", "box_OutputOrder_v2_98.Out", "box_OutputOrder_v2_122.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_98_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|737231832", "737231832", "TH_E201_B10", "box_OutputOrder_v2_98.Out", "box_MultipleOR_142.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TriggerState_v2_132_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|40044866", "40044866", "TH_E201_B10", "box_TriggerState_v2_132.Disabled", "box_MultipleOR_66.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_UniversalInteractionModifier_v2_244_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_243();
    l0 = self.box_UniversalInteractionModifier_v2_244;
    l1 = self.box_Delay_v5_243;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2054983399", "2054983399", "TH_E201_B10", "box_UniversalInteractionModifier_v2_244.Interacted", "box_Delay_v5_243.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_109_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_69();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1376291018", "1376291018", "TH_E201_B10", "box_OutputOrder_v2_109.Out", "box_TriggerState_v2_69.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_109_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_145();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2062210356", "2062210356", "TH_E201_B10", "box_OutputOrder_v2_109.Out", "box_ListWriter_v2_145.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_109_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_73();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|438751934", "438751934", "TH_E201_B10", "box_OutputOrder_v2_109.Out", "box_IntegerArithmetics_v2_73.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_109_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_161();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|701578424", "701578424", "TH_E201_B10", "box_OutputOrder_v2_109.Out", "box_Simple_Node_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_109_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_321();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|932731713", "932731713", "TH_E201_B10", "box_OutputOrder_v2_109.Out", "box_Simple_Node_321.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_109();
    l0 = self.box_Gate_v3_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1373540473", "1373540473", "TH_E201_B10", "box_Gate_v3_9.Out", "box_OutputOrder_v2_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_254_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_221();
    l0 = self.box_UniversalInteractionModifier_v2_254;
    l1 = self.box_UniversalInteractionModifier_v2_221;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1920421365", "1920421365", "TH_E201_B10", "box_UniversalInteractionModifier_v2_254.Enabled", "box_UniversalInteractionModifier_v2_221.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_129_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_93();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1137629687", "1137629687", "TH_E201_B10", "box_OutputOrder_v2_129.Out", "box_TriggerState_v2_93.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_129_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_23();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|325500232", "325500232", "TH_E201_B10", "box_OutputOrder_v2_129.Out", "box_IntegerArithmetics_v2_23.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_129_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_163();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1475936129", "1475936129", "TH_E201_B10", "box_OutputOrder_v2_129.Out", "box_Compare_Integers_163.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_301_Started()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_50();
    l0 = self.box_Reach_GoTo_v3_301;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2124780665", "2124780665", "TH_E201_B10", "box_Reach_GoTo_v3_301.Started", "box_GetActivityFact_50.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_301_Success()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_316();
    l0 = self.box_Reach_GoTo_v3_301;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|145578131", "145578131", "TH_E201_B10", "box_Reach_GoTo_v3_301.Success", "box_EndActivityObjective_v2_316.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|@Disable");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_161_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|@DisableMarker");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|@EnableInteraction");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_159_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_319()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_319");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|@FISH_01_OpenGate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_319_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_320()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_320");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|@FISH_02_OpenGate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_320_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_321()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_321");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|@FISH_03_OpenGate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_321_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_322()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_322");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|@FISH_04_OpenGate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_322_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_323()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_323");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|@FISH_05_OpenGate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_323_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|@hide");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|@Hint");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_214_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|@resetall");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_183_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_253()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_253");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|@StartGeneratroListen");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_253_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|@StartListen");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_83_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_252()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_252");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|@StopGeneratorListen");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_252_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|@StopListen");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_82_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|@Win");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_173_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_246");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|25751255");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "36167496760264470",
        -- missionLayerId,
        [1] = "36167512332806037",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|28247726");
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
                [0] = self.f_box_OutputOrder_v2_154_Out_0,
                [1] = self.f_box_OutputOrder_v2_154_Out_1,
                [2] = self.f_box_OutputOrder_v2_154_Out_2,
                [3] = self.f_box_OutputOrder_v2_154_Out_3,
                [4] = self.f_box_OutputOrder_v2_154_Out_4,
                [5] = self.f_box_OutputOrder_v2_154_Out_5,
                [6] = self.f_box_OutputOrder_v2_154_Out_6,
                [7] = self.f_box_OutputOrder_v2_154_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|36090702");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658675507168203",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_192()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108817490122382837",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_259()
    local params;
    params = {
        -- interactor,
        [2] = self.eInteractFish2,
        -- usableEntity,
        [4] = "2107576387368920652",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_17()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576902758712562",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|47192355");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_172_Removed,
    });
    params = {
        -- Data,
        [0] = "2107823013847110065",
        -- Input,
        [2] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|47596395");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_21_Removed,
    });
    params = {
        -- Data,
        [0] = "2107562884738343890",
        -- Input,
        [2] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_308()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_308");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|50925518");
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
                [0] = self.f_box_OutputOrder_v2_308_Out_0,
                [1] = self.f_box_OutputOrder_v2_308_Out_1,
                [2] = self.f_box_OutputOrder_v2_308_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_231()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- interactor,
        [2] = self.eInteractor,
        -- usableEntity,
        [4] = "2108237566714058975",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_304()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_304");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|87618948");
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
                [0] = self.f_box_OutputOrder_v2_304_Out_0,
                [1] = self.f_box_OutputOrder_v2_304_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_119()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107823013847110065",
    };
    return params;
end;

function export:OnEnter_box_ListFinder_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListFinder_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|94577762");
    l0:SetConnections({
        -- Found,
        [0] = self.f_box_ListFinder_149_Found,
    });
    params = {
        -- Data,
        [0] = "2107576387368920652",
        -- Input,
        [1] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_293()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108817490122382837",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|115775518");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "HookSpawned",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_39()
    local params;
    params = {
        -- Preset,
        [0] = "9015219471541668",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|126669006");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 12,
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
                [0] = self.f_box_OutputOrder_v2_134_Out_0,
                [1] = self.f_box_OutputOrder_v2_134_Out_1,
                [2] = self.f_box_OutputOrder_v2_134_Out_2,
                [3] = self.f_box_OutputOrder_v2_134_Out_3,
                [4] = self.f_box_OutputOrder_v2_134_Out_4,
                [5] = self.f_box_OutputOrder_v2_134_Out_5,
                [6] = self.f_box_OutputOrder_v2_134_Out_6,
                [7] = self.f_box_OutputOrder_v2_134_Out_7,
                [8] = self.f_box_OutputOrder_v2_134_Out_8,
                [9] = self.f_box_OutputOrder_v2_134_Out_9,
                [10] = self.f_box_OutputOrder_v2_134_Out_10,
                [11] = self.f_box_OutputOrder_v2_134_Out_11,
            },
            count = 12,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|130213910");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658777227434611",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_228()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- interactor,
        [2] = self.eInteractor,
        -- usableEntity,
        [4] = "2108237566965717217",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|134562748");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_20_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iFishCounter,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_217()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|146445741");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "36167496760264470",
        -- missionLayerId,
        [1] = "27160313077651685",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|159894859");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107823154308059584",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|162585303");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2108820626184629676",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|171012792");
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
                [0] = self.f_box_OutputOrder_v2_181_Out_0,
                [1] = self.f_box_OutputOrder_v2_181_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|172786729");
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
                [0] = self.f_box_OutputOrder_v2_195_Out_0,
                [1] = self.f_box_OutputOrder_v2_195_Out_1,
                [2] = self.f_box_OutputOrder_v2_195_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_334()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_15()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576904335770868",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_291()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_291");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|194862826");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_280()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_31()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576902758712562",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_155()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576387368920652",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_112()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107823013425582511",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_290()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|220159986");
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
                [0] = self.f_box_OutputOrder_v2_122_Out_0,
                [1] = self.f_box_OutputOrder_v2_122_Out_1,
                [2] = self.f_box_OutputOrder_v2_122_Out_2,
                [3] = self.f_box_OutputOrder_v2_122_Out_3,
                [4] = self.f_box_OutputOrder_v2_122_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|238905399");
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
                [0] = self.f_box_OutputOrder_v2_156_Out_0,
                [1] = self.f_box_OutputOrder_v2_156_Out_1,
                [2] = self.f_box_OutputOrder_v2_156_Out_2,
                [3] = self.f_box_OutputOrder_v2_156_Out_3,
                [4] = self.f_box_OutputOrder_v2_156_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_201()
    local params;
    params = {
        -- targets,
        [0] = "2107562884738343890",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_330()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_210()
    local params;
    params = {
        -- interactor,
        [2] = self.eInteractFish1,
        -- usableEntity,
        [4] = "2107562884738343890",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|245155891");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_91_Removed,
    });
    params = {
        -- Data,
        [0] = "2107576902758712562",
        -- Input,
        [2] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_151()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107823013425582511",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_316()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_316");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|260710393");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_316_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "TH_E201_Objective_02",
            id = "728815",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_100()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576902758712562",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_255()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_255");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|262900855");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_255_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|263237097");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2107562884738343890",
        -- Input,
        [2] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_219()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- interactor,
        [2] = self.eInteractor,
        -- usableEntity,
        [4] = "2108237567116712163",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_262()
    local params;
    params = {
        -- targets,
        [0] = "2108237567284484325",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|280424577");
    l0:SetConnections({
        -- OnSetUnusable,
        [2] = self.f_box_TriggerState_v2_146_OnSetUnusable,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107823154308059584",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_286()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_286");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|296303848");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_286_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658777227434611",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_63()
    local params;
    params = {
        -- interactor,
        [2] = self.eInteractFish5,
        -- usableEntity,
        [4] = "2107823013847110065",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_203()
    local params;
    params = {
        -- targets,
        [0] = "2107576902758712562",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_324()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|329148403");
    l0:SetConnections({
        -- OnSetUnusable,
        [2] = self.f_box_TriggerState_v2_69_OnSetUnusable,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658777950952055",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_325()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_270()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_270");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|348427160");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109124163382823441",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_131()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576904335770868",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|366586551");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2107823013847110065",
        -- Input,
        [2] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|375645567");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107823155610390980",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_247()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_247");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|377309470");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "36167496760264470",
        -- missionLayerId,
        [1] = "36167512332806037",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_285()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_332()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_279()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_30()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576904335770868",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_241()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- interactor,
        [2] = self.eInteractor,
        -- usableEntity,
        [4] = "2108237567427090663",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_260()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108817490122382837",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_275()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_102()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2107576904335770868",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|441328018");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_211()
    local params;
    params = {
        -- targets,
        [0] = "2108817490122382837",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_79()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576387368920652",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_61()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107562884738343890",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_55()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576387368920652",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_111()
    local params;
    params = {
        -- targets,
        [0] = "2107823013847110065",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|491244776");
    l0:SetConnections({
        -- OnSetUnusable,
        [2] = self.f_box_TriggerState_v2_101_OnSetUnusable,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658675507168203",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_250()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576904335770868",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|508511361");
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
                [0] = self.f_box_OutputOrder_v2_147_Out_0,
                [1] = self.f_box_OutputOrder_v2_147_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_176()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576387368920652",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_126()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2107658675507168203",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_243()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|538522823");
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
                [0] = self.f_box_OutputOrder_v2_234_Out_0,
                [1] = self.f_box_OutputOrder_v2_234_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_197()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108237566965717217",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|559362125");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658675507168203",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|608607134");
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
                [0] = self.f_box_OutputOrder_v2_88_Out_0,
                [1] = self.f_box_OutputOrder_v2_88_Out_1,
                [2] = self.f_box_OutputOrder_v2_88_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|611170155");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_36_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107823155610390980",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_54()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107823013425582511",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_294()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_294");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|629352525");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_294_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107823154308059584",
    };
    return params;
end;

function export:OnEnter_box_ListFinder_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListFinder_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|662611722");
    l0:SetConnections({
        -- Found,
        [0] = self.f_box_ListFinder_5_Found,
    });
    params = {
        -- Data,
        [0] = "2107562884738343890",
        -- Input,
        [1] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_230()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_264()
    local params;
    params = {
        -- targets,
        [0] = "2108237567427090663",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_302()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108252022695277964",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_216()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_240()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- interactor,
        [2] = self.eInteractor,
        -- usableEntity,
        [4] = "2108237566714058975",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_59()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576904335770868",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_110()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107823013847110065",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_213()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107562884738343890",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|723605396");
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
                [0] = self.f_box_OutputOrder_v2_178_Out_0,
                [1] = self.f_box_OutputOrder_v2_178_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_74()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107823013847110065",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_133()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576904335770868",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|740343859");
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
                [0] = self.f_box_OutputOrder_v2_236_Out_0,
                [1] = self.f_box_OutputOrder_v2_236_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_313()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_313");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|765681306");
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
                [0] = self.f_box_OutputOrder_v2_313_Out_0,
                [1] = self.f_box_OutputOrder_v2_313_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_215()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- interactor,
        [2] = self.eInteractor,
        -- usableEntity,
        [4] = "2108237566965717217",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_120()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107562884738343890",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_227()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_81()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107823013847110065",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_136()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107823013425582511",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|828994365");
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
                [0] = self.f_box_OutputOrder_v2_225_Out_0,
                [1] = self.f_box_OutputOrder_v2_225_Out_1,
                [2] = self.f_box_OutputOrder_v2_225_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_266()
    local params;
    params = {
        -- targets,
        [0] = "2108237566714058975",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_292()
    local params;
    params = {
        -- Group,
        [0] = "2107369419507241948",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|867031720");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_141_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iFishCounter,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|874323719");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
                [2] = self.f_box_OutputOrder_v2_34_Out_2,
                [3] = self.f_box_OutputOrder_v2_34_Out_3,
                [4] = self.f_box_OutputOrder_v2_34_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|883498528");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
                [2] = self.f_box_OutputOrder_v2_65_Out_2,
                [3] = self.f_box_OutputOrder_v2_65_Out_3,
                [4] = self.f_box_OutputOrder_v2_65_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|888946163");
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
                [0] = self.f_box_OutputOrder_v2_224_Out_0,
                [1] = self.f_box_OutputOrder_v2_224_Out_1,
                [2] = self.f_box_OutputOrder_v2_224_Out_2,
                [3] = self.f_box_OutputOrder_v2_224_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_331()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|902123751");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_67_Out,
    });
    params = {
        -- A,
        [0] = self.iFishCounter,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_77()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107823013847110065",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_193()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108237567284484325",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_222()
    local params;
    params = {
        -- interactor,
        [2] = self.eInteractFish5,
        -- usableEntity,
        [4] = "2107823013425582511",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_19()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576387368920652",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_90()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107562884738343890",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_272()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_272");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|936997416");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109124163382823441",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_71()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2107576387368920652",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_282()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_281()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_281");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|953413616");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109194116830087624",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|959217550");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_153_Activated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_153_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "36167496760264470",
        -- missionLayerId,
        [1] = "27160299381946866",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|963828827");
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
                [0] = self.f_box_OutputOrder_v2_179_Out_0,
                [1] = self.f_box_OutputOrder_v2_179_Out_1,
                [2] = self.f_box_OutputOrder_v2_179_Out_2,
                [3] = self.f_box_OutputOrder_v2_179_Out_3,
                [4] = self.f_box_OutputOrder_v2_179_Out_4,
                [5] = self.f_box_OutputOrder_v2_179_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_237()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576387368920652",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_265()
    local params;
    params = {
        -- targets,
        [0] = "2108237566965717217",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_326()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_198()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108237566714058975",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_127()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2107823155610390980",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_37()
    local params;
    params = {
        -- Group,
        [0] = "2107369419507241948",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_298()
    local params;
    params = {
        -- Group,
        [0] = "2108820626184629676",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_143()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576387368920652",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_311()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_295()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1046413383");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658777950952055",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_256");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1049670001");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109124293924235532",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1055768817");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_184_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "TH_E201_Objective_02",
            id = "728815",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1059819542");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_46_Out,
    });
    params = {
        -- A,
        [0] = self.iFishCounter,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_186()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- interactor,
        [2] = self.eInteractor,
        -- usableEntity,
        [4] = "2108237567116712163",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_267()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108224044485579022",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_89()
    local params;
    params = {
        -- interactor,
        [2] = self.eInteractFish6,
        -- usableEntity,
        [4] = "2107823013425582511",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_64()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_284()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107562884738343890",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_296()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_296");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1086033382");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 12,
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
                [0] = self.f_box_OutputOrder_v2_296_Out_0,
                [1] = self.f_box_OutputOrder_v2_296_Out_1,
                [2] = self.f_box_OutputOrder_v2_296_Out_2,
                [3] = self.f_box_OutputOrder_v2_296_Out_3,
                [4] = self.f_box_OutputOrder_v2_296_Out_4,
                [5] = self.f_box_OutputOrder_v2_296_Out_5,
                [7] = self.f_box_OutputOrder_v2_296_Out_7,
            },
            count = 12,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_221()
    local params;
    params = {
        -- interactor,
        [2] = self.eInteractFish6,
        -- usableEntity,
        [4] = "2107823013847110065",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_170()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576904335770868",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_263()
    local params;
    params = {
        -- targets,
        [0] = "2108237564600129757",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_303()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1114984404");
    l0:SetConnections({
        -- OnSetUnusable,
        [2] = self.f_box_TriggerState_v2_60_OnSetUnusable,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107823155610390980",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1119633256");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_6_Removed,
    });
    params = {
        -- Data,
        [0] = "2107823013425582511",
        -- Input,
        [2] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_251()
    local params;
    params = {
        -- interactor,
        [2] = self.eInteractor,
        -- usableEntity,
        [4] = "2108817490122382837",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1137121479");
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
                [0] = self.f_box_OutputOrder_v2_218_Out_0,
                [1] = self.f_box_OutputOrder_v2_218_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_307()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_307");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1158798698");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "36167496760264470",
        -- missionLayerId,
        [1] = "36167519954525678",
    };
    return params;
end;

function export:OnEnter_box_ListFinder_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListFinder_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1158941557");
    l0:SetConnections({
        -- Found,
        [0] = self.f_box_ListFinder_76_Found,
    });
    params = {
        -- Data,
        [0] = "2107576904335770868",
        -- Input,
        [1] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1165658989");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658675507168203",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_249()
    local params;
    params = {
        -- interactor,
        [2] = self.eInteractFish3,
        -- usableEntity,
        [4] = "2107576902758712562",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_300()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2107369474414875619",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1190834048");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_169_Removed,
    });
    params = {
        -- Data,
        [0] = "2107576387368920652",
        -- Input,
        [2] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1196084191");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2107576387368920652",
        -- Input,
        [2] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1199584819");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_148_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107823154308059584",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_238()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- interactor,
        [2] = self.eInteractor,
        -- usableEntity,
        [4] = "2108237564600129757",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1216152466");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_57_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iFishCounter,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_309()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_309");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1217179192");
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
                [0] = self.f_box_OutputOrder_v2_309_Out_0,
                [1] = self.f_box_OutputOrder_v2_309_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1225608991");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107823154308059584",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_257()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_257");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1232238420");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109124293924235532",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1237712104");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_166_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ListFinder_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListFinder_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1242107189");
    l0:SetConnections({
        -- Found,
        [0] = self.f_box_ListFinder_26_Found,
    });
    params = {
        -- Data,
        [0] = "2107823013425582511",
        -- Input,
        [1] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1244766086");
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
                [0] = self.f_box_OutputOrder_v2_206_Out_0,
                [1] = self.f_box_OutputOrder_v2_206_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_333()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_223()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576902758712562",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_232()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1270077515");
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
                [0] = self.f_box_OutputOrder_v2_232_Out_0,
                [1] = self.f_box_OutputOrder_v2_232_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_306()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_306");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1272040235");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "36167496760264470",
        -- missionLayerId,
        [1] = "27160320699745027",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_329()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_207()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- interactor,
        [2] = self.eInteractor,
        -- usableEntity,
        [4] = "2108237567284484325",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1278300377");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_115_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658777227434611",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1279520702");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_73_Out,
    });
    params = {
        -- A,
        [0] = self.iFishCounter,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1282340982");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_56_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "TH_E201_Objective_01",
            id = "728810",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_269()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_269");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1289098215");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109124163382823441",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_62()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576902758712562",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1297734599");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658777227434611",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_317()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1322381710");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 13,
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
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
                [3] = self.f_box_OutputOrder_v2_10_Out_3,
                [4] = self.f_box_OutputOrder_v2_10_Out_4,
                [5] = self.f_box_OutputOrder_v2_10_Out_5,
                [6] = self.f_box_OutputOrder_v2_10_Out_6,
                [7] = self.f_box_OutputOrder_v2_10_Out_7,
                [8] = self.f_box_OutputOrder_v2_10_Out_8,
                [9] = self.f_box_OutputOrder_v2_10_Out_9,
                [10] = self.f_box_OutputOrder_v2_10_Out_10,
                [11] = self.f_box_OutputOrder_v2_10_Out_11,
            },
            count = 13,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1323243456");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_107_Out,
    });
    params = {
        -- A,
        [0] = self.iFishCounter,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_297()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_297");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1328718864");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_297_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658777950952055",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_274()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_274");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1336888238");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109194116830087624",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1343383395");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 12,
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
                [2] = self.f_box_OutputOrder_v2_70_Out_2,
                [3] = self.f_box_OutputOrder_v2_70_Out_3,
                [4] = self.f_box_OutputOrder_v2_70_Out_4,
                [5] = self.f_box_OutputOrder_v2_70_Out_5,
                [6] = self.f_box_OutputOrder_v2_70_Out_6,
                [7] = self.f_box_OutputOrder_v2_70_Out_7,
                [8] = self.f_box_OutputOrder_v2_70_Out_8,
            },
            count = 12,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_108()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2107562884738343890",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_276()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109218797463276871",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_168()
    local params;
    params = {
        -- interactor,
        [2] = self.eInteractFish3,
        -- usableEntity,
        [4] = "2107576902758712562",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1361032154");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658777227434611",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_273()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_273");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1361393985");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109124293924235532",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1368705232");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107823154308059584",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1371472302");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_80_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iFishCounter,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_209()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_258()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_188()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2108817490122382837",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1376137932");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_208_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_278()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_278");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1382564617");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109194116830087624",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2108237804076011405",
        -- nearZone,
        [4] = 17,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1395004476");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_97_Out,
    });
    params = {
        -- A,
        [0] = self.iFishCounter,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_205()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- interactor,
        [2] = self.eInteractor,
        -- usableEntity,
        [4] = "2108237567284484325",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_58()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1414982583");
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
                [0] = self.f_box_OutputOrder_v2_187_Out_0,
                [1] = self.f_box_OutputOrder_v2_187_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_229()
    local params;
    params = {
        -- interactor,
        [2] = self.eInteractFish4,
        -- usableEntity,
        [4] = "2107576904335770868",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_130()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576902758712562",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_315()
    local params;
    params = {
        -- Preset,
        [0] = "9015219471541668",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_124()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_113()
    local params;
    params = {
        -- targets,
        [0] = "2107823013425582511",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_128()
    local params;
    params = {
        -- interactor,
        [2] = self.eInteractFish4,
        -- usableEntity,
        [4] = "2107576904335770868",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_41()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ListFinder_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListFinder_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1496233263");
    l0:SetConnections({
        -- Found,
        [0] = self.f_box_ListFinder_27_Found,
    });
    params = {
        -- Data,
        [0] = "2107576902758712562",
        -- Input,
        [1] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_327()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_72()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2107823013425582511",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1502026346");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
                [2] = self.f_box_OutputOrder_v2_44_Out_2,
                [3] = self.f_box_OutputOrder_v2_44_Out_3,
                [4] = self.f_box_OutputOrder_v2_44_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1502408619");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_174_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658675507168203",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_106()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107823013847110065",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_288()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_288");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1515431147");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_288_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107823155610390980",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_268()
    local params;
    params = {
        -- Group,
        [0] = "2109551116499818490",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1516939509");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "DoorOpened",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1520208589");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
                [2] = self.f_box_OutputOrder_v2_33_Out_2,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_277()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_277");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1526253044");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_277_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109194116830087624",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_190()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108817490122382837",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_287()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107823013847110065",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_283()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_199()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108237564600129757",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_239()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- interactor,
        [2] = self.eInteractor,
        -- usableEntity,
        [4] = "2108237564600129757",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1573818621");
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
                [0] = self.f_box_OutputOrder_v2_165_Out_0,
                [1] = self.f_box_OutputOrder_v2_165_Out_1,
                [2] = self.f_box_OutputOrder_v2_165_Out_2,
                [3] = self.f_box_OutputOrder_v2_165_Out_3,
                [4] = self.f_box_OutputOrder_v2_165_Out_4,
                [5] = self.f_box_OutputOrder_v2_165_Out_5,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1597659010");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_32_Unlocked,
    });
    params = {
        -- door,
        [0] = "2107643155978388485",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1607086004");
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
                [0] = self.f_box_OutputOrder_v2_103_Out_0,
                [1] = self.f_box_OutputOrder_v2_103_Out_1,
                [2] = self.f_box_OutputOrder_v2_103_Out_2,
                [3] = self.f_box_OutputOrder_v2_103_Out_3,
                [4] = self.f_box_OutputOrder_v2_103_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1608055812");
    l0:SetConnections({
        -- OnSetUnusable,
        [2] = self.f_box_TriggerState_v2_35_OnSetUnusable,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658777227434611",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_314()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_140()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2107823013847110065",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_117()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107823013425582511",
    };
    return params;
end;

function export:OnEnter_box_ListFinder_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListFinder.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListFinder_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1629620424");
    l0:SetConnections({
        -- Found,
        [0] = self.f_box_ListFinder_118_Found,
    });
    params = {
        -- Data,
        [0] = "2107823013847110065",
        -- Input,
        [1] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_200()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108237567427090663",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_248()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107823013425582511",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1662403433");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
                [2] = self.f_box_OutputOrder_v2_25_Out_2,
                [3] = self.f_box_OutputOrder_v2_25_Out_3,
                [4] = self.f_box_OutputOrder_v2_25_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1669845038");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_50_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_50_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015331973844072",
        -- Fact,
        [1] = "DoorOpened",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_68()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_28()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576902758712562",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_242");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1721690160");
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
                [0] = self.f_box_OutputOrder_v2_242_Out_0,
                [1] = self.f_box_OutputOrder_v2_242_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1725017376");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2107576902758712562",
        -- Input,
        [2] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1726211218");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107823154308059584",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1728703827");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "36167496760264470",
        -- missionLayerId,
        [1] = "27160313077651685",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1733108535");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_163_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iFishCounter,
        -- B,
        [1] = 6,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_139()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107562884738343890",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_305()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_305");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1756818396");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_305_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109610592879779071",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_204()
    local params;
    params = {
        -- targets,
        [0] = "2107576904335770868",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_29()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2107658777227434611",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1800113476");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_48_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015331973844072",
        -- Fact,
        [1] = "HookSpawned",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_196()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108237567116712163",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_289()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_289");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1805799298");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_289_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658675507168203",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2108237804076011405",
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_245");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1813600400");
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
                [0] = self.f_box_OutputOrder_v2_245_Out_0,
                [1] = self.f_box_OutputOrder_v2_245_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_7()
    local params;
    params = {
        -- interactor,
        [2] = self.eInteractFish1,
        -- usableEntity,
        [4] = "2107562884738343890",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1848184521");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2107576904335770868",
        -- Input,
        [2] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_271()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576904335770868",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_125()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2107658777950952055",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1877904388");
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
                [0] = self.f_box_OutputOrder_v2_135_Out_0,
                [1] = self.f_box_OutputOrder_v2_135_Out_1,
                [2] = self.f_box_OutputOrder_v2_135_Out_2,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1889750237");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1914740114");
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
                [0] = self.f_box_OutputOrder_v2_212_Out_0,
                [1] = self.f_box_OutputOrder_v2_212_Out_1,
                [2] = self.f_box_OutputOrder_v2_212_Out_2,
                [3] = self.f_box_OutputOrder_v2_212_Out_3,
                [4] = self.f_box_OutputOrder_v2_212_Out_4,
                [5] = self.f_box_OutputOrder_v2_212_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1916227880");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107823155610390980",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1922905503");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_94_Removed,
    });
    params = {
        -- Data,
        [0] = "2107576904335770868",
        -- Input,
        [2] = self.lFishInteracted,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_220()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_328()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1941796236");
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
                [0] = self.f_box_OutputOrder_v2_189_Out_0,
                [1] = self.f_box_OutputOrder_v2_189_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_86()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576387368920652",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1952563255");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_23_Out,
    });
    params = {
        -- A,
        [0] = self.iFishCounter,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1963312199");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658777950952055",
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
        [3] = "2107823154308059584",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|1988646905");
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
                [0] = self.f_box_OutputOrder_v2_226_Out_0,
                [1] = self.f_box_OutputOrder_v2_226_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_38()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107562884738343890",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2022321457");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107823155610390980",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2028238041");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 11,
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
                [0] = self.f_box_OutputOrder_v2_167_Out_0,
                [1] = self.f_box_OutputOrder_v2_167_Out_1,
                [2] = self.f_box_OutputOrder_v2_167_Out_2,
                [3] = self.f_box_OutputOrder_v2_167_Out_3,
            },
            count = 11,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_114()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2107576902758712562",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2057659703");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_99_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iFishCounter,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_22()
    local params;
    params = {
        -- interactor,
        [2] = self.eInteractFish2,
        -- usableEntity,
        [4] = "2107576387368920652",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_233()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2063506587");
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
                [0] = self.f_box_OutputOrder_v2_233_Out_0,
                [1] = self.f_box_OutputOrder_v2_233_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_261()
    local params;
    params = {
        -- targets,
        [0] = "2108237567116712163",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2071545300");
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

function export:OnEnter_box_MetaBreakableModifier_v2_202()
    local params;
    params = {
        -- targets,
        [0] = "2107576387368920652",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_171()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107576902758712562",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2083985310");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_132_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658777950952055",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_244()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- interactor,
        [2] = self.eInteractor,
        -- usableEntity,
        [4] = "2108237567427090663",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2084482254");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2107658777950952055",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2085604298");
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
                [0] = self.f_box_OutputOrder_v2_109_Out_0,
                [1] = self.f_box_OutputOrder_v2_109_Out_1,
                [2] = self.f_box_OutputOrder_v2_109_Out_2,
                [3] = self.f_box_OutputOrder_v2_109_Out_3,
                [4] = self.f_box_OutputOrder_v2_109_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_9()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_254()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107823013847110065",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2095429369");
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
                [0] = self.f_box_OutputOrder_v2_129_Out_0,
                [1] = self.f_box_OutputOrder_v2_129_Out_1,
                [2] = self.f_box_OutputOrder_v2_129_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_301()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresAllPlayer,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eMarker,
        [6] = "2107369467018220513",
        -- eTrigger,
        [8] = "2107369474414875619",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "TH_E201_Objective_02",
            id = "728815",
        },
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_310()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_310");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E201.domino|@TH_E201_B10|2116239854");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "36167496760264470",
        -- missionLayerId,
        [1] = "27160320699745027",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_255_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_185;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UniversalInteractionListener_102_Interacted()
    local l0;
    l0 = self.box_UniversalInteractionListener_102;
    self.eInteractFish4 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_67_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iFishCounter = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UniversalInteractionListener_71_Interacted()
    local l0;
    l0 = self.box_UniversalInteractionListener_71;
    self.eInteractFish2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_46_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iFishCounter = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_166_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iFishCounter = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_73_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iFishCounter = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_107_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iFishCounter = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UniversalInteractionListener_108_Interacted()
    local l0;
    l0 = self.box_UniversalInteractionListener_108;
    self.eInteractFish1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UniversalInteractionListener_188_Interacted()
    local l0;
    l0 = self.box_UniversalInteractionListener_188;
    self.eInteractor = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_208_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_194;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_97_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iFishCounter = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UniversalInteractionListener_72_Interacted()
    local l0;
    l0 = self.box_UniversalInteractionListener_72;
    self.eInteractFish6 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UniversalInteractionListener_140_Interacted()
    local l0;
    l0 = self.box_UniversalInteractionListener_140;
    self.eInteractFish5 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iFishCounter = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UniversalInteractionListener_114_Interacted()
    local l0;
    l0 = self.box_UniversalInteractionListener_114;
    self.eInteractFish3 = l0:GetDataOutValue(0);
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
