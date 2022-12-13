LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/gfh/mis_570/mis_570_b20.domino
-- User graph: MIS_570_B20_Main
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
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UsableEntityModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._FadeToBlack_Activate.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._FadeToBlack_Deactivate.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2917624363.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2402303491.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1901908958.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1922009540.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1930916043.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3275949889.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1593156813.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2631178829.bnk]], "CSoundResource");
        cboxRes:LoadResource([[36674735.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1521712016.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B20.MIS_570_B20_Main.debug.lua")] = {
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
                name = "ContextualActionIndex",
                type = "int",
            },
            [2] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/HealthModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Damage",
            },
            [1] = {
                name = "Heal",
            },
            [2] = {
                name = "RemoveCritical",
            },
            [3] = {
                name = "Set",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damaged",
                delayed = false,
            },
            [1] = {
                name = "Healed",
                delayed = false,
            },
            [2] = {
                name = "OnRemoveCritical",
                delayed = false,
            },
            [3] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "damageWithStim",
                type = "int",
            },
            [1] = {
                name = "origin",
                type = "entity",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "value",
                type = "int",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/SetFloat_v2.lua")] = {
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
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "Target",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/UsableEntityModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetUnusable",
            },
            [1] = {
                name = "SetUsable",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetUnusable",
                delayed = false,
            },
            [1] = {
                name = "OnSetUsable",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._FadeToBlack_Activate.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "End",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "eLookAtTarget",
                type = "entity",
            },
            [1] = {
                name = "eTeleportDestination",
                type = "entity",
            },
            [2] = {
                name = "eTeleportDestination_Client",
                type = "entity",
            },
            [3] = {
                name = "eVehicleTrigger",
                type = "entity",
            },
            [4] = {
                name = "Load_MissionBlockID",
                type = "missionblock",
            },
            [5] = {
                name = "Load_MissionLayerID",
                type = "missionblocklayer",
            },
            [6] = {
                name = "Player_CantMove",
                type = "bool",
            },
            [7] = {
                name = "Unload_MissionLayerID",
                type = "missionblocklayer",
            },
            [8] = {
                name = "Unload_MissionLayerID_Instant",
                type = "bool",
            },
        },
        dataInCount = 9,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._FadeToBlack_Deactivate.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "End",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "bNeedFadeToBlack",
                type = "bool",
            },
            [1] = {
                name = "bNeedTeleport",
                type = "bool",
            },
            [2] = {
                name = "Player_CanMove",
                type = "bool",
            },
            [3] = {
                name = "Teleport_Destination",
                type = "entity",
            },
            [4] = {
                name = "Unload_MissionBlockID",
                type = "missionblock",
            },
            [5] = {
                name = "Unload_MissionLayerID",
                type = "missionblocklayer",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua")] = {
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
                name = "TargetHit",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "bBreakableMonitor",
                type = "bool",
            },
            [1] = {
                name = "bMoveMonitor",
                type = "bool",
            },
            [2] = {
                name = "bMoveMonitor_Check_XYZ",
                type = "bool",
            },
            [3] = {
                name = "bNeedsObjective",
                type = "bool",
            },
            [4] = {
                name = "bTargetDynamic",
                type = "bool",
            },
            [5] = {
                name = "bTargetDynamic_Need_Up_Down",
                type = "bool",
            },
            [6] = {
                name = "eObjectiveMarker",
                type = "entity",
            },
            [7] = {
                name = "eShootTarget",
                type = "entity",
            },
            [8] = {
                name = "eTargetDynamic",
                type = "entity",
            },
            [9] = {
                name = "eTargetDynamic_PosDOWN",
                type = "entity",
            },
            [10] = {
                name = "eTargetDynamic_PosUP",
                type = "entity",
            },
            [11] = {
                name = "eWoodpole",
                type = "entity",
            },
            [12] = {
                name = "fTargetDynamic_MovingDelay",
                type = "float",
            },
            [13] = {
                name = "fTargetDynamic_WaitingDelay",
                type = "float",
            },
            [14] = {
                name = "sObjective",
                type = "oasis",
            },
        },
        dataInCount = 15,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_570_B20_Main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main";
    self.LocalPlayer = nil;
    self.PlayerGroup = nil;
    self.iProgressID = 1;
    self.iProgressUpdate = 1;
    self.bRND2_T01 = true;
    self.bRND2_T02 = true;
    self.bRND2_T03 = true;
    self.bRND2_T04 = true;
    self.bRND2_T05 = true;
    self.bRND2_T06 = true;
    self.bRND2_T07 = true;
    self.bRND2_T08 = true;
    self.bRND2_T09 = true;
    self.bRND2_T10 = true;
    self.fTargetDynamic_MovingDelay = 0;
    self.eNana = nil;
    self.box__TargetManager_v2_80 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|41388732");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_80_TargetHit,
    });
    self.box_MultipleOR_145 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|58628271");
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
        [0] = self.f_box_MultipleOR_145_Out,
    });
    self.box_MultipleAND_v2_123 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|72616526");
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
        [0] = self.f_box_MultipleAND_v2_123_Out,
    });
    self.box_CharacterLoadedIdListener_v2_15 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|120496339");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_15_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_15_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_15_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_15_LoadedIdReceived,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|122635796");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box__FadeToBlack_Activate_13 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._FadeToBlack_Activate.debug.lua");
    l0 = self.box__FadeToBlack_Activate_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__FadeToBlack_Activate_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|136826259");
    l0:SetConnections({
        -- End,
        [0] = self.f_box__FadeToBlack_Activate_13_End,
    });
    self.box_SoundModifier_v2_136 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|139474377");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_45 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|141459249");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_45_TargetHit,
    });
    self.box_SoundModifier_v2_97 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|146257095");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_142 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|166178658");
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
                [0] = self.f_box_OnceOnly_v3_142_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|234022759");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 10,
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
        [0] = self.f_box_MultipleOR_48_Out,
    });
    self.box__TargetManager_v2_59 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|307041603");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_59_TargetHit,
    });
    self.box_PlayDialog_v6_133 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|348037239");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_133_Started,
    });
    self.box_SoundModifier_v2_96 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|400621150");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_84 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|443161543");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_84_TargetHit,
    });
    self.box_PlayDialog_v6_129 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|448112580");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_85 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|492250390");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_85_TargetHit,
    });
    self.box__TargetManager_v2_63 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|669475983");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_63_TargetHit,
    });
    self.box_Delay_v5_37 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|670692411");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_37_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_37_TimeElapsed,
    });
    self.box_SoundModifier_v2_94 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|807672518");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_v2_41 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|811148033");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_41_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_41_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_41_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_41_LoadedIdReceived,
    });
    self.box__TargetManager_v2_52 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|842307574");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_52_TargetHit,
    });
    self.box__TargetManager_v2_55 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|866787413");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_55_TargetHit,
    });
    self.box_SoundModifier_v2_138 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|901938078");
    l0:SetConnections({
    });
    self.box_Delay_v5_139 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|904272885");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_139_TimeElapsed,
    });
    self.box__TargetManager_v2_65 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1018609626");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_65_TargetHit,
    });
    self.box__TargetManager_v2_50 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1034662124");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_50_TargetHit,
    });
    self.box__TargetManager_v2_82 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1057889982");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_82_TargetHit,
    });
    self.box_PlayDialog_v6_134 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1063612220");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_120 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1244247067");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_120_Downed,
    });
    self.box_SoundModifier_v2_141 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1329027938");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_87 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1339551069");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_35 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1352792667");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_81 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1394646146");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_81_TargetHit,
    });
    self.box_Reach_GoTo_v3_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1412147112");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_1_Success,
    });
    self.box__TargetManager_v2_62 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1482913339");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_62_TargetHit,
    });
    self.box_SoundModifier_v2_93 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1492738844");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_95 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1494597472");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_56 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1530863054");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_56_TargetHit,
    });
    self.box_ActivityInitialized_8 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1571309724");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_8_Out,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1658839333");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 10,
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
    self.box_ProximityTrigger_v3_125 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1707599645");
    l0:SetConnections({
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_125_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_125_OnOccupied,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1737640626");
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
    self.box_PlayDialog_v6_132 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1769407920");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_91 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1791179108");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_91_TargetHit,
    });
    self.box_Delay_v5_140 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1835524385");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_140_TimeElapsed,
    });
    self.box_SoundModifier_v2_92 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1838542971");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_86 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1843106495");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_44 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1899790212");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_83 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1932862573");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_83_TargetHit,
    });
    self.box__TargetManager_v2_67 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1936259563");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_67_TargetHit,
    });
    self.box__TargetManager_v2_90 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1941858172");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_90_TargetHit,
    });
    self.box_SoundModifier_v2_89 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1948789703");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_135 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1972101165");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_43 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1990560179");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_43_TargetHit,
    });
    self.box_UniversalInteractionModifier_v2_12 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1998123278");
    l0:SetConnections({
    });
    self.box__FadeToBlack_Deactivate_28 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._FadeToBlack_Deactivate.debug.lua");
    l0 = self.box__FadeToBlack_Deactivate_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__FadeToBlack_Deactivate_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2029029294");
    l0:SetConnections({
        -- End,
        [0] = self.f_box__FadeToBlack_Deactivate_28_End,
    });
    self.box__TargetManager_v2_88 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2041156657");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_88_TargetHit,
    });
    self.box_Delay_v5_144 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2104498166");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_144_TimeElapsed,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|5635534", "5635534", "MIS_570_B20_Main", "In", "box_ActivityAcknowledgeGate_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|598003235", "598003235", "MIS_570_B20_Main", "OnLeaveZone", "box_ActivityRetry_v2_10.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_138();
    l0 = self.box_SoundModifier_v2_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|316332703", "316332703", "MIS_570_B20_Main", "box_Simple_Node_30.Out", "box_SoundModifier_v2_138.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_140();
    l0 = self.box_Delay_v5_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|891875067", "891875067", "MIS_570_B20_Main", "box_Simple_Node_30.Out", "box_Delay_v5_140.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_139();
    l0 = self.box_Delay_v5_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2023100863", "2023100863", "MIS_570_B20_Main", "box_Simple_Node_30.Out", "box_Delay_v5_139.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1143955067", "1143955067", "MIS_570_B20_Main", "box_Simple_Node_30.Out", "box_Delay_v5_37.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_103_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_86();
    l0 = self.box_SoundModifier_v2_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|233986181", "233986181", "MIS_570_B20_Main", "box_Simple_Node_103.Out", "box_SoundModifier_v2_86.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_112_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_97();
    l0 = self.box_SoundModifier_v2_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1326196752", "1326196752", "MIS_570_B20_Main", "box_Simple_Node_112.Out", "box_SoundModifier_v2_97.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_104_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_89();
    l0 = self.box_SoundModifier_v2_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1337352584", "1337352584", "MIS_570_B20_Main", "box_Simple_Node_104.Out", "box_SoundModifier_v2_89.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_105_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_87();
    l0 = self.box_SoundModifier_v2_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1922843802", "1922843802", "MIS_570_B20_Main", "box_Simple_Node_105.Out", "box_SoundModifier_v2_87.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_106_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_44();
    l0 = self.box_SoundModifier_v2_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1782419621", "1782419621", "MIS_570_B20_Main", "box_Simple_Node_106.Out", "box_SoundModifier_v2_44.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_107_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_92();
    l0 = self.box_SoundModifier_v2_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1583537271", "1583537271", "MIS_570_B20_Main", "box_Simple_Node_107.Out", "box_SoundModifier_v2_92.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_108_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_93();
    l0 = self.box_SoundModifier_v2_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1913804476", "1913804476", "MIS_570_B20_Main", "box_Simple_Node_108.Out", "box_SoundModifier_v2_93.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_109_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_94();
    l0 = self.box_SoundModifier_v2_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|717197691", "717197691", "MIS_570_B20_Main", "box_Simple_Node_109.Out", "box_SoundModifier_v2_94.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_110_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_95();
    l0 = self.box_SoundModifier_v2_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1047464896", "1047464896", "MIS_570_B20_Main", "box_Simple_Node_110.Out", "box_SoundModifier_v2_95.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_111_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_96();
    l0 = self.box_SoundModifier_v2_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|995929547", "995929547", "MIS_570_B20_Main", "box_Simple_Node_111.Out", "box_SoundModifier_v2_96.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_119_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UsableEntityModifier_v2_117();
    l0 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1945587840", "1945587840", "MIS_570_B20_Main", "box_Simple_Node_119.Out", "box_UsableEntityModifier_v2_117.SetUsable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUsable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_148_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_139();
    l0 = self.box_Delay_v5_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1225752407", "1225752407", "MIS_570_B20_Main", "box_Simple_Node_148.Out", "box_Delay_v5_139.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_Delay_v5_140();
    l0 = self.box_Delay_v5_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|284369635", "284369635", "MIS_570_B20_Main", "box_Simple_Node_148.Out", "box_Delay_v5_140.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_123();
    l0 = self.box_MultipleAND_v2_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1665494382", "1665494382", "MIS_570_B20_Main", "box_Simple_Node_61.Out", "box_MultipleAND_v2_123.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1043639202", "1043639202", "MIS_570_B20_Main", "box_Simple_Node_61.Out", "box_OutputOrder_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_128_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_125();
    l0 = self.box_ProximityTrigger_v3_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1923012569", "1923012569", "MIS_570_B20_Main", "box_Simple_Node_128.Out", "box_ProximityTrigger_v3_125.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_AddActivityObjectiveProgress_v2_24_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_23();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1953859619", "1953859619", "MIS_570_B20_Main", "box_AddActivityObjectiveProgress_v2_24.Out", "box_SetActivityObjectiveProgress_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_80_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_114();
    l0 = self.box__TargetManager_v2_80;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1891738212", "1891738212", "MIS_570_B20_Main", "box__TargetManager_v2_80.TargetHit", "box_OutputOrder_v2_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_71_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_90();
    l0 = self.box__TargetManager_v2_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|333854057", "333854057", "MIS_570_B20_Main", "box_Compare_Boolean_71.A_is_True", "box__TargetManager_v2_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_145_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_145;
    l1 = self.box_OnceOnly_v3_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|820584138", "820584138", "MIS_570_B20_Main", "box_MultipleOR_145.Out", "box_OnceOnly_v3_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_123_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_24();
    l0 = self.box_MultipleAND_v2_123;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1421544739", "1421544739", "MIS_570_B20_Main", "box_MultipleAND_v2_123.Out", "box_AddActivityObjectiveProgress_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_137_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1617503815", "1617503815", "MIS_570_B20_Main", "box_OutputOrder_v2_137.Out", "box_Delay_v5_37.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_137_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_148();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|292977689", "292977689", "MIS_570_B20_Main", "box_OutputOrder_v2_137.Out", "box_Simple_Node_148.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_78_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_84();
    l0 = self.box__TargetManager_v2_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|37614641", "37614641", "MIS_570_B20_Main", "box_Compare_Boolean_78.A_is_True", "box__TargetManager_v2_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_15_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_15_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_126();
    l0 = self.box_CharacterLoadedIdListener_v2_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2029009593", "2029009593", "MIS_570_B20_Main", "box_CharacterLoadedIdListener_v2_15.LoadedIdReceived", "box_OutputOrder_v2_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1381303648", "1381303648", "MIS_570_B20_Main", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1937184443", "1937184443", "MIS_570_B20_Main", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box__FadeToBlack_Activate_13_End()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_127();
    l0 = self.box__FadeToBlack_Activate_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|547821796", "547821796", "MIS_570_B20_Main", "box__FadeToBlack_Activate_13.End", "box_OutputOrder_v2_127.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_45_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_46();
    l0 = self.box__TargetManager_v2_45;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|239373884", "239373884", "MIS_570_B20_Main", "box__TargetManager_v2_45.TargetHit", "box_SetBoolean_v2_46.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_79_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_85();
    l0 = self.box__TargetManager_v2_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1077212222", "1077212222", "MIS_570_B20_Main", "box_Compare_Boolean_79.A_is_True", "box__TargetManager_v2_85.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_142_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_27();
    l0 = self.box_OnceOnly_v3_142;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1157173844", "1157173844", "MIS_570_B20_Main", "box_OnceOnly_v3_142.Out", "box_ActivityRetry_v2_27.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_121();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|500905447", "500905447", "MIS_570_B20_Main", "box_EndActivityObjective_v2_26.Out", "box_EndActivityObjective_v2_121.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_41();
    l0 = self.box_CharacterLoadedIdListener_v2_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|291616273", "291616273", "MIS_570_B20_Main", "box_OutputOrder_v2_40.Out", "box_CharacterLoadedIdListener_v2_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = self.box_MultipleOR_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1064721319", "1064721319", "MIS_570_B20_Main", "box_MultipleOR_48.Out", "box_OutputOrder_v2_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_18_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_18_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1270752912", "1270752912", "MIS_570_B20_Main", "box_IntegerArithmetics_v2_18.Out", "box_SetActivityObjectiveProgress_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_59_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_58();
    l0 = self.box__TargetManager_v2_59;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1605055233", "1605055233", "MIS_570_B20_Main", "box__TargetManager_v2_59.TargetHit", "box_SetBoolean_v2_58.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_26();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1093540506", "1093540506", "MIS_570_B20_Main", "box_OutputOrder_v2_29.Out", "box_EndActivityObjective_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_30();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|949949430", "949949430", "MIS_570_B20_Main", "box_OutputOrder_v2_29.Out", "box_Simple_Node_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_2_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_130();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|962705800", "962705800", "MIS_570_B20_Main", "box_Compare_Integers_2.A_eq_B", "box_OutputOrder_v2_130.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_2_A_ne_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_131();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1963089323", "1963089323", "MIS_570_B20_Main", "box_Compare_Integers_2.A_ne_B", "box_Compare_Integers_131.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_133_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_133;
    l1 = self.box_MultipleOR_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|647012469", "647012469", "MIS_570_B20_Main", "box_PlayDialog_v6_133.Started", "box_MultipleOR_145.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box__TargetManager_v2_84_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_100();
    l0 = self.box__TargetManager_v2_84;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1790761712", "1790761712", "MIS_570_B20_Main", "box__TargetManager_v2_84.TargetHit", "box_OutputOrder_v2_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_2();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1268181642", "1268181642", "MIS_570_B20_Main", "box_SetActivityObjectiveProgress_v2_19.Out", "box_Compare_Integers_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_85_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = self.box__TargetManager_v2_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1920574558", "1920574558", "MIS_570_B20_Main", "box__TargetManager_v2_85.TargetHit", "box_OutputOrder_v2_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_122();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|305732764", "305732764", "MIS_570_B20_Main", "box_OutputOrder_v2_127.Out", "box_OutputOrder_v2_122.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_128();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1091273823", "1091273823", "MIS_570_B20_Main", "box_OutputOrder_v2_127.Out", "box_Simple_Node_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_134();
    l0 = self.box_PlayDialog_v6_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1110906077", "1110906077", "MIS_570_B20_Main", "box_OutputOrder_v2_127.Out", "box_PlayDialog_v6_134.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1286144572", "1286144572", "MIS_570_B20_Main", "box_OutputOrder_v2_102.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_109();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1330216066", "1330216066", "MIS_570_B20_Main", "box_OutputOrder_v2_102.Out", "box_Simple_Node_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|973333142", "973333142", "MIS_570_B20_Main", "box_OutputOrder_v2_101.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_101_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_103();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|323994139", "323994139", "MIS_570_B20_Main", "box_OutputOrder_v2_101.Out", "box_Simple_Node_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1729236830", "1729236830", "MIS_570_B20_Main", "box_AddActivityObjective_v2_33.Out", "box_OutputOrder_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_51_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_51_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|38282771", "38282771", "MIS_570_B20_Main", "box_SetBoolean_v2_51.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|10143045", "10143045", "MIS_570_B20_Main", "box_OutputOrder_v2_32.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_110();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|905727338", "905727338", "MIS_570_B20_Main", "box_OutputOrder_v2_32.Out", "box_Simple_Node_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_34();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|663218211", "663218211", "MIS_570_B20_Main", "box_OutputOrder_v2_47.Out", "box_EndActivityObjective_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_61();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|579303806", "579303806", "MIS_570_B20_Main", "box_OutputOrder_v2_47.Out", "box_Simple_Node_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_135();
    l0 = self.box_PlayDialog_v6_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1638717107", "1638717107", "MIS_570_B20_Main", "box_OutputOrder_v2_47.Out", "box_PlayDialog_v6_135.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_137();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|657280169", "657280169", "MIS_570_B20_Main", "box_AddActivityObjective_v2_36.Out", "box_OutputOrder_v2_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_63_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_68();
    l0 = self.box__TargetManager_v2_63;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|38543141", "38543141", "MIS_570_B20_Main", "box__TargetManager_v2_63.TargetHit", "box_SetBoolean_v2_68.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_37_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_Delay_v5_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|661821198", "661821198", "MIS_570_B20_Main", "box_Delay_v5_37.Started", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_37_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_143();
    l0 = self.box_Delay_v5_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|275158769", "275158769", "MIS_570_B20_Main", "box_Delay_v5_37.TimeElapsed", "box_OutputOrder_v2_143.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_69_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_69_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1467228603", "1467228603", "MIS_570_B20_Main", "box_SetBoolean_v2_69.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_UseContextualActionModifier_v3_16_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_16();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|304671291", "304671291", "MIS_570_B20_Main", "box_UseContextualActionModifier_v3_16.Enabled", "box_UseContextualActionModifier_v3_16.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_100_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|155541653", "155541653", "MIS_570_B20_Main", "box_OutputOrder_v2_100.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_OutputOrder_v2_100_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_111();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|687417445", "687417445", "MIS_570_B20_Main", "box_OutputOrder_v2_100.Out", "box_Simple_Node_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|694079519", "694079519", "MIS_570_B20_Main", "box_EndActivityObjective_v2_11.Out", "box_OutputOrder_v2_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_41_LoadedIdReceived()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_42();
    l0 = self.box_CharacterLoadedIdListener_v2_41;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|859819829", "859819829", "MIS_570_B20_Main", "box_CharacterLoadedIdListener_v2_41.LoadedIdReceived", "box_UseContextualActionModifier_v3_42.CallInterrupt", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallInterrupt
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_99_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|232988002", "232988002", "MIS_570_B20_Main", "box_OutputOrder_v2_99.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_112();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|956002251", "956002251", "MIS_570_B20_Main", "box_OutputOrder_v2_99.Out", "box_Simple_Node_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_52_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_54();
    l0 = self.box__TargetManager_v2_52;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|876568564", "876568564", "MIS_570_B20_Main", "box__TargetManager_v2_52.TargetHit", "box_SetBoolean_v2_54.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_34_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_36();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|786115120", "786115120", "MIS_570_B20_Main", "box_EndActivityObjective_v2_34.Out", "box_AddActivityObjective_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_55_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_60();
    l0 = self.box__TargetManager_v2_55;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|94598153", "94598153", "MIS_570_B20_Main", "box__TargetManager_v2_55.TargetHit", "box_SetBoolean_v2_60.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_130_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1307945328", "1307945328", "MIS_570_B20_Main", "box_OutputOrder_v2_130.Out", "box_OutputOrder_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_130_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_129();
    l0 = self.box_PlayDialog_v6_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1429420105", "1429420105", "MIS_570_B20_Main", "box_OutputOrder_v2_130.Out", "box_PlayDialog_v6_129.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_139_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_141();
    l0 = self.box_Delay_v5_139;
    l1 = self.box_SoundModifier_v2_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|134279036", "134279036", "MIS_570_B20_Main", "box_Delay_v5_139.TimeElapsed", "box_SoundModifier_v2_141.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_66_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_66_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1420835794", "1420835794", "MIS_570_B20_Main", "box_SetBoolean_v2_66.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_Compare_Boolean_77_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_83();
    l0 = self.box__TargetManager_v2_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1826803577", "1826803577", "MIS_570_B20_Main", "box_Compare_Boolean_77.A_is_True", "box__TargetManager_v2_83.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_76_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_82();
    l0 = self.box__TargetManager_v2_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1311667775", "1311667775", "MIS_570_B20_Main", "box_Compare_Boolean_76.A_is_True", "box__TargetManager_v2_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_58_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_58_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1748076965", "1748076965", "MIS_570_B20_Main", "box_SetBoolean_v2_58.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OutputOrder_v2_143_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_144();
    l0 = self.box_Delay_v5_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|750753089", "750753089", "MIS_570_B20_Main", "box_OutputOrder_v2_143.Out", "box_Delay_v5_144.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_143_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_133();
    l0 = self.box_PlayDialog_v6_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2894969", "2894969", "MIS_570_B20_Main", "box_OutputOrder_v2_143.Out", "box_PlayDialog_v6_133.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box__TargetManager_v2_65_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_69();
    l0 = self.box__TargetManager_v2_65;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1563013974", "1563013974", "MIS_570_B20_Main", "box__TargetManager_v2_65.TargetHit", "box_SetBoolean_v2_69.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_50_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_51();
    l0 = self.box__TargetManager_v2_50;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1190250746", "1190250746", "MIS_570_B20_Main", "box__TargetManager_v2_50.TargetHit", "box_SetBoolean_v2_51.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_82_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = self.box__TargetManager_v2_82;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|469827973", "469827973", "MIS_570_B20_Main", "box__TargetManager_v2_82.TargetHit", "box_OutputOrder_v2_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_74_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_80();
    l0 = self.box__TargetManager_v2_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1943097038", "1943097038", "MIS_570_B20_Main", "box_Compare_Boolean_74.A_is_True", "box__TargetManager_v2_80.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_70_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_88();
    l0 = self.box__TargetManager_v2_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1470015504", "1470015504", "MIS_570_B20_Main", "box_Compare_Boolean_70.A_is_True", "box__TargetManager_v2_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_116_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|512758723", "512758723", "MIS_570_B20_Main", "box_OutputOrder_v2_116.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_116_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_106();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|499219964", "499219964", "MIS_570_B20_Main", "box_OutputOrder_v2_116.Out", "box_Simple_Node_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__FadeToBlack_Activate_13();
    l0 = self.box__FadeToBlack_Activate_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1918259596", "1918259596", "MIS_570_B20_Main", "box_OutputOrder_v2_38.Out", "box__FadeToBlack_Activate_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_35();
    l0 = self.box_SoundModifier_v2_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1069037674", "1069037674", "MIS_570_B20_Main", "box_OutputOrder_v2_38.Out", "box_SoundModifier_v2_35.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_113();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|423423263", "423423263", "MIS_570_B20_Main", "box_OutputOrder_v2_38.Out", "box_Simple_Node_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UsableEntityModifier_v2_117();
    l0 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|107357273", "107357273", "MIS_570_B20_Main", "box_OutputOrder_v2_38.Out", "box_UsableEntityModifier_v2_117.SetUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2040435671", "2040435671", "MIS_570_B20_Main", "box_OutputOrder_v2_21.Out", "box_OutputOrder_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1607564725", "1607564725", "MIS_570_B20_Main", "box_OutputOrder_v2_21.Out", "box_OutputOrder_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_115_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|601192791", "601192791", "MIS_570_B20_Main", "box_OutputOrder_v2_115.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_115_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_104();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|43000335", "43000335", "MIS_570_B20_Main", "box_OutputOrder_v2_115.Out", "box_Simple_Node_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_120_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_124();
    l0 = self.box_HealthListener_v6_120;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|500030908", "500030908", "MIS_570_B20_Main", "box_HealthListener_v6_120.Downed", "box_HealthModifier_v2_124.RemoveCritical", l0:GetLuaBox(), l1:GetLuaBox());
    -- RemoveCritical
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_131_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_132();
    l0 = self.box_PlayDialog_v6_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|462165109", "462165109", "MIS_570_B20_Main", "box_Compare_Integers_131.A_eq_B", "box_PlayDialog_v6_132.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_73_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_43();
    l0 = self.box__TargetManager_v2_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|506696070", "506696070", "MIS_570_B20_Main", "box_Compare_Boolean_73.A_is_True", "box__TargetManager_v2_43.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_7_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_5();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|201207067", "201207067", "MIS_570_B20_Main", "box_GetLocalPlayer_v2_7.Out", "box_GetPlayerGroup_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_64_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_64_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|832773306", "832773306", "MIS_570_B20_Main", "box_SetBoolean_v2_64.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 7);
