LUAC�X -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/d2/d2_outpost_02.domino
-- User graph: D2_Outpost_02_QUEST_B10
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/BulletTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/PickupListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/D2/D2_Outpost_02.D2_Outpost_02_QUEST_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/BulletTriggerListener.lua")] = {
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
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "triggerId",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/PhysicsModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
            },
            [2] = {
                name = "StartPhysics",
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
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/PickupListener_v2.lua")] = {
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
                name = "PickedUp",
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
                name = "pickupId",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "InstigatorId",
                type = "entity",
            },
            [1] = {
                name = "PickedUpId",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
    self._name = "D2_Outpost_02_QUEST_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10";
    self.Out = DummyFunction;
    self.i_ContainersUnlocked = 0;
    self.i_Piecesfound = 0;
    self.i_piecesfixed = 0;
    self.box_Bind_v4_90 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|64272665");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_90_Bound,
    });
    self.box_Bind_v4_35 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|113174604");
    l0:SetConnections({
    });
    self.box_Bind_v4_76 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|124327481");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_76_Bound,
    });
    self.box_EntityStatusListener_12 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|182622662");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_12_Loaded,
    });
    self.box_PickupListener_v2_62 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|199540489");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PickupListener_v2_62_Enabled,
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_62_PickedUp,
    });
    self.box_PhysicsModifier_27 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|243331336");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_PhysicsModifier_27_Started,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|248224014");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_Delay_v5_24 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|268113161");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_24_TimeElapsed,
    });
    self.box_EntityStatusListener_75 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|280331874");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_75_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_75_Loaded,
    });
    self.box_EntityStatusListener_8 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|283160866");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_8_Loaded,
    });
    self.box_EntityStatusListener_21 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|286965414");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_21_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_21_Unloaded,
    });
    self.box_EntityStatusListener_18 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|375843118");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_18_Loaded,
    });
    self.box_ActivityAcknowledgeGate_58 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|419688441");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_58_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_58_Reloaded,
    });
    self.box_MultipleOR_55 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|464865800");
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
        [0] = self.f_box_MultipleOR_55_Out,
    });
    self.box_OnceOnly_v3_42 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|469883039");
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
    self.box_Bind_v4_36 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|480479213");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_36_Bound,
    });
    self.box_MultipleOR_40 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|504506363");
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
    self.box_PickupListener_v2_91 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|527550160");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PickupListener_v2_91_Enabled,
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_91_PickedUp,
    });
    self.box_Bind_v4_52 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|584051691");
    l0:SetConnections({
        -- UnBound,
        [1] = self.f_box_Bind_v4_52_UnBound,
    });
    self.box_PickupListener_v2_10 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|585663906");
    l0:SetConnections({
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_10_PickedUp,
    });
    self.box_SpawnAI_57 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|688980974");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_64 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|712733617");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_64_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_64_Loaded,
    });
    self.box_EntityStatusListener_72 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|714995293");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_72_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_72_Loaded,
    });
    self.box_ProximityTrigger_v2_69 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|720470288");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_69_Enter,
    });
    self.box_OnceOnly_v3_29 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|726314030");
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
    self.box_EntityStatusListener_59 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|853587455");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_59_Loaded,
    });
    self.box_MultipleOR_68 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|868573123");
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
        [0] = self.f_box_MultipleOR_68_Out,
    });
    self.box_EntityStatusListener_33 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|922563287");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_33_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_33_Unloaded,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|959876955");
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
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1007617156");
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
        [0] = self.f_box_MultipleOR_45_Out,
    });
    self.box_EntityStatusListener_70 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1061365381");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_70_Loaded,
    });
    self.box_SpawnAI_48 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1135181202");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_60 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1141647870");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_60_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_60_Loaded,
    });
    self.box_PickupListener_v2_86 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1157523504");
    l0:SetConnections({
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_86_PickedUp,
    });
    self.box_BulletTriggerListener_34 = cbox:CreateBox("Domino/System/BulletTriggerListener.lua");
    l0 = self.box_BulletTriggerListener_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BulletTriggerListener_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1233699583");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_BulletTriggerListener_34_Enabled,
        -- Enter,
        [2] = self.f_box_BulletTriggerListener_34_Enter,
    });
    self.box_EntityStatusListener_13 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1298530460");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_13_Loaded,
    });
    self.box_Bind_v4_11 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1307839805");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_11_Bound,
    });
    self.box_SpawnAI_66 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1507759543");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_44 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1518194519");
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
                [0] = self.f_box_OnceOnly_v3_44_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleAND_v2_74 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1551166165");
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
        [0] = self.f_box_MultipleAND_v2_74_Out,
    });
    self.box_EntityStatusListener_17 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1601542088");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_17_Loaded,
    });
    self.box_Gate_v3_65 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1666432615");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_65_Out,
    });
    self.box_EntityStatusListener_3 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1722560474");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_3_Loaded,
    });
    self.box_VehicleDamageListener_v2_97 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1853769272");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_97_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_97_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_97_Disabled,
        -- MajorDamage,
        [5] = self.f_box_VehicleDamageListener_v2_97_MajorDamage,
        -- MinorDamage,
        [6] = self.f_box_VehicleDamageListener_v2_97_MinorDamage,
        -- Mint,
        [7] = self.f_box_VehicleDamageListener_v2_97_Mint,
        -- OnFire,
        [8] = self.f_box_VehicleDamageListener_v2_97_OnFire,
        -- Perfect,
        [9] = self.f_box_VehicleDamageListener_v2_97_Perfect,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1875866353");
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
    self.box_EntityStatusListener_53 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1880242494");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_53_Unloaded,
    });
    self.box_EntityStatusListener_23 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1976421822");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_23_Loaded,
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1988779811");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|2096513467");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
        [0] = self.f_box_MultipleOR_43_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|922081654", "922081654", "D2_Outpost_02_QUEST_B10", "In", "box_ActivityAcknowledgeGate_58.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|919891997", "919891997", "D2_Outpost_02_QUEST_B10", "OnLeaveZone", "box_ActivityRetry_5.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_92_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_14();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|903690400", "903690400", "D2_Outpost_02_QUEST_B10", "box_Simple_Node_92.Out", "box_ActivityObjectiveMarkerModifier_v3_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_95_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_73();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1412483319", "1412483319", "D2_Outpost_02_QUEST_B10", "box_Simple_Node_95.Out", "box_ActivityObjectiveMarkerModifier_v3_73.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|338082196", "338082196", "D2_Outpost_02_QUEST_B10", "box_Simple_Node_46.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_Gate_v3_65();
    l0 = self.box_Gate_v3_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1886874415", "1886874415", "D2_Outpost_02_QUEST_B10", "box_Simple_Node_46.Out", "box_Gate_v3_65.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_38_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1127909817", "1127909817", "D2_Outpost_02_QUEST_B10", "box_Simple_Node_38.Out", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_51_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_78();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|418854239", "418854239", "D2_Outpost_02_QUEST_B10", "box_Simple_Node_51.Out", "box_IntegerArithmetics_v2_78.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_93_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1454726846", "1454726846", "D2_Outpost_02_QUEST_B10", "box_Simple_Node_93.Out", "box_ActivityObjectiveMarkerModifier_v3_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_31();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1847139744", "1847139744", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_9.Out", "box_AddActivityObjective_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_85();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1198986950", "1198986950", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_9.Out", "box_Print_v2_85.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_90_Bound()
    local l0, l1;
    l0 = self.box_Bind_v4_90;
    l1 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1554570342", "1554570342", "D2_Outpost_02_QUEST_B10", "box_Bind_v4_90.Bound", "box_MultipleOR_55.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_67_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PickupListener_v2_10();
    l0 = self.box_PickupListener_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|2067800116", "2067800116", "D2_Outpost_02_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_67.Enabled", "box_PickupListener_v2_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Bind_v4_76_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_30();
    l0 = self.box_Bind_v4_76;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1252701714", "1252701714", "D2_Outpost_02_QUEST_B10", "box_Bind_v4_76.Bound", "box_ActivityObjectiveMarkerModifier_v3_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_12_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_91();
    l0 = self.box_EntityStatusListener_12;
    l1 = self.box_PickupListener_v2_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|366845693", "366845693", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_12.Loaded", "box_PickupListener_v2_91.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PickupListener_v2_10();
    l0 = self.box_PickupListener_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1532130720", "1532130720", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_71.Out", "box_PickupListener_v2_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_51();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1281881134", "1281881134", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_71.Out", "box_Simple_Node_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_74();
    l0 = self.box_MultipleAND_v2_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|982965783", "982965783", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_71.Out", "box_MultipleAND_v2_74.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_71_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_93();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1542611890", "1542611890", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_71.Out", "box_Simple_Node_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PickupListener_v2_62_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_76();
    l0 = self.box_PickupListener_v2_62;
    l1 = self.box_Bind_v4_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|369871727", "369871727", "D2_Outpost_02_QUEST_B10", "box_PickupListener_v2_62.Enabled", "box_Bind_v4_76.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_PickupListener_v2_62_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_46();
    l0 = self.box_PickupListener_v2_62;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1107607072", "1107607072", "D2_Outpost_02_QUEST_B10", "box_PickupListener_v2_62.PickedUp", "box_Simple_Node_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhysicsModifier_27_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_24();
    l0 = self.box_PhysicsModifier_27;
    l1 = self.box_Delay_v5_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|95400234", "95400234", "D2_Outpost_02_QUEST_B10", "box_PhysicsModifier_27.Started", "box_Delay_v5_24.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_ActivityInitialized_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1760728145", "1760728145", "D2_Outpost_02_QUEST_B10", "box_ActivityInitialized_1.Out", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_24_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_90();
    l0 = self.box_Delay_v5_24;
    l1 = self.box_Bind_v4_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|263593498", "263593498", "D2_Outpost_02_QUEST_B10", "box_Delay_v5_24.TimeElapsed", "box_Bind_v4_90.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_75_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_64();
    l0 = self.box_EntityStatusListener_75;
    l1 = self.box_EntityStatusListener_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|2103915430", "2103915430", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_75.Enabled", "box_EntityStatusListener_64.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_75_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_66();
    l0 = self.box_EntityStatusListener_75;
    l1 = self.box_SpawnAI_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|456161145", "456161145", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_75.Loaded", "box_SpawnAI_66.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_8_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_33();
    l0 = self.box_EntityStatusListener_8;
    l1 = self.box_EntityStatusListener_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|656808911", "656808911", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_8.Loaded", "box_EntityStatusListener_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_21_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_36();
    l0 = self.box_EntityStatusListener_21;
    l1 = self.box_Bind_v4_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|647686721", "647686721", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_21.Loaded", "box_Bind_v4_36.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_21_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_21;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|685805176", "685805176", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_21.Unloaded", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_18_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_EntityStatusListener_18;
    l1 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1059356721", "1059356721", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_18.Loaded", "box_EntityStatusListener_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_27();
    l0 = self.box_PhysicsModifier_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1950138272", "1950138272", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_37.Out", "box_PhysicsModifier_27.StartPhysics", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartPhysics
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_35();
    l0 = self.box_Bind_v4_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|346513349", "346513349", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_37.Out", "box_Bind_v4_35.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_58_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_58;
    l1 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|78633278", "78633278", "D2_Outpost_02_QUEST_B10", "box_ActivityAcknowledgeGate_58.Acknowledged", "box_MultipleOR_68.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_58_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_58;
    l1 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|105340340", "105340340", "D2_Outpost_02_QUEST_B10", "box_ActivityAcknowledgeGate_58.Reloaded", "box_MultipleOR_68.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_12();
    l0 = self.box_MultipleOR_55;
    l1 = self.box_EntityStatusListener_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|559663217", "559663217", "D2_Outpost_02_QUEST_B10", "box_MultipleOR_55.Out", "box_EntityStatusListener_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_42_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_OnceOnly_v3_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|905624099", "905624099", "D2_Outpost_02_QUEST_B10", "box_OnceOnly_v3_42.Out", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_36_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_28();
    l0 = self.box_Bind_v4_36;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1516597571", "1516597571", "D2_Outpost_02_QUEST_B10", "box_Bind_v4_36.Bound", "box_ActivityObjectiveMarkerModifier_v3_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = self.box_MultipleOR_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1274963074", "1274963074", "D2_Outpost_02_QUEST_B10", "box_MultipleOR_40.Out", "box_OutputOrder_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PickupListener_v2_91_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_53();
    l0 = self.box_PickupListener_v2_91;
    l1 = self.box_EntityStatusListener_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|929167755", "929167755", "D2_Outpost_02_QUEST_B10", "box_PickupListener_v2_91.Enabled", "box_EntityStatusListener_53.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PickupListener_v2_91_PickedUp()
    local l0, l1;
    l0 = self.box_PickupListener_v2_91;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|498910634", "498910634", "D2_Outpost_02_QUEST_B10", "box_PickupListener_v2_91.PickedUp", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PickupListener_v2_91();
    l0 = self.box_PickupListener_v2_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1763392126", "1763392126", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_47.Out", "box_PickupListener_v2_91.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_51();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|491910262", "491910262", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_47.Out", "box_Simple_Node_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_74();
    l0 = self.box_MultipleAND_v2_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|2068437662", "2068437662", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_47.Out", "box_MultipleAND_v2_74.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_47_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1000575045", "1000575045", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_47.Out", "box_Simple_Node_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_52_UnBound()
    local l0, l1;
    l0 = self.box_Bind_v4_52;
    l1 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|157587578", "157587578", "D2_Outpost_02_QUEST_B10", "box_Bind_v4_52.UnBound", "box_MultipleOR_55.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PickupListener_v2_10_PickedUp()
    local l0, l1;
    l0 = self.box_PickupListener_v2_10;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|656245265", "656245265", "D2_Outpost_02_QUEST_B10", "box_PickupListener_v2_10.PickedUp", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_88();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1436598611", "1436598611", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_54.Out", "box_UseContextualActionModifier_v3_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_39();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1139141908", "1139141908", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_54.Out", "box_UseContextualActionModifier_v3_39.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_65();
    l0 = self.box_Gate_v3_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1495577771", "1495577771", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_54.Out", "box_Gate_v3_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_64_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_59();
    l0 = self.box_EntityStatusListener_64;
    l1 = self.box_EntityStatusListener_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1986583104", "1986583104", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_64.Enabled", "box_EntityStatusListener_59.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_64_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_63();
    l0 = self.box_EntityStatusListener_64;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|994742624", "994742624", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_64.Loaded", "box_MissionBlockLayer_63.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_72_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_75();
    l0 = self.box_EntityStatusListener_72;
    l1 = self.box_EntityStatusListener_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|209797964", "209797964", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_72.Enabled", "box_EntityStatusListener_75.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_72_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_57();
    l0 = self.box_EntityStatusListener_72;
    l1 = self.box_SpawnAI_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|991778756", "991778756", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_72.Loaded", "box_SpawnAI_57.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_69_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = self.box_ProximityTrigger_v2_69;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|544328911", "544328911", "D2_Outpost_02_QUEST_B10", "box_ProximityTrigger_v2_69.Enter", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_29_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = self.box_OnceOnly_v3_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|286053307", "286053307", "D2_Outpost_02_QUEST_B10", "box_OnceOnly_v3_29.Out", "box_OutputOrder_v2_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_84_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1237191505", "1237191505", "D2_Outpost_02_QUEST_B10", "box_EndActivityObjective_v2_84.Out", "box_ActivityEnd_6.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjectiveProgress_v2_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1270529573", "1270529573", "D2_Outpost_02_QUEST_B10", "box_AddActivityObjectiveProgress_v2_20.Out", "box_SetActivityObjectiveProgress_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_59_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_97();
    l0 = self.box_EntityStatusListener_59;
    l1 = self.box_VehicleDamageListener_v2_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|628615565", "628615565", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_59.Loaded", "box_VehicleDamageListener_v2_97.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_68_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_68;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|335462648", "335462648", "D2_Outpost_02_QUEST_B10", "box_MultipleOR_68.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_EntityStatusListener_33_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_11();
    l0 = self.box_EntityStatusListener_33;
    l1 = self.box_Bind_v4_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1634007449", "1634007449", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_33.Loaded", "box_Bind_v4_11.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_33_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_33;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1831820058", "1831820058", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_33.Unloaded", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_90();
    l0 = self.box_MultipleOR_26;
    l1 = self.box_Bind_v4_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|2076628964", "2076628964", "D2_Outpost_02_QUEST_B10", "box_MultipleOR_26.Out", "box_Bind_v4_90.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_45_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_45;
    l1 = self.box_OnceOnly_v3_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|782511204", "782511204", "D2_Outpost_02_QUEST_B10", "box_MultipleOR_45.Out", "box_OnceOnly_v3_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_70_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_8();
    l0 = self.box_EntityStatusListener_70;
    l1 = self.box_EntityStatusListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|63173830", "63173830", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_70.Loaded", "box_EntityStatusListener_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_41_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_17();
    l0 = self.box_EntityStatusListener_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|61671909", "61671909", "D2_Outpost_02_QUEST_B10", "box_UseContextualActionModifier_v3_41.Disabled", "box_EntityStatusListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_60_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_72();
    l0 = self.box_EntityStatusListener_60;
    l1 = self.box_EntityStatusListener_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|28994266", "28994266", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_60.Enabled", "box_EntityStatusListener_72.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_60_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_62();
    l0 = self.box_EntityStatusListener_60;
    l1 = self.box_PickupListener_v2_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1215484084", "1215484084", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_60.Loaded", "box_PickupListener_v2_62.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PickupListener_v2_86_PickedUp()
    local l0, l1;
    l0 = self.box_PickupListener_v2_86;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1392732395", "1392732395", "D2_Outpost_02_QUEST_B10", "box_PickupListener_v2_86.PickedUp", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BulletTriggerListener_34_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = self.box_BulletTriggerListener_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|753331849", "753331849", "D2_Outpost_02_QUEST_B10", "box_BulletTriggerListener_34.Enabled", "box_OutputOrder_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BulletTriggerListener_34_Enter()
    local l0, l1;
    l0 = self.box_BulletTriggerListener_34;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1730404883", "1730404883", "D2_Outpost_02_QUEST_B10", "box_BulletTriggerListener_34.Enter", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_13_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_3();
    l0 = self.box_EntityStatusListener_13;
    l1 = self.box_EntityStatusListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1489106637", "1489106637", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_13.Loaded", "box_EntityStatusListener_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Bind_v4_11_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_67();
    l0 = self.box_Bind_v4_11;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|474922260", "474922260", "D2_Outpost_02_QUEST_B10", "box_Bind_v4_11.Bound", "box_ActivityObjectiveMarkerModifier_v3_67.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PickupListener_v2_86();
    l0 = self.box_PickupListener_v2_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1155925470", "1155925470", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_56.Out", "box_PickupListener_v2_86.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_51();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|952523457", "952523457", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_56.Out", "box_Simple_Node_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_74();
    l0 = self.box_MultipleAND_v2_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1951723733", "1951723733", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_56.Out", "box_MultipleAND_v2_74.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_OutputOrder_v2_56_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_92();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1282284113", "1282284113", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_56.Out", "box_Simple_Node_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_7_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|939938790", "939938790", "D2_Outpost_02_QUEST_B10", "box_SetActivityObjectiveProgress_v2_7.Out", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_88_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_88();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|241724700", "241724700", "D2_Outpost_02_QUEST_B10", "box_UseContextualActionModifier_v3_88.Enabled", "box_UseContextualActionModifier_v3_88.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_60();
    l0 = self.box_EntityStatusListener_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|775846238", "775846238", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_EntityStatusListener_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_70();
    l0 = self.box_EntityStatusListener_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1301121243", "1301121243", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_EntityStatusListener_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_69();
    l0 = self.box_ProximityTrigger_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1238351931", "1238351931", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_ProximityTrigger_v2_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_21();
    l0 = self.box_EntityStatusListener_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1183759096", "1183759096", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_EntityStatusListener_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_18();
    l0 = self.box_EntityStatusListener_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|69959272", "69959272", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_49.Out", "box_EntityStatusListener_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_48();
    l0 = self.box_SpawnAI_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1283679440", "1283679440", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_49.Out", "box_SpawnAI_48.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_20();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1314148751", "1314148751", "D2_Outpost_02_QUEST_B10", "box_AddActivityObjective_v2_31.Out", "box_AddActivityObjectiveProgress_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_44_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_OnceOnly_v3_44;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1408201001", "1408201001", "D2_Outpost_02_QUEST_B10", "box_OnceOnly_v3_44.Out", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_84();
    l0 = self.box_MultipleAND_v2_74;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1769917372", "1769917372", "D2_Outpost_02_QUEST_B10", "box_MultipleAND_v2_74.Out", "box_EndActivityObjective_v2_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_78_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_78_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_61();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|227743670", "227743670", "D2_Outpost_02_QUEST_B10", "box_IntegerArithmetics_v2_78.Out", "box_SetActivityObjectiveProgress_v2_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_17_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_23();
    l0 = self.box_EntityStatusListener_17;
    l1 = self.box_EntityStatusListener_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|2016801339", "2016801339", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_17.Loaded", "box_EntityStatusListener_23.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_65_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_25();
    l0 = self.box_Gate_v3_65;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|298970986", "298970986", "D2_Outpost_02_QUEST_B10", "box_Gate_v3_65.Out", "box_AddActivityObjective_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_3_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_BulletTriggerListener_34();
    l0 = self.box_EntityStatusListener_3;
    l1 = self.box_BulletTriggerListener_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1357362492", "1357362492", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_3.Loaded", "box_BulletTriggerListener_34.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|555049877", "555049877", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_50.Out", "box_OutputOrder_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|766018818", "766018818", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_50.Out", "box_Simple_Node_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|2058182016", "2058182016", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_50.Out", "box_EndActivityObjective_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_28_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PickupListener_v2_86();
    l0 = self.box_PickupListener_v2_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|291963280", "291963280", "D2_Outpost_02_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_28.Enabled", "box_PickupListener_v2_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_VehicleDamageListener_v2_97_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_97;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1946238913", "1946238913", "D2_Outpost_02_QUEST_B10", "box_VehicleDamageListener_v2_97.Broken", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleDamageListener_v2_97_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_97;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1351896539", "1351896539", "D2_Outpost_02_QUEST_B10", "box_VehicleDamageListener_v2_97.Destroyed", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_VehicleDamageListener_v2_97_Disabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_97;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1745141576", "1745141576", "D2_Outpost_02_QUEST_B10", "box_VehicleDamageListener_v2_97.Disabled", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_97_MajorDamage()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_97;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|593602084", "593602084", "D2_Outpost_02_QUEST_B10", "box_VehicleDamageListener_v2_97.MajorDamage", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_VehicleDamageListener_v2_97_MinorDamage()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_97;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|289207103", "289207103", "D2_Outpost_02_QUEST_B10", "box_VehicleDamageListener_v2_97.MinorDamage", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_VehicleDamageListener_v2_97_Mint()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_97;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|621018297", "621018297", "D2_Outpost_02_QUEST_B10", "box_VehicleDamageListener_v2_97.Mint", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleDamageListener_v2_97_OnFire()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_97;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|422124363", "422124363", "D2_Outpost_02_QUEST_B10", "box_VehicleDamageListener_v2_97.OnFire", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_VehicleDamageListener_v2_97_Perfect()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_97;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1275034291", "1275034291", "D2_Outpost_02_QUEST_B10", "box_VehicleDamageListener_v2_97.Perfect", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_16_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_16;
    l1 = self.box_OnceOnly_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1885983320", "1885983320", "D2_Outpost_02_QUEST_B10", "box_MultipleOR_16.Out", "box_OnceOnly_v3_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_53_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_46();
    l0 = self.box_EntityStatusListener_53;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|339156874", "339156874", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_53.Unloaded", "box_Simple_Node_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_23_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_52();
    l0 = self.box_EntityStatusListener_23;
    l1 = self.box_Bind_v4_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|736636060", "736636060", "D2_Outpost_02_QUEST_B10", "box_EntityStatusListener_23.Loaded", "box_Bind_v4_52.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_32_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_32;
    l1 = self.box_OnceOnly_v3_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1729025771", "1729025771", "D2_Outpost_02_QUEST_B10", "box_MultipleOR_32.Out", "box_OnceOnly_v3_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_41();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|362320377", "362320377", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_22.Out", "box_UseContextualActionModifier_v3_41.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1077704389", "1077704389", "D2_Outpost_02_QUEST_B10", "box_OutputOrder_v2_22.Out", "box_Simple_Node_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_MultipleOR_43;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1828199689", "1828199689", "D2_Outpost_02_QUEST_B10", "box_MultipleOR_43.Out", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|@Burn house marker");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_92_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|@chaseitemlooted");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_95_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|@PipeUnloaded");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_46_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|@trailer_destroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_38_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|@UpdateTotal");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_51_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|@Windmill marker");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_93_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|51027988");
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

