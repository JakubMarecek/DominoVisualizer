LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/e1/e1_cultlocation_01.domino
-- User graph: E1_CultLocation_01_QUEST_B10
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
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MetaBreakableModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2505919524.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2666954946.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2538391541.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/E1/E1_CultLocation_01.E1_CultLocation_01_QUEST_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/NavLinkModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/PlayDialog_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CancelQueued",
            },
            [1] = {
                name = "PlayDialog",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "FinishedInterrupted",
                delayed = true,
            },
            [2] = {
                name = "QueueCancelled",
                delayed = false,
            },
            [3] = {
                name = "Queued",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "StartedPriorityFailed",
                delayed = true,
            },
            [6] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "RelevancyTime",
                type = "float",
            },
            [2] = {
                name = "ReplayIfInterrupted",
                type = "bool",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/ShimmerModifier_v2.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "E1_CultLocation_01_QUEST_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10";
    self.i_ContainersUnlocked = 0;
    self.o_FailReason = {
        section = "",
        item = "",
        id = "",
    };
    self.box_PositionModifier_v2_109 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|3187372");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_109_Done,
    });
    self.box_PositionModifier_v2_154 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|18794273");
    l0:SetConnections({
    });
    self.box_Bind_v4_157 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|19139237");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_157_Bound,
    });
    self.box_StaticBreakableListener_170 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|120885427");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_170_OnBreak,
    });
    self.box_Delay_v5_5 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|135296642");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_5_TimeElapsed,
    });
    self.box_MetaBreakableModifier_v2_14 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|192047886");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_14_OnSetDamageable,
    });
    self.box_PlayDialog_v6_135 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|288086516");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_135_Finished,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_135_Stopped,
    });
    self.box_ActivityInitialized_73 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|335109931");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_73_Out,
    });
    self.box_OnceOnly_v3_131 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|335358575");
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
                [0] = self.f_box_OnceOnly_v3_131_Out_0,
            },
            count = 1,
        },
    });
    self.box_HealthListener_v6_136 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|335876583");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_136_Killed,
    });
    self.box_HealthListener_v6_165 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|409851345");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_165_Killed,
    });
    self.box_StartCelebration_23 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|413884924");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_23_Ended,
    });
    self.box_ActivityAcknowledgeGate_63 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|453980979");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_63_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_63_Reloaded,
    });
    self.box_Delay_v5_122 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|538434351");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_122_TimeElapsed,
    });
    self.box_NavLinkModifier_130 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|542119010");
    l0:SetConnections({
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|662952568");
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
    self.box_NavLinkModifier_113 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|680141557");
    l0:SetConnections({
    });
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|804247501");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_NavLinkModifier_32 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|813777884");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_32_Activated,
    });
    self.box_ProximityRadiusListener_v3_2 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|828435360");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_2_SomeoneNear,
    });
    self.box_EntityStatusListener_7 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|871127481");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_7_Loaded,
    });
    self.box_NavLinkModifier_45 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|888235327");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_45_Activated,
    });
    self.box_PositionModifier_v2_112 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|912015565");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_143 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|944810909");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_143_Enter,
    });
    self.box_PlayDialog_v6_146 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1043277954");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_146_Finished,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_146_Stopped,
    });
    self.box_Delay_v5_174 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1203544179");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_174_TimeElapsed,
    });
    self.box_MetaBreakableModifier_v2_16 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1238281636");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_16_OnSetDamageable,
    });
    self.box_StaticBreakableListener_169 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1276388202");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_169_OnBreak,
    });
    self.box_MultipleOR_100 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1304258096");
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
        [0] = self.f_box_MultipleOR_100_Out,
    });
    self.box_ProximityTrigger_v2_132 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1333406723");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_132_Enter,
    });
    self.box_EntityStatusListener_8 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1387795688");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_8_Loaded,
    });
    self.box_OnceOnly_v3_139 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1426336111");
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
                [0] = self.f_box_OnceOnly_v3_139_Out_0,
            },
            count = 1,
        },
    });
    self.box_NavLinkModifier_164 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1519012675");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_162 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1541115549");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_162_Loaded,
    });
    self.box_OnceOnly_v3_161 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1618849046");
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
                [0] = self.f_box_OnceOnly_v3_161_Out_0,
            },
            count = 1,
        },
    });
    self.box_PositionModifier_v2_151 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1663070949");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_151_Done,
    });
    self.box_PlayDialog_v6_142 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1724953535");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_142_Finished,
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1795310049");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_Delay_v5_127 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1891422684");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_127_TimeElapsed,
    });
    self.box_Delay_v5_173 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1899159710");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_173_TimeElapsed,
    });
    self.box_NavLinkModifier_41 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1900707343");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_41_Activated,
    });
    self.box_Delay_v5_140 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1905080983");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_140_TimeElapsed,
    });
    self.box_Delay_v5_3 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1948577522");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_3_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_3_TimeElapsed,
    });
    self.box_MultipleOR_172 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1964176053");
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
        [0] = self.f_box_MultipleOR_172_Out,
    });
    self.box_OnceOnly_v3_116 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1977266999");
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
                [0] = self.f_box_OnceOnly_v3_116_Out_0,
            },
            count = 1,
        },
    });
    self.box_SpawnAI_152 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2019184519");
    l0:SetConnections({
    });
    self.box_Bind_v4_118 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2057664867");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_118_Bound,
    });
    self.box_MultipleAND_v2_15 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2142438847");
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
        [0] = self.f_box_MultipleAND_v2_15_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1516581691", "1516581691", "E1_CultLocation_01_QUEST_B10", "In", "box_ActivityAcknowledgeGate_63.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_31();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|626858500", "626858500", "E1_CultLocation_01_QUEST_B10", "OnLeaveZone", "box_ActivityRetry_31.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_174();
    l0 = self.box_Delay_v5_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|412247791", "412247791", "E1_CultLocation_01_QUEST_B10", "box_Simple_Node_38.Out", "box_Delay_v5_174.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_NavLinkModifier_41();
    l0 = self.box_NavLinkModifier_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1961443480", "1961443480", "E1_CultLocation_01_QUEST_B10", "box_Simple_Node_38.Out", "box_NavLinkModifier_41.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_39_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|753913017", "753913017", "E1_CultLocation_01_QUEST_B10", "box_Simple_Node_39.Out", "box_OutputOrder_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_45();
    l0 = self.box_NavLinkModifier_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|167944029", "167944029", "E1_CultLocation_01_QUEST_B10", "box_Simple_Node_36.Out", "box_NavLinkModifier_45.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_37_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2139759337", "2139759337", "E1_CultLocation_01_QUEST_B10", "box_Simple_Node_37.Out", "box_OutputOrder_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_34_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_132();
    l0 = self.box_ProximityTrigger_v2_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|348515482", "348515482", "E1_CultLocation_01_QUEST_B10", "box_Simple_Node_34.Out", "box_ProximityTrigger_v2_132.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v2_143();
    l0 = self.box_ProximityTrigger_v2_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2011748754", "2011748754", "E1_CultLocation_01_QUEST_B10", "box_Simple_Node_34.Out", "box_ProximityTrigger_v2_143.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_140();
    l0 = self.box_Delay_v5_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1427466777", "1427466777", "E1_CultLocation_01_QUEST_B10", "box_Simple_Node_34.Out", "box_Delay_v5_140.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_NavLinkModifier_32();
    l0 = self.box_NavLinkModifier_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|11752990", "11752990", "E1_CultLocation_01_QUEST_B10", "box_Simple_Node_34.Out", "box_NavLinkModifier_32.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|323743243", "323743243", "E1_CultLocation_01_QUEST_B10", "box_Simple_Node_35.Out", "box_OutputOrder_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_26();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|287043289", "287043289", "E1_CultLocation_01_QUEST_B10", "box_Simple_Node_30.Out", "box_IntegerArithmetics_v2_26.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_109_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_120();
    l0 = self.box_PositionModifier_v2_109;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|276458459", "276458459", "E1_CultLocation_01_QUEST_B10", "box_PositionModifier_v2_109.Done", "box_OutputOrder_v2_120.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_157_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_151();
    l0 = self.box_Bind_v4_157;
    l1 = self.box_PositionModifier_v2_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|229921776", "229921776", "E1_CultLocation_01_QUEST_B10", "box_Bind_v4_157.Bound", "box_PositionModifier_v2_151.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_120_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1045987466", "1045987466", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_120.Out", "box_OnceOnly_v3_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_120_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_119();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|351866610", "351866610", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_120.Out", "box_ShimmerModifier_v2_119.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_120_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_115();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1400012741", "1400012741", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_120.Out", "box_ShimmerModifier_v2_115.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_120_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_122();
    l0 = self.box_Delay_v5_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2030764475", "2030764475", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_120.Out", "box_Delay_v5_122.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_170_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_171();
    l0 = self.box_StaticBreakableListener_170;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1200809841", "1200809841", "E1_CultLocation_01_QUEST_B10", "box_StaticBreakableListener_170.OnBreak", "box_OutputOrder_v2_171.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_106_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_105();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|727893322", "727893322", "E1_CultLocation_01_QUEST_B10", "box_AddActivityObjective_v2_106.Out", "box_AddActivityObjectiveProgress_v2_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_5_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_142();
    l0 = self.box_Delay_v5_5;
    l1 = self.box_PlayDialog_v6_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1500809878", "1500809878", "E1_CultLocation_01_QUEST_B10", "box_Delay_v5_5.TimeElapsed", "box_PlayDialog_v6_142.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MetaBreakableModifier_v2_14_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_170();
    l0 = self.box_MetaBreakableModifier_v2_14;
    l1 = self.box_StaticBreakableListener_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|997980904", "997980904", "E1_CultLocation_01_QUEST_B10", "box_MetaBreakableModifier_v2_14.OnSetDamageable", "box_StaticBreakableListener_170.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|838687231", "838687231", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_153.Out", "box_Simple_Node_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_153_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_155();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|278683507", "278683507", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_153.Out", "box_ActivityObjectiveMarkerModifier_v3_155.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_135_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_PlayDialog_v6_135;
    l1 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1985060253", "1985060253", "E1_CultLocation_01_QUEST_B10", "box_PlayDialog_v6_135.Finished", "box_Delay_v5_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_135_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_PlayDialog_v6_135;
    l1 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|123214419", "123214419", "E1_CultLocation_01_QUEST_B10", "box_PlayDialog_v6_135.Stopped", "box_Delay_v5_4.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ShimmerModifier_v2_147_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_150();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2124645457", "2124645457", "E1_CultLocation_01_QUEST_B10", "box_ShimmerModifier_v2_147.Enabled", "box_ShimmerModifier_v2_150.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_73_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_106();
    l0 = self.box_ActivityInitialized_73;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1580652885", "1580652885", "E1_CultLocation_01_QUEST_B10", "box_ActivityInitialized_73.Out", "box_AddActivityObjective_v2_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_131_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_124();
    l0 = self.box_OnceOnly_v3_131;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1455676962", "1455676962", "E1_CultLocation_01_QUEST_B10", "box_OnceOnly_v3_131.Out", "box_OutputOrder_v2_124.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_136_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_144();
    l0 = self.box_HealthListener_v6_136;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|255475365", "255475365", "E1_CultLocation_01_QUEST_B10", "box_HealthListener_v6_136.Killed", "box_ActivityRetry_144.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_26_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_26_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_24();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1498658125", "1498658125", "E1_CultLocation_01_QUEST_B10", "box_IntegerArithmetics_v2_26.Out", "box_SetActivityObjectiveProgress_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1426299733", "1426299733", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_25.Out", "box_Simple_Node_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_15();
    l0 = self.box_MultipleAND_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|845110490", "845110490", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_25.Out", "box_MultipleAND_v2_15.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_HealthListener_v6_165_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_166();
    l0 = self.box_HealthListener_v6_165;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1548516679", "1548516679", "E1_CultLocation_01_QUEST_B10", "box_HealthListener_v6_165.Killed", "box_ActivityRetry_166.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_23_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_11();
    l0 = self.box_StartCelebration_23;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|362131887", "362131887", "E1_CultLocation_01_QUEST_B10", "box_StartCelebration_23.Ended", "box_ActivityEnd_11.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_150_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_149();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1424641058", "1424641058", "E1_CultLocation_01_QUEST_B10", "box_ShimmerModifier_v2_150.Enabled", "box_ShimmerModifier_v2_149.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_63_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_63;
    l1 = self.box_MultipleOR_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|74105600", "74105600", "E1_CultLocation_01_QUEST_B10", "box_ActivityAcknowledgeGate_63.Acknowledged", "box_MultipleOR_100.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_63_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_63;
    l1 = self.box_MultipleOR_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|453994532", "453994532", "E1_CultLocation_01_QUEST_B10", "box_ActivityAcknowledgeGate_63.Reloaded", "box_MultipleOR_100.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_108_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_123();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|201999452", "201999452", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_108.Out", "box_UseContextualActionModifier_v3_123.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_108_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_113();
    l0 = self.box_NavLinkModifier_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1070910302", "1070910302", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_108.Out", "box_NavLinkModifier_113.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_135();
    l0 = self.box_PlayDialog_v6_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1283506586", "1283506586", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_13.Out", "box_PlayDialog_v6_135.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_146();
    l0 = self.box_PlayDialog_v6_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|221068007", "221068007", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_13.Out", "box_PlayDialog_v6_146.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_142();
    l0 = self.box_PlayDialog_v6_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2044995188", "2044995188", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_13.Out", "box_PlayDialog_v6_142.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_122_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_108();
    l0 = self.box_Delay_v5_122;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1025519268", "1025519268", "E1_CultLocation_01_QUEST_B10", "box_Delay_v5_122.TimeElapsed", "box_OutputOrder_v2_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_114_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1735232851", "1735232851", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_114.Out", "box_Simple_Node_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_114_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_110();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2088162617", "2088162617", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_114.Out", "box_ActivityObjectiveMarkerModifier_v3_110.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_MultipleOR_6;
    l1 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|968406626", "968406626", "E1_CultLocation_01_QUEST_B10", "box_MultipleOR_6.Out", "box_Delay_v5_3.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetActivityObjectiveProgress_v2_107_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_101();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1617367584", "1617367584", "E1_CultLocation_01_QUEST_B10", "box_SetActivityObjectiveProgress_v2_107.Out", "box_ActivityObjectiveMarkerModifier_v3_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_124_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_34();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1922153223", "1922153223", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_124.Out", "box_Simple_Node_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_124_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_125();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|435405751", "435405751", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_124.Out", "box_ActivityObjectiveMarkerModifier_v3_125.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_101_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_104();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2034062975", "2034062975", "E1_CultLocation_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_101.Enabled", "box_ActivityObjectiveMarkerModifier_v3_104.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_146();
    l0 = self.box_Delay_v5_4;
    l1 = self.box_PlayDialog_v6_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|402131251", "402131251", "E1_CultLocation_01_QUEST_B10", "box_Delay_v5_4.TimeElapsed", "box_PlayDialog_v6_146.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_32_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_35();
    l0 = self.box_NavLinkModifier_32;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1367161847", "1367161847", "E1_CultLocation_01_QUEST_B10", "box_NavLinkModifier_32.Activated", "box_Simple_Node_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_2_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_2;
    l1 = self.box_MultipleOR_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1523997648", "1523997648", "E1_CultLocation_01_QUEST_B10", "box_ProximityRadiusListener_v3_2.SomeoneNear", "box_MultipleOR_172.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_23();
    l0 = self.box_StartCelebration_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1090664714", "1090664714", "E1_CultLocation_01_QUEST_B10", "box_EndActivityObjective_v2_10.Out", "box_StartCelebration_23.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_159_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1016110794", "1016110794", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_159.Out", "box_OnceOnly_v3_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_159_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_160();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2060000108", "2060000108", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_159.Out", "box_ShimmerModifier_v2_160.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_159_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_156();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2063518362", "2063518362", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_159.Out", "box_ShimmerModifier_v2_156.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_7_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_14();
    l0 = self.box_EntityStatusListener_7;
    l1 = self.box_MetaBreakableModifier_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2016810025", "2016810025", "E1_CultLocation_01_QUEST_B10", "box_EntityStatusListener_7.Loaded", "box_MetaBreakableModifier_v2_14.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_129_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_127();
    l0 = self.box_Delay_v5_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1658550150", "1658550150", "E1_CultLocation_01_QUEST_B10", "box_UseContextualActionModifier_v3_129.Disabled", "box_Delay_v5_127.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_NavLinkModifier_45_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_37();
    l0 = self.box_NavLinkModifier_45;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|348500839", "348500839", "E1_CultLocation_01_QUEST_B10", "box_NavLinkModifier_45.Activated", "box_Simple_Node_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_137_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1082108605", "1082108605", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_137.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_137_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_134();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|391416195", "391416195", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_137.Out", "box_Print_v2_134.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|470873021", "470873021", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_28.Out", "box_Simple_Node_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_15();
    l0 = self.box_MultipleAND_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2138220302", "2138220302", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_28.Out", "box_MultipleAND_v2_15.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_OutputOrder_v2_117_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_118();
    l0 = self.box_Bind_v4_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|385664265", "385664265", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_117.Out", "box_Bind_v4_118.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_117_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_112();
    l0 = self.box_PositionModifier_v2_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1853831978", "1853831978", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_117.Out", "box_PositionModifier_v2_112.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_143_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_ProximityTrigger_v2_143;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1265519384", "1265519384", "E1_CultLocation_01_QUEST_B10", "box_ProximityTrigger_v2_143.Enter", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|738211969", "738211969", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_27.Out", "box_Simple_Node_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_15();
    l0 = self.box_MultipleAND_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|441451036", "441451036", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_27.Out", "box_MultipleAND_v2_15.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_137();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|982518956", "982518956", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_29.Out", "box_OutputOrder_v2_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_136();
    l0 = self.box_HealthListener_v6_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|38776752", "38776752", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_29.Out", "box_HealthListener_v6_136.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_158_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_157();
    l0 = self.box_Bind_v4_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1582456067", "1582456067", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_158.Out", "box_Bind_v4_157.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_158_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_154();
    l0 = self.box_PositionModifier_v2_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|593057065", "593057065", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_158.Out", "box_PositionModifier_v2_154.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_146_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_5();
    l0 = self.box_PlayDialog_v6_146;
    l1 = self.box_Delay_v5_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|877797064", "877797064", "E1_CultLocation_01_QUEST_B10", "box_PlayDialog_v6_146.Finished", "box_Delay_v5_5.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_146_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_5();
    l0 = self.box_PlayDialog_v6_146;
    l1 = self.box_Delay_v5_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|697431267", "697431267", "E1_CultLocation_01_QUEST_B10", "box_PlayDialog_v6_146.Stopped", "box_Delay_v5_5.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ShimmerModifier_v2_149_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_148();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1246863394", "1246863394", "E1_CultLocation_01_QUEST_B10", "box_ShimmerModifier_v2_149.Enabled", "box_ShimmerModifier_v2_148.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_174_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_165();
    l0 = self.box_Delay_v5_174;
    l1 = self.box_HealthListener_v6_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|929786750", "929786750", "E1_CultLocation_01_QUEST_B10", "box_Delay_v5_174.TimeElapsed", "box_HealthListener_v6_165.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_133_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_8();
    l0 = self.box_EntityStatusListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|84034203", "84034203", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_133.Out", "box_EntityStatusListener_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_133_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_132();
    l0 = self.box_ProximityTrigger_v2_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|838636131", "838636131", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_133.Out", "box_ProximityTrigger_v2_132.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_133_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1620978156", "1620978156", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_133.Out", "box_OnceOnly_v3_139.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_133_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_147();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1199392944", "1199392944", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_133.Out", "box_ShimmerModifier_v2_147.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_133_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_7();
    l0 = self.box_EntityStatusListener_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1276892642", "1276892642", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_133.Out", "box_EntityStatusListener_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_133_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_165();
    l0 = self.box_HealthListener_v6_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1573845354", "1573845354", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_133.Out", "box_HealthListener_v6_165.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_133_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_1();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1661889335", "1661889335", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_133.Out", "box_GetPlayerGroup_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_16_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_169();
    l0 = self.box_MetaBreakableModifier_v2_16;
    l1 = self.box_StaticBreakableListener_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1368627626", "1368627626", "E1_CultLocation_01_QUEST_B10", "box_MetaBreakableModifier_v2_16.OnSetDamageable", "box_StaticBreakableListener_169.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_169_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_StaticBreakableListener_169;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|889512457", "889512457", "E1_CultLocation_01_QUEST_B10", "box_StaticBreakableListener_169.OnBreak", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_100_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_100;
    l1 = self.box_ActivityInitialized_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1263981861", "1263981861", "E1_CultLocation_01_QUEST_B10", "box_MultipleOR_100.Out", "box_ActivityInitialized_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_171_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_173();
    l0 = self.box_Delay_v5_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|885305016", "885305016", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_171.Out", "box_Delay_v5_173.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_171_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1252559468", "1252559468", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_171.Out", "box_MultipleOR_172.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_171_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_164();
    l0 = self.box_NavLinkModifier_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|450696094", "450696094", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_171.Out", "box_NavLinkModifier_164.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_132_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_128();
    l0 = self.box_ProximityTrigger_v2_132;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|898352985", "898352985", "E1_CultLocation_01_QUEST_B10", "box_ProximityTrigger_v2_132.Enter", "box_OutputOrder_v2_128.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_1_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_2();
    l0 = self.box_ProximityRadiusListener_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1769766347", "1769766347", "E1_CultLocation_01_QUEST_B10", "box_GetPlayerGroup_v2_1.Out", "box_ProximityRadiusListener_v3_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_8_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_16();
    l0 = self.box_EntityStatusListener_8;
    l1 = self.box_MetaBreakableModifier_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1698894831", "1698894831", "E1_CultLocation_01_QUEST_B10", "box_EntityStatusListener_8.Loaded", "box_MetaBreakableModifier_v2_16.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_139_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_143();
    l0 = self.box_OnceOnly_v3_139;
    l1 = self.box_ProximityTrigger_v2_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|288329623", "288329623", "E1_CultLocation_01_QUEST_B10", "box_OnceOnly_v3_139.Out", "box_ProximityTrigger_v2_143.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_103_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_133();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|206099524", "206099524", "E1_CultLocation_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_103.Enabled", "box_OutputOrder_v2_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_162_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_152();
    l0 = self.box_EntityStatusListener_162;
    l1 = self.box_SpawnAI_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2064706576", "2064706576", "E1_CultLocation_01_QUEST_B10", "box_EntityStatusListener_162.Loaded", "box_SpawnAI_152.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_161_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_153();
    l0 = self.box_OnceOnly_v3_161;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2063063681", "2063063681", "E1_CultLocation_01_QUEST_B10", "box_OnceOnly_v3_161.Out", "box_OutputOrder_v2_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_151_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_159();
    l0 = self.box_PositionModifier_v2_151;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1020032873", "1020032873", "E1_CultLocation_01_QUEST_B10", "box_PositionModifier_v2_151.Done", "box_OutputOrder_v2_159.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_104_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_103();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|327940572", "327940572", "E1_CultLocation_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_104.Enabled", "box_ActivityObjectiveMarkerModifier_v3_103.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_142_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_142;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|42113539", "42113539", "E1_CultLocation_01_QUEST_B10", "box_PlayDialog_v6_142.Finished", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjectiveProgress_v2_105_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_107();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1799772802", "1799772802", "E1_CultLocation_01_QUEST_B10", "box_AddActivityObjectiveProgress_v2_105.Out", "box_SetActivityObjectiveProgress_v2_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_117();
    l0 = self.box_Delay_v5_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|400965068", "400965068", "E1_CultLocation_01_QUEST_B10", "box_Delay_v5_12.TimeElapsed", "box_OutputOrder_v2_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_127_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_126();
    l0 = self.box_Delay_v5_127;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|496968557", "496968557", "E1_CultLocation_01_QUEST_B10", "box_Delay_v5_127.TimeElapsed", "box_UseContextualActionModifier_v3_126.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_173_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_158();
    l0 = self.box_Delay_v5_173;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2060975228", "2060975228", "E1_CultLocation_01_QUEST_B10", "box_Delay_v5_173.TimeElapsed", "box_OutputOrder_v2_158.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_41_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_39();
    l0 = self.box_NavLinkModifier_41;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|369437412", "369437412", "E1_CultLocation_01_QUEST_B10", "box_NavLinkModifier_41.Activated", "box_Simple_Node_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_140_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_136();
    l0 = self.box_Delay_v5_140;
    l1 = self.box_HealthListener_v6_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1219090337", "1219090337", "E1_CultLocation_01_QUEST_B10", "box_Delay_v5_140.TimeElapsed", "box_HealthListener_v6_136.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_3_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_Delay_v5_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|111889040", "111889040", "E1_CultLocation_01_QUEST_B10", "box_Delay_v5_3.Stopped", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_3_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_135();
    l0 = self.box_Delay_v5_3;
    l1 = self.box_PlayDialog_v6_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|949191345", "949191345", "E1_CultLocation_01_QUEST_B10", "box_Delay_v5_3.TimeElapsed", "box_PlayDialog_v6_135.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_172_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_162();
    l0 = self.box_MultipleOR_172;
    l1 = self.box_EntityStatusListener_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1406919191", "1406919191", "E1_CultLocation_01_QUEST_B10", "box_MultipleOR_172.Out", "box_EntityStatusListener_162.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_116_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_114();
    l0 = self.box_OnceOnly_v3_116;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|963788923", "963788923", "E1_CultLocation_01_QUEST_B10", "box_OnceOnly_v3_116.Out", "box_OutputOrder_v2_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_118_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_109();
    l0 = self.box_Bind_v4_118;
    l1 = self.box_PositionModifier_v2_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1461647000", "1461647000", "E1_CultLocation_01_QUEST_B10", "box_Bind_v4_118.Bound", "box_PositionModifier_v2_109.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_121();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|983559589", "983559589", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_9.Out", "box_UseContextualActionModifier_v3_121.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|534466429", "534466429", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_9.Out", "box_Delay_v5_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_128_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|877041193", "877041193", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_128.Out", "box_OnceOnly_v3_131.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_128_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1913040383", "1913040383", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_128.Out", "box_Delay_v5_3.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_128_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_130();
    l0 = self.box_NavLinkModifier_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|501830414", "501830414", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_128.Out", "box_NavLinkModifier_130.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_128_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_129();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|178185878", "178185878", "E1_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_128.Out", "box_UseContextualActionModifier_v3_129.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_10();
    l0 = self.box_MultipleAND_v2_15;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1802146707", "1802146707", "E1_CultLocation_01_QUEST_B10", "box_MultipleAND_v2_15.Out", "box_EndActivityObjective_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|@n_Events_1stContainer_IN");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_38_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|@n_Events_1stContainer_OUT");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_39_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|@n_Events_2rdContainer_IN");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|@n_Events_2rdContainer_OUT");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|@n_Events_3rdContainer_IN");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_34_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|@n_Events_3rdContainer_OUT");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_35_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|@n_UpdateCounter");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_30_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_109()
    local params;
    params = {
        -- blendTime,
        [1] = 0.9,
        -- endTarget,
        [4] = "2101355594154782154",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101355795523314617",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_154()
    local params;
    params = {
        -- blendTime,
        [1] = 0.9,
        -- endTarget,
        [4] = "2101356107726339167",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101356107730533474",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_157()
    local params;
    params = {
        -- EntityA,
        [1] = "2101356107734727783",
        -- EntityB,
        [2] = "2101356107732630628",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|98533863");
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
                [0] = self.f_box_OutputOrder_v2_120_Out_0,
                [1] = self.f_box_OutputOrder_v2_120_Out_1,
                [2] = self.f_box_OutputOrder_v2_120_Out_2,
                [3] = self.f_box_OutputOrder_v2_120_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|109702224");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2101452807235181387",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_170()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2104159717849841614",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|122819597");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_106_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "E1_CultLocation_01_QUEST_B10_OBJ",
            id = "585718",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_5()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_14()
    local params;
    params = {
        -- targets,
        [0] = "2104159717849841614",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|244244473");
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
                [0] = self.f_box_OutputOrder_v2_153_Out_0,
                [1] = self.f_box_OutputOrder_v2_153_Out_1,
            },
            count = 2,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|270226786");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_135()
    local params;
    params = {
        -- Group,
        [0] = "2100515292732984535",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2666954946",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|320422326");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_147_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101355569685212615",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_136()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2100515292732984535",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|343770753");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_26_Out,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.i_ContainersUnlocked,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|379492681");
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

function export:OnEnter_box_HealthListener_v6_165()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2100553610719945339",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_23()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|424244941");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_150_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101355573401365961",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|462725342");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Interact_NPC",
            item = "BRICK_NPC_Player_Killed_Fail",
            id = "373233",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|464442732");
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

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|512978658");
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