end;

function export:f_box__TargetManager_v2_81_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box__TargetManager_v2_81;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|475975363", "475975363", "MIS_570_B20_Main", "box__TargetManager_v2_81.TargetHit", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_123();
    l0 = self.box_MultipleAND_v2_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1639415269", "1639415269", "MIS_570_B20_Main", "box_AddActivityObjective_v2_14.Out", "box_MultipleAND_v2_123.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|26105191", "26105191", "MIS_570_B20_Main", "box_OutputOrder_v2_22.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_108();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|337319998", "337319998", "MIS_570_B20_Main", "box_OutputOrder_v2_22.Out", "box_Simple_Node_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_1_Success()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_11();
    l0 = self.box_Reach_GoTo_v3_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|466658913", "466658913", "MIS_570_B20_Main", "box_Reach_GoTo_v3_1.Success", "box_EndActivityObjective_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_114_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1840750363", "1840750363", "MIS_570_B20_Main", "box_OutputOrder_v2_114.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OutputOrder_v2_114_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_107();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1005221333", "1005221333", "MIS_570_B20_Main", "box_OutputOrder_v2_114.Out", "box_Simple_Node_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_62_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_64();
    l0 = self.box__TargetManager_v2_62;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1129844184", "1129844184", "MIS_570_B20_Main", "box__TargetManager_v2_62.TargetHit", "box_SetBoolean_v2_64.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_122_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_33();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|529689287", "529689287", "MIS_570_B20_Main", "box_OutputOrder_v2_122.Out", "box_AddActivityObjective_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_122_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_14();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|69621242", "69621242", "MIS_570_B20_Main", "box_OutputOrder_v2_122.Out", "box_AddActivityObjective_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_98_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1938678521", "1938678521", "MIS_570_B20_Main", "box_OutputOrder_v2_98.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_98_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_105();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1304481209", "1304481209", "MIS_570_B20_Main", "box_OutputOrder_v2_98.Out", "box_Simple_Node_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_56_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_57();
    l0 = self.box__TargetManager_v2_56;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2045147843", "2045147843", "MIS_570_B20_Main", "box__TargetManager_v2_56.TargetHit", "box_SetBoolean_v2_57.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_7();
    l0 = self.box_ActivityInitialized_8;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1161647777", "1161647777", "MIS_570_B20_Main", "box_ActivityInitialized_8.Out", "box_GetLocalPlayer_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_118_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__FadeToBlack_Deactivate_28();
    l0 = self.box__FadeToBlack_Deactivate_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2021047020", "2021047020", "MIS_570_B20_Main", "box_OutputOrder_v2_118.Out", "box__FadeToBlack_Deactivate_28.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_118_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_119();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1287349882", "1287349882", "MIS_570_B20_Main", "box_OutputOrder_v2_118.Out", "box_Simple_Node_119.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_60_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_60_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1038578476", "1038578476", "MIS_570_B20_Main", "box_SetBoolean_v2_60.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_GetPlayerGroup_v2_5_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|353936364", "353936364", "MIS_570_B20_Main", "box_GetPlayerGroup_v2_5.Out", "box_OutputOrder_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_18();
    l0 = self.box_MultipleOR_9;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|151147892", "151147892", "MIS_570_B20_Main", "box_MultipleOR_9.Out", "box_IntegerArithmetics_v2_18.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_125_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_120();
    l0 = self.box_ProximityTrigger_v3_125;
    l1 = self.box_HealthListener_v6_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1225399312", "1225399312", "MIS_570_B20_Main", "box_ProximityTrigger_v3_125.OnEmpty", "box_HealthListener_v6_120.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_125_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_120();
    l0 = self.box_ProximityTrigger_v3_125;
    l1 = self.box_HealthListener_v6_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1068622810", "1068622810", "MIS_570_B20_Main", "box_ProximityTrigger_v3_125.OnOccupied", "box_HealthListener_v6_120.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_121_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_118();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1676743772", "1676743772", "MIS_570_B20_Main", "box_EndActivityObjective_v2_121.Out", "box_OutputOrder_v2_118.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|135895836", "135895836", "MIS_570_B20_Main", "box_MultipleOR_6.Out", "box_ActivityInitialized_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_UseContextualActionModifier_v3_42_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_39();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|967696841", "967696841", "MIS_570_B20_Main", "box_UseContextualActionModifier_v3_42.Disabled", "box_UseContextualActionModifier_v3_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_42_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_42();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|838715143", "838715143", "MIS_570_B20_Main", "box_UseContextualActionModifier_v3_42.InterruptCalled", "box_UseContextualActionModifier_v3_42.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_31();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|222807713", "222807713", "MIS_570_B20_Main", "box_OutputOrder_v2_25.Out", "box_SetFloat_v2_31.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_68_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_68_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1200393994", "1200393994", "MIS_570_B20_Main", "box_SetBoolean_v2_68.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 8);
