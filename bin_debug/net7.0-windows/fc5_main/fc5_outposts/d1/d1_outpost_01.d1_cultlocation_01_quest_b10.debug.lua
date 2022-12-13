LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/d1/d1_outpost_01.domino
-- User graph: D1_CultLocation_01_QUEST_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Escort_NPC_To_Position.Brick_Escort_NPC_To_Position_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/D1/D1_Outpost_01.D1_CultLocation_01_QUEST_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Escort_NPC_To_Position.Brick_Escort_NPC_To_Position_v3.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 3,
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
                name = "eDestinationMarker",
                type = "entity",
            },
            [3] = {
                name = "eDestinationTrigger",
                type = "entity",
            },
            [4] = {
                name = "eNPCMobileMarker",
                type = "entity",
            },
            [5] = {
                name = "eNPCToEscort",
                type = "entity",
            },
            [6] = {
                name = "Objective",
                type = "oasis",
            },
            [7] = {
                name = "WarningMsg",
                type = "oasis",
            },
        },
        dataInCount = 8,
        dataOut = {
            [0] = {
                name = "FailReason",
                type = "oasis",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ForceRelease",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "HostageReleased",
                delayed = false,
            },
            [1] = {
                name = "NextHostage",
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
                name = "Hostage",
                type = "entity",
            },
            [1] = {
                name = "STP_Tied",
                type = "entity",
            },
        },
        dataInCount = 2,
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
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v2.lua")] = {
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
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "D1_CultLocation_01_QUEST_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10";
    self.ThreatenedUniqueGroup = nil;
    self.iNbThreatened_Start = 0;
    self._2101273986791917056 = nil;
    self.Cult = "#ED6508F8";
    self.Civ = "#01E26954";
    self.Reward = "9015217323976138";
    self.o_FailReason = {
        section = "",
        item = "",
        id = "",
    };
    self.Cow_left = 5;
    self.Enemies_count = 5;
    self.enemies_count = 4;
    self.Hostage_left_liberated = 3;
    self.i_hostageFreedDead = 0;
    self.i_killedoralive = 0;
    self.Hostage_left = 3;
    self.i_deadOrAlive = 3;
    self.escorted_npc = 0;
    self.i_Piecesfound = 0;
    self.Hostages_count = 0;
    self.iProgressID = 0;
    self.i_escortednpc_beat2 = 3;
    self.box_Delay_v5_85 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|75658591");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_85_TimeElapsed,
    });
    self.box_ExitZoneWarningListener_v3_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|133928851");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_10_FailingZoneEntered,
    });
    self.box_OnceOnly_v3_76 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|206556059");
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
    self.box_SpawnAI_55 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|237743196");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_66 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|297354840");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_66_Loaded,
    });
    self.box_HealthListener_v6_30 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|315316443");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_30_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_30_Killed,
    });
    self.box_MultipleAND_v2_28 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|466316327");
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
        [0] = self.f_box_MultipleAND_v2_28_Out,
    });
    self.box_OnceOnly_v3_80 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|469903717");
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
                [0] = self.f_box_OnceOnly_v3_80_Out_0,
            },
            count = 2,
        },
    });
    self.box_HealthListener_v6_24 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|490540069");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_24_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_24_Killed,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|500700450");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_GroupSizeListener_v5_106 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|504534599");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_106_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_106_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_106_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_106_MemberRemoved,
    });
    self.box_MultipleOR_86 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|509899473");
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
        [0] = self.f_box_MultipleOR_86_Out,
    });
    self.box_ProximityTrigger_v2_19 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|535784234");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_19_Enter,
    });
    self.box_EntityStatusListener_39 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|601050844");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_39_Loaded,
    });
    self.box_MultipleAND_v2_31 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|652537820");
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
        [0] = self.f_box_MultipleAND_v2_31_Out,
    });
    self.box_OnceOnly_v3_82 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|678734921");
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
                [0] = self.f_box_OnceOnly_v3_82_Out_0,
            },
            count = 2,
        },
    });
    self.box_GroupSizeListener_v5_48 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|711592302");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_48_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_48_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_48_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_48_MemberRemoved,
    });
    self.box_Brick_Escort_NPC_To_Position_v3_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Escort_NPC_To_Position.Brick_Escort_NPC_To_Position_v3.debug.lua");
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Escort_NPC_To_Position_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|738243694");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Escort_NPC_To_Position_v3_22_Fail,
        -- Started,
        [1] = self.f_box_Brick_Escort_NPC_To_Position_v3_22_Started,
        -- Success,
        [2] = self.f_box_Brick_Escort_NPC_To_Position_v3_22_Success,
    });
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|751420840");
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
    self.box_OnceOnly_v3_75 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|797528942");
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
    self.box_SpawnAI_27 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|839542959");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_27_Spawned,
    });
    self.box_StartCelebration_67 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|848102820");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_67_Ended,
    });
    self.box_Brick_Hostage_Setup_v2_43 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|859007001");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_43_HostageReleased,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|884540091");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_MultipleOR_97 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|922178648");
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
        [0] = self.f_box_MultipleOR_97_Out,
    });
    self.box_EntityStatusListener_26 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|960638865");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_26_Loaded,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1016428271");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_ProximityTrigger_v2_70 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1050671194");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_70_Enter,
    });
    self.box_MultipleOR_69 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1053453027");
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
        [0] = self.f_box_MultipleOR_69_Out,
    });
    self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1062123456");
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
        [0] = self.f_box_MultipleOR_63_Out,
    });
    self.box_OnceOnly_v3_81 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1067460295");
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
                [0] = self.f_box_OnceOnly_v3_81_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Escort_NPC_To_Position_v3_59 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Escort_NPC_To_Position.Brick_Escort_NPC_To_Position_v3.debug.lua");
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Escort_NPC_To_Position_v3_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1124170587");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Escort_NPC_To_Position_v3_59_Fail,
        -- Started,
        [1] = self.f_box_Brick_Escort_NPC_To_Position_v3_59_Started,
        -- Success,
        [2] = self.f_box_Brick_Escort_NPC_To_Position_v3_59_Success,
    });
    self.box_SpawnAI_34 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1141114789");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_60 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1165816601");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_60_Enter,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1287732968");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_Brick_Escort_NPC_To_Position_v3_53 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Escort_NPC_To_Position.Brick_Escort_NPC_To_Position_v3.debug.lua");
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Escort_NPC_To_Position_v3_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1332932944");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Escort_NPC_To_Position_v3_53_Fail,
        -- Started,
        [1] = self.f_box_Brick_Escort_NPC_To_Position_v3_53_Started,
        -- Success,
        [2] = self.f_box_Brick_Escort_NPC_To_Position_v3_53_Success,
    });
    self.box_SpawnAI_68 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1346853041");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_68_Spawned,
    });
    self.box_OnceOnly_v3_65 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1489752145");
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
                [0] = self.f_box_OnceOnly_v3_65_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1567137276");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_EntityStatusListener_33 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1588466445");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_33_Loaded,
    });
    self.box_ProximityTrigger_v2_17 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1638314285");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_17_Enter,
    });
    self.box_Brick_Hostage_Setup_v2_44 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1658758865");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_44_HostageReleased,
    });
    self.box_MultipleOR_84 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1693499143");
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
    self.box_EntityStatusListener_64 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1711514349");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_64_Loaded,
    });
    self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1742467216");
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
        [0] = self.f_box_MultipleOR_49_Out,
    });
    self.box_SpawnAI_61 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1786160070");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_29 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1807238268");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_29_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_29_Killed,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1807465385");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_ProximityTrigger_v2_62 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1924610151");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_62_Enter,
    });
    self.box_MultipleAND_v2_14 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1937875710");
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
        [0] = self.f_box_MultipleAND_v2_14_Out,
    });
    self.box_Brick_Hostage_Setup_v2_42 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1966724954");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_42_HostageReleased,
    });
    self.box_SpawnAI_72 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2000528833");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_72_Spawned,
    });
    self.box_MultipleOR_83 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2016220651");
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
    self.box_ExitZoneWarningListener_v3_78 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2023356102");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_78_FailingZoneEntered,
    });
    self.box_SpawnAI_46 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2035351471");
    l0:SetConnections({
    });
    self.box_SpawnAI_40 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2050178338");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_40_Spawned,
    });
    self.box_GroupSizeListener_v5_71 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2069337815");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_71_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_71_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_71_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_71_MemberRemoved,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|589511977", "589511977", "D1_CultLocation_01_QUEST_B10", "In", "box_ActivityAcknowledgeGate_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_107_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_24();
    l0 = self.box_HealthListener_v6_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|897019333", "897019333", "D1_CultLocation_01_QUEST_B10", "box_Simple_Node_107.Out", "box_HealthListener_v6_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_HealthListener_v6_29();
    l0 = self.box_HealthListener_v6_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1093785177", "1093785177", "D1_CultLocation_01_QUEST_B10", "box_Simple_Node_107.Out", "box_HealthListener_v6_29.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_HealthListener_v6_30();
    l0 = self.box_HealthListener_v6_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2136122141", "2136122141", "D1_CultLocation_01_QUEST_B10", "box_Simple_Node_107.Out", "box_HealthListener_v6_30.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_106();
    l0 = self.box_GroupSizeListener_v5_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|778531814", "778531814", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_50.Out", "box_GroupSizeListener_v5_106.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_48();
    l0 = self.box_GroupSizeListener_v5_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|828123141", "828123141", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_50.Out", "box_GroupSizeListener_v5_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_107();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1620363462", "1620363462", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_50.Out", "box_Simple_Node_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Escort_NPC_To_Position_v3_53();
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|819665696", "819665696", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_103.Out", "box_Brick_Escort_NPC_To_Position_v3_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_100_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|832614817", "832614817", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_100.Out", "box_MultipleOR_83.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_100_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1980943192", "1980943192", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_100.Out", "box_MultipleOR_97.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_85_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_Delay_v5_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|885548340", "885548340", "D1_CultLocation_01_QUEST_B10", "box_Delay_v5_85.TimeElapsed", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|848096742", "848096742", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_89.Out", "box_MultipleOR_84.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_89_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_31();
    l0 = self.box_MultipleAND_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|114954666", "114954666", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_89.Out", "box_MultipleAND_v2_31.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1899307835", "1899307835", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_13.Out", "box_AddActivityObjective_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_10();
    l0 = self.box_ExitZoneWarningListener_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2037511440", "2037511440", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_13.Out", "box_ExitZoneWarningListener_v3_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ExitZoneWarningListener_v3_10_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_2();
    l0 = self.box_ExitZoneWarningListener_v3_10;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|992968148", "992968148", "D1_CultLocation_01_QUEST_B10", "box_ExitZoneWarningListener_v3_10.FailingZoneEntered", "box_ActivityRetry_2.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_76_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_OnceOnly_v3_76;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|503744468", "503744468", "D1_CultLocation_01_QUEST_B10", "box_OnceOnly_v3_76.Out", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_90_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1176069963", "1176069963", "D1_CultLocation_01_QUEST_B10", "box_SetActivityObjectiveProgress_v2_90.Out", "box_OnceOnly_v3_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_66_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_68();
    l0 = self.box_EntityStatusListener_66;
    l1 = self.box_SpawnAI_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2083556518", "2083556518", "D1_CultLocation_01_QUEST_B10", "box_EntityStatusListener_66.Loaded", "box_SpawnAI_68.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_30_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_42();
    l0 = self.box_HealthListener_v6_30;
    l1 = self.box_Brick_Hostage_Setup_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1197896846", "1197896846", "D1_CultLocation_01_QUEST_B10", "box_HealthListener_v6_30.Enabled", "box_Brick_Hostage_Setup_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_30_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_89();
    l0 = self.box_HealthListener_v6_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2142035027", "2142035027", "D1_CultLocation_01_QUEST_B10", "box_HealthListener_v6_30.Killed", "box_OutputOrder_v2_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_74();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1229387999", "1229387999", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_16.Out", "box_IsPawnAlive_v2_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_96_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_96_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_98();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|363997434", "363997434", "D1_CultLocation_01_QUEST_B10", "box_IntegerArithmetics_v2_96.Out", "box_SetActivityObjectiveProgress_v2_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1837869183", "1837869183", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_73.Out", "box_OutputOrder_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|955399344", "955399344", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_73.Out", "box_OutputOrder_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1126877065", "1126877065", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_73.Out", "box_OutputOrder_v2_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_78();
    l0 = self.box_ExitZoneWarningListener_v3_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|368498283", "368498283", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_73.Out", "box_ExitZoneWarningListener_v3_78.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_73_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_10();
    l0 = self.box_ExitZoneWarningListener_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1955856387", "1955856387", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_73.Out", "box_ExitZoneWarningListener_v3_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_AddActivityObjectiveProgress_v2_94_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_94_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_95();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|205004788", "205004788", "D1_CultLocation_01_QUEST_B10", "box_AddActivityObjectiveProgress_v2_94.Out", "box_SetActivityObjectiveProgress_v2_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_85();
    l0 = self.box_MultipleAND_v2_28;
    l1 = self.box_Delay_v5_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|410029471", "410029471", "D1_CultLocation_01_QUEST_B10", "box_MultipleAND_v2_28.Out", "box_Delay_v5_85.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_80_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_OnceOnly_v3_80;
    l1 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|264630863", "264630863", "D1_CultLocation_01_QUEST_B10", "box_OnceOnly_v3_80.Out", "box_MultipleAND_v2_28.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_HealthListener_v6_24_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_44();
    l0 = self.box_HealthListener_v6_24;
    l1 = self.box_Brick_Hostage_Setup_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|991014035", "991014035", "D1_CultLocation_01_QUEST_B10", "box_HealthListener_v6_24.Enabled", "box_Brick_Hostage_Setup_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_24_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = self.box_HealthListener_v6_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1921294836", "1921294836", "D1_CultLocation_01_QUEST_B10", "box_HealthListener_v6_24.Killed", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_15_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_15;
    l1 = self.box_OnceOnly_v3_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1161707608", "1161707608", "D1_CultLocation_01_QUEST_B10", "box_MultipleOR_15.Out", "box_OnceOnly_v3_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_106_Enabled()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_106_Enabled();
    params = self:OnEnter_box_AddActivityObjective_v2_87();
    l0 = self.box_GroupSizeListener_v5_106;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|233958308", "233958308", "D1_CultLocation_01_QUEST_B10", "box_GroupSizeListener_v5_106.Enabled", "box_AddActivityObjective_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_106_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_106_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_106_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_106_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_106;
    l1 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1699583438", "1699583438", "D1_CultLocation_01_QUEST_B10", "box_GroupSizeListener_v5_106.MemberRemoved", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_86_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_90();
    l0 = self.box_MultipleOR_86;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2098242332", "2098242332", "D1_CultLocation_01_QUEST_B10", "box_MultipleOR_86.Out", "box_SetActivityObjectiveProgress_v2_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Escort_NPC_To_Position_v3_59();
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|951050551", "951050551", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_104.Out", "box_Brick_Escort_NPC_To_Position_v3_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_19_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_21();
    l0 = self.box_ProximityTrigger_v2_19;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1973392180", "1973392180", "D1_CultLocation_01_QUEST_B10", "box_ProximityTrigger_v2_19.Enter", "box_ActivityObjectiveMarkerModifier_v3_21.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_39_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_27();
    l0 = self.box_EntityStatusListener_39;
    l1 = self.box_SpawnAI_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|387350427", "387350427", "D1_CultLocation_01_QUEST_B10", "box_EntityStatusListener_39.Loaded", "box_SpawnAI_27.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_1();
    l0 = self.box_MultipleAND_v2_31;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|412236642", "412236642", "D1_CultLocation_01_QUEST_B10", "box_MultipleAND_v2_31.Out", "box_ActivityRetry_1.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_82_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_OnceOnly_v3_82;
    l1 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2077327642", "2077327642", "D1_CultLocation_01_QUEST_B10", "box_OnceOnly_v3_82.Out", "box_MultipleAND_v2_28.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_Compare_Integers_32_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1222551782", "1222551782", "D1_CultLocation_01_QUEST_B10", "box_Compare_Integers_32.A_le_B", "box_OutputOrder_v2_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_48_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_48_Enabled();
    l0 = self.box_GroupSizeListener_v5_48;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|704114628", "704114628", "D1_CultLocation_01_QUEST_B10", "box_GroupSizeListener_v5_48.Enabled", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_48_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_48_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_48_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_48_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_48;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|629492736", "629492736", "D1_CultLocation_01_QUEST_B10", "box_GroupSizeListener_v5_48.MemberRemoved", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsPawnAlive_v2_25_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|762420238", "762420238", "D1_CultLocation_01_QUEST_B10", "box_IsPawnAlive_v2_25.True", "box_OutputOrder_v2_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_22_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_91();
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1063805987", "1063805987", "D1_CultLocation_01_QUEST_B10", "box_Brick_Escort_NPC_To_Position_v3_22.Fail", "box_OutputOrder_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_22_Started()
    local l0, l1;
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_22;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2120328600", "2120328600", "D1_CultLocation_01_QUEST_B10", "box_Brick_Escort_NPC_To_Position_v3_22.Started", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_22_Success()
    local l0, l1;
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_22;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|430509666", "430509666", "D1_CultLocation_01_QUEST_B10", "box_Brick_Escort_NPC_To_Position_v3_22.Success", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_32();
    l0 = self.box_MultipleOR_56;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|558897616", "558897616", "D1_CultLocation_01_QUEST_B10", "box_MultipleOR_56.Out", "box_Compare_Integers_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_75_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = self.box_OnceOnly_v3_75;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|52912014", "52912014", "D1_CultLocation_01_QUEST_B10", "box_OnceOnly_v3_75.Out", "box_OutputOrder_v2_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_27_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_27;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|478742820", "478742820", "D1_CultLocation_01_QUEST_B10", "box_SpawnAI_27.Spawned", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StartCelebration_67_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_23();
    l0 = self.box_StartCelebration_67;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|841420334", "841420334", "D1_CultLocation_01_QUEST_B10", "box_StartCelebration_67.Ended", "box_ActivityEnd_23.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_43_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_100();
    l0 = self.box_Brick_Hostage_Setup_v2_43;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|514570799", "514570799", "D1_CultLocation_01_QUEST_B10", "box_Brick_Hostage_Setup_v2_43.HostageReleased", "box_OutputOrder_v2_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_11_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_11;
    l1 = self.box_OnceOnly_v3_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|675592172", "675592172", "D1_CultLocation_01_QUEST_B10", "box_MultipleOR_11.Out", "box_OnceOnly_v3_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_99_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1668523734", "1668523734", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_99.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|463849168", "463849168", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_99.Out", "box_MultipleOR_97.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_25();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|727713981", "727713981", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_36.Out", "box_IsPawnAlive_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_97_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_96();
    l0 = self.box_MultipleOR_97;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1852953999", "1852953999", "D1_CultLocation_01_QUEST_B10", "box_MultipleOR_97.Out", "box_IntegerArithmetics_v2_96.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_94();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|313920665", "313920665", "D1_CultLocation_01_QUEST_B10", "box_AddActivityObjective_v2_9.Out", "box_AddActivityObjectiveProgress_v2_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_26_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_34();
    l0 = self.box_EntityStatusListener_26;
    l1 = self.box_SpawnAI_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1363737387", "1363737387", "D1_CultLocation_01_QUEST_B10", "box_EntityStatusListener_26.Loaded", "box_SpawnAI_34.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1215765385", "1215765385", "D1_CultLocation_01_QUEST_B10", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|78410271", "78410271", "D1_CultLocation_01_QUEST_B10", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1796402334", "1796402334", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_52.Out", "box_MultipleOR_83.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_31();
    l0 = self.box_MultipleAND_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1956480765", "1956480765", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_52.Out", "box_MultipleAND_v2_31.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_ProximityTrigger_v2_70_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_46();
    l0 = self.box_ProximityTrigger_v2_70;
    l1 = self.box_SpawnAI_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1784194349", "1784194349", "D1_CultLocation_01_QUEST_B10", "box_ProximityTrigger_v2_70.Enter", "box_SpawnAI_46.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_69_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_60();
    l0 = self.box_MultipleOR_69;
    l1 = self.box_ProximityTrigger_v2_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2093281172", "2093281172", "D1_CultLocation_01_QUEST_B10", "box_MultipleOR_69.Out", "box_ProximityTrigger_v2_60.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_71();
    l0 = self.box_MultipleOR_63;
    l1 = self.box_GroupSizeListener_v5_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1328725115", "1328725115", "D1_CultLocation_01_QUEST_B10", "box_MultipleOR_63.Out", "box_GroupSizeListener_v5_71.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_AddActivityObjectiveProgress_v2_79_Out()
    local l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_79_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|881294419", "881294419", "D1_CultLocation_01_QUEST_B10", "box_AddActivityObjectiveProgress_v2_79.Out", "box_MultipleOR_86.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_81_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_OnceOnly_v3_81;
    l1 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2053819799", "2053819799", "D1_CultLocation_01_QUEST_B10", "box_OnceOnly_v3_81.Out", "box_MultipleAND_v2_28.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_59_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_93();
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|470172719", "470172719", "D1_CultLocation_01_QUEST_B10", "box_Brick_Escort_NPC_To_Position_v3_59.Fail", "box_OutputOrder_v2_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_59_Started()
    local l0, l1;
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_59;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1113396726", "1113396726", "D1_CultLocation_01_QUEST_B10", "box_Brick_Escort_NPC_To_Position_v3_59.Started", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_59_Success()
    local l0, l1;
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_59;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1287809920", "1287809920", "D1_CultLocation_01_QUEST_B10", "box_Brick_Escort_NPC_To_Position_v3_59.Success", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Integers_47_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_105();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1069783794", "1069783794", "D1_CultLocation_01_QUEST_B10", "box_Compare_Integers_47.A_le_B", "box_ActivityRetry_105.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_60_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_61();
    l0 = self.box_ProximityTrigger_v2_60;
    l1 = self.box_SpawnAI_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1242343917", "1242343917", "D1_CultLocation_01_QUEST_B10", "box_ProximityTrigger_v2_60.Enter", "box_SpawnAI_61.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_62();
    l0 = self.box_ProximityTrigger_v2_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1992089333", "1992089333", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_18.Out", "box_ProximityTrigger_v2_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_17();
    l0 = self.box_ProximityTrigger_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|685286902", "685286902", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_18.Out", "box_ProximityTrigger_v2_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v2_74_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|342366988", "342366988", "D1_CultLocation_01_QUEST_B10", "box_IsPawnAlive_v2_74.True", "box_OutputOrder_v2_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_ActivityInitialized_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2037331654", "2037331654", "D1_CultLocation_01_QUEST_B10", "box_ActivityInitialized_5.Out", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2076237288", "2076237288", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_101.Out", "box_MultipleOR_84.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_101_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1837448268", "1837448268", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_101.Out", "box_MultipleOR_97.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_53_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_92();
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_53;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|475454627", "475454627", "D1_CultLocation_01_QUEST_B10", "box_Brick_Escort_NPC_To_Position_v3_53.Fail", "box_OutputOrder_v2_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_53_Started()
    local l0, l1;
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_53;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|872186466", "872186466", "D1_CultLocation_01_QUEST_B10", "box_Brick_Escort_NPC_To_Position_v3_53.Started", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_53_Success()
    local l0, l1;
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_53;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|203704568", "203704568", "D1_CultLocation_01_QUEST_B10", "box_Brick_Escort_NPC_To_Position_v3_53.Success", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_55();
    l0 = self.box_SpawnAI_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1534513091", "1534513091", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_57.Out", "box_SpawnAI_55.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_57_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_70();
    l0 = self.box_ProximityTrigger_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|672531941", "672531941", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_57.Out", "box_ProximityTrigger_v2_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_68_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_68;
    l1 = self.box_MultipleOR_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|143748008", "143748008", "D1_CultLocation_01_QUEST_B10", "box_SpawnAI_68.Spawned", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_37();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1454661826", "1454661826", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_38.Out", "box_IsPawnAlive_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_19();
    l0 = self.box_ProximityTrigger_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|641945455", "641945455", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_20.Out", "box_ProximityTrigger_v2_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_24();
    l0 = self.box_HealthListener_v6_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1192299542", "1192299542", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_20.Out", "box_HealthListener_v6_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_29();
    l0 = self.box_HealthListener_v6_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2007726650", "2007726650", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_20.Out", "box_HealthListener_v6_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_30();
    l0 = self.box_HealthListener_v6_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2085172999", "2085172999", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_20.Out", "box_HealthListener_v6_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_65_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = self.box_OnceOnly_v3_65;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2030798947", "2030798947", "D1_CultLocation_01_QUEST_B10", "box_OnceOnly_v3_65.Out", "box_OutputOrder_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_93_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_14();
    l0 = self.box_MultipleAND_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1051572326", "1051572326", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_93.Out", "box_MultipleAND_v2_14.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|460527680", "460527680", "D1_CultLocation_01_QUEST_B10", "box_MultipleOR_6.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_48();
    l0 = self.box_GroupSizeListener_v5_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1888730476", "1888730476", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_58.Out", "box_GroupSizeListener_v5_48.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_77();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1876515064", "1876515064", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_58.Out", "box_SetContextualStrategy_77.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_67();
    l0 = self.box_StartCelebration_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2012419582", "2012419582", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_58.Out", "box_StartCelebration_67.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_33_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_40();
    l0 = self.box_EntityStatusListener_33;
    l1 = self.box_SpawnAI_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1024314779", "1024314779", "D1_CultLocation_01_QUEST_B10", "box_EntityStatusListener_33.Loaded", "box_SpawnAI_40.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_17_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_ProximityTrigger_v2_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1866170776", "1866170776", "D1_CultLocation_01_QUEST_B10", "box_ProximityTrigger_v2_17.Enter", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_39();
    l0 = self.box_EntityStatusListener_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|512968895", "512968895", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_35.Out", "box_EntityStatusListener_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_64();
    l0 = self.box_EntityStatusListener_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|457497165", "457497165", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_35.Out", "box_EntityStatusListener_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_35_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_26();
    l0 = self.box_EntityStatusListener_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1954307208", "1954307208", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_35.Out", "box_EntityStatusListener_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Escort_NPC_To_Position_v3_22();
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|271527961", "271527961", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_102.Out", "box_Brick_Escort_NPC_To_Position_v3_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_44_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = self.box_Brick_Hostage_Setup_v2_44;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|358967700", "358967700", "D1_CultLocation_01_QUEST_B10", "box_Brick_Hostage_Setup_v2_44.HostageReleased", "box_OutputOrder_v2_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_84_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_84;
    l1 = self.box_OnceOnly_v3_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|947777263", "947777263", "D1_CultLocation_01_QUEST_B10", "box_MultipleOR_84.Out", "box_OnceOnly_v3_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_92_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_14();
    l0 = self.box_MultipleAND_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|333337842", "333337842", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_92.Out", "box_MultipleAND_v2_14.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_EntityStatusListener_64_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_72();
    l0 = self.box_EntityStatusListener_64;
    l1 = self.box_SpawnAI_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1034825746", "1034825746", "D1_CultLocation_01_QUEST_B10", "box_EntityStatusListener_64.Loaded", "box_SpawnAI_72.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_47();
    l0 = self.box_MultipleOR_49;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|556304073", "556304073", "D1_CultLocation_01_QUEST_B10", "box_MultipleOR_49.Out", "box_Compare_Integers_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_3_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|932997917", "932997917", "D1_CultLocation_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_3.Enabled", "box_OutputOrder_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1442627286", "1442627286", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_51.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_31();
    l0 = self.box_MultipleAND_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|888908698", "888908698", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_51.Out", "box_MultipleAND_v2_31.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_HealthListener_v6_29_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_43();
    l0 = self.box_HealthListener_v6_29;
    l1 = self.box_Brick_Hostage_Setup_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|419823221", "419823221", "D1_CultLocation_01_QUEST_B10", "box_HealthListener_v6_29.Enabled", "box_Brick_Hostage_Setup_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_29_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_HealthListener_v6_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1760005691", "1760005691", "D1_CultLocation_01_QUEST_B10", "box_HealthListener_v6_29.Killed", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_12_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_12;
    l1 = self.box_OnceOnly_v3_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1600890690", "1600890690", "D1_CultLocation_01_QUEST_B10", "box_MultipleOR_12.Out", "box_OnceOnly_v3_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_62_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_ProximityTrigger_v2_62;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1021771818", "1021771818", "D1_CultLocation_01_QUEST_B10", "box_ProximityTrigger_v2_62.Enter", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_8();
    l0 = self.box_MultipleAND_v2_14;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|409495541", "409495541", "D1_CultLocation_01_QUEST_B10", "box_MultipleAND_v2_14.Out", "box_ActivityRetry_8.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_42_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_101();
    l0 = self.box_Brick_Hostage_Setup_v2_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1239282626", "1239282626", "D1_CultLocation_01_QUEST_B10", "box_Brick_Hostage_Setup_v2_42.HostageReleased", "box_OutputOrder_v2_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_72_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_72;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|624874899", "624874899", "D1_CultLocation_01_QUEST_B10", "box_SpawnAI_72.Spawned", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_83_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_83;
    l1 = self.box_OnceOnly_v3_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|855988331", "855988331", "D1_CultLocation_01_QUEST_B10", "box_MultipleOR_83.Out", "box_OnceOnly_v3_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ExitZoneWarningListener_v3_78_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_88();
    l0 = self.box_ExitZoneWarningListener_v3_78;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1342868473", "1342868473", "D1_CultLocation_01_QUEST_B10", "box_ExitZoneWarningListener_v3_78.FailingZoneEntered", "box_ActivityRetry_88.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_14();
    l0 = self.box_MultipleAND_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|668124710", "668124710", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_91.Out", "box_MultipleAND_v2_14.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_SpawnAI_40_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_40;
    l1 = self.box_MultipleOR_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|702081136", "702081136", "D1_CultLocation_01_QUEST_B10", "box_SpawnAI_40.Spawned", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsPawnAlive_v2_37_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1513783899", "1513783899", "D1_CultLocation_01_QUEST_B10", "box_IsPawnAlive_v2_37.True", "box_OutputOrder_v2_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_71_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_71_Enabled();
    l0 = self.box_GroupSizeListener_v5_71;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1320247480", "1320247480", "D1_CultLocation_01_QUEST_B10", "box_GroupSizeListener_v5_71.Enabled", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_71_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_71_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_71_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_71_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_71;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|177009528", "177009528", "D1_CultLocation_01_QUEST_B10", "box_GroupSizeListener_v5_71.MemberRemoved", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetActivityObjectiveProgress_v2_95_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1642989946", "1642989946", "D1_CultLocation_01_QUEST_B10", "box_SetActivityObjectiveProgress_v2_95.Out", "box_ActivityObjectiveMarkerModifier_v3_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_66();
    l0 = self.box_EntityStatusListener_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1879699741", "1879699741", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_45.Out", "box_EntityStatusListener_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_33();
    l0 = self.box_EntityStatusListener_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|46028606", "46028606", "D1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_45.Out", "box_EntityStatusListener_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_87_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_79();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1909098359", "1909098359", "D1_CultLocation_01_QUEST_B10", "box_AddActivityObjective_v2_87.Out", "box_AddActivityObjectiveProgress_v2_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|@Hostages_liberated");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_107_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|8003886");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
                [2] = self.f_box_OutputOrder_v2_50_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|49137768");
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
                [0] = self.f_box_OutputOrder_v2_103_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|62086889");
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

