LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/father/father_010/father_010_b12.domino
-- User graph: SwappingArmySetUpB12
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.AllyAICanRevivePlayerB12.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.FatherRespawnSetupB12.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.SwapingArmyMoveB12.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3092287137.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2332147828.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3592634314.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1539185302.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4062944867.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2515946790.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3654086454.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1545316404.bnk]], "CSoundResource");
        cboxRes:LoadResource([[396459038.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2708622917.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2897334127.bnk]], "CSoundResource");
        cboxRes:LoadResource([[410719232.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4011077490.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2673434040.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.SwappingArmySetUpB12.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/PawnInvincibleState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetInvincible",
            },
            [1] = {
                name = "UnsetInvincible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSet",
                delayed = false,
            },
            [1] = {
                name = "OnUnSet",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.AllyAICanRevivePlayerB12.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.FatherRespawnSetupB12.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableListener",
            },
            [1] = {
                name = "NormalStart",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FatherKilled",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.SwapingArmyMoveB12.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Play_the_Father_Revive_Dialog",
                delayed = false,
            },
            [1] = {
                name = "Play_the_Player_Revive_Dialog",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Blissriverbanks",
                type = "entity",
            },
            [1] = {
                name = "ConvertedParticleSmoke",
                type = "entity",
            },
            [2] = {
                name = "CStoUseForGreenGFH",
                type = "entity",
            },
            [3] = {
                name = "CStoUseForRedGFH",
                type = "entity",
            },
            [4] = {
                name = "GFH",
                type = "entity",
            },
            [5] = {
                name = "MarkerWhenRevive",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "SwappingArmySetUpB12";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12";
    self.Out = DummyFunction;
    self.FriendsLeftToBringBackB12 = 3;
    self.box_Delay_v5_26 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|4802480");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_26_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_26_TimeElapsed,
    });
    self.box_PlayDialog_v6_39 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|15326671");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_61 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|72716562");
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
                [0] = self.f_box_OnceOnly_v3_61_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_48 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|103683666");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_64 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|118175449");
    l0:SetConnections({
    });
    self.box_AllyAICanRevivePlayerB12_30 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.AllyAICanRevivePlayerB12.debug.lua");
    l0 = self.box_AllyAICanRevivePlayerB12_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AllyAICanRevivePlayerB12_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|129098153");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_46 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|179132915");
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
                [0] = self.f_box_OnceOnly_v3_46_Out_0,
            },
            count = 1,
        },
    });
    self.box_SwapingArmyMoveB12_11 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.SwapingArmyMoveB12.debug.lua");
    l0 = self.box_SwapingArmyMoveB12_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB12_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|242532707");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB12_11_Play_the_Father_Revive_Dialog,
    });
    self.box_OnceOnly_v3_45 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|491294962");
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
                [0] = self.f_box_OnceOnly_v3_45_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_50 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|571461939");
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
                [0] = self.f_box_OnceOnly_v3_50_Out_0,
            },
            count = 1,
        },
    });
    self.box_SwapingArmyMoveB12_6 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.SwapingArmyMoveB12.debug.lua");
    l0 = self.box_SwapingArmyMoveB12_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB12_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|620144239");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB12_6_Play_the_Father_Revive_Dialog,
        -- Play the Player Revive Dialog,
        [1] = self.f_box_SwapingArmyMoveB12_6_Play_the_Player_Revive_Dialog,
    });
    self.box_SpawnAI_19 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|635923396");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_19_Spawned,
    });
    self.box_SwapingArmyMoveB12_3 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.SwapingArmyMoveB12.debug.lua");
    l0 = self.box_SwapingArmyMoveB12_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB12_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|726196936");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB12_3_Play_the_Father_Revive_Dialog,
        -- Play the Player Revive Dialog,
        [1] = self.f_box_SwapingArmyMoveB12_3_Play_the_Player_Revive_Dialog,
    });
    self.box_OnceOnly_v3_44 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|803457009");
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
                [0] = self.f_box_OnceOnly_v3_44_Out_0,
            },
            count = 1,
        },
    });
    self.box_SwapingArmyMoveB12_14 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.SwapingArmyMoveB12.debug.lua");
    l0 = self.box_SwapingArmyMoveB12_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB12_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|807007949");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB12_14_Play_the_Father_Revive_Dialog,
    });
    self.box_OnceOnly_v3_41 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|934132161");
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
                [0] = self.f_box_OnceOnly_v3_41_Out_0,
            },
            count = 1,
        },
    });
    self.box_FatherRespawnSetupB12_27 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.FatherRespawnSetupB12.debug.lua");
    l0 = self.box_FatherRespawnSetupB12_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FatherRespawnSetupB12_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|946473654");
    l0:SetConnections({
        -- FatherKilled,
        [0] = self.f_box_FatherRespawnSetupB12_27_FatherKilled,
    });
    self.box_PlayDialog_v6_51 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|957798001");
    l0:SetConnections({
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1006658555");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_SwapingArmyMoveB12_13 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.SwapingArmyMoveB12.debug.lua");
    l0 = self.box_SwapingArmyMoveB12_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB12_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1007121255");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB12_13_Play_the_Father_Revive_Dialog,
    });
    self.box_Delay_v5_33 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1194864827");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_33_TimeElapsed,
    });
    self.box_PlayDialog_v6_57 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1210824890");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_55 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1234879699");
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
                [0] = self.f_box_OnceOnly_v3_55_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_54 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1260327240");
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
                [0] = self.f_box_OnceOnly_v3_54_Out_0,
            },
            count = 1,
        },
    });
    self.box_GroupSizeListener_v5_56 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1291709554");
    l0:SetConnections({
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_56_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_56_MemberRemoved,
    });
    self.box_PlayDialog_v6_40 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1307422979");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_7 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1320353746");
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
        [0] = self.f_box_MultipleAND_v2_7_Out,
    });
    self.box_OnceOnly_v3_59 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1327056859");
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
                [0] = self.f_box_OnceOnly_v3_59_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_72 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1332589064");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_68 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1387747003");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_68_Killed,
    });
    self.box_PlayDialog_v6_62 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1408251844");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_47 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1425979767");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_16 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1430166393");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_16_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_16_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_16_Enter,
    });
    self.box_Delay_v5_70 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1543436269");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_70_TimeElapsed,
    });
    self.box_MultipleOR_67 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1622367835");
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
        [0] = self.f_box_MultipleOR_67_Out,
    });
    self.box_SwapingArmyMoveB12_12 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.SwapingArmyMoveB12.debug.lua");
    l0 = self.box_SwapingArmyMoveB12_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB12_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1631167409");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB12_12_Play_the_Father_Revive_Dialog,
        -- Play the Player Revive Dialog,
        [1] = self.f_box_SwapingArmyMoveB12_12_Play_the_Player_Revive_Dialog,
    });
    self.box_PlayDialog_v6_42 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1684110657");
    l0:SetConnections({
    });
    self.box_Delay_v5_66 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1854213342");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_66_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_66_TimeElapsed,
    });
    self.box_PlayDialog_v6_32 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1890135821");
    l0:SetConnections({
    });
    self.box_Delay_v5_25 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1941994236");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_25_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_25_TimeElapsed,
    });
    self.box_OnceOnly_v3_52 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1954287283");
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
                [0] = self.f_box_OnceOnly_v3_52_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_43 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|2056836955");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_49 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|2075653792");
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
                [0] = self.f_box_OnceOnly_v3_49_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_58 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|2088551832");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_60 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|2091483439");
    l0:SetConnections({
    });
    self.box_SwapingArmyMoveB12_2 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.SwapingArmyMoveB12.debug.lua");
    l0 = self.box_SwapingArmyMoveB12_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB12_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|2143373277");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB12_2_Play_the_Father_Revive_Dialog,
        -- Play the Player Revive Dialog,
        [1] = self.f_box_SwapingArmyMoveB12_2_Play_the_Player_Revive_Dialog,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_AddActivityObjective_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1431061479", "1431061479", "SwappingArmySetUpB12", "In", "box_AddActivityObjective_v2_8.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_7();
    l0 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|2143798988", "2143798988", "SwappingArmySetUpB12", "box_Simple_Node_29.Out", "box_MultipleAND_v2_7.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
    l0 = self.box_FatherRespawnSetupB12_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|38715692", "38715692", "SwappingArmySetUpB12", "box_Simple_Node_29.Out", "box_FatherRespawnSetupB12_27.DisableListener", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableListener
    l0:Exec(0, {
    });
    params = self:OnEnter_box_SwapingArmyMoveB12_2();
    l0 = self.box_SwapingArmyMoveB12_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|620309138", "620309138", "SwappingArmySetUpB12", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB12_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_GroupSizeListener_v5_56();
    l0 = self.box_GroupSizeListener_v5_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|421640087", "421640087", "SwappingArmySetUpB12", "box_Simple_Node_29.Out", "box_GroupSizeListener_v5_56.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB12_6();
    l0 = self.box_SwapingArmyMoveB12_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1618033573", "1618033573", "SwappingArmySetUpB12", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB12_6.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB12_14();
    l0 = self.box_SwapingArmyMoveB12_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|907002679", "907002679", "SwappingArmySetUpB12", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB12_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB12_11();
    l0 = self.box_SwapingArmyMoveB12_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|620725126", "620725126", "SwappingArmySetUpB12", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB12_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB12_13();
    l0 = self.box_SwapingArmyMoveB12_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1689427854", "1689427854", "SwappingArmySetUpB12", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB12_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB12_3();
    l0 = self.box_SwapingArmyMoveB12_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1964885801", "1964885801", "SwappingArmySetUpB12", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB12_3.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB12_12();
    l0 = self.box_SwapingArmyMoveB12_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|308407236", "308407236", "SwappingArmySetUpB12", "box_Simple_Node_29.Out", "box_SwapingArmyMoveB12_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_7();
    l0 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|297173075", "297173075", "SwappingArmySetUpB12", "box_Simple_Node_31.Out", "box_MultipleAND_v2_7.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_26_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_28();
    l0 = self.box_Delay_v5_26;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1102127375", "1102127375", "SwappingArmySetUpB12", "box_Delay_v5_26.Started", "box_SetContextualStrategy_28.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_26_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_19();
    l0 = self.box_Delay_v5_26;
    l1 = self.box_SpawnAI_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1564678403", "1564678403", "SwappingArmySetUpB12", "box_Delay_v5_26.TimeElapsed", "box_SpawnAI_19.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_61_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_62();
    l0 = self.box_OnceOnly_v3_61;
    l1 = self.box_PlayDialog_v6_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|193333097", "193333097", "SwappingArmySetUpB12", "box_OnceOnly_v3_61.Out", "box_PlayDialog_v6_62.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_29();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1585439780", "1585439780", "SwappingArmySetUpB12", "box_EndActivityObjective_v2_35.Out", "box_Simple_Node_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_46_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_43();
    l0 = self.box_OnceOnly_v3_46;
    l1 = self.box_PlayDialog_v6_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1947441530", "1947441530", "SwappingArmySetUpB12", "box_OnceOnly_v3_46.Out", "box_PlayDialog_v6_43.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB12_11();
    l0 = self.box_SwapingArmyMoveB12_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1864347597", "1864347597", "SwappingArmySetUpB12", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB12_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB12_14();
    l0 = self.box_SwapingArmyMoveB12_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|235025786", "235025786", "SwappingArmySetUpB12", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB12_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB12_13();
    l0 = self.box_SwapingArmyMoveB12_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|994565995", "994565995", "SwappingArmySetUpB12", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB12_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB12_12();
    l0 = self.box_SwapingArmyMoveB12_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|90536706", "90536706", "SwappingArmySetUpB12", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB12_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB12_3();
    l0 = self.box_SwapingArmyMoveB12_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1714468102", "1714468102", "SwappingArmySetUpB12", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB12_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB12_6();
    l0 = self.box_SwapingArmyMoveB12_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1812851024", "1812851024", "SwappingArmySetUpB12", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB12_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB12_2();
    l0 = self.box_SwapingArmyMoveB12_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1536690438", "1536690438", "SwappingArmySetUpB12", "box_OutputOrder_v2_5.Out", "box_SwapingArmyMoveB12_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjectiveProgress_v2_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|797186557", "797186557", "SwappingArmySetUpB12", "box_AddActivityObjectiveProgress_v2_9.Out", "box_SetActivityObjectiveProgress_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SwapingArmyMoveB12_11_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB12_11;
    l1 = self.box_OnceOnly_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1104700103", "1104700103", "SwappingArmySetUpB12", "box_SwapingArmyMoveB12_11.Play the Father Revive Dialog", "box_OnceOnly_v3_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IntegerArithmetics_v2_20_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_20_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_70();
    l0 = self.box_Delay_v5_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1208649401", "1208649401", "SwappingArmySetUpB12", "box_IntegerArithmetics_v2_20.Out", "box_Delay_v5_70.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_45_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_39();
    l0 = self.box_OnceOnly_v3_45;
    l1 = self.box_PlayDialog_v6_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|642789620", "642789620", "SwappingArmySetUpB12", "box_OnceOnly_v3_45.Out", "box_PlayDialog_v6_39.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_73();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|982478725", "982478725", "SwappingArmySetUpB12", "box_OutputOrder_v2_65.Out", "box_PawnInvincibleState_v2_73.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_34();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|2051545907", "2051545907", "SwappingArmySetUpB12", "box_OutputOrder_v2_65.Out", "box_AddActivityObjective_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_50_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_48();
    l0 = self.box_OnceOnly_v3_50;
    l1 = self.box_PlayDialog_v6_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|428203547", "428203547", "SwappingArmySetUpB12", "box_OnceOnly_v3_50.Out", "box_PlayDialog_v6_48.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_64();
    l0 = self.box_SoundModifier_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|184179315", "184179315", "SwappingArmySetUpB12", "box_SetContextualStrategy_28.Out", "box_SoundModifier_v2_64.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_36_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_25();
    l0 = self.box_Delay_v5_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|2008704047", "2008704047", "SwappingArmySetUpB12", "box_Compare_Integers_36.A_ge_B", "box_Delay_v5_25.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SwapingArmyMoveB12_6_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB12_6;
    l1 = self.box_OnceOnly_v3_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|529521942", "529521942", "SwappingArmySetUpB12", "box_SwapingArmyMoveB12_6.Play the Father Revive Dialog", "box_OnceOnly_v3_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SwapingArmyMoveB12_6_Play_the_Player_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB12_6;
    l1 = self.box_OnceOnly_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|527989788", "527989788", "SwappingArmySetUpB12", "box_SwapingArmyMoveB12_6.Play the Player Revive Dialog", "box_OnceOnly_v3_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_19_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_SpawnAI_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|403911752", "403911752", "SwappingArmySetUpB12", "box_SpawnAI_19.Spawned", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SwapingArmyMoveB12_3_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB12_3;
    l1 = self.box_OnceOnly_v3_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1510829467", "1510829467", "SwappingArmySetUpB12", "box_SwapingArmyMoveB12_3.Play the Father Revive Dialog", "box_OnceOnly_v3_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SwapingArmyMoveB12_3_Play_the_Player_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB12_3;
    l1 = self.box_OnceOnly_v3_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1188356085", "1188356085", "SwappingArmySetUpB12", "box_SwapingArmyMoveB12_3.Play the Player Revive Dialog", "box_OnceOnly_v3_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_44_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_42();
    l0 = self.box_OnceOnly_v3_44;
    l1 = self.box_PlayDialog_v6_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|364057764", "364057764", "SwappingArmySetUpB12", "box_OnceOnly_v3_44.Out", "box_PlayDialog_v6_42.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SwapingArmyMoveB12_14_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB12_14;
    l1 = self.box_OnceOnly_v3_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1363443690", "1363443690", "SwappingArmySetUpB12", "box_SwapingArmyMoveB12_14.Play the Father Revive Dialog", "box_OnceOnly_v3_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_66();
    l0 = self.box_Delay_v5_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|2037381985", "2037381985", "SwappingArmySetUpB12", "box_OutputOrder_v2_17.Out", "box_Delay_v5_66.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|939158122", "939158122", "SwappingArmySetUpB12", "box_OutputOrder_v2_17.Out", "box_OutputOrder_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_AllyAICanRevivePlayerB12_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|730949795", "730949795", "SwappingArmySetUpB12", "box_OutputOrder_v2_17.Out", "box_AllyAICanRevivePlayerB12_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_17_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_FatherRespawnSetupB12_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|948820325", "948820325", "SwappingArmySetUpB12", "box_OutputOrder_v2_17.Out", "box_FatherRespawnSetupB12_27.NormalStart", clone:GetLuaBox(), l0:GetLuaBox());
    -- NormalStart
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_17_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_56();
    l0 = self.box_GroupSizeListener_v5_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|7437553", "7437553", "SwappingArmySetUpB12", "box_OutputOrder_v2_17.Out", "box_GroupSizeListener_v5_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_21_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|457343264", "457343264", "SwappingArmySetUpB12", "box_IntegerArithmetics_v2_21.Out", "box_SetActivityObjectiveProgress_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_8_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1448393377", "1448393377", "SwappingArmySetUpB12", "box_AddActivityObjective_v2_8.Out", "box_AddActivityObjectiveProgress_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_41_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_40();
    l0 = self.box_OnceOnly_v3_41;
    l1 = self.box_PlayDialog_v6_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|954068645", "954068645", "SwappingArmySetUpB12", "box_OnceOnly_v3_41.Out", "box_PlayDialog_v6_40.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_FatherRespawnSetupB12_27_FatherKilled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_31();
    l0 = self.box_FatherRespawnSetupB12_27;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|445809779", "445809779", "SwappingArmySetUpB12", "box_FatherRespawnSetupB12_27.FatherKilled", "box_Simple_Node_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_74();
    l0 = self.box_Delay_v5_18;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|773295049", "773295049", "SwappingArmySetUpB12", "box_Delay_v5_18.TimeElapsed", "box_PawnInvincibleState_v2_74.UnsetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnsetInvincible
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SwapingArmyMoveB12_13_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB12_13;
    l1 = self.box_OnceOnly_v3_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|554613975", "554613975", "SwappingArmySetUpB12", "box_SwapingArmyMoveB12_13.Play the Father Revive Dialog", "box_OnceOnly_v3_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_24();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|656806311", "656806311", "SwappingArmySetUpB12", "box_SetContextualStrategy_15.Out", "box_TriggerState_v2_24.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_53_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_36();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1212840423", "1212840423", "SwappingArmySetUpB12", "box_SetActivityObjectiveProgress_v2_53.Out", "box_Compare_Integers_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PawnInvincibleState_v2_73_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|774463096", "774463096", "SwappingArmySetUpB12", "box_PawnInvincibleState_v2_73.OnSet", "box_Delay_v5_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_23_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_22();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|404090366", "404090366", "SwappingArmySetUpB12", "box_ActivityObjectiveMarkerModifier_v3_23.Disabled", "box_EndActivityObjective_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_23_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_68();
    l0 = self.box_HealthListener_v6_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|140059633", "140059633", "SwappingArmySetUpB12", "box_ActivityObjectiveMarkerModifier_v3_23.Enabled", "box_HealthListener_v6_68.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_33_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_32();
    l0 = self.box_Delay_v5_33;
    l1 = self.box_PlayDialog_v6_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|689677879", "689677879", "SwappingArmySetUpB12", "box_Delay_v5_33.TimeElapsed", "box_PlayDialog_v6_32.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1668587939", "1668587939", "SwappingArmySetUpB12", "box_EndActivityObjective_v2_22.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OnceOnly_v3_55_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_57();
    l0 = self.box_OnceOnly_v3_55;
    l1 = self.box_PlayDialog_v6_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|666518008", "666518008", "SwappingArmySetUpB12", "box_OnceOnly_v3_55.Out", "box_PlayDialog_v6_57.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_54_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_60();
    l0 = self.box_OnceOnly_v3_54;
    l1 = self.box_PlayDialog_v6_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|96165794", "96165794", "SwappingArmySetUpB12", "box_OnceOnly_v3_54.Out", "box_PlayDialog_v6_60.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetActivityObjectiveProgress_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|430697265", "430697265", "SwappingArmySetUpB12", "box_SetActivityObjectiveProgress_v2_10.Out", "box_OutputOrder_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_56_MemberAdded()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_20();
    l0 = self.box_GroupSizeListener_v5_56;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1902607315", "1902607315", "SwappingArmySetUpB12", "box_GroupSizeListener_v5_56.MemberAdded", "box_IntegerArithmetics_v2_20.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_56_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_21();
    l0 = self.box_GroupSizeListener_v5_56;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1687308055", "1687308055", "SwappingArmySetUpB12", "box_GroupSizeListener_v5_56.MemberRemoved", "box_IntegerArithmetics_v2_21.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_MultipleAND_v2_7;
    l1 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|115766304", "115766304", "SwappingArmySetUpB12", "box_MultipleAND_v2_7.Out", "box_Delay_v5_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_59_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_58();
    l0 = self.box_OnceOnly_v3_59;
    l1 = self.box_PlayDialog_v6_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1076679356", "1076679356", "SwappingArmySetUpB12", "box_OnceOnly_v3_59.Out", "box_PlayDialog_v6_58.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_68_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_23();
    l0 = self.box_HealthListener_v6_68;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|833595976", "833595976", "SwappingArmySetUpB12", "box_HealthListener_v6_68.Killed", "box_ActivityObjectiveMarkerModifier_v3_23.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_16_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_16;
    l1 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|245412116", "245412116", "SwappingArmySetUpB12", "box_ProximityTrigger_v2_16.Disabled", "box_MultipleOR_67.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_16_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_72();
    l0 = self.box_ProximityTrigger_v2_16;
    l1 = self.box_PlayDialog_v6_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|632499367", "632499367", "SwappingArmySetUpB12", "box_ProximityTrigger_v2_16.Enabled", "box_PlayDialog_v6_72.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_16_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_16;
    l1 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1808951186", "1808951186", "SwappingArmySetUpB12", "box_ProximityTrigger_v2_16.Enter", "box_MultipleOR_67.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_70_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_53();
    l0 = self.box_Delay_v5_70;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|12042616", "12042616", "SwappingArmySetUpB12", "box_Delay_v5_70.TimeElapsed", "box_SetActivityObjectiveProgress_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_67_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_15();
    l0 = self.box_MultipleOR_67;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1124941691", "1124941691", "SwappingArmySetUpB12", "box_MultipleOR_67.Out", "box_SetContextualStrategy_15.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SwapingArmyMoveB12_12_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB12_12;
    l1 = self.box_OnceOnly_v3_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|651580820", "651580820", "SwappingArmySetUpB12", "box_SwapingArmyMoveB12_12.Play the Father Revive Dialog", "box_OnceOnly_v3_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SwapingArmyMoveB12_12_Play_the_Player_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB12_12;
    l1 = self.box_OnceOnly_v3_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1647604988", "1647604988", "SwappingArmySetUpB12", "box_SwapingArmyMoveB12_12.Play the Player Revive Dialog", "box_OnceOnly_v3_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_66_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_16();
    l0 = self.box_Delay_v5_66;
    l1 = self.box_ProximityTrigger_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|65818170", "65818170", "SwappingArmySetUpB12", "box_Delay_v5_66.Started", "box_ProximityTrigger_v2_16.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_66_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_16();
    l0 = self.box_Delay_v5_66;
    l1 = self.box_ProximityTrigger_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|2074071041", "2074071041", "SwappingArmySetUpB12", "box_Delay_v5_66.TimeElapsed", "box_ProximityTrigger_v2_16.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_25_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_Delay_v5_25;
    l1 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1914312170", "1914312170", "SwappingArmySetUpB12", "box_Delay_v5_25.Started", "box_Delay_v5_33.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_25_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_35();
    l0 = self.box_Delay_v5_25;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|286159673", "286159673", "SwappingArmySetUpB12", "box_Delay_v5_25.TimeElapsed", "box_EndActivityObjective_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_52_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_51();
    l0 = self.box_OnceOnly_v3_52;
    l1 = self.box_PlayDialog_v6_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|937364833", "937364833", "SwappingArmySetUpB12", "box_OnceOnly_v3_52.Out", "box_PlayDialog_v6_51.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_34_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_23();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|751161004", "751161004", "SwappingArmySetUpB12", "box_AddActivityObjective_v2_34.Out", "box_ActivityObjectiveMarkerModifier_v3_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_49_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_47();
    l0 = self.box_OnceOnly_v3_49;
    l1 = self.box_PlayDialog_v6_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|521612042", "521612042", "SwappingArmySetUpB12", "box_OnceOnly_v3_49.Out", "box_PlayDialog_v6_47.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SwapingArmyMoveB12_2_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB12_2;
    l1 = self.box_OnceOnly_v3_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|56427399", "56427399", "SwappingArmySetUpB12", "box_SwapingArmyMoveB12_2.Play the Father Revive Dialog", "box_OnceOnly_v3_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SwapingArmyMoveB12_2_Play_the_Player_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB12_2;
    l1 = self.box_OnceOnly_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1005603994", "1005603994", "SwappingArmySetUpB12", "box_SwapingArmyMoveB12_2.Play the Player Revive Dialog", "box_OnceOnly_v3_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|@DisableListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|@SpawnLastMoreTimeB12");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_31_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_26()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_39()
    local params;
    DrawTextToScreen("Comment: Nick Rye - Well that was weird!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Nick Rye - Well that was weird!");
    params = {
        -- Group,
        [0] = "2103499351146946753",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4062944867",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|79711190");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_35_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "FATHER_010_B10_ReviveYourFriend",
            id = "688650",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_48()
    local params;
    params = {
        -- Group,
        [0] = "2101853841111661705",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2332147828",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_64()
    local params;
    DrawTextToScreen("Comment: Father - Should be Sound and Ethereal - Your pathetic mob cannot stand before the storm!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Father - Should be Sound and Ethereal - Your pathetic mob cannot stand before the storm!");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2897334127",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|207117866");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
                [3] = self.f_box_OutputOrder_v2_5_Out_3,
                [4] = self.f_box_OutputOrder_v2_5_Out_4,
                [5] = self.f_box_OutputOrder_v2_5_Out_5,
                [6] = self.f_box_OutputOrder_v2_5_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|232681482");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_9_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "FATHER_010_B10_ReviveYourFriend",
            id = "688650",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 7,
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB12_11()
    local params;
    DrawTextToScreen("Comment: Deputy Joey Hudson, the GIRL Shotgun - Uni40", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB12')-- Comment: Deputy Joey Hudson, the GIRL Shotgun - Uni40");
    params = {
        -- Blissriverbanks,
        [0] = "2104080143396920615",
        -- ConvertedParticleSmoke,
        [1] = "2103843129223311377",
        -- CStoUseForGreenGFH,
        [2] = "2103276717463355022",
        -- CStoUseForRedGFH,
        [3] = "2103762624282957240",
        -- GFH,
        [4] = "2101853840574790732",
        -- MarkerWhenRevive,
        [5] = "2102034302452634100",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|312100752");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_20_Out,
    });
    params = {
        -- A,
        [0] = self.FriendsLeftToBringBackB12,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|522446981");
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

function export:OnEnter_box_SetContextualStrategy_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|599413253");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_28_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103801432703557514",
        -- Group,
        [1] = "#0382900D",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|610615682");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_36_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.FriendsLeftToBringBackB12,
        -- B,
        [1] = 7,
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB12_6()
    local params;
    DrawTextToScreen("Comment: Tammy Shotgun - Uni25", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB12')-- Comment: Tammy Shotgun - Uni25");
    params = {
        -- Blissriverbanks,
        [0] = "2104080231240326624",
        -- ConvertedParticleSmoke,
        [1] = "2103996053951886947",
        -- CStoUseForGreenGFH,
        [2] = "2103276717463355022",
        -- CStoUseForRedGFH,
        [3] = "2103607038608157021",
        -- GFH,
        [4] = "2103499353632072050",
        -- MarkerWhenRevive,
        [5] = "2102032892845636692",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_19()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104604604200131861",
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB12_3()
    local params;
    DrawTextToScreen("Comment: NickRye Rifle - Key01", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB12')-- Comment: NickRye Rifle - Key01");
    params = {
        -- Blissriverbanks,
        [0] = "2104080233217940962",
        -- ConvertedParticleSmoke,
        [1] = "2103996056413943397",
        -- CStoUseForGreenGFH,
        [2] = "2103276717463355022",
        -- CStoUseForRedGFH,
        [3] = "2103762643092313599",
        -- GFH,
        [4] = "2103499351146946753",
        -- MarkerWhenRevive,
        [5] = "2102033217071627684",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|743190233");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "FATHER_010_B10_ReviveYourFriend",
            id = "688650",
        },
        -- Progress,
        [1] = self.FriendsLeftToBringBackB12,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB12_14()
    local params;
    DrawTextToScreen("Comment: Sheriff Pistolero - Uni50", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB12')-- Comment: Sheriff Pistolero - Uni50");
    params = {
        -- Blissriverbanks,
        [0] = "2104080156451691828",
        -- ConvertedParticleSmoke,
        [1] = "2103843130326413331",
        -- CStoUseForGreenGFH,
        [2] = "2103276717463355022",
        -- CStoUseForRedGFH,
        [3] = "2103607038608157021",
        -- GFH,
        [4] = "2101853837819132937",
        -- MarkerWhenRevive,
        [5] = "2102034304539300344",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|879022238");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
                [3] = self.f_box_OutputOrder_v2_17_Out_3,
                [4] = self.f_box_OutputOrder_v2_17_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|893952308");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_21_Out,
    });
    params = {
        -- A,
        [0] = self.FriendsLeftToBringBackB12,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|904960315");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_8_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "FATHER_010_B10_ReviveYourFriend",
            id = "688650",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_51()
    local params;
    params = {
        -- Group,
        [0] = "2101853837819132937",
        -- RelevancyTime,
        [1] = 4,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3092287137",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.5,
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB12_13()
    local params;
    DrawTextToScreen("Comment: Deputy Stacy Pratt - THE BOY Shotgun - Uni44", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB12')-- Comment: Deputy Stacy Pratt - THE BOY Shotgun - Uni44");
    params = {
        -- Blissriverbanks,
        [0] = "2104080153614245170",
        -- ConvertedParticleSmoke,
        [1] = "2103843130643083285",
        -- CStoUseForGreenGFH,
        [2] = "2103276717463355022",
        -- CStoUseForRedGFH,
        [3] = "2103762643092313599",
        -- GFH,
        [4] = "2101853841111661705",
        -- MarkerWhenRevive,
        [5] = "2102034299871039984",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1063556338");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_15_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103276717463355022",
        -- Group,
        [1] = "#0382900D",
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1093712128");
    l0:SetConnections({
    });
    params = {
        -- Pawn,
        [0] = "2104604604208520477",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1109546714");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_53_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "FATHER_010_B10_ReviveYourFriend",
            id = "688650",
        },
        -- Progress,
        [1] = self.FriendsLeftToBringBackB12,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1151244372");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleState_v2_73_OnSet,
    });
    params = {
        -- Pawn,
        [0] = "2104604604208520477",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1162166348");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_23_Disabled,
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_23_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2103662798868378270",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "FATHER_010_B10_FightFatherJoseph",
            id = "685113",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_33()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_57()
    local params;
    DrawTextToScreen("Comment: Pastor Jerome (Brainwashed) - Where there is sin there is pain!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Pastor Jerome (Brainwashed) - Where there is sin there is pain!");
    params = {
        -- Group,
        [0] = "2103499353999073660",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "396459038",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1212101114");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_22_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "FATHER_010_B10_FightFatherJoseph",
            id = "685113",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1262825929");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_10_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "FATHER_010_B10_ReviveYourFriend",
            id = "688650",
        },
        -- Progress,
        [1] = self.FriendsLeftToBringBackB12,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_56()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#0382900D",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_40()
    local params;
    DrawTextToScreen("Comment: Mary May - Whoah, what happened?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Mary May - Whoah, what happened?");
    params = {
        -- Group,
        [0] = "2103499349559402513",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1545316404",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_7()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_72()
    local params;
    DrawTextToScreen("Comment: FATHER - I have shown you the light. Help me herd this wayward sheep.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: FATHER - I have shown you the light. Help me herd this wayward sheep.");
    params = {
        -- Group,
        [0] = "2103569162489054120",
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1539185302",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_68()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2104604604208520477",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_62()
    local params;
    DrawTextToScreen("Comment: Mary May (Brainwashed) - Coming for ya, Deputy!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Mary May (Brainwashed) - Coming for ya, Deputy!");
    params = {
        -- Group,
        [0] = "2103499349559402513",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3592634314",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_47()
    local params;
    params = {
        -- Group,
        [0] = "2101853840574790732",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2515946790",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_16()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103773853774796355",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_70()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1574681240");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2103773853774796355",
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB12_12()
    local params;
    DrawTextToScreen("Comment: Pastor Jerome Shotgun - Uni35", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB12')-- Comment: Pastor Jerome Shotgun - Uni35");
    params = {
        -- Blissriverbanks,
        [0] = "2104080227685653980",
        -- ConvertedParticleSmoke,
        [1] = "2103996049533187679",
        -- CStoUseForGreenGFH,
        [2] = "2103276717463355022",
        -- CStoUseForRedGFH,
        [3] = "2103607038608157021",
        -- GFH,
        [4] = "2103499353999073660",
        -- MarkerWhenRevive,
        [5] = "2102500265386054928",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_42()
    local params;
    DrawTextToScreen("Comment: Tammy - You cleared my head of all that bullshit.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Tammy - You cleared my head of all that bullshit.");
    params = {
        -- Group,
        [0] = "2103499353632072050",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4011077490",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_66()
    local params;
    DrawTextToScreen("Comment: After that delay, AIs will advance, either if the player progressed or not", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Delay_v5')-- Comment: After that delay, AIs will advance, either if the player progressed or not");
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_32()
    local params;
    DrawTextToScreen("Comment: Pastor Jerome - We can see clearly now, and it is time for Joseph Seed to fall.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Pastor Jerome - We can see clearly now, and it is time for Joseph Seed to fall.");
    params = {
        -- Group,
        [0] = "2103499353999073660",
        -- RelevancyTime,
        [1] = 4,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2673434040",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_25()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@SwappingArmySetUpB12|1967340070");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_34_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "FATHER_010_B10_FightFatherJoseph",
            id = "685113",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_43()
    local params;
    DrawTextToScreen("Comment: Pastor Jerome - Sorry, Deputy. My thoughts weren't my own.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Pastor Jerome - Sorry, Deputy. My thoughts weren't my own.");
    params = {
        -- Group,
        [0] = "2103499353999073660",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3654086454",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_58()
    local params;
    DrawTextToScreen("Comment: Nick Rye (Brainwashed) - I'm glad I stuck around. You'll be glad, too.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Nick Rye (Brainwashed) - I'm glad I stuck around. You'll be glad, too.");
    params = {
        -- Group,
        [0] = "2103499351146946753",
        -- RelevancyTime,
        [1] = 4,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "410719232",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_60()
    local params;
    DrawTextToScreen("Comment: Tammy (brainwashed) - I can hear the Father's song clearly now.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Tammy (brainwashed) - I can hear the Father's song clearly now.");
    params = {
        -- Group,
        [0] = "2103499353632072050",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2708622917",
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB12_2()
    local params;
    DrawTextToScreen("Comment: Mary May Rifle - Key02", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB12')-- Comment: Mary May Rifle - Key02");
    params = {
        -- Blissriverbanks,
        [0] = "2104080229789097438",
        -- ConvertedParticleSmoke,
        [1] = "2103996052163016289",
        -- CStoUseForGreenGFH,
        [2] = "2103276717463355022",
        -- CStoUseForRedGFH,
        [3] = "2103762624282957240",
        -- GFH,
        [4] = "2103499349559402513",
        -- MarkerWhenRevive,
        [5] = "2102032903981513880",
    };
    return params;
end;

function export:OnExit_box_IntegerArithmetics_v2_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.FriendsLeftToBringBackB12 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.FriendsLeftToBringBackB12 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