end;

function export:f_box__TargetManager_v2_91_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_98();
    l0 = self.box__TargetManager_v2_91;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|105318107", "105318107", "MIS_570_B20_Main", "box__TargetManager_v2_91.TargetHit", "box_OutputOrder_v2_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_45();
    l0 = self.box__TargetManager_v2_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1460644219", "1460644219", "MIS_570_B20_Main", "box_OutputOrder_v2_53.Out", "box__TargetManager_v2_45.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_50();
    l0 = self.box__TargetManager_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|477024617", "477024617", "MIS_570_B20_Main", "box_OutputOrder_v2_53.Out", "box__TargetManager_v2_50.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_52();
    l0 = self.box__TargetManager_v2_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1903308099", "1903308099", "MIS_570_B20_Main", "box_OutputOrder_v2_53.Out", "box__TargetManager_v2_52.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_56();
    l0 = self.box__TargetManager_v2_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|339990154", "339990154", "MIS_570_B20_Main", "box_OutputOrder_v2_53.Out", "box__TargetManager_v2_56.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_59();
    l0 = self.box__TargetManager_v2_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1635147974", "1635147974", "MIS_570_B20_Main", "box_OutputOrder_v2_53.Out", "box__TargetManager_v2_59.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_55();
    l0 = self.box__TargetManager_v2_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1085061846", "1085061846", "MIS_570_B20_Main", "box_OutputOrder_v2_53.Out", "box__TargetManager_v2_55.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_65();
    l0 = self.box__TargetManager_v2_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1475229064", "1475229064", "MIS_570_B20_Main", "box_OutputOrder_v2_53.Out", "box__TargetManager_v2_65.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_62();
    l0 = self.box__TargetManager_v2_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|810174991", "810174991", "MIS_570_B20_Main", "box_OutputOrder_v2_53.Out", "box__TargetManager_v2_62.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_63();
    l0 = self.box__TargetManager_v2_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|182642514", "182642514", "MIS_570_B20_Main", "box_OutputOrder_v2_53.Out", "box__TargetManager_v2_63.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_67();
    l0 = self.box__TargetManager_v2_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|288116369", "288116369", "MIS_570_B20_Main", "box_OutputOrder_v2_53.Out", "box__TargetManager_v2_67.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_46_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_46_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1869512966", "1869512966", "MIS_570_B20_Main", "box_SetBoolean_v2_46.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_140_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_136();
    l0 = self.box_Delay_v5_140;
    l1 = self.box_SoundModifier_v2_136;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1463542781", "1463542781", "MIS_570_B20_Main", "box_Delay_v5_140.TimeElapsed", "box_SoundModifier_v2_136.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_1();
    l0 = self.box_Reach_GoTo_v3_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1484822390", "1484822390", "MIS_570_B20_Main", "box_OutputOrder_v2_17.Out", "box_Reach_GoTo_v3_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_15();
    l0 = self.box_CharacterLoadedIdListener_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|935930451", "935930451", "MIS_570_B20_Main", "box_OutputOrder_v2_17.Out", "box_CharacterLoadedIdListener_v2_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UsableEntityModifier_v2_117_OnSetUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_12();
    l0 = self.box_UniversalInteractionModifier_v2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2034476672", "2034476672", "MIS_570_B20_Main", "box_UsableEntityModifier_v2_117.OnSetUnusable", "box_UniversalInteractionModifier_v2_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_UsableEntityModifier_v2_117_OnSetUsable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_12();
    l0 = self.box_UniversalInteractionModifier_v2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1168137092", "1168137092", "MIS_570_B20_Main", "box_UsableEntityModifier_v2_117.OnSetUsable", "box_UniversalInteractionModifier_v2_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_70();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1953500907", "1953500907", "MIS_570_B20_Main", "box_OutputOrder_v2_20.Out", "box_Compare_Boolean_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_71();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|169286398", "169286398", "MIS_570_B20_Main", "box_OutputOrder_v2_20.Out", "box_Compare_Boolean_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_72();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|155272645", "155272645", "MIS_570_B20_Main", "box_OutputOrder_v2_20.Out", "box_Compare_Boolean_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_73();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|293748433", "293748433", "MIS_570_B20_Main", "box_OutputOrder_v2_20.Out", "box_Compare_Boolean_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_74();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1711615985", "1711615985", "MIS_570_B20_Main", "box_OutputOrder_v2_20.Out", "box_Compare_Boolean_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_75();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|732879730", "732879730", "MIS_570_B20_Main", "box_OutputOrder_v2_20.Out", "box_Compare_Boolean_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_76();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2444668", "2444668", "MIS_570_B20_Main", "box_OutputOrder_v2_20.Out", "box_Compare_Boolean_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_77();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1672314109", "1672314109", "MIS_570_B20_Main", "box_OutputOrder_v2_20.Out", "box_Compare_Boolean_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_78();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1630272850", "1630272850", "MIS_570_B20_Main", "box_OutputOrder_v2_20.Out", "box_Compare_Boolean_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_79();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1133709240", "1133709240", "MIS_570_B20_Main", "box_OutputOrder_v2_20.Out", "box_Compare_Boolean_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_75_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_81();
    l0 = self.box__TargetManager_v2_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1435052169", "1435052169", "MIS_570_B20_Main", "box_Compare_Boolean_75.A_is_True", "box__TargetManager_v2_81.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetFloat_v2_31_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_31_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|328659983", "328659983", "MIS_570_B20_Main", "box_SetFloat_v2_31.Out", "box_OutputOrder_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_83_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box__TargetManager_v2_83;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|82573947", "82573947", "MIS_570_B20_Main", "box__TargetManager_v2_83.TargetHit", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_67_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_66();
    l0 = self.box__TargetManager_v2_67;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|218892075", "218892075", "MIS_570_B20_Main", "box__TargetManager_v2_67.TargetHit", "box_SetBoolean_v2_66.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_57_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_57_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|340522470", "340522470", "MIS_570_B20_Main", "box_SetBoolean_v2_57.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box__TargetManager_v2_90_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_115();
    l0 = self.box__TargetManager_v2_90;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2129136298", "2129136298", "MIS_570_B20_Main", "box__TargetManager_v2_90.TargetHit", "box_OutputOrder_v2_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_45();
    l0 = self.box__TargetManager_v2_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|582329840", "582329840", "MIS_570_B20_Main", "box_OutputOrder_v2_49.Out", "box__TargetManager_v2_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_50();
    l0 = self.box__TargetManager_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1770890574", "1770890574", "MIS_570_B20_Main", "box_OutputOrder_v2_49.Out", "box__TargetManager_v2_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_52();
    l0 = self.box__TargetManager_v2_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|504792930", "504792930", "MIS_570_B20_Main", "box_OutputOrder_v2_49.Out", "box__TargetManager_v2_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_56();
    l0 = self.box__TargetManager_v2_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1476645141", "1476645141", "MIS_570_B20_Main", "box_OutputOrder_v2_49.Out", "box__TargetManager_v2_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_59();
    l0 = self.box__TargetManager_v2_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1619640592", "1619640592", "MIS_570_B20_Main", "box_OutputOrder_v2_49.Out", "box__TargetManager_v2_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_55();
    l0 = self.box__TargetManager_v2_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|947663699", "947663699", "MIS_570_B20_Main", "box_OutputOrder_v2_49.Out", "box__TargetManager_v2_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_65();
    l0 = self.box__TargetManager_v2_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1995339293", "1995339293", "MIS_570_B20_Main", "box_OutputOrder_v2_49.Out", "box__TargetManager_v2_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_62();
    l0 = self.box__TargetManager_v2_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1906450461", "1906450461", "MIS_570_B20_Main", "box_OutputOrder_v2_49.Out", "box__TargetManager_v2_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_63();
    l0 = self.box__TargetManager_v2_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2086799395", "2086799395", "MIS_570_B20_Main", "box_OutputOrder_v2_49.Out", "box__TargetManager_v2_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_67();
    l0 = self.box__TargetManager_v2_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|150095345", "150095345", "MIS_570_B20_Main", "box_OutputOrder_v2_49.Out", "box__TargetManager_v2_67.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box__TargetManager_v2_43_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_116();
    l0 = self.box__TargetManager_v2_43;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|319510683", "319510683", "MIS_570_B20_Main", "box__TargetManager_v2_43.TargetHit", "box_OutputOrder_v2_116.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_72_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_91();
    l0 = self.box__TargetManager_v2_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|6444773", "6444773", "MIS_570_B20_Main", "box_Compare_Boolean_72.A_is_True", "box__TargetManager_v2_91.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box__FadeToBlack_Deactivate_28_End()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = self.box__FadeToBlack_Deactivate_28;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1675709010", "1675709010", "MIS_570_B20_Main", "box__FadeToBlack_Deactivate_28.End", "box_ActivityEnd_4.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_88_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_101();
    l0 = self.box__TargetManager_v2_88;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1093618504", "1093618504", "MIS_570_B20_Main", "box__TargetManager_v2_88.TargetHit", "box_OutputOrder_v2_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_54_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_54_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1401224737", "1401224737", "MIS_570_B20_Main", "box_SetBoolean_v2_54.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_UseContextualActionModifier_v3_39_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_39();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|878808009", "878808009", "MIS_570_B20_Main", "box_UseContextualActionModifier_v3_39.Enabled", "box_UseContextualActionModifier_v3_39.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_144_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_144;
    l1 = self.box_MultipleOR_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|183539832", "183539832", "MIS_570_B20_Main", "box_Delay_v5_144.TimeElapsed", "box_MultipleOR_145.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_126_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_16();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1523327907", "1523327907", "MIS_570_B20_Main", "box_OutputOrder_v2_126.Out", "box_UseContextualActionModifier_v3_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_126_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_125();
    l0 = self.box_ProximityTrigger_v3_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2038142019", "2038142019", "MIS_570_B20_Main", "box_OutputOrder_v2_126.Out", "box_ProximityTrigger_v3_125.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|@AllTargetsShot");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_30_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|@Balloon_Pop_Sound_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_103_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|@Balloon_Pop_Sound_10");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_112_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|@Balloon_Pop_Sound_2");
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|@Balloon_Pop_Sound_3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_105_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|@Balloon_Pop_Sound_4");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_106_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|@Balloon_Pop_Sound_5");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_107_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|@Balloon_Pop_Sound_6");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_108_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|@Balloon_Pop_Sound_7");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_109_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|@Balloon_Pop_Sound_8");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_110_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|@Balloon_Pop_Sound_9");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_111_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|@ENABLE ZIP LINE");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_119_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|@Last_5_Seconds_B20_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_148_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|@RND2_PandS_DONE");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_61_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|@Sound_Balloon_Listener");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|@STOP_MONITORS");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_128_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|5449553");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_24_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_570_B20_020",
            id = "1008969",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 10,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_80()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = false,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = false,
        -- eShootTarget,
        [7] = "2109193823956523773",
        -- eTargetDynamic,
        [8] = "2109193823956523773",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109193823954426616",
        -- eTargetDynamic_PosUP,
        [10] = "2109193823956523770",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|55419823");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_71_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T02,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_123()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|76447959");
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