function export:OnEnter_box_Delay_v5_85()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|77568814");
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
                [0] = self.f_box_OutputOrder_v2_89_Out_0,
                [1] = self.f_box_OutputOrder_v2_89_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|103196079");
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

function export:OnEnter_box_ActivityRetry_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|124835193");
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

function export:OnEnter_box_ExitZoneWarningListener_v3_10()
    local params;
    params = {
        -- bShowUI,
        [0] = false,
        -- CoopFailRequiresAllPlayer,
        [1] = true,
        -- FailingZoneTrigger,
        [2] = "2104272937023459218",
        -- WarningZoneTrigger,
        [3] = "2104272929240928145",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|205623036");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_Obj3",
            id = "875087",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_55()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103675617521178458",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|294311329");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_90_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_Obj2",
            id = "589809",
        },
        -- Progress,
        [1] = self.escorted_npc,
        -- ProgressId,
        [2] = self.iProgressID,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_66()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104285764731823086",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_30()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2101274419488887177",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|423800669");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|434670501");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_96_Out,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.Hostages_count,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|441201877");
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
                [0] = self.f_box_OutputOrder_v2_73_Out_0,
                [1] = self.f_box_OutputOrder_v2_73_Out_1,
                [2] = self.f_box_OutputOrder_v2_73_Out_2,
                [3] = self.f_box_OutputOrder_v2_73_Out_3,
                [4] = self.f_box_OutputOrder_v2_73_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|462761295");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_94_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_OBJ1",
            id = "589810",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 3,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_28()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_24()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2101274029500417799",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_106()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#350132AC",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|531894514");
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
                [0] = self.f_box_OutputOrder_v2_104_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_19()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102126434240703434",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|552255374");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2100954840730447430",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_OBJ1",
            id = "589810",
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103372482443517950",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_31()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|681860351");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_32_A_le_B,
    });
    params = {
        -- A,
        [0] = self.enemies_count,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_48()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#350132AC",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|714009275");
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

function export:OnEnter_box_IsPawnAlive_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|730853219");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_25_True,
    });
    params = {
        -- Pawn,
        [0] = "2101274029500417799",
    };
    return params;