function export:OnEnter_box_Delay_v5_122()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|540120141");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "E1_CultLocation_01_QUEST_B10_OBJ",
            id = "585718",
        },
        -- Progress,
        [1] = self.i_ContainersUnlocked,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_130()
    local params;
    params = {
        -- Entity,
        [0] = "2100515354240355668",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|659275851");
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
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|665621344");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_107_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "E1_CultLocation_01_QUEST_B10_OBJ",
            id = "585718",
        },
        -- Progress,
        [1] = self.i_ContainersUnlocked,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|672798674");
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
                [0] = self.f_box_OutputOrder_v2_124_Out_0,
                [1] = self.f_box_OutputOrder_v2_124_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|674943153");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_101_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100515547591481790",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "E1_CultLocation_01_QUEST_B10_OBJ",
            id = "585718",
        },
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_113()
    local params;
    params = {
        -- Entity,
        [0] = "2100515345646226768",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_32()
    local params;
    params = {
        -- Entity,
        [0] = "2100515052183368633",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2104162405278842138",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|836790351");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Interact_NPC",
            item = "BRICK_NPC_Player_Killed_Fail",
            id = "373233",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|861701957");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_10_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "E1_CultLocation_01_QUEST_B10_OBJ",
            id = "585718",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|861756448");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2101522170606805057",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|863285086");
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
                [0] = self.f_box_OutputOrder_v2_159_Out_0,
                [1] = self.f_box_OutputOrder_v2_159_Out_1,
                [2] = self.f_box_OutputOrder_v2_159_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|870589330");
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

function export:OnEnter_box_EntityStatusListener_7()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104159717849841614",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|885163630");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_129_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101357074662334069",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_45()
    local params;
    params = {
        -- Entity,
        [0] = "2100515354240355668",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_112()
    local params;
    params = {
        -- blendTime,
        [1] = 0.7,
        -- endTarget,
        [4] = "2101355624836115922",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101355573401365961",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|925208300");
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|927761458");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2100515547591481790",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "E1_CultLocation_01_QUEST_B10_OBJ",
            id = "585718",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|935699840");
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

function export:OnEnter_box_OutputOrder_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|944470435");
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
                [0] = self.f_box_OutputOrder_v2_117_Out_0,
                [1] = self.f_box_OutputOrder_v2_117_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_143()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101949486375908043",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|972212758");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1003798162");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1024864495");
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
                [0] = self.f_box_OutputOrder_v2_158_Out_0,
                [1] = self.f_box_OutputOrder_v2_158_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1029637562");
    l0:SetConnections({
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101356107730533474",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1042823006");
    l0:SetConnections({
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101355569685212615",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_146()
    local params;
    params = {
        -- Group,
        [0] = "2100515292732984535",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2505919524",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1105253325");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_149_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101356107732630628",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_174()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1232097678");
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
                [0] = self.f_box_OutputOrder_v2_133_Out_0,
                [1] = self.f_box_OutputOrder_v2_133_Out_1,
                [2] = self.f_box_OutputOrder_v2_133_Out_2,
                [3] = self.f_box_OutputOrder_v2_133_Out_3,
                [4] = self.f_box_OutputOrder_v2_133_Out_4,
                [5] = self.f_box_OutputOrder_v2_133_Out_5,
                [6] = self.f_box_OutputOrder_v2_133_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_16()
    local params;
    params = {
        -- targets,
        [0] = "2104159726691434453",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_169()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2104159726691434453",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1331530209");
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
                [0] = self.f_box_OutputOrder_v2_171_Out_0,
                [1] = self.f_box_OutputOrder_v2_171_Out_1,
                [2] = self.f_box_OutputOrder_v2_171_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_132()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101050994526790393",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1359649636");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1379317598");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2101550424516466654",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_8()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104159726691434453",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_164()
    local params;
    params = {
        -- Entity,
        [0] = "2100515052183368633",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1532102256");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_103_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2101036152531195594",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "E1_CultLocation_01_QUEST_B10_OBJ",
            id = "585718",
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_162()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100514894114730715",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1570178223");
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
        [8] = "Keydialog_started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_151()
    local params;
    params = {
        -- blendTime,
        [1] = 0.9,
        -- endTarget,
        [4] = "2101356107741019245",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101356107734727783",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1675286918");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_104_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2101036120318940869",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "E1_CultLocation_01_QUEST_B10_OBJ",
            id = "585718",
        },
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1692446591");
    l0:SetConnections({
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101355573401365961",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_142()
    local params;
    params = {
        -- Group,
        [0] = "2100515292732984535",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2538391541",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1770221238");
    l0:SetConnections({
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101356107732630628",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1778509035");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_105_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "E1_CultLocation_01_QUEST_B10_OBJ",
            id = "585718",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1835538088");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2101036120318940869",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "E1_CultLocation_01_QUEST_B10_OBJ",
            id = "585718",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_127()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_173()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_41()
    local params;
    params = {
        -- Entity,
        [0] = "2100515345646226768",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_140()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|1918360856");
    l0:SetConnections({
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101356107730533474",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_3()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_152()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100514894114730715",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_118()
    local params;
    params = {
        -- EntityA,
        [1] = "2101355795523314617",
        -- EntityB,
        [2] = "2101355569685212615",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2088251508");
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

function export:OnEnter_box_OutputOrder_v2_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2108905383");
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
                [0] = self.f_box_OutputOrder_v2_128_Out_0,
                [1] = self.f_box_OutputOrder_v2_128_Out_1,
                [2] = self.f_box_OutputOrder_v2_128_Out_2,
                [3] = self.f_box_OutputOrder_v2_128_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_QUEST_B10|2112355023");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2101036152531195594",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "E1_CultLocation_01_QUEST_B10_OBJ",
            id = "585718",
        },
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_15()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnExit_box_IntegerArithmetics_v2_26_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.i_ContainersUnlocked = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_1_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_2;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
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