function export:OnEnter_box_Compare_Boolean_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|82842654");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_78_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T09,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870702481",
    };
    return params;
end;

function export:OnEnter_box__FadeToBlack_Activate_13()
    local params;
    params = {
        -- eLookAtTarget,
        [0] = "2108820908840868173",
        -- eTeleportDestination,
        [1] = "2108061029226252503",
        -- eTeleportDestination_Client,
        [2] = "2109389431738773016",
        -- Load_MissionBlockID,
        [4] = "54181901977364146",
        -- Load_MissionLayerID,
        [5] = "81203500144037110",
        -- Player_CantMove,
        [6] = true,
        -- Unload_MissionLayerID_Instant,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_136()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "36674735",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_45()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = true,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = false,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2108820908454992202",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|145526565");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_79_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T10,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_97()
    local params;
    params = {
        -- Pawns,
        [0] = "2109193828712864539",
        -- SoundId,
        [1] = "1930916043",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|207204208");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_26_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B20_020",
            id = "1008969",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|221280815");
    l0:SetDynAnchorCount({
        controlIn = {
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
            },
            count = 1,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|273355591");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_18_Out,
    });
    params = {
        -- A,
        [0] = self.iProgressUpdate,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_59()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = true,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = false,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2109193823956523773",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|323012578");
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

function export:OnEnter_box_SetActivityObjectiveProgress_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|330697640");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B20_020",
            id = "1008969",
        },
        -- Progress,
        [1] = 1,
        -- ProgressId,
        [2] = self.iProgressID,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|346173953");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_2_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_2_A_ne_B,
    });
    params = {
        -- A,
        [0] = self.iProgressUpdate,
        -- B,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_133()
    local params;
    params = {
        -- Group,
        [0] = self.eNana,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2631178829",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_96()
    local params;
    params = {
        -- Pawns,
        [0] = "2109193828532509461",
        -- SoundId,
        [1] = "1930916043",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_84()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = false,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = false,
        -- eShootTarget,
        [7] = "2109193828532509461",
        -- eTargetDynamic,
        [8] = "2109193828532509461",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109193828530412304",
        -- eTargetDynamic_PosUP,
        [10] = "2109193828530412306",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|446080121");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_FAIL",
            id = "1007950",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_129()
    local params;
    params = {
        -- Group,
        [0] = self.eNana,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1922009540",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|455029203");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_19_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B20_020",
            id = "1008969",
        },
        -- Progress,
        [1] = self.iProgressUpdate,
        -- ProgressId,
        [2] = self.iProgressID,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_85()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = false,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = false,
        -- eShootTarget,
        [7] = "2109193828712864539",
        -- eTargetDynamic,
        [8] = "2109193828712864539",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109193828710767382",
        -- eTargetDynamic_PosUP,
        [10] = "2109193828710767384",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|493004518");
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
                [0] = self.f_box_OutputOrder_v2_127_Out_0,
                [1] = self.f_box_OutputOrder_v2_127_Out_1,
                [2] = self.f_box_OutputOrder_v2_127_Out_2,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|515616644");
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
                [1] = self.f_box_OutputOrder_v2_102_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|554177105");
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

function export:OnEnter_box_AddActivityObjective_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|556729670");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_33_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_570_B20_010b",
            id = "1027477",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|569263628");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|579186249");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_51_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|616570836");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|630352521");
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
                [0] = self.f_box_OutputOrder_v2_47_Out_0,
                [1] = self.f_box_OutputOrder_v2_47_Out_1,
                [2] = self.f_box_OutputOrder_v2_47_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|666507694");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_36_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_570_B20_010b_Timer",
            id = "1032526",
        },
        -- TargetGroup,
        [2] = self.PlayerGroup,
        -- Time,
        [3] = 35,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_63()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = true,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = false,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2109193828532509461",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_37()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 35,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|727786638");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_69_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|734240380");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_16_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108586510828706233",
        -- Entity,
        [2] = self.eNana,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|761969444");
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