end;

function export:OnEnter_box_Brick_Escort_NPC_To_Position_v3_22()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bRequiresObjective,
        [1] = true,
        -- eDestinationMarker,
        [2] = "2103013976420923329",
        -- eDestinationTrigger,
        [3] = "2103014048099481558",
        -- eNPCMobileMarker,
        [4] = "2103677008828449402",
        -- eNPCToEscort,
        [5] = "2101274029500417799",
        -- Objective,
        [6] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_Obj2",
            id = "589809",
        },
        -- WarningMsg,
        [7] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_Obj4",
            id = "875092",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_27()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103372482443517950",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_67()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_43()
    local params;
    params = {
        -- Hostage,
        [0] = "2103070529387762027",
        -- STP_Tied,
        [1] = "2102793858522859790",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|897995806");
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
                [0] = self.f_box_OutputOrder_v2_99_Out_0,
                [1] = self.f_box_OutputOrder_v2_99_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|910463547");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|943063999");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_9_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_OBJ1",
            id = "589810",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_26()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103028634945069613",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1025874406");
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

function export:OnEnter_box_ProximityTrigger_v2_70()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103372506969710955",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1066682610");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_79_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_Obj2",
            id = "589809",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 3,
    };
    return params;
end;

function export:OnEnter_box_Brick_Escort_NPC_To_Position_v3_59()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bRequiresObjective,
        [1] = true,
        -- eDestinationMarker,
        [2] = "2103013976420923329",
        -- eDestinationTrigger,
        [3] = "2103014048099481558",
        -- eNPCMobileMarker,
        [4] = "2103677023827281146",
        -- eNPCToEscort,
        [5] = "2101274419488887177",
        -- Objective,
        [6] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_Obj2",
            id = "589809",
        },
        -- WarningMsg,
        [7] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_Obj4",
            id = "875092",
        },
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1137066672");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_47_A_le_B,
    });
    params = {
        -- A,
        [0] = self.Hostage_left,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_34()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103028634945069613",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_60()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103372506969710955",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1189431324");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_Obj3",
            id = "875087",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1221561405");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1259666079");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_74_True,
    });
    params = {
        -- Pawn,
        [0] = "2103070529387762027",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1305709360");
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

function export:OnEnter_box_Brick_Escort_NPC_To_Position_v3_53()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bRequiresObjective,
        [1] = true,
        -- eDestinationMarker,
        [2] = "2103013976420923329",
        -- eDestinationTrigger,
        [3] = "2103014048099481558",
        -- eNPCMobileMarker,
        [4] = "2103677019435844843",
        -- eNPCToEscort,
        [5] = "2103070529387762027",
        -- Objective,
        [6] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_Obj2",
            id = "589809",
        },
        -- WarningMsg,
        [7] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_Obj4",
            id = "875092",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1336054020");
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
                [2] = self.f_box_OutputOrder_v2_57_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_68()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104285764731823086",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1437235992");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1462409009");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 9,
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [3] = self.f_box_OutputOrder_v2_20_Out_3,
                [4] = self.f_box_OutputOrder_v2_20_Out_4,
                [5] = self.f_box_OutputOrder_v2_20_Out_5,
            },
            count = 9,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1502085234");
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
                [0] = self.f_box_OutputOrder_v2_93_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1587269250");
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
                [2] = self.f_box_OutputOrder_v2_58_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_33()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104285319531612920",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_17()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104284934653889228",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1638784495");
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

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1648483680");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_44()
    local params;
    params = {
        -- Hostage,
        [0] = "2101274029500417799",
        -- STP_Tied,
        [1] = "2102793849324751068",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1710293561");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_64()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103993597668903397",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_61()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103372529436500333",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1792962808");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_3_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100954840730447430",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_OBJ1",
            id = "589810",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1793999177");
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
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_29()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2103070529387762027",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1835962191");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103678470184779859",
        -- Group,
        [1] = "#6C6465D6",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_62()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103372629648913145",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_14()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_42()
    local params;
    params = {
        -- Hostage,
        [0] = "2101274419488887177",
        -- STP_Tied,
        [1] = "2102793861641324829",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|1968403459");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_OBJ1",
            id = "589810",
        },
        -- Progress,
        [1] = self.Hostages_count,
        -- ProgressId,
        [2] = self.iProgressID,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_72()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103993597668903397",
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_78()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = true,
        -- FailingZoneTrigger,
        [2] = "2104272937023459218",
        -- WarningZoneTrigger,
        [3] = "2104272929240928145",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_46()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103372529436500333",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2045080429");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_40()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104285319531612920",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2067632382");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_37_True,
    });
    params = {
        -- Pawn,
        [0] = "2101274419488887177",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_71()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#1762D09E",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2077962603");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_95_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_OBJ1",
            id = "589810",
        },
        -- Progress,
        [1] = self.Hostages_count,
        -- ProgressId,
        [2] = self.iProgressID,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2097802309");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2101147305");
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

function export:OnEnter_box_AddActivityObjective_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2123700068");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_87_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_Obj2",
            id = "589809",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Outpost_01.domino|@D1_CultLocation_01_QUEST_B10|2143131879");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "D1_CultLocation_01_QUEST_B10_Obj3",
            id = "875087",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnExit_box_IntegerArithmetics_v2_96_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.Hostages_count = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_94_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.iProgressID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_106_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_106;
    self.escorted_npc = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_106_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_106;
    self.escorted_npc = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_106_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_106;
    self.escorted_npc = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_48_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_48;
    self.Hostage_left = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_48_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_48;
    self.Hostage_left = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_48_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_48;
    self.Hostage_left = l0:GetDataOutValue(1);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_79_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.iProgressID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_71_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_71;
    self.enemies_count = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_71_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_71;
    self.enemies_count = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_71_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_71;
    self.enemies_count = l0:GetDataOutValue(1);
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