function export:OnEnter_box_Bind_v4_90()
    local params;
    params = {
        -- EntityA,
        [1] = "2103218578221226042",
        -- EntityB,
        [2] = "2101769428982042800",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|74112999");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "54181810417364744",
        -- missionLayerId,
        [1] = "27160223539701906",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|75615444");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_67_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100884027503283216",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "D2_CultLocation_02_QUEST_B10_OBJ4",
            id = "819459",
        },
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_35()
    local params;
    params = {
        -- EntityA,
        [1] = "2103218578221226042",
        -- EntityB,
        [2] = "2103856972318129348",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_76()
    local params;
    params = {
        -- EntityA,
        [1] = "2101769428982042800",
        -- EntityB,
        [2] = "2103195014591966227",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101769428982042800",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|182996201");
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
                [0] = self.f_box_OutputOrder_v2_71_Out_0,
                [1] = self.f_box_OutputOrder_v2_71_Out_1,
                [2] = self.f_box_OutputOrder_v2_71_Out_2,
                [3] = self.f_box_OutputOrder_v2_71_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_62()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2101769428982042800",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_27()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2101769428982042800",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_24()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_75()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103177175478852766",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100788765900421175",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_21()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101769454263210170",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103218578221226042",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|389890853");
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

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|400984562");
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

function export:OnEnter_box_AddActivityObjective_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|409195817");
    l0:SetConnections({
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "D2_CultLocation_02_QUEST_B10_OBJ5",
            id = "819460",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|458804159");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2100884030667885588",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "D2_CultLocation_02_QUEST_B10_OBJ4",
            id = "819459",
        },
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_36()
    local params;
    params = {
        -- EntityA,
        [1] = "2101769454263210170",
        -- EntityB,
        [2] = "2100884030667885588",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|525154710");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "D2_CultLocation_02_QUEST_B10_OBJ4",
            id = "819459",
        },
        -- Progress,
        [1] = self.i_Piecesfound,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_91()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- pickupId,
        [1] = "2101769428982042800",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|539505102");
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
                [0] = self.f_box_OutputOrder_v2_47_Out_0,
                [1] = self.f_box_OutputOrder_v2_47_Out_1,
                [2] = self.f_box_OutputOrder_v2_47_Out_2,
                [3] = self.f_box_OutputOrder_v2_47_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_52()
    local params;
    params = {
        -- EntityA,
        [1] = "2103218578221226042",
        -- EntityB,
        [2] = "2101769428982042800",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|584583280");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2103195014591966227",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "D2_CultLocation_02_QUEST_B10_OBJ4",
            id = "819459",
        },
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_10()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- pickupId,
        [1] = "2101769449393623224",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|590549409");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104175460087782087",
        -- Entity,
        [1] = "2103218970984222406",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|632001625");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
                [2] = self.f_box_OutputOrder_v2_54_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|638171485");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2100884027503283216",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "D2_CultLocation_02_QUEST_B10_OBJ4",
            id = "819459",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_57()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103218576335886364",
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
        [2] = "2103218578221226042",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_72()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103218576335886364",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_69()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103218806330504764",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|745727066");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_84_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "D2_CultLocation_02_QUEST_B10_OBJ4",
            id = "819459",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|846329469");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_20_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "D2_CultLocation_02_QUEST_B10_OBJ4",
            id = "819459",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 3,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_59()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103177212346784992",
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
        [2] = "2105128701571128356",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_70()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101769449393623224",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1102647042");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_41_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103177695136341357",
        -- Entity,
        [1] = "2103218978561232685",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_48()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103218970984222406",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_60()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101769428982042800",
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_86()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- pickupId,
        [1] = "2101769454263210170",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1170186226");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1194376802");
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
        [8] = "D2_Outpost_02_Quest_B10_STARTED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_BulletTriggerListener_34()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2103856972318129348",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103177212346784992",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_11()
    local params;
    params = {
        -- EntityA,
        [1] = "2101769449393623224",
        -- EntityB,
        [2] = "2100884027503283216",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1350324161");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
                [2] = self.f_box_OutputOrder_v2_56_Out_2,
                [3] = self.f_box_OutputOrder_v2_56_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1373368131");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_7_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "D2_CultLocation_02_QUEST_B10_OBJ4",
            id = "819459",
        },
        -- Progress,
        [1] = self.i_Piecesfound,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1388606264");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_88_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103177695136341357",
        -- Entity,
        [1] = "2103218978561232685",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1413889124");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
                [3] = self.f_box_OutputOrder_v2_19_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1446914991");
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

function export:OnEnter_box_AddActivityObjective_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1447230200");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_31_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "D2_CultLocation_02_QUEST_B10_OBJ4",
            id = "819459",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_66()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103177175478852766",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_74()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1578826111");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_78_Out,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.i_Piecesfound,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1590414383");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "D2_CultLocation_02_QUEST_B10_OBJ5",
            id = "819460",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_17()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101769428982042800",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_65()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101769428982042800",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1807997102");
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1836028971");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2103195014591966227",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "D2_CultLocation_02_QUEST_B10_OBJ4",
            id = "819459",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|1842999825");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_28_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100884030667885588",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "D2_CultLocation_02_QUEST_B10_OBJ4",
            id = "819459",
        },
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_97()
    local params;
    params = {
        -- Vehicle,
        [0] = "2103218578221226042",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_53()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101769428982042800",
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
        [2] = "2103498883534444017",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_QUEST_B10|2090647987");
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

function export:OnExit_box_IntegerArithmetics_v2_78_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.i_Piecesfound = l0:GetDataOutValue(0);
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