function export:OnEnter_box_SoundModifier_v2_94()
    local params;
    params = {
        -- Pawns,
        [0] = "2109193827970472713",
        -- SoundId,
        [1] = "1930916043",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|810476941");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_11_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B20_010",
            id = "1007944",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_41()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870702481",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|839415793");
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

function export:OnEnter_box__TargetManager_v2_52()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = true,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = false,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2108642102794541225",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|854933002");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_34_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B20_010b",
            id = "1027477",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_55()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = true,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = false,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2109193827716717315",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|888789291");
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

function export:OnEnter_box_SoundModifier_v2_138()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1901908958",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_139()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 25,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|904323197");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_66_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|913276098");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_77_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T08,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|919272142");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_76_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T07,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|937942710");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_58_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|993967686");
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
                [0] = self.f_box_OutputOrder_v2_143_Out_0,
                [1] = self.f_box_OutputOrder_v2_143_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_65()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = true,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = false,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2109193827970472713",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_50()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = true,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = false,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2108642005369247904",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_82()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = false,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = false,
        -- eShootTarget,
        [7] = "2109193827970472713",
        -- eTargetDynamic,
        [8] = "2109193827970472713",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109193827968375556",
        -- eTargetDynamic_PosUP,
        [10] = "2109193827968375558",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_134()
    local params;
    params = {
        -- Group,
        [0] = self.eNana,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2402303491",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1092386305");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_74_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T05,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1102759904");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_70_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T01,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1119186514");
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
                [0] = self.f_box_OutputOrder_v2_116_Out_0,
                [1] = self.f_box_OutputOrder_v2_116_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1147731668");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
                [2] = self.f_box_OutputOrder_v2_38_Out_2,
                [3] = self.f_box_OutputOrder_v2_38_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1163346452");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1207620582");
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
                [0] = self.f_box_OutputOrder_v2_115_Out_0,
                [1] = self.f_box_OutputOrder_v2_115_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_120()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eNana,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1257369504");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_131_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iProgressUpdate,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1297794027");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_73_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T04,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_141()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2917624363",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1334412425");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_7_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_87()
    local params;
    params = {
        -- Pawns,
        [0] = "2108642102794541225",
        -- SoundId,
        [1] = "1930916043",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1346910611");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_35()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "3275949889",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1392066909");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_64_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_81()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = false,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = false,
        -- eShootTarget,
        [7] = "2109193827716717315",
        -- eTargetDynamic,
        [8] = "2109193827716717315",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109193827714620158",
        -- eTargetDynamic_PosUP,
        [10] = "2109193827716717312",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1398350442");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_14_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_570_B20_020",
            id = "1008969",
        },
        -- TargetGroup,
        [2] = self.PlayerGroup,
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1403060910");
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

function export:OnEnter_box_Reach_GoTo_v3_1()
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
        [4] = false,
        -- bUseDetectionModifier,
        [5] = false,
        -- eMarker,
        [6] = "2108032178104305819",
        -- eTrigger,
        [8] = "2108032178104305823",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "MIS_570_B20_010",
            id = "1007944",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1421594326");
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
                [0] = self.f_box_OutputOrder_v2_114_Out_0,
                [1] = self.f_box_OutputOrder_v2_114_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_62()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = true,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = false,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2109193828150827791",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1487488969");
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
                [0] = self.f_box_OutputOrder_v2_122_Out_0,
                [1] = self.f_box_OutputOrder_v2_122_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_93()
    local params;
    params = {
        -- Pawns,
        [0] = "2109193827716717315",
        -- SoundId,
        [1] = "1930916043",
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
        [0] = "2109193828150827791",
        -- SoundId,
        [1] = "1930916043",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1519522484");
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

function export:OnEnter_box__TargetManager_v2_56()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = true,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = false,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2108640613636252316",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1601890983");
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
                [0] = self.f_box_OutputOrder_v2_118_Out_0,
                [1] = self.f_box_OutputOrder_v2_118_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1604512680");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_60_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1631052198");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_125()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109399263686470301",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1709834455");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_121_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B20_010b_Timer",
            id = "1032526",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1748029151");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_42_Disabled,
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_42_InterruptCalled,
    });
    l0 = self.box_CharacterLoadedIdListener_v2_41;
    params = {
        -- ContextualAction,
        [0] = "2108586510828706233",
        -- Entity,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1753059505");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1764975902");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_68_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_132()
    local params;
    params = {
        -- Group,
        [0] = self.eNana,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1521712016",
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_91()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = false,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = false,
        -- eShootTarget,
        [7] = "2108642102794541225",
        -- eTargetDynamic,
        [8] = "2108642102794541225",
        -- eTargetDynamic_PosDOWN,
        [9] = "2108711050038749346",
        -- eTargetDynamic_PosUP,
        [10] = "2108711001944762526",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1804917935");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self.eNana,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1812016110");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 10,
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
                [2] = self.f_box_OutputOrder_v2_53_Out_2,
                [3] = self.f_box_OutputOrder_v2_53_Out_3,
                [4] = self.f_box_OutputOrder_v2_53_Out_4,
                [5] = self.f_box_OutputOrder_v2_53_Out_5,
                [6] = self.f_box_OutputOrder_v2_53_Out_6,
                [7] = self.f_box_OutputOrder_v2_53_Out_7,
                [8] = self.f_box_OutputOrder_v2_53_Out_8,
                [9] = self.f_box_OutputOrder_v2_53_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1831276407");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_46_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_140()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1836194281");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
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
        [0] = "2109193823956523773",
        -- SoundId,
        [1] = "1930916043",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_86()
    local params;
    params = {
        -- Pawns,
        [0] = "2108820908454992202",
        -- SoundId,
        [1] = "1930916043",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UsableEntityModifier_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UsableEntityModifier_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1856621456");
    l0:SetConnections({
        -- OnSetUnusable,
        [0] = self.f_box_UsableEntityModifier_v2_117_OnSetUnusable,
        -- OnSetUsable,
        [1] = self.f_box_UsableEntityModifier_v2_117_OnSetUsable,
    });
    params = {
        -- Entity,
        [0] = "2103567623699591308",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1886395317");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 10,
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
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
                [2] = self.f_box_OutputOrder_v2_20_Out_2,
                [3] = self.f_box_OutputOrder_v2_20_Out_3,
                [4] = self.f_box_OutputOrder_v2_20_Out_4,
                [5] = self.f_box_OutputOrder_v2_20_Out_5,
                [6] = self.f_box_OutputOrder_v2_20_Out_6,
                [7] = self.f_box_OutputOrder_v2_20_Out_7,
                [8] = self.f_box_OutputOrder_v2_20_Out_8,
                [9] = self.f_box_OutputOrder_v2_20_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_44()
    local params;
    params = {
        -- Pawns,
        [0] = "2108640613636252316",
        -- SoundId,
        [1] = "1930916043",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1924438238");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_75_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T06,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1924819877");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_31_Out,
    });
    params = {
        -- Float,
        [0] = 35,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_83()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = false,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = false,
        -- eShootTarget,
        [7] = "2109193828150827791",
        -- eTargetDynamic,
        [8] = "2109193828150827791",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109193828148730634",
        -- eTargetDynamic_PosUP,
        [10] = "2109193828148730636",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_67()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = true,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = false,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2109193828712864539",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1938741641");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_57_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_90()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = false,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = false,
        -- eShootTarget,
        [7] = "2108642005369247904",
        -- eTargetDynamic,
        [8] = "2108642005369247904",
        -- eTargetDynamic_PosDOWN,
        [9] = "2108711181312075946",
        -- eTargetDynamic_PosUP,
        [10] = "2108711181309978792",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_89()
    local params;
    params = {
        -- Pawns,
        [0] = "2108642005369247904",
        -- SoundId,
        [1] = "1930916043",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|1959285559");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 10,
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
                [2] = self.f_box_OutputOrder_v2_49_Out_2,
                [3] = self.f_box_OutputOrder_v2_49_Out_3,
                [4] = self.f_box_OutputOrder_v2_49_Out_4,
                [5] = self.f_box_OutputOrder_v2_49_Out_5,
                [6] = self.f_box_OutputOrder_v2_49_Out_6,
                [7] = self.f_box_OutputOrder_v2_49_Out_7,
                [8] = self.f_box_OutputOrder_v2_49_Out_8,
                [9] = self.f_box_OutputOrder_v2_49_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_135()
    local params;
    params = {
        -- Group,
        [0] = self.eNana,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1593156813",
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_43()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = false,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = false,
        -- eShootTarget,
        [7] = "2108640613636252316",
        -- eTargetDynamic,
        [8] = "2108640613636252316",
        -- eTargetDynamic_PosDOWN,
        [9] = "2108711143720626340",
        -- eTargetDynamic_PosUP,
        [10] = "2108711143722723494",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_12()
    local params;
    params = {
        -- usableEntity,
        [4] = "2103567623699591308",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2028101333");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_72_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T03,
    };
    return params;
end;

function export:OnEnter_box__FadeToBlack_Deactivate_28()
    local params;
    params = {
        -- bNeedFadeToBlack,
        [0] = false,
        -- bNeedTeleport,
        [1] = false,
        -- Player_CanMove,
        [2] = true,
        -- Unload_MissionBlockID,
        [4] = "54181901977364146",
        -- Unload_MissionLayerID,
        [5] = "81203500144037110",
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_88()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = false,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = false,
        -- eShootTarget,
        [7] = "2108820908454992202",
        -- eTargetDynamic,
        [8] = "2108820908454992202",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109193528297937645",
        -- eTargetDynamic_PosUP,
        [10] = "2109193528295840491",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2064252361");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_54_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2095896603");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_39_Enabled,
    });
    l0 = self.box_CharacterLoadedIdListener_v2_41;
    params = {
        -- ContextualAction,
        [0] = "2108887299111524017",
        -- Entity,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_144()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B20.domino|@MIS_570_B20_Main|2129755698");
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
                [0] = self.f_box_OutputOrder_v2_126_Out_0,
                [1] = self.f_box_OutputOrder_v2_126_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.iProgressID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_15_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_15;
    self.eNana = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iProgressUpdate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_51_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_69_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T07 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_66_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T10 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_58_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T05 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.LocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_64_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T08 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_60_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T06 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_68_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T09 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_46_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.fTargetDynamic_MovingDelay = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_57_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T04 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_54_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T03 = l0:GetDataOutValue(0);
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
