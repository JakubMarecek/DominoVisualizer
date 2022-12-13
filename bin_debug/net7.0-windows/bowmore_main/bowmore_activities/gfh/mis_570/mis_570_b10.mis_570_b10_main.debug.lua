LUAC�t -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/gfh/mis_570/mis_570_b10.domino
-- User graph: MIS_570_B10_Main
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
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._FadeToBlack_Activate.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._FadeToBlack_Deactivate.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2917624363.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1901908958.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2945052667.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1808489174.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2378816749.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3150749454.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3193178485.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2444480250.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1856592887.bnk]], "CSoundResource");
        cboxRes:LoadResource([[475117667.bnk]], "CSoundResource");
        cboxRes:LoadResource([[350412819.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4027802590.bnk]], "CSoundResource");
        cboxRes:LoadResource([[549516705.bnk]], "CSoundResource");
        cboxRes:LoadResource([[36674735.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3310088514.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10.MIS_570_B10_Main.debug.lua")] = {
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
    self._name = "MIS_570_B10_Main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main";
    self.LocalPlayer = nil;
    self.PlayerGroup = nil;
    self.iProgressID_RND1 = 1;
    self.iProgressID_RND2 = 1;
    self.iProgressUpdate_RND1 = 1;
    self.iProgressUpdate_RND2 = 1;
    self.bRND1_T01 = true;
    self.bRND1_T02 = true;
    self.bRND1_T03 = true;
    self.bRND1_T04 = true;
    self.bRND1_T05 = true;
    self.bRND1_T06 = true;
    self.bRND1_T07 = true;
    self.bRND1_T08 = true;
    self.bRND1_T09 = true;
    self.bRND1_T10 = true;
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
    self.iVehiclesinTrigger = {
    };
    self.box_OnceOnly_v3_257 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_257");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|19526996");
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
                [0] = self.f_box_OnceOnly_v3_257_Out_0,
            },
            count = 1,
        },
    });
    self.box_SoundModifier_v2_125 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|35235880");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_169 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|39275660");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_169_TargetHit,
    });
    self.box_SoundModifier_v2_235 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_235;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|52281200");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_72 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|96456363");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_72_TargetHit,
    });
    self.box_SoundModifier_v2_153 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|111153150");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_124 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|157876342");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_104 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|177764206");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_104_TargetHit,
    });
    self.box__TargetManager_v2_170 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|181850319");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_170_TargetHit,
    });
    self.box_MultipleOR_249 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|182991247");
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
        [0] = self.f_box_MultipleOR_249_Out,
    });
    self.box_Gate_v3_224 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|184354709");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_224_Out,
    });
    self.box_PlayDialog_v6_230 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|204545264");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_36 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|210099681");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_36_TargetHit,
    });
    self.box_PlayDialog_v6_11 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|219032011");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_150 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|283482557");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_112 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|302496228");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_112_TargetHit,
    });
    self.box_SoundModifier_v2_144 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|307845248");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_145 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|308941519");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_114 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|337569500");
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
                [0] = self.f_box_OnceOnly_v3_114_Out_0,
            },
            count = 2,
        },
    });
    self.box__FadeToBlack_Activate_31 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._FadeToBlack_Activate.debug.lua");
    l0 = self.box__FadeToBlack_Activate_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__FadeToBlack_Activate_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|344074025");
    l0:SetConnections({
        -- End,
        [0] = self.f_box__FadeToBlack_Activate_31_End,
    });
    self.box_SoundModifier_v2_136 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|347346092");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_128 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|372785991");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_48 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|381082913");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_48_TargetHit,
    });
    self.box__TargetManager_v2_38 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|391530005");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_38_TargetHit,
    });
    self.box__FadeToBlack_Activate_46 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._FadeToBlack_Activate.debug.lua");
    l0 = self.box__FadeToBlack_Activate_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__FadeToBlack_Activate_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|397303125");
    l0:SetConnections({
        -- End,
        [0] = self.f_box__FadeToBlack_Activate_46_End,
    });
    self.box_SoundModifier_v2_138 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|471386024");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_147 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|473214793");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_57 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|491869827");
    l0:SetConnections({
    });
    self.box_Delay_v5_216 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|514851409");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_216_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_216_TimeElapsed,
    });
    self.box_SoundModifier_v2_244 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_244");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|525771817");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_115 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|535586001");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_115_TargetHit,
    });
    self.box__TargetManager_v2_177 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|542193735");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_177_TargetHit,
    });
    self.box_MultipleAND_v2_69 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|545672293");
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
        [0] = self.f_box_MultipleAND_v2_69_Out,
    });
    self.box__TargetManager_v2_118 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|555767479");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_118_TargetHit,
    });
    self.box_SoundModifier_v2_241 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|583311300");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_179 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|596886089");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_179_TargetHit,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|599801875");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box__TargetManager_v2_80 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|636644033");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_80_TargetHit,
    });
    self.box_SoundModifier_v2_133 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|644699865");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_29 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|692693284");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_29_TargetHit,
    });
    self.box__TargetManager_v2_192 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|702405243");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_192_TargetHit,
    });
    self.box_PlayDialog_v6_219 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|704431930");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_219_Started,
    });
    self.box__TargetManager_v2_47 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|738169861");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_47_TargetHit,
    });
    self.box_CharacterLoadedIdListener_v2_28 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|744546164");
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
    self.box_MultipleOR_251 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|745026407");
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
        [0] = self.f_box_MultipleOR_251_Out,
    });
    self.box__TargetManager_v2_13 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|793750881");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_13_TargetHit,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|804298488");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box__TargetManager_v2_113 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|820767625");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_113_TargetHit,
    });
    self.box_Delay_v5_246 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_246;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_246");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|842205946");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_246_TimeElapsed,
    });
    self.box__TargetManager_v2_191 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|857537020");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_191_TargetHit,
    });
    self.box_SoundModifier_v2_130 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|909360495");
    l0:SetConnections({
    });
    self.box_Reach_GoTo_v3_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|917720834");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_7_Success,
    });
    self.box_Delay_v5_234 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|929574280");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_234_TimeElapsed,
    });
    self.box_PlayDialog_v6_221 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1024024731");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_127 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1024734448");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_137 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1027090017");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_137_TargetHit,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1032564298");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_Delay_v5_236 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1034478807");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_236_TimeElapsed,
    });
    self.box_Delay_v5_238 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1055232436");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_238_TimeElapsed,
    });
    self.box__TargetManager_v2_189 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1089603608");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_189_TargetHit,
    });
    self.box_SoundModifier_v2_79 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1095925389");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_91 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1169149922");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_91_TargetHit,
    });
    self.box__TargetManager_v2_62 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1178112336");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_62_TargetHit,
    });
    self.box_Delay_v5_53 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1195283527");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_53_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_53_TimeElapsed,
    });
    self.box_SoundModifier_v2_239 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1227361847");
    l0:SetConnections({
    });
    self.box_Delay_v5_250 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1228186132");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_250_TimeElapsed,
    });
    self.box__TargetManager_v2_107 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1276285626");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_107_TargetHit,
    });
    self.box__TargetManager_v2_45 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1283629387");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_45_TargetHit,
    });
    self.box__TargetManager_v2_59 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1286559800");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_59_TargetHit,
    });
    self.box_SoundModifier_v2_243 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1290014262");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_116 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1291957657");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_116_TargetHit,
    });
    self.box_SoundModifier_v2_148 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1358953893");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_50 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1360914982");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_50_TargetHit,
    });
    self.box__TargetManager_v2_141 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1368211863");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_141_TargetHit,
    });
    self.box__TargetManager_v2_14 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1370786874");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_14_TargetHit,
    });
    self.box_SoundModifier_v2_237 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1497848202");
    l0:SetConnections({
    });
    self.box__TargetManager_v2_120 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1518524738");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_120_TargetHit,
    });
    self.box_Delay_v5_255 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_255");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1540210722");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_255_TimeElapsed,
    });
    self.box__TargetManager_v2_51 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1546585080");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_51_TargetHit,
    });
    self.box_MultipleOR_95 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1580462183");
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
        [0] = self.f_box_MultipleOR_95_Out,
    });
    self.box__TargetManager_v2_188 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1589285699");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_188_TargetHit,
    });
    self.box_SoundModifier_v2_126 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1621389985");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_143 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1632736818");
    l0:SetConnections({
    });
    self.box_MultipleOR_74 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1649632703");
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
        [0] = self.f_box_MultipleOR_74_Out,
    });
    self.box_PlayDialog_v6_217 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1670950852");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_149 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1703461104");
    l0:SetConnections({
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1708114596");
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
    self.box__TargetManager_v2_132 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1723955179");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_132_TargetHit,
    });
    self.box__TargetManager_v2_16 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1728665597");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_16_TargetHit,
    });
    self.box_MultipleAND_v2_215 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1790294853");
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
        [0] = self.f_box_MultipleAND_v2_215_Out,
    });
    self.box__TargetManager_v2_54 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1840140886");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_54_TargetHit,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1847351695");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1850201753");
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
        [0] = self.f_box_MultipleOR_22_Out,
    });
    self.box_Gate_v3_258 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_258");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1856133767");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_258_Out,
    });
    self.box__TargetManager_v2_58 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1862444210");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_58_TargetHit,
    });
    self.box_Delay_v5_242 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_242;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_242");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1869514236");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_242_TimeElapsed,
    });
    self.box__TargetManager_v2_65 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1899623760");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_65_TargetHit,
    });
    self.box_SoundModifier_v2_152 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1907310942");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_228 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1982018625");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_220 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1986818399");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_220_Started,
    });
    self.box__TargetManager_v2_44 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1998461446");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_44_TargetHit,
    });
    self.box_MultipleOR_225 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2004294135");
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
        [0] = self.f_box_MultipleOR_225_Out,
    });
    self.box__FadeToBlack_Deactivate_9 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._FadeToBlack_Deactivate.debug.lua");
    l0 = self.box__FadeToBlack_Deactivate_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__FadeToBlack_Deactivate_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2004955674");
    l0:SetConnections({
        -- End,
        [0] = self.f_box__FadeToBlack_Deactivate_9_End,
    });
    self.box_SoundModifier_v2_129 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2024969686");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_248 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_248");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2051120161");
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
                [0] = self.f_box_OnceOnly_v3_248_Out_0,
            },
            count = 1,
        },
    });
    self.box__TargetManager_v2_122 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_570/MIS_570_B10._TargetManager_v2.debug.lua");
    l0 = self.box__TargetManager_v2_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__TargetManager_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2083386972");
    l0:SetConnections({
        -- TargetHit,
        [0] = self.f_box__TargetManager_v2_122_TargetHit,
    });
    self.box_SoundModifier_v2_151 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2084235248");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_232 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2115351828");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_134 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2134814856");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1551452451", "1551452451", "MIS_570_B10_Main", "In", "box_ActivityAcknowledgeGate_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_82();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1807485030", "1807485030", "MIS_570_B10_Main", "OnLeaveZone", "box_ActivityRetry_v2_82.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_238();
    l0 = self.box_Delay_v5_238;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|600597320", "600597320", "MIS_570_B10_Main", "box_Simple_Node_42.Out", "box_Delay_v5_238.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_SoundModifier_v2_239();
    l0 = self.box_SoundModifier_v2_239;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|62863203", "62863203", "MIS_570_B10_Main", "box_Simple_Node_42.Out", "box_SoundModifier_v2_239.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_224();
    l0 = self.box_Gate_v3_224;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|854383209", "854383209", "MIS_570_B10_Main", "box_Simple_Node_42.Out", "box_Gate_v3_224.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_255();
    l0 = self.box_Delay_v5_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|226395968", "226395968", "MIS_570_B10_Main", "box_Simple_Node_42.Out", "box_Delay_v5_255.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_216();
    l0 = self.box_Delay_v5_216;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|219989294", "219989294", "MIS_570_B10_Main", "box_Simple_Node_42.Out", "box_Delay_v5_216.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_53();
    l0 = self.box_Delay_v5_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1069950740", "1069950740", "MIS_570_B10_Main", "box_Simple_Node_32.Out", "box_Delay_v5_53.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_250();
    l0 = self.box_Delay_v5_250;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|902853748", "902853748", "MIS_570_B10_Main", "box_Simple_Node_32.Out", "box_Delay_v5_250.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Gate_v3_258();
    l0 = self.box_Gate_v3_258;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1898629790", "1898629790", "MIS_570_B10_Main", "box_Simple_Node_32.Out", "box_Gate_v3_258.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_246();
    l0 = self.box_Delay_v5_246;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|50004643", "50004643", "MIS_570_B10_Main", "box_Simple_Node_32.Out", "box_Delay_v5_246.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_242();
    l0 = self.box_Delay_v5_242;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1848687669", "1848687669", "MIS_570_B10_Main", "box_Simple_Node_32.Out", "box_Delay_v5_242.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_SoundModifier_v2_244();
    l0 = self.box_SoundModifier_v2_244;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2083143222", "2083143222", "MIS_570_B10_Main", "box_Simple_Node_32.Out", "box_SoundModifier_v2_244.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_253_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_236();
    l0 = self.box_Delay_v5_236;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1220525722", "1220525722", "MIS_570_B10_Main", "box_Simple_Node_253.Out", "box_Delay_v5_236.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_Delay_v5_238();
    l0 = self.box_Delay_v5_238;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|808890982", "808890982", "MIS_570_B10_Main", "box_Simple_Node_253.Out", "box_Delay_v5_238.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_254_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_246();
    l0 = self.box_Delay_v5_246;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1056274864", "1056274864", "MIS_570_B10_Main", "box_Simple_Node_254.Out", "box_Delay_v5_246.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_Delay_v5_242();
    l0 = self.box_Delay_v5_242;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2030491456", "2030491456", "MIS_570_B10_Main", "box_Simple_Node_254.Out", "box_Delay_v5_242.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_90_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_215();
    l0 = self.box_MultipleAND_v2_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1800243707", "1800243707", "MIS_570_B10_Main", "box_Simple_Node_90.Out", "box_MultipleAND_v2_215.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_OutputOrder_v2_111();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|27287989", "27287989", "MIS_570_B10_Main", "box_Simple_Node_90.Out", "box_OutputOrder_v2_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_106_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_69();
    l0 = self.box_MultipleAND_v2_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|361258460", "361258460", "MIS_570_B10_Main", "box_Simple_Node_106.Out", "box_MultipleAND_v2_69.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_OutputOrder_v2_94();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|570202311", "570202311", "MIS_570_B10_Main", "box_Simple_Node_106.Out", "box_OutputOrder_v2_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_200_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_125();
    l0 = self.box_SoundModifier_v2_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|963562196", "963562196", "MIS_570_B10_Main", "box_Simple_Node_200.Out", "box_SoundModifier_v2_125.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_209_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_138();
    l0 = self.box_SoundModifier_v2_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1684125956", "1684125956", "MIS_570_B10_Main", "box_Simple_Node_209.Out", "box_SoundModifier_v2_138.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_201_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_126();
    l0 = self.box_SoundModifier_v2_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|908752938", "908752938", "MIS_570_B10_Main", "box_Simple_Node_201.Out", "box_SoundModifier_v2_126.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_202_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_128();
    l0 = self.box_SoundModifier_v2_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|75247178", "75247178", "MIS_570_B10_Main", "box_Simple_Node_202.Out", "box_SoundModifier_v2_128.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_203_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_127();
    l0 = self.box_SoundModifier_v2_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|49790942", "49790942", "MIS_570_B10_Main", "box_Simple_Node_203.Out", "box_SoundModifier_v2_127.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_204_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_130();
    l0 = self.box_SoundModifier_v2_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|982134388", "982134388", "MIS_570_B10_Main", "box_Simple_Node_204.Out", "box_SoundModifier_v2_130.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_205_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_129();
    l0 = self.box_SoundModifier_v2_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1408836122", "1408836122", "MIS_570_B10_Main", "box_Simple_Node_205.Out", "box_SoundModifier_v2_129.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_206_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_134();
    l0 = self.box_SoundModifier_v2_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|493532463", "493532463", "MIS_570_B10_Main", "box_Simple_Node_206.Out", "box_SoundModifier_v2_134.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_207_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_133();
    l0 = self.box_SoundModifier_v2_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|617826385", "617826385", "MIS_570_B10_Main", "box_Simple_Node_207.Out", "box_SoundModifier_v2_133.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_208_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_136();
    l0 = self.box_SoundModifier_v2_136;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1093492198", "1093492198", "MIS_570_B10_Main", "box_Simple_Node_208.Out", "box_SoundModifier_v2_136.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_226_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_225;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|691392634", "691392634", "MIS_570_B10_Main", "box_Simple_Node_226.Out", "box_MultipleOR_225.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_168_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_151();
    l0 = self.box_SoundModifier_v2_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|118382852", "118382852", "MIS_570_B10_Main", "box_Simple_Node_168.Out", "box_SoundModifier_v2_151.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_181_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_147();
    l0 = self.box_SoundModifier_v2_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1763705585", "1763705585", "MIS_570_B10_Main", "box_Simple_Node_181.Out", "box_SoundModifier_v2_147.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_171_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_143();
    l0 = self.box_SoundModifier_v2_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|198232358", "198232358", "MIS_570_B10_Main", "box_Simple_Node_171.Out", "box_SoundModifier_v2_143.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_172_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_144();
    l0 = self.box_SoundModifier_v2_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1308521581", "1308521581", "MIS_570_B10_Main", "box_Simple_Node_172.Out", "box_SoundModifier_v2_144.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_173_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_149();
    l0 = self.box_SoundModifier_v2_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|360047876", "360047876", "MIS_570_B10_Main", "box_Simple_Node_173.Out", "box_SoundModifier_v2_149.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_174_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_148();
    l0 = self.box_SoundModifier_v2_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1371954177", "1371954177", "MIS_570_B10_Main", "box_Simple_Node_174.Out", "box_SoundModifier_v2_148.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_175_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_152();
    l0 = self.box_SoundModifier_v2_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1964536328", "1964536328", "MIS_570_B10_Main", "box_Simple_Node_175.Out", "box_SoundModifier_v2_152.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_176_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_153();
    l0 = self.box_SoundModifier_v2_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1578214111", "1578214111", "MIS_570_B10_Main", "box_Simple_Node_176.Out", "box_SoundModifier_v2_153.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_178_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_145();
    l0 = self.box_SoundModifier_v2_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1625229797", "1625229797", "MIS_570_B10_Main", "box_Simple_Node_178.Out", "box_SoundModifier_v2_145.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_180_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_150();
    l0 = self.box_SoundModifier_v2_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1777551225", "1777551225", "MIS_570_B10_Main", "box_Simple_Node_180.Out", "box_SoundModifier_v2_150.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_121_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_121_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1151840521", "1151840521", "MIS_570_B10_Main", "box_SetBoolean_v2_121.Out", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_Compare_Boolean_102_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_199();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1068516348", "1068516348", "MIS_570_B10_Main", "box_Compare_Boolean_102.A_is_True", "box_OutputOrder_v2_199.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_257_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_40();
    l0 = self.box_OnceOnly_v3_257;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|247969257", "247969257", "MIS_570_B10_Main", "box_OnceOnly_v3_257.Out", "box_ActivityRetry_v2_40.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_169_TargetHit()
    local l0, l1;
    l0 = self.box__TargetManager_v2_169;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|407869525", "407869525", "MIS_570_B10_Main", "box__TargetManager_v2_169.TargetHit", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_197_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_29();
    l0 = self.box__TargetManager_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1233539167", "1233539167", "MIS_570_B10_Main", "box_OutputOrder_v2_197.Out", "box__TargetManager_v2_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_197_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_203();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1555840387", "1555840387", "MIS_570_B10_Main", "box_OutputOrder_v2_197.Out", "box_Simple_Node_203.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_72_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_76();
    l0 = self.box__TargetManager_v2_72;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|288608384", "288608384", "MIS_570_B10_Main", "box__TargetManager_v2_72.TargetHit", "box_SetBoolean_v2_76.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_123_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_123_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1479704569", "1479704569", "MIS_570_B10_Main", "box_SetBoolean_v2_123.Out", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_SetBoolean_v2_190_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_190_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2057697859", "2057697859", "MIS_570_B10_Main", "box_SetBoolean_v2_190.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_SetBoolean_v2_184_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_184_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|767227815", "767227815", "MIS_570_B10_Main", "box_SetBoolean_v2_184.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_GetLocalPlayer_v2_1_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_4();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1357818824", "1357818824", "MIS_570_B10_Main", "box_GetLocalPlayer_v2_1.Out", "box_GetPlayerGroup_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_164_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1332204620", "1332204620", "MIS_570_B10_Main", "box_OutputOrder_v2_164.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_164_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_173();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1622125961", "1622125961", "MIS_570_B10_Main", "box_OutputOrder_v2_164.Out", "box_Simple_Node_173.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_25_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_14();
    l0 = self.box__TargetManager_v2_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|354342974", "354342974", "MIS_570_B10_Main", "box_Compare_Boolean_25.A_is_True", "box__TargetManager_v2_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_77_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_77_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|675530577", "675530577", "MIS_570_B10_Main", "box_SetBoolean_v2_77.Out", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_7();
    l0 = self.box_Reach_GoTo_v3_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|945686956", "945686956", "MIS_570_B10_Main", "box_OutputOrder_v2_27.Out", "box_Reach_GoTo_v3_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_28();
    l0 = self.box_CharacterLoadedIdListener_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|881108466", "881108466", "MIS_570_B10_Main", "box_OutputOrder_v2_27.Out", "box_CharacterLoadedIdListener_v2_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box__TargetManager_v2_104_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_96();
    l0 = self.box__TargetManager_v2_104;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1529011952", "1529011952", "MIS_570_B10_Main", "box__TargetManager_v2_104.TargetHit", "box_SetBoolean_v2_96.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_52_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_20();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1137416162", "1137416162", "MIS_570_B10_Main", "box_SetActivityObjectiveProgress_v2_52.Out", "box_Compare_Integers_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_170_TargetHit()
    local l0, l1;
    l0 = self.box__TargetManager_v2_170;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2138768405", "2138768405", "MIS_570_B10_Main", "box__TargetManager_v2_170.TargetHit", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_MultipleOR_249_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_258();
    l0 = self.box_MultipleOR_249;
    l1 = self.box_Gate_v3_258;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|652436049", "652436049", "MIS_570_B10_Main", "box_MultipleOR_249.Out", "box_Gate_v3_258.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_224_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_224;
    l1 = self.box_OnceOnly_v3_257;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1509943192", "1509943192", "MIS_570_B10_Main", "box_Gate_v3_224.Out", "box_OnceOnly_v3_257.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_84();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1537774444", "1537774444", "MIS_570_B10_Main", "box_EndActivityObjective_v2_10.Out", "box_EndActivityObjective_v2_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_229_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_210();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|446903878", "446903878", "MIS_570_B10_Main", "box_OutputOrder_v2_229.Out", "box_OutputOrder_v2_210.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_229_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_230();
    l0 = self.box_PlayDialog_v6_230;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|629991997", "629991997", "MIS_570_B10_Main", "box_OutputOrder_v2_229.Out", "box_PlayDialog_v6_230.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_108_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_108_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1769878908", "1769878908", "MIS_570_B10_Main", "box_SetBoolean_v2_108.Out", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_Compare_Boolean_131_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_169();
    l0 = self.box__TargetManager_v2_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2030372980", "2030372980", "MIS_570_B10_Main", "box_Compare_Boolean_131.A_is_True", "box__TargetManager_v2_169.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box__TargetManager_v2_36_TargetHit()
    local l0, l1;
    l0 = self.box__TargetManager_v2_36;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1306886505", "1306886505", "MIS_570_B10_Main", "box__TargetManager_v2_36.TargetHit", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_161_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|630538479", "630538479", "MIS_570_B10_Main", "box_OutputOrder_v2_161.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_OutputOrder_v2_161_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_180();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|905491939", "905491939", "MIS_570_B10_Main", "box_OutputOrder_v2_161.Out", "box_Simple_Node_180.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_91();
    l0 = self.box__TargetManager_v2_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|73329216", "73329216", "MIS_570_B10_Main", "box_OutputOrder_v2_103.Out", "box__TargetManager_v2_91.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_177();
    l0 = self.box__TargetManager_v2_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|120799666", "120799666", "MIS_570_B10_Main", "box_OutputOrder_v2_103.Out", "box__TargetManager_v2_177.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_104();
    l0 = self.box__TargetManager_v2_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1110107652", "1110107652", "MIS_570_B10_Main", "box_OutputOrder_v2_103.Out", "box__TargetManager_v2_104.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_65();
    l0 = self.box__TargetManager_v2_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|363710444", "363710444", "MIS_570_B10_Main", "box_OutputOrder_v2_103.Out", "box__TargetManager_v2_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_59();
    l0 = self.box__TargetManager_v2_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1591825533", "1591825533", "MIS_570_B10_Main", "box_OutputOrder_v2_103.Out", "box__TargetManager_v2_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_44();
    l0 = self.box__TargetManager_v2_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1257038665", "1257038665", "MIS_570_B10_Main", "box_OutputOrder_v2_103.Out", "box__TargetManager_v2_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_188();
    l0 = self.box__TargetManager_v2_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1426229820", "1426229820", "MIS_570_B10_Main", "box_OutputOrder_v2_103.Out", "box__TargetManager_v2_188.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_189();
    l0 = self.box__TargetManager_v2_189;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|310022", "310022", "MIS_570_B10_Main", "box_OutputOrder_v2_103.Out", "box__TargetManager_v2_189.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_192();
    l0 = self.box__TargetManager_v2_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1515741529", "1515741529", "MIS_570_B10_Main", "box_OutputOrder_v2_103.Out", "box__TargetManager_v2_192.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_191();
    l0 = self.box__TargetManager_v2_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|883689389", "883689389", "MIS_570_B10_Main", "box_OutputOrder_v2_103.Out", "box__TargetManager_v2_191.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_88_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_36();
    l0 = self.box__TargetManager_v2_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|524461330", "524461330", "MIS_570_B10_Main", "box_Compare_Boolean_88.A_is_True", "box__TargetManager_v2_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_233_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|916776940", "916776940", "MIS_570_B10_Main", "box_OutputOrder_v2_233.Out", "box_Simple_Node_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_233_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_223();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|872332524", "872332524", "MIS_570_B10_Main", "box_OutputOrder_v2_233.Out", "box_SetBoolean_v2_223.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_233_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_228();
    l0 = self.box_PlayDialog_v6_228;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2129968748", "2129968748", "MIS_570_B10_Main", "box_OutputOrder_v2_233.Out", "box_PlayDialog_v6_228.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_96_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_96_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1601518667", "1601518667", "MIS_570_B10_Main", "box_SetBoolean_v2_96.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetBoolean_v2_87_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_87_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1186224268", "1186224268", "MIS_570_B10_Main", "box_SetBoolean_v2_87.Out", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Compare_Boolean_92_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_196();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1151111797", "1151111797", "MIS_570_B10_Main", "box_Compare_Boolean_92.A_is_True", "box_OutputOrder_v2_196.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_155_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1795350309", "1795350309", "MIS_570_B10_Main", "box_OutputOrder_v2_155.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_155_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_171();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1821468154", "1821468154", "MIS_570_B10_Main", "box_OutputOrder_v2_155.Out", "box_Simple_Node_171.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_139_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_132();
    l0 = self.box__TargetManager_v2_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1889813231", "1889813231", "MIS_570_B10_Main", "box_Compare_Boolean_139.A_is_True", "box__TargetManager_v2_132.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_26_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_13();
    l0 = self.box__TargetManager_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1438553084", "1438553084", "MIS_570_B10_Main", "box_Compare_Boolean_26.A_is_True", "box__TargetManager_v2_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_70_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_245();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1763847832", "1763847832", "MIS_570_B10_Main", "box_AddActivityObjective_v2_70.Out", "box_OutputOrder_v2_245.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_214_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_39();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|141718588", "141718588", "MIS_570_B10_Main", "box_OutputOrder_v2_214.Out", "box_AddActivityObjective_v2_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_214_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_212();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1017720371", "1017720371", "MIS_570_B10_Main", "box_OutputOrder_v2_214.Out", "box_AddActivityObjective_v2_212.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_112_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_87();
    l0 = self.box__TargetManager_v2_112;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|740766354", "740766354", "MIS_570_B10_Main", "box__TargetManager_v2_112.TargetHit", "box_SetBoolean_v2_87.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_135_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_137();
    l0 = self.box__TargetManager_v2_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|386447084", "386447084", "MIS_570_B10_Main", "box_Compare_Boolean_135.A_is_True", "box__TargetManager_v2_137.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_227_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_214();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1495073263", "1495073263", "MIS_570_B10_Main", "box_OutputOrder_v2_227.Out", "box_OutputOrder_v2_214.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_227_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_221();
    l0 = self.box_PlayDialog_v6_221;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1102243973", "1102243973", "MIS_570_B10_Main", "box_OutputOrder_v2_227.Out", "box_PlayDialog_v6_221.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_17_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_57();
    l0 = self.box_PlayDialog_v6_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|706776509", "706776509", "MIS_570_B10_Main", "box_Compare_Integers_17.A_eq_B", "box_PlayDialog_v6_57.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_35_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_35_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|864645377", "864645377", "MIS_570_B10_Main", "box_SetBoolean_v2_35.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OnceOnly_v3_114_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_90();
    l0 = self.box_OnceOnly_v3_114;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1244001946", "1244001946", "MIS_570_B10_Main", "box_OnceOnly_v3_114.Out", "box_Simple_Node_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_159_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_183();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1756121046", "1756121046", "MIS_570_B10_Main", "box_Compare_Boolean_159.A_is_True", "box_OutputOrder_v2_183.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__FadeToBlack_Activate_31_End()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_227();
    l0 = self.box__FadeToBlack_Activate_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|5411375", "5411375", "MIS_570_B10_Main", "box__FadeToBlack_Activate_31.End", "box_OutputOrder_v2_227.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_60_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_60_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1258297952", "1258297952", "MIS_570_B10_Main", "box_SetBoolean_v2_60.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EndActivityObjective_v2_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_110();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|329112237", "329112237", "MIS_570_B10_Main", "box_EndActivityObjective_v2_43.Out", "box_OutputOrder_v2_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_37_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1813461201", "1813461201", "MIS_570_B10_Main", "box_AddActivityObjective_v2_37.Out", "box_OutputOrder_v2_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_48_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_165();
    l0 = self.box__TargetManager_v2_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2102602740", "2102602740", "MIS_570_B10_Main", "box__TargetManager_v2_48.TargetHit", "box_OutputOrder_v2_165.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_38_TargetHit()
    local l0, l1;
    l0 = self.box__TargetManager_v2_38;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2019411028", "2019411028", "MIS_570_B10_Main", "box__TargetManager_v2_38.TargetHit", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box__FadeToBlack_Activate_46_End()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_229();
    l0 = self.box__FadeToBlack_Activate_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|992470343", "992470343", "MIS_570_B10_Main", "box__FadeToBlack_Activate_46.End", "box_OutputOrder_v2_229.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_166_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|833485728", "833485728", "MIS_570_B10_Main", "box_OutputOrder_v2_166.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OutputOrder_v2_166_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_174();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|330178472", "330178472", "MIS_570_B10_Main", "box_OutputOrder_v2_166.Out", "box_Simple_Node_174.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_68();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1248976373", "1248976373", "MIS_570_B10_Main", "box_OutputOrder_v2_78.Out", "box_EndActivityObjective_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|794870010", "794870010", "MIS_570_B10_Main", "box_OutputOrder_v2_78.Out", "box_OnceOnly_v3_114.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_110_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_222();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|443885896", "443885896", "MIS_570_B10_Main", "box_OutputOrder_v2_110.Out", "box_Compare_Boolean_222.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_110_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_79();
    l0 = self.box_SoundModifier_v2_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1673073937", "1673073937", "MIS_570_B10_Main", "box_OutputOrder_v2_110.Out", "box_SoundModifier_v2_79.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_199_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_47();
    l0 = self.box__TargetManager_v2_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1664760564", "1664760564", "MIS_570_B10_Main", "box_OutputOrder_v2_199.Out", "box__TargetManager_v2_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_199_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_201();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|744513613", "744513613", "MIS_570_B10_Main", "box_OutputOrder_v2_199.Out", "box_Simple_Node_201.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_218_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|906180523", "906180523", "MIS_570_B10_Main", "box_OutputOrder_v2_218.Out", "box_EndActivityObjective_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_218_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_11();
    l0 = self.box_PlayDialog_v6_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1874048603", "1874048603", "MIS_570_B10_Main", "box_OutputOrder_v2_218.Out", "box_PlayDialog_v6_11.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_194_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_51();
    l0 = self.box__TargetManager_v2_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|916662838", "916662838", "MIS_570_B10_Main", "box_OutputOrder_v2_194.Out", "box__TargetManager_v2_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_194_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_206();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1655334382", "1655334382", "MIS_570_B10_Main", "box_OutputOrder_v2_194.Out", "box_Simple_Node_206.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_216_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_Delay_v5_216;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|126580799", "126580799", "MIS_570_B10_Main", "box_Delay_v5_216.Started", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_216_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_256();
    l0 = self.box_Delay_v5_216;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1457953079", "1457953079", "MIS_570_B10_Main", "box_Delay_v5_216.TimeElapsed", "box_OutputOrder_v2_256.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_142_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_170();
    l0 = self.box__TargetManager_v2_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1941348580", "1941348580", "MIS_570_B10_Main", "box_Compare_Boolean_142.A_is_True", "box__TargetManager_v2_170.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box__TargetManager_v2_115_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_108();
    l0 = self.box__TargetManager_v2_115;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2072430239", "2072430239", "MIS_570_B10_Main", "box__TargetManager_v2_115.TargetHit", "box_SetBoolean_v2_108.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_177_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_60();
    l0 = self.box__TargetManager_v2_177;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2006794271", "2006794271", "MIS_570_B10_Main", "box__TargetManager_v2_177.TargetHit", "box_SetBoolean_v2_60.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_69_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_64();
    l0 = self.box_MultipleAND_v2_69;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|115073773", "115073773", "MIS_570_B10_Main", "box_MultipleAND_v2_69.Out", "box_AddActivityObjectiveProgress_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_118_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_119();
    l0 = self.box__TargetManager_v2_118;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1113278493", "1113278493", "MIS_570_B10_Main", "box__TargetManager_v2_118.TargetHit", "box_SetBoolean_v2_119.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_240();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|531083201", "531083201", "MIS_570_B10_Main", "box_AddActivityObjective_v2_63.Out", "box_OutputOrder_v2_240.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_33_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_195();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1259958849", "1259958849", "MIS_570_B10_Main", "box_Compare_Boolean_33.A_is_True", "box_OutputOrder_v2_195.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_179_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_163();
    l0 = self.box__TargetManager_v2_179;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|578509393", "578509393", "MIS_570_B10_Main", "box__TargetManager_v2_179.TargetHit", "box_OutputOrder_v2_163.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box__FadeToBlack_Deactivate_9();
    l0 = self.box_Delay_v5_8;
    l1 = self.box__FadeToBlack_Deactivate_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1620512243", "1620512243", "MIS_570_B10_Main", "box_Delay_v5_8.TimeElapsed", "box__FadeToBlack_Deactivate_9.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_89_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_38();
    l0 = self.box__TargetManager_v2_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1553239305", "1553239305", "MIS_570_B10_Main", "box_Compare_Boolean_89.A_is_True", "box__TargetManager_v2_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box__TargetManager_v2_80_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_85();
    l0 = self.box__TargetManager_v2_80;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1923904711", "1923904711", "MIS_570_B10_Main", "box__TargetManager_v2_80.TargetHit", "box_SetBoolean_v2_85.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1831210163", "1831210163", "MIS_570_B10_Main", "box_OutputOrder_v2_75.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_175();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1878649194", "1878649194", "MIS_570_B10_Main", "box_OutputOrder_v2_75.Out", "box_Simple_Node_175.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_231_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_101();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|363483013", "363483013", "MIS_570_B10_Main", "box_OutputOrder_v2_231.Out", "box_OutputOrder_v2_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_231_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_232();
    l0 = self.box_PlayDialog_v6_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|468034058", "468034058", "MIS_570_B10_Main", "box_OutputOrder_v2_231.Out", "box_PlayDialog_v6_232.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_186_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_48();
    l0 = self.box__TargetManager_v2_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1881098689", "1881098689", "MIS_570_B10_Main", "box_OutputOrder_v2_186.Out", "box__TargetManager_v2_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_186_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_208();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1373708435", "1373708435", "MIS_570_B10_Main", "box_OutputOrder_v2_186.Out", "box_Simple_Node_208.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_29_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_164();
    l0 = self.box__TargetManager_v2_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1071970524", "1071970524", "MIS_570_B10_Main", "box__TargetManager_v2_29.TargetHit", "box_OutputOrder_v2_164.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_192_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_187();
    l0 = self.box__TargetManager_v2_192;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1295179276", "1295179276", "MIS_570_B10_Main", "box__TargetManager_v2_192.TargetHit", "box_SetBoolean_v2_187.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_219_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_219;
    l1 = self.box_MultipleOR_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|717884866", "717884866", "MIS_570_B10_Main", "box_PlayDialog_v6_219.Started", "box_MultipleOR_251.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_256_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_255();
    l0 = self.box_Delay_v5_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|73036505", "73036505", "MIS_570_B10_Main", "box_OutputOrder_v2_256.Out", "box_Delay_v5_255.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_256_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_219();
    l0 = self.box_PlayDialog_v6_219;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|198382301", "198382301", "MIS_570_B10_Main", "box_OutputOrder_v2_256.Out", "box_PlayDialog_v6_219.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_163_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|109063958", "109063958", "MIS_570_B10_Main", "box_OutputOrder_v2_163.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_163_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_168();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1796295955", "1796295955", "MIS_570_B10_Main", "box_OutputOrder_v2_163.Out", "box_Simple_Node_168.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_47_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_155();
    l0 = self.box__TargetManager_v2_47;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1827297063", "1827297063", "MIS_570_B10_Main", "box__TargetManager_v2_47.TargetHit", "box_OutputOrder_v2_155.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_28_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_28_LoadedIdReceived();
    params = self:OnEnter_box_UseContextualActionModifier_v3_30();
    l0 = self.box_CharacterLoadedIdListener_v2_28;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|327724370", "327724370", "MIS_570_B10_Main", "box_CharacterLoadedIdListener_v2_28.LoadedIdReceived", "box_UseContextualActionModifier_v3_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_251_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_224();
    l0 = self.box_MultipleOR_251;
    l1 = self.box_Gate_v3_224;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1973543645", "1973543645", "MIS_570_B10_Main", "box_MultipleOR_251.Out", "box_Gate_v3_224.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_119_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_119_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1062951689", "1062951689", "MIS_570_B10_Main", "box_SetBoolean_v2_119.Out", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_SetBoolean_v2_117_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_117_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1456196726", "1456196726", "MIS_570_B10_Main", "box_SetBoolean_v2_117.Out", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_SetActivityObjectiveProgress_v2_24_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_12();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|250323525", "250323525", "MIS_570_B10_Main", "box_SetActivityObjectiveProgress_v2_24.Out", "box_Compare_Integers_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_185_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_185_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|10713640", "10713640", "MIS_570_B10_Main", "box_SetBoolean_v2_185.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box__TargetManager_v2_13_TargetHit()
    local l0, l1;
    l0 = self.box__TargetManager_v2_13;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|386492091", "386492091", "MIS_570_B10_Main", "box__TargetManager_v2_13.TargetHit", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|102263883", "102263883", "MIS_570_B10_Main", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1140012757", "1140012757", "MIS_570_B10_Main", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EndActivityObjective_v2_93_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_70();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1944874882", "1944874882", "MIS_570_B10_Main", "box_EndActivityObjective_v2_93.Out", "box_AddActivityObjective_v2_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_113_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_86();
    l0 = self.box__TargetManager_v2_113;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|462034498", "462034498", "MIS_570_B10_Main", "box__TargetManager_v2_113.TargetHit", "box_SetBoolean_v2_86.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_246_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_243();
    l0 = self.box_Delay_v5_246;
    l1 = self.box_SoundModifier_v2_243;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|366086923", "366086923", "MIS_570_B10_Main", "box_Delay_v5_246.TimeElapsed", "box_SoundModifier_v2_243.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box__TargetManager_v2_191_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_190();
    l0 = self.box__TargetManager_v2_191;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|129003154", "129003154", "MIS_570_B10_Main", "box__TargetManager_v2_191.TargetHit", "box_SetBoolean_v2_190.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_240_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_216();
    l0 = self.box_Delay_v5_216;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|983686614", "983686614", "MIS_570_B10_Main", "box_OutputOrder_v2_240.Out", "box_Delay_v5_216.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_240_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|909870298", "909870298", "MIS_570_B10_Main", "box_OutputOrder_v2_240.Out", "box_Simple_Node_253.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_7_Success()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_43();
    l0 = self.box_Reach_GoTo_v3_7;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1719320710", "1719320710", "MIS_570_B10_Main", "box_Reach_GoTo_v3_7.Success", "box_EndActivityObjective_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_234_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_73();
    l0 = self.box_Delay_v5_234;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1365770104", "1365770104", "MIS_570_B10_Main", "box_Delay_v5_234.TimeElapsed", "box_EndActivityObjective_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_23_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_16();
    l0 = self.box__TargetManager_v2_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|188007793", "188007793", "MIS_570_B10_Main", "box_Compare_Boolean_23.A_is_True", "box__TargetManager_v2_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_146_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_141();
    l0 = self.box__TargetManager_v2_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1627672629", "1627672629", "MIS_570_B10_Main", "box_Compare_Boolean_146.A_is_True", "box__TargetManager_v2_141.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_85_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_85_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1249995300", "1249995300", "MIS_570_B10_Main", "box_SetBoolean_v2_85.Out", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box__TargetManager_v2_137_TargetHit()
    local l0, l1;
    l0 = self.box__TargetManager_v2_137;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1583539737", "1583539737", "MIS_570_B10_Main", "box__TargetManager_v2_137.TargetHit", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_AddActivityObjectiveProgress_v2_213_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_213_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_211();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1542311487", "1542311487", "MIS_570_B10_Main", "box_AddActivityObjectiveProgress_v2_213.Out", "box_SetActivityObjectiveProgress_v2_211.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_21();
    l0 = self.box_MultipleOR_15;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|239297030", "239297030", "MIS_570_B10_Main", "box_MultipleOR_15.Out", "box_IntegerArithmetics_v2_21.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_236_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_235();
    l0 = self.box_Delay_v5_236;
    l1 = self.box_SoundModifier_v2_235;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|981812282", "981812282", "MIS_570_B10_Main", "box_Delay_v5_236.TimeElapsed", "box_SoundModifier_v2_235.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_238_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_237();
    l0 = self.box_Delay_v5_238;
    l1 = self.box_SoundModifier_v2_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|644988381", "644988381", "MIS_570_B10_Main", "box_Delay_v5_238.TimeElapsed", "box_SoundModifier_v2_237.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_21_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_24();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1983794030", "1983794030", "MIS_570_B10_Main", "box_IntegerArithmetics_v2_21.Out", "box_SetActivityObjectiveProgress_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_195_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_54();
    l0 = self.box__TargetManager_v2_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|125198337", "125198337", "MIS_570_B10_Main", "box_OutputOrder_v2_195.Out", "box__TargetManager_v2_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_195_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_205();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|575492287", "575492287", "MIS_570_B10_Main", "box_OutputOrder_v2_195.Out", "box_Simple_Node_205.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_212_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_215();
    l0 = self.box_MultipleAND_v2_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|582077472", "582077472", "MIS_570_B10_Main", "box_AddActivityObjective_v2_212.Out", "box_MultipleAND_v2_215.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box__TargetManager_v2_189_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_184();
    l0 = self.box__TargetManager_v2_189;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|238996672", "238996672", "MIS_570_B10_Main", "box__TargetManager_v2_189.TargetHit", "box_SetBoolean_v2_184.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_198_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_50();
    l0 = self.box__TargetManager_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|547548521", "547548521", "MIS_570_B10_Main", "box_OutputOrder_v2_198.Out", "box__TargetManager_v2_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_198_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_202();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1306223281", "1306223281", "MIS_570_B10_Main", "box_OutputOrder_v2_198.Out", "box_Simple_Node_202.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_187_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_187_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1540158900", "1540158900", "MIS_570_B10_Main", "box_SetBoolean_v2_187.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 8);
end;

function export:f_box__TargetManager_v2_91_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_97();
    l0 = self.box__TargetManager_v2_91;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1287801692", "1287801692", "MIS_570_B10_Main", "box__TargetManager_v2_91.TargetHit", "box_SetBoolean_v2_97.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_62_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_154();
    l0 = self.box__TargetManager_v2_62;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2056708274", "2056708274", "MIS_570_B10_Main", "box__TargetManager_v2_62.TargetHit", "box_OutputOrder_v2_154.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_53_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetFloat_v2_71();
    l0 = self.box_Delay_v5_53;
    l1 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|937943008", "937943008", "MIS_570_B10_Main", "box_Delay_v5_53.Started", "box_SetFloat_v2_71.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_53_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_247();
    l0 = self.box_Delay_v5_53;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1148752614", "1148752614", "MIS_570_B10_Main", "box_Delay_v5_53.TimeElapsed", "box_OutputOrder_v2_247.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_225;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1817022381", "1817022381", "MIS_570_B10_Main", "box_OutputOrder_v2_41.Out", "box_MultipleOR_225.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_124();
    l0 = self.box_SoundModifier_v2_124;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|349819138", "349819138", "MIS_570_B10_Main", "box_OutputOrder_v2_41.Out", "box_SoundModifier_v2_124.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_83_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|514596147", "514596147", "MIS_570_B10_Main", "box_EndActivityObjective_v2_83.Out", "box_OutputOrder_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_222_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box__FadeToBlack_Activate_31();
    l0 = self.box__FadeToBlack_Activate_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1347152523", "1347152523", "MIS_570_B10_Main", "box_Compare_Boolean_222.A_is_False", "box__FadeToBlack_Activate_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_222_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_226();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1692482794", "1692482794", "MIS_570_B10_Main", "box_Compare_Boolean_222.A_is_True", "box_Simple_Node_226.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_98_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_197();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1099992641", "1099992641", "MIS_570_B10_Main", "box_Compare_Boolean_98.A_is_True", "box_OutputOrder_v2_197.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_250_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_250;
    l1 = self.box_MultipleOR_249;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2078563566", "2078563566", "MIS_570_B10_Main", "box_Delay_v5_250.TimeElapsed", "box_MultipleOR_249.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_34_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_140();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1889896770", "1889896770", "MIS_570_B10_Main", "box_Compare_Boolean_34.A_is_True", "box_OutputOrder_v2_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_25();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1733777902", "1733777902", "MIS_570_B10_Main", "box_OutputOrder_v2_19.Out", "box_Compare_Boolean_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_26();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1734687430", "1734687430", "MIS_570_B10_Main", "box_OutputOrder_v2_19.Out", "box_Compare_Boolean_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_23();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2015990556", "2015990556", "MIS_570_B10_Main", "box_OutputOrder_v2_19.Out", "box_Compare_Boolean_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_88();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|927428896", "927428896", "MIS_570_B10_Main", "box_OutputOrder_v2_19.Out", "box_Compare_Boolean_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_89();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1888805470", "1888805470", "MIS_570_B10_Main", "box_OutputOrder_v2_19.Out", "box_Compare_Boolean_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_131();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|699744382", "699744382", "MIS_570_B10_Main", "box_OutputOrder_v2_19.Out", "box_Compare_Boolean_131.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_135();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|378971267", "378971267", "MIS_570_B10_Main", "box_OutputOrder_v2_19.Out", "box_Compare_Boolean_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_139();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1847387088", "1847387088", "MIS_570_B10_Main", "box_OutputOrder_v2_19.Out", "box_Compare_Boolean_139.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_142();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1376695702", "1376695702", "MIS_570_B10_Main", "box_OutputOrder_v2_19.Out", "box_Compare_Boolean_142.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_146();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1901325594", "1901325594", "MIS_570_B10_Main", "box_OutputOrder_v2_19.Out", "box_Compare_Boolean_146.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_107_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_77();
    l0 = self.box__TargetManager_v2_107;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1536750518", "1536750518", "MIS_570_B10_Main", "box__TargetManager_v2_107.TargetHit", "box_SetBoolean_v2_77.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_34();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1949537693", "1949537693", "MIS_570_B10_Main", "box_OutputOrder_v2_56.Out", "box_Compare_Boolean_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_102();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1013584112", "1013584112", "MIS_570_B10_Main", "box_OutputOrder_v2_56.Out", "box_Compare_Boolean_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_99();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|311631320", "311631320", "MIS_570_B10_Main", "box_OutputOrder_v2_56.Out", "box_Compare_Boolean_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_98();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|658315435", "658315435", "MIS_570_B10_Main", "box_OutputOrder_v2_56.Out", "box_Compare_Boolean_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_92();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1909028839", "1909028839", "MIS_570_B10_Main", "box_OutputOrder_v2_56.Out", "box_Compare_Boolean_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_33();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|862340325", "862340325", "MIS_570_B10_Main", "box_OutputOrder_v2_56.Out", "box_Compare_Boolean_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_160();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|512990882", "512990882", "MIS_570_B10_Main", "box_OutputOrder_v2_56.Out", "box_Compare_Boolean_160.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_162();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|723770479", "723770479", "MIS_570_B10_Main", "box_OutputOrder_v2_56.Out", "box_Compare_Boolean_162.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_158();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1203955955", "1203955955", "MIS_570_B10_Main", "box_OutputOrder_v2_56.Out", "box_Compare_Boolean_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_159();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|763695232", "763695232", "MIS_570_B10_Main", "box_OutputOrder_v2_56.Out", "box_Compare_Boolean_159.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_45_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_166();
    l0 = self.box__TargetManager_v2_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|548294912", "548294912", "MIS_570_B10_Main", "box__TargetManager_v2_45.TargetHit", "box_OutputOrder_v2_166.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_59_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_100();
    l0 = self.box__TargetManager_v2_59;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1388587771", "1388587771", "MIS_570_B10_Main", "box__TargetManager_v2_59.TargetHit", "box_SetBoolean_v2_100.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_160_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_194();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|761673259", "761673259", "MIS_570_B10_Main", "box_Compare_Boolean_160.A_is_True", "box_OutputOrder_v2_194.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_116_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_117();
    l0 = self.box__TargetManager_v2_116;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1314732113", "1314732113", "MIS_570_B10_Main", "box__TargetManager_v2_116.TargetHit", "box_SetBoolean_v2_117.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_157_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1381000586", "1381000586", "MIS_570_B10_Main", "box_OutputOrder_v2_157.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_157_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_172();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1179016958", "1179016958", "MIS_570_B10_Main", "box_OutputOrder_v2_157.Out", "box_Simple_Node_172.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_165_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|365820376", "365820376", "MIS_570_B10_Main", "box_OutputOrder_v2_165.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_OutputOrder_v2_165_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_181();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1679237516", "1679237516", "MIS_570_B10_Main", "box_OutputOrder_v2_165.Out", "box_Simple_Node_181.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_39_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_109();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|685920761", "685920761", "MIS_570_B10_Main", "box_AddActivityObjective_v2_39.Out", "box_OutputOrder_v2_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_50_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_157();
    l0 = self.box__TargetManager_v2_50;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|3653506", "3653506", "MIS_570_B10_Main", "box__TargetManager_v2_50.TargetHit", "box_OutputOrder_v2_157.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_141_TargetHit()
    local l0, l1;
    l0 = self.box__TargetManager_v2_141;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|68731107", "68731107", "MIS_570_B10_Main", "box__TargetManager_v2_141.TargetHit", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box__TargetManager_v2_14_TargetHit()
    local l0, l1;
    l0 = self.box__TargetManager_v2_14;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1109094805", "1109094805", "MIS_570_B10_Main", "box__TargetManager_v2_14.TargetHit", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_162_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_193();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2132002992", "2132002992", "MIS_570_B10_Main", "box_Compare_Boolean_162.A_is_True", "box_OutputOrder_v2_193.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_71_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_71_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|357588024", "357588024", "MIS_570_B10_Main", "box_SetFloat_v2_71.Out", "box_OutputOrder_v2_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1126564888", "1126564888", "MIS_570_B10_Main", "box_OutputOrder_v2_67.Out", "box_Delay_v5_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|4443400", "4443400", "MIS_570_B10_Main", "box_OutputOrder_v2_67.Out", "box_Simple_Node_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|527181130", "527181130", "MIS_570_B10_Main", "box_OutputOrder_v2_154.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_OutputOrder_v2_154_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_178();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|892520283", "892520283", "MIS_570_B10_Main", "box_OutputOrder_v2_154.Out", "box_Simple_Node_178.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_120_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_121();
    l0 = self.box__TargetManager_v2_120;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1382684372", "1382684372", "MIS_570_B10_Main", "box__TargetManager_v2_120.TargetHit", "box_SetBoolean_v2_121.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_97_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_97_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1776368924", "1776368924", "MIS_570_B10_Main", "box_SetBoolean_v2_97.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_156_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|569222389", "569222389", "MIS_570_B10_Main", "box_OutputOrder_v2_156.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_OutputOrder_v2_156_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_176();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|661238734", "661238734", "MIS_570_B10_Main", "box_OutputOrder_v2_156.Out", "box_Simple_Node_176.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_255_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_255;
    l1 = self.box_MultipleOR_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1201859144", "1201859144", "MIS_570_B10_Main", "box_Delay_v5_255.TimeElapsed", "box_MultipleOR_251.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box__TargetManager_v2_51_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_156();
    l0 = self.box__TargetManager_v2_51;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1519537189", "1519537189", "MIS_570_B10_Main", "box__TargetManager_v2_51.TargetHit", "box_OutputOrder_v2_156.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_210_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_37();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|592421705", "592421705", "MIS_570_B10_Main", "box_OutputOrder_v2_210.Out", "box_AddActivityObjective_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_210_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_81();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|174721525", "174721525", "MIS_570_B10_Main", "box_OutputOrder_v2_210.Out", "box_AddActivityObjective_v2_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_94_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_91();
    l0 = self.box__TargetManager_v2_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|963799516", "963799516", "MIS_570_B10_Main", "box_OutputOrder_v2_94.Out", "box__TargetManager_v2_91.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_177();
    l0 = self.box__TargetManager_v2_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1784498454", "1784498454", "MIS_570_B10_Main", "box_OutputOrder_v2_94.Out", "box__TargetManager_v2_177.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_104();
    l0 = self.box__TargetManager_v2_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|9312519", "9312519", "MIS_570_B10_Main", "box_OutputOrder_v2_94.Out", "box__TargetManager_v2_104.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_65();
    l0 = self.box__TargetManager_v2_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|572086884", "572086884", "MIS_570_B10_Main", "box_OutputOrder_v2_94.Out", "box__TargetManager_v2_65.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_59();
    l0 = self.box__TargetManager_v2_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|638545514", "638545514", "MIS_570_B10_Main", "box_OutputOrder_v2_94.Out", "box__TargetManager_v2_59.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_44();
    l0 = self.box__TargetManager_v2_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1537887027", "1537887027", "MIS_570_B10_Main", "box_OutputOrder_v2_94.Out", "box__TargetManager_v2_44.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_188();
    l0 = self.box__TargetManager_v2_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|641856252", "641856252", "MIS_570_B10_Main", "box_OutputOrder_v2_94.Out", "box__TargetManager_v2_188.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_189();
    l0 = self.box__TargetManager_v2_189;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2089167387", "2089167387", "MIS_570_B10_Main", "box_OutputOrder_v2_94.Out", "box__TargetManager_v2_189.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_192();
    l0 = self.box__TargetManager_v2_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|536837161", "536837161", "MIS_570_B10_Main", "box_OutputOrder_v2_94.Out", "box__TargetManager_v2_192.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_191();
    l0 = self.box__TargetManager_v2_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|331031991", "331031991", "MIS_570_B10_Main", "box_OutputOrder_v2_94.Out", "box__TargetManager_v2_191.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_68_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_63();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|335308684", "335308684", "MIS_570_B10_Main", "box_EndActivityObjective_v2_68.Out", "box_AddActivityObjective_v2_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_95_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_231();
    l0 = self.box_MultipleOR_95;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|564768520", "564768520", "MIS_570_B10_Main", "box_MultipleOR_95.Out", "box_OutputOrder_v2_231.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_188_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_185();
    l0 = self.box__TargetManager_v2_188;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|447373112", "447373112", "MIS_570_B10_Main", "box__TargetManager_v2_188.TargetHit", "box_SetBoolean_v2_185.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_245_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_53();
    l0 = self.box_Delay_v5_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|669081895", "669081895", "MIS_570_B10_Main", "box_OutputOrder_v2_245.Out", "box_Delay_v5_53.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_245_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_254();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|511518076", "511518076", "MIS_570_B10_Main", "box_OutputOrder_v2_245.Out", "box_Simple_Node_254.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = self.box_MultipleOR_74;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|386167752", "386167752", "MIS_570_B10_Main", "box_MultipleOR_74.Out", "box_OutputOrder_v2_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_20_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_218();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1451573145", "1451573145", "MIS_570_B10_Main", "box_Compare_Integers_20.A_eq_B", "box_OutputOrder_v2_218.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_20_A_ne_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_61();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1264408334", "1264408334", "MIS_570_B10_Main", "box_Compare_Integers_20.A_ne_B", "box_Compare_Integers_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_140_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_179();
    l0 = self.box__TargetManager_v2_179;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|699831173", "699831173", "MIS_570_B10_Main", "box_OutputOrder_v2_140.Out", "box__TargetManager_v2_179.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_140_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_200();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|723857939", "723857939", "MIS_570_B10_Main", "box_OutputOrder_v2_140.Out", "box_Simple_Node_200.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_12_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_233();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2071097359", "2071097359", "MIS_570_B10_Main", "box_Compare_Integers_12.A_eq_B", "box_OutputOrder_v2_233.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_12_A_ne_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_17();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|630446577", "630446577", "MIS_570_B10_Main", "box_Compare_Integers_12.A_ne_B", "box_Compare_Integers_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|821822550", "821822550", "MIS_570_B10_Main", "box_MultipleOR_6.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box__TargetManager_v2_132_TargetHit()
    local l0, l1;
    l0 = self.box__TargetManager_v2_132;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1920897875", "1920897875", "MIS_570_B10_Main", "box__TargetManager_v2_132.TargetHit", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box__TargetManager_v2_16_TargetHit()
    local l0, l1;
    l0 = self.box__TargetManager_v2_16;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1042506838", "1042506838", "MIS_570_B10_Main", "box__TargetManager_v2_16.TargetHit", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Boolean_99_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_198();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|654149138", "654149138", "MIS_570_B10_Main", "box_Compare_Boolean_99.A_is_True", "box_OutputOrder_v2_198.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_105_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_105_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|7794673", "7794673", "MIS_570_B10_Main", "box_SetBoolean_v2_105.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_MultipleAND_v2_215_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_213();
    l0 = self.box_MultipleAND_v2_215;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|687551327", "687551327", "MIS_570_B10_Main", "box_MultipleAND_v2_215.Out", "box_AddActivityObjectiveProgress_v2_213.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_183_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_58();
    l0 = self.box__TargetManager_v2_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|838761725", "838761725", "MIS_570_B10_Main", "box_OutputOrder_v2_183.Out", "box__TargetManager_v2_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_183_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_209();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1829434891", "1829434891", "MIS_570_B10_Main", "box_OutputOrder_v2_183.Out", "box_Simple_Node_209.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_55_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_52();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2023130370", "2023130370", "MIS_570_B10_Main", "box_IntegerArithmetics_v2_55.Out", "box_SetActivityObjectiveProgress_v2_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_247_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_250();
    l0 = self.box_Delay_v5_250;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1591455270", "1591455270", "MIS_570_B10_Main", "box_OutputOrder_v2_247.Out", "box_Delay_v5_250.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_247_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_220();
    l0 = self.box_PlayDialog_v6_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2087148128", "2087148128", "MIS_570_B10_Main", "box_OutputOrder_v2_247.Out", "box_PlayDialog_v6_220.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_111_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_80();
    l0 = self.box__TargetManager_v2_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1066097908", "1066097908", "MIS_570_B10_Main", "box_OutputOrder_v2_111.Out", "box__TargetManager_v2_80.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_111_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_107();
    l0 = self.box__TargetManager_v2_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1853042746", "1853042746", "MIS_570_B10_Main", "box_OutputOrder_v2_111.Out", "box__TargetManager_v2_107.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_111_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_72();
    l0 = self.box__TargetManager_v2_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1450303619", "1450303619", "MIS_570_B10_Main", "box_OutputOrder_v2_111.Out", "box__TargetManager_v2_72.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_111_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_113();
    l0 = self.box__TargetManager_v2_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|375587599", "375587599", "MIS_570_B10_Main", "box_OutputOrder_v2_111.Out", "box__TargetManager_v2_113.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_111_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_112();
    l0 = self.box__TargetManager_v2_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|520986207", "520986207", "MIS_570_B10_Main", "box_OutputOrder_v2_111.Out", "box__TargetManager_v2_112.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_111_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_115();
    l0 = self.box__TargetManager_v2_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|604325663", "604325663", "MIS_570_B10_Main", "box_OutputOrder_v2_111.Out", "box__TargetManager_v2_115.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_111_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_116();
    l0 = self.box__TargetManager_v2_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1278873826", "1278873826", "MIS_570_B10_Main", "box_OutputOrder_v2_111.Out", "box__TargetManager_v2_116.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_111_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_122();
    l0 = self.box__TargetManager_v2_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|68085175", "68085175", "MIS_570_B10_Main", "box_OutputOrder_v2_111.Out", "box__TargetManager_v2_122.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_111_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_120();
    l0 = self.box__TargetManager_v2_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|435873976", "435873976", "MIS_570_B10_Main", "box_OutputOrder_v2_111.Out", "box__TargetManager_v2_120.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_111_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_118();
    l0 = self.box__TargetManager_v2_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1768553392", "1768553392", "MIS_570_B10_Main", "box_OutputOrder_v2_111.Out", "box__TargetManager_v2_118.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box__TargetManager_v2_54_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = self.box__TargetManager_v2_54;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1370020361", "1370020361", "MIS_570_B10_Main", "box__TargetManager_v2_54.TargetHit", "box_OutputOrder_v2_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_1();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1410456798", "1410456798", "MIS_570_B10_Main", "box_ActivityInitialized_2.Out", "box_GetLocalPlayer_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_55();
    l0 = self.box_MultipleOR_22;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|256364719", "256364719", "MIS_570_B10_Main", "box_MultipleOR_22.Out", "box_IntegerArithmetics_v2_55.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_84_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|218238029", "218238029", "MIS_570_B10_Main", "box_EndActivityObjective_v2_84.Out", "box_OutputOrder_v2_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_258_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_258;
    l1 = self.box_OnceOnly_v3_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|413628946", "413628946", "MIS_570_B10_Main", "box_Gate_v3_258.Out", "box_OnceOnly_v3_248.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box__TargetManager_v2_58_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_161();
    l0 = self.box__TargetManager_v2_58;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|7099830", "7099830", "MIS_570_B10_Main", "box__TargetManager_v2_58.TargetHit", "box_OutputOrder_v2_161.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_242_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_241();
    l0 = self.box_Delay_v5_242;
    l1 = self.box_SoundModifier_v2_241;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1242660249", "1242660249", "MIS_570_B10_Main", "box_Delay_v5_242.TimeElapsed", "box_SoundModifier_v2_241.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_223_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_223_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_234();
    l0 = self.box_Delay_v5_234;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1339997876", "1339997876", "MIS_570_B10_Main", "box_SetBoolean_v2_223.Out", "box_Delay_v5_234.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetPlayerGroup_v2_4_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2018743246", "2018743246", "MIS_570_B10_Main", "box_GetPlayerGroup_v2_4.Out", "box_OutputOrder_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__TargetManager_v2_65_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_35();
    l0 = self.box__TargetManager_v2_65;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1440123120", "1440123120", "MIS_570_B10_Main", "box__TargetManager_v2_65.TargetHit", "box_SetBoolean_v2_35.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_18_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|529693887", "529693887", "MIS_570_B10_Main", "box_UseContextualActionModifier_v3_18.Disabled", "box_ActivityEnd_5.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_30_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_30();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|313710617", "313710617", "MIS_570_B10_Main", "box_UseContextualActionModifier_v3_30.Enabled", "box_UseContextualActionModifier_v3_30.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjectiveProgress_v2_64_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_64_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_49();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1203646783", "1203646783", "MIS_570_B10_Main", "box_AddActivityObjectiveProgress_v2_64.Out", "box_SetActivityObjectiveProgress_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_158_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_186();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2021894128", "2021894128", "MIS_570_B10_Main", "box_Compare_Boolean_158.A_is_True", "box_OutputOrder_v2_186.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_220_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_220;
    l1 = self.box_MultipleOR_249;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|185562517", "185562517", "MIS_570_B10_Main", "box_PlayDialog_v6_220.Started", "box_MultipleOR_249.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box__TargetManager_v2_44_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_105();
    l0 = self.box__TargetManager_v2_44;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1800820988", "1800820988", "MIS_570_B10_Main", "box__TargetManager_v2_44.TargetHit", "box_SetBoolean_v2_105.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_225_Out()
    local params, l0, l1;
    params = self:OnEnter_box__FadeToBlack_Activate_46();
    l0 = self.box_MultipleOR_225;
    l1 = self.box__FadeToBlack_Activate_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1624960553", "1624960553", "MIS_570_B10_Main", "box_MultipleOR_225.Out", "box__FadeToBlack_Activate_46.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box__FadeToBlack_Deactivate_9_End()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_18();
    l0 = self.box__FadeToBlack_Deactivate_9;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|28230439", "28230439", "MIS_570_B10_Main", "box__FadeToBlack_Deactivate_9.End", "box_UseContextualActionModifier_v3_18.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_106();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|793700646", "793700646", "MIS_570_B10_Main", "box_OutputOrder_v2_101.Out", "box_Simple_Node_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_93();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|709258209", "709258209", "MIS_570_B10_Main", "box_OutputOrder_v2_101.Out", "box_EndActivityObjective_v2_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_100_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_100_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1534548430", "1534548430", "MIS_570_B10_Main", "box_SetBoolean_v2_100.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OnceOnly_v3_248_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_66();
    l0 = self.box_OnceOnly_v3_248;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1388637358", "1388637358", "MIS_570_B10_Main", "box_OnceOnly_v3_248.Out", "box_ActivityRetry_v2_66.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_86_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_86_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1574781529", "1574781529", "MIS_570_B10_Main", "box_SetBoolean_v2_86.Out", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_AddActivityObjective_v2_81_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_69();
    l0 = self.box_MultipleAND_v2_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1014415286", "1014415286", "MIS_570_B10_Main", "box_AddActivityObjective_v2_81.Out", "box_MultipleAND_v2_69.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_SetBoolean_v2_76_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_76_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|688544241", "688544241", "MIS_570_B10_Main", "box_SetBoolean_v2_76.Out", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Integers_61_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_217();
    l0 = self.box_PlayDialog_v6_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1249448634", "1249448634", "MIS_570_B10_Main", "box_Compare_Integers_61.A_eq_B", "box_PlayDialog_v6_217.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box__TargetManager_v2_122_TargetHit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_123();
    l0 = self.box__TargetManager_v2_122;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|649678040", "649678040", "MIS_570_B10_Main", "box__TargetManager_v2_122.TargetHit", "box_SetBoolean_v2_123.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_196_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_45();
    l0 = self.box__TargetManager_v2_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1149001885", "1149001885", "MIS_570_B10_Main", "box_OutputOrder_v2_196.Out", "box__TargetManager_v2_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_196_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_204();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|313605153", "313605153", "MIS_570_B10_Main", "box_OutputOrder_v2_196.Out", "box_Simple_Node_204.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_193_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_62();
    l0 = self.box__TargetManager_v2_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1150495514", "1150495514", "MIS_570_B10_Main", "box_OutputOrder_v2_193.Out", "box__TargetManager_v2_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_193_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_207();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|980804860", "980804860", "MIS_570_B10_Main", "box_OutputOrder_v2_193.Out", "box_Simple_Node_207.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_73_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_83();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1159310593", "1159310593", "MIS_570_B10_Main", "box_EndActivityObjective_v2_73.Out", "box_EndActivityObjective_v2_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_109_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_80();
    l0 = self.box__TargetManager_v2_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1793468160", "1793468160", "MIS_570_B10_Main", "box_OutputOrder_v2_109.Out", "box__TargetManager_v2_80.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_109_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_107();
    l0 = self.box__TargetManager_v2_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|960517137", "960517137", "MIS_570_B10_Main", "box_OutputOrder_v2_109.Out", "box__TargetManager_v2_107.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_109_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_72();
    l0 = self.box__TargetManager_v2_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2077342556", "2077342556", "MIS_570_B10_Main", "box_OutputOrder_v2_109.Out", "box__TargetManager_v2_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_109_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_113();
    l0 = self.box__TargetManager_v2_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1810507947", "1810507947", "MIS_570_B10_Main", "box_OutputOrder_v2_109.Out", "box__TargetManager_v2_113.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_109_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_112();
    l0 = self.box__TargetManager_v2_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1407768820", "1407768820", "MIS_570_B10_Main", "box_OutputOrder_v2_109.Out", "box__TargetManager_v2_112.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_109_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_115();
    l0 = self.box__TargetManager_v2_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1323773006", "1323773006", "MIS_570_B10_Main", "box_OutputOrder_v2_109.Out", "box__TargetManager_v2_115.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_109_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_116();
    l0 = self.box__TargetManager_v2_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1234884174", "1234884174", "MIS_570_B10_Main", "box_OutputOrder_v2_109.Out", "box__TargetManager_v2_116.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_109_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_122();
    l0 = self.box__TargetManager_v2_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1789944729", "1789944729", "MIS_570_B10_Main", "box_OutputOrder_v2_109.Out", "box__TargetManager_v2_122.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_109_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_120();
    l0 = self.box__TargetManager_v2_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|309918312", "309918312", "MIS_570_B10_Main", "box_OutputOrder_v2_109.Out", "box__TargetManager_v2_120.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_109_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__TargetManager_v2_118();
    l0 = self.box__TargetManager_v2_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2068844698", "2068844698", "MIS_570_B10_Main", "box_OutputOrder_v2_109.Out", "box__TargetManager_v2_118.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@AllTargetsShot_Rnd1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@AllTargetsShot_rnd2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_32_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Last_5_seconds_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_253_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_254()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_254");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Last_5_Seconds_Sound_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_254_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@RND1_PandS_DONE");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_90_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@RND2_PandS_DONE");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_106_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Start_Machine_Sound_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_200_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Start_Machine_Sound_10");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_209_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Start_Machine_Sound_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_201_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Start_Machine_Sound_3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_202_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Start_Machine_Sound_4");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_203_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Start_Machine_Sound_5");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_204_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Start_Machine_Sound_6");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_205_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Start_Machine_Sound_7");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_206_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Start_Machine_Sound_8");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_207_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Start_Machine_Sound_9");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_208_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Start_Round2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_226_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Stop_Machine_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_168_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Stop_Machine_10");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_181_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Stop_Machine_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_171_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Stop_Machine_3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_172_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Stop_Machine_4");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_173_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Stop_Machine_5");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_174_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Stop_Machine_6");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_175_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Stop_Machine_7");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_176_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Stop_Machine_8");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_178_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|@Stop_Machine_9");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_180_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|8055022");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_121_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|15202791");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_102_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T02,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_125()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287163246960978",
        -- SoundId,
        [1] = "4027802590",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_169()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002650812958",
        -- eWoodpole,
        [11] = "2109596253410040687",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|43855202");
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
                [0] = self.f_box_OutputOrder_v2_197_Out_0,
                [1] = self.f_box_OutputOrder_v2_197_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_235()
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

function export:OnEnter_box__TargetManager_v2_72()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002625647116",
        -- eWoodpole,
        [11] = "2109596113376910119",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|101825513");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_123_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|106165136");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_190_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_153()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287174177317210",
        -- SoundId,
        [1] = "3193178485",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|128499535");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_184_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|140697871");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|142520655");
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

function export:OnEnter_box_Compare_Boolean_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|145874473");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_25_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND1_T01,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|153640092");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_77_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_124()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1856592887",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|175159028");
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

function export:OnEnter_box__TargetManager_v2_104()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109138728879413925",
        -- eWoodpole,
        [11] = "2109596450907233235",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|179524033");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_52_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B10_020b",
            id = "1026697",
        },
        -- Progress,
        [1] = self.iProgressUpdate_RND2,
        -- ProgressId,
        [2] = self.iProgressID_RND2,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_170()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002678075952",
        -- eWoodpole,
        [11] = "2109596185917397845",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_224()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|185486557");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_10_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B10_020b",
            id = "1026697",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|186966457");
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
                [0] = self.f_box_OutputOrder_v2_229_Out_0,
                [1] = self.f_box_OutputOrder_v2_229_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|198171628");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B10_020b",
            id = "1026697",
        },
        -- Progress,
        [1] = 1,
        -- ProgressId,
        [2] = self.iProgressID_RND2,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_230()
    local params;
    params = {
        -- Group,
        [0] = self.eNana,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2945052667",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|205394083");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_108_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|206927641");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_131_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND1_T06,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_36()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002634035730",
        -- eWoodpole,
        [11] = "2109596162026642239",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|211382442");
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
                [0] = self.f_box_OutputOrder_v2_161_Out_0,
                [1] = self.f_box_OutputOrder_v2_161_Out_1,
            },
            count = 2,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|216990665");
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
                [0] = self.f_box_OutputOrder_v2_103_Out_0,
                [1] = self.f_box_OutputOrder_v2_103_Out_1,
                [2] = self.f_box_OutputOrder_v2_103_Out_2,
                [3] = self.f_box_OutputOrder_v2_103_Out_3,
                [4] = self.f_box_OutputOrder_v2_103_Out_4,
                [5] = self.f_box_OutputOrder_v2_103_Out_5,
                [6] = self.f_box_OutputOrder_v2_103_Out_6,
                [7] = self.f_box_OutputOrder_v2_103_Out_7,
                [8] = self.f_box_OutputOrder_v2_103_Out_8,
                [9] = self.f_box_OutputOrder_v2_103_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_11()
    local params;
    params = {
        -- Group,
        [0] = self.eNana,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "350412819",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|225793429");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_88_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND1_T04,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_233()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|226089083");
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
                [0] = self.f_box_OutputOrder_v2_233_Out_0,
                [1] = self.f_box_OutputOrder_v2_233_Out_1,
                [2] = self.f_box_OutputOrder_v2_233_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|243699455");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_96_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|246565777");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_87_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|246908028");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_92_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T05,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|254294453");
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
                [0] = self.f_box_OutputOrder_v2_155_Out_0,
                [1] = self.f_box_OutputOrder_v2_155_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|258084420");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_139_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND1_T08,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|263417112");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_26_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND1_T02,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|280485437");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_70_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_570_B10_012a_Timer",
            id = "1032525",
        },
        -- TargetGroup,
        [2] = self.PlayerGroup,
        -- Time,
        [3] = 90,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|282726870");
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
                [0] = self.f_box_OutputOrder_v2_214_Out_0,
                [1] = self.f_box_OutputOrder_v2_214_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_150()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287177958482270",
        -- SoundId,
        [1] = "3193178485",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_112()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109609239222689416",
        -- eWoodpole,
        [11] = "2109596222076492641",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|303301686");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_135_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND1_T07,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|305389298");
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
                [0] = self.f_box_OutputOrder_v2_227_Out_0,
                [1] = self.f_box_OutputOrder_v2_227_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_144()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287155521053008",
        -- SoundId,
        [1] = "3193178485",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_145()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287177088164188",
        -- SoundId,
        [1] = "3193178485",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|317147036");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_17_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iProgressUpdate_RND1,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|320910550");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_35_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|339794707");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_159_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T10,
    };
    return params;
end;

function export:OnEnter_box__FadeToBlack_Activate_31()
    local params;
    params = {
        -- eLookAtTarget,
        [0] = "2108888058100222037",
        -- eTeleportDestination,
        [1] = "2108059767615273092",
        -- eVehicleTrigger,
        [3] = "2110064364991056684",
        -- Load_MissionBlockID,
        [4] = "54181901970645545",
        -- Load_MissionLayerID,
        [5] = "27160316830447889",
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
        [0] = "2109287177958482270",
        -- SoundId,
        [1] = "4027802590",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|369110324");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_60_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|372738666");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_43_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B10_010",
            id = "1007943",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_128()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287155521053008",
        -- SoundId,
        [1] = "4027802590",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|374296843");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_37_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_570_B10_012a",
            id = "1027290",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_48()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = false,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2109140834747160587",
        -- eTargetDynamic,
        [8] = "2109168051172730091",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109140773145417708",
        -- eTargetDynamic_PosUP,
        [10] = "2109140773143320554",
        -- eWoodpole,
        [11] = "2109596570350525499",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_38()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109609239222689416",
        -- eWoodpole,
        [11] = "2109596222076492641",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box__FadeToBlack_Activate_46()
    local params;
    params = {
        -- eLookAtTarget,
        [0] = "2108697523213335502",
        -- eTeleportDestination,
        [1] = "2108059767615273092",
        -- eVehicleTrigger,
        [3] = "2110064364991056684",
        -- Load_MissionBlockID,
        [4] = "54181901970645545",
        -- Load_MissionLayerID,
        [5] = "72196300886802333",
        -- Player_CantMove,
        [6] = true,
        -- Unload_MissionLayerID,
        [7] = "27160316830447889",
        -- Unload_MissionLayerID_Instant,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|414329691");
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
                [0] = self.f_box_OutputOrder_v2_166_Out_0,
                [1] = self.f_box_OutputOrder_v2_166_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|415593021");
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
                [0] = self.f_box_OutputOrder_v2_78_Out_0,
                [1] = self.f_box_OutputOrder_v2_78_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|447288226");
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
                [0] = self.f_box_OutputOrder_v2_110_Out_0,
                [1] = self.f_box_OutputOrder_v2_110_Out_1,
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
        [0] = "2109287180451996000",
        -- SoundId,
        [1] = "4027802590",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_147()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287180451996000",
        -- SoundId,
        [1] = "3193178485",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|475076599");
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
                [0] = self.f_box_OutputOrder_v2_199_Out_0,
                [1] = self.f_box_OutputOrder_v2_199_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|487024486");
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

function export:OnEnter_box_PlayDialog_v6_57()
    local params;
    params = {
        -- Group,
        [0] = self.eNana,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "475117667",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|497506801");
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
                [0] = self.f_box_OutputOrder_v2_194_Out_0,
                [1] = self.f_box_OutputOrder_v2_194_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_216()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 60,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_244()
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

function export:OnEnter_box_Compare_Boolean_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|535044720");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_142_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND1_T09,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_115()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002650812958",
        -- eWoodpole,
        [11] = "2109596253410040687",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_177()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109138605055171219",
        -- eWoodpole,
        [11] = "2109595877185185586",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_69()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_118()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002686464566",
        -- eWoodpole,
        [11] = "2109596376257010589",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|562844574");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_63_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_570_B10_011a_Timer",
            id = "1032524",
        },
        -- TargetGroup,
        [2] = self.PlayerGroup,
        -- Time,
        [3] = 60,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_241()
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

function export:OnEnter_box_Compare_Boolean_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|584381244");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_33_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T06,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_179()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = false,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2109138485662210703",
        -- eTargetDynamic,
        [8] = "2109167630054122707",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109138434466536072",
        -- eTargetDynamic_PosUP,
        [10] = "2109138434466536070",
        -- eWoodpole,
        [11] = "2109596407542324157",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|614831736");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_89_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND1_T05,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_80()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002610967040",
        -- eWoodpole,
        [11] = "2109596141317266227",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|641526198");
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

function export:OnEnter_box_SoundModifier_v2_133()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287177088164188",
        -- SoundId,
        [1] = "4027802590",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|667877102");
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
                [0] = self.f_box_OutputOrder_v2_231_Out_0,
                [1] = self.f_box_OutputOrder_v2_231_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|691414724");
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
                [0] = self.f_box_OutputOrder_v2_186_Out_0,
                [1] = self.f_box_OutputOrder_v2_186_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_29()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = false,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2108640682070516385",
        -- eTargetDynamic,
        [8] = "2109167763305063639",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109140506146510806",
        -- eTargetDynamic_PosUP,
        [10] = "2109140506144413652",
        -- eWoodpole,
        [11] = "2109596465830566889",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_192()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109140834747160587",
        -- eWoodpole,
        [11] = "2109596570350525499",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_219()
    local params;
    params = {
        -- Group,
        [0] = self.eNana,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2444480250",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_256");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|711985698");
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
                [0] = self.f_box_OutputOrder_v2_256_Out_0,
                [1] = self.f_box_OutputOrder_v2_256_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|715491749");
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
                [0] = self.f_box_OutputOrder_v2_163_Out_0,
                [1] = self.f_box_OutputOrder_v2_163_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_47()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = true,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2109138605055171219",
        -- eTargetDynamic,
        [8] = "2109167546019144913",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109136243196451464",
        -- eTargetDynamic_PosUP,
        [10] = "2109136243194354310",
        -- eWoodpole,
        [11] = "2109595877185185586",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_28()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870702481",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|754300579");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_119_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|768531557");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_117_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|778988785");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_24_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B10_020a",
            id = "1008920",
        },
        -- Progress,
        [1] = self.iProgressUpdate_RND1,
        -- ProgressId,
        [2] = self.iProgressID_RND1,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|793111733");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_185_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_13()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002617258502",
        -- eWoodpole,
        [11] = "2109595769255257709",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|806420264");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_93_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B10_012a",
            id = "1027290",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_113()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002634035730",
        -- eWoodpole,
        [11] = "2109596162026642239",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_246()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 85,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_191()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109122437837772810",
        -- eWoodpole,
        [11] = "2109596543483911203",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_130()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287169592942934",
        -- SoundId,
        [1] = "4027802590",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|915902468");
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
                [0] = self.f_box_OutputOrder_v2_240_Out_0,
                [1] = self.f_box_OutputOrder_v2_240_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_7()
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
        [6] = "2108030808603241405",
        -- eTrigger,
        [8] = "2108030594532256699",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "MIS_570_B10_010",
            id = "1007943",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_234()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|968886307");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_23_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND1_T03,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|969304523");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_146_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND1_T10,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|986147949");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_85_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_221()
    local params;
    params = {
        -- Group,
        [0] = self.eNana,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "549516705",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_127()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287167990718804",
        -- SoundId,
        [1] = "4027802590",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_137()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002659201572",
        -- eWoodpole,
        [11] = "2109596276407409531",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1027973348");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_213_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_570_B10_020",
            id = "1008920",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 10,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_236()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 55,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_238()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 50,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1080348842");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_21_Out,
    });
    params = {
        -- A,
        [0] = self.iProgressUpdate_RND1,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1082998019");
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
                [0] = self.f_box_OutputOrder_v2_195_Out_0,
                [1] = self.f_box_OutputOrder_v2_195_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1083119071");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_212_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_570_B10_020",
            id = "1008920",
        },
        -- TargetGroup,
        [2] = self.PlayerGroup,
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_189()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109140714127366115",
        -- eWoodpole,
        [11] = "2109596555517369391",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_79()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1808489174",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1153976312");
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
                [0] = self.f_box_OutputOrder_v2_198_Out_0,
                [1] = self.f_box_OutputOrder_v2_198_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1159629693");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_187_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_91()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109138485662210703",
        -- eWoodpole,
        [11] = "2109596407542324157",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_62()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = false,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2109140714127366115",
        -- eTargetDynamic,
        [8] = "2109168022888441065",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109140714127366116",
        -- eTargetDynamic_PosUP,
        [10] = "2109140714129463270",
        -- eWoodpole,
        [11] = "2109596555517369391",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_53()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 90,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1200101956");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1209156978");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_83_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B10_020",
            id = "1008920",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1218933487");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_222_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_222_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.MIS_570_B10.Completed_Round1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1220836396");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_98_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T04,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_239()
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

function export:OnEnter_box_Delay_v5_250()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1231981108");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_34_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T01,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1274672753");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
                [3] = self.f_box_OutputOrder_v2_19_Out_3,
                [4] = self.f_box_OutputOrder_v2_19_Out_4,
                [5] = self.f_box_OutputOrder_v2_19_Out_5,
                [6] = self.f_box_OutputOrder_v2_19_Out_6,
                [7] = self.f_box_OutputOrder_v2_19_Out_7,
                [8] = self.f_box_OutputOrder_v2_19_Out_8,
                [9] = self.f_box_OutputOrder_v2_19_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_107()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002617258502",
        -- eWoodpole,
        [11] = "2109595769255257709",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1278542552");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
                [2] = self.f_box_OutputOrder_v2_56_Out_2,
                [3] = self.f_box_OutputOrder_v2_56_Out_3,
                [4] = self.f_box_OutputOrder_v2_56_Out_4,
                [5] = self.f_box_OutputOrder_v2_56_Out_5,
                [6] = self.f_box_OutputOrder_v2_56_Out_6,
                [7] = self.f_box_OutputOrder_v2_56_Out_7,
                [8] = self.f_box_OutputOrder_v2_56_Out_8,
                [9] = self.f_box_OutputOrder_v2_56_Out_9,
            },
            count = 11,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_45()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = false,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2108697609009920988",
        -- eTargetDynamic,
        [8] = "2109167822480401625",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109140557941970906",
        -- eTargetDynamic_PosUP,
        [10] = "2109140557939873752",
        -- eWoodpole,
        [11] = "2109596481290771445",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
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
        [5] = false,
        -- eShootTarget,
        [7] = "2108697609009920988",
        -- eWoodpole,
        [11] = "2109596481290771445",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1289580525");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_160_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T07,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_243()
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

function export:OnEnter_box__TargetManager_v2_116()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002659201572",
        -- eWoodpole,
        [11] = "2109596276407409531",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1313216440");
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
                [0] = self.f_box_OutputOrder_v2_157_Out_0,
                [1] = self.f_box_OutputOrder_v2_157_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1323620058");
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
                [0] = self.f_box_OutputOrder_v2_165_Out_0,
                [1] = self.f_box_OutputOrder_v2_165_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1334206662");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_39_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_570_B10_011a",
            id = "1027289",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_148()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287169592942934",
        -- SoundId,
        [1] = "3193178485",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_50()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = false,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2109138728879413925",
        -- eTargetDynamic,
        [8] = "2109167701137089749",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109138782847523505",
        -- eTargetDynamic_PosUP,
        [10] = "2109138782847523503",
        -- eWoodpole,
        [11] = "2109596450907233235",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_141()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002686464566",
        -- eWoodpole,
        [11] = "2109596376257010589",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_14()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002610967040",
        -- eWoodpole,
        [11] = "2109263002610967040",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1436961304");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_162_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T08,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1439394977");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_71_Out,
    });
    params = {
        -- Float,
        [0] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1440896228");
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
                [0] = self.f_box_OutputOrder_v2_67_Out_0,
                [1] = self.f_box_OutputOrder_v2_67_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1477217825");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1484980812");
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

function export:OnEnter_box_SoundModifier_v2_237()
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

function export:OnEnter_box__TargetManager_v2_120()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002678075952",
        -- eWoodpole,
        [11] = "2109596185917397845",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1525214199");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_97_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1527022071");
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
                [0] = self.f_box_OutputOrder_v2_156_Out_0,
                [1] = self.f_box_OutputOrder_v2_156_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_255()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_51()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = false,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2109140658764650461",
        -- eTargetDynamic,
        [8] = "2109167979779384551",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109140665202907102",
        -- eTargetDynamic_PosUP,
        [10] = "2109140665205004256",
        -- eWoodpole,
        [11] = "2109596531882466327",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1550221387");
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
                [0] = self.f_box_OutputOrder_v2_210_Out_0,
                [1] = self.f_box_OutputOrder_v2_210_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1570227307");
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
                [0] = self.f_box_OutputOrder_v2_94_Out_0,
                [1] = self.f_box_OutputOrder_v2_94_Out_1,
                [2] = self.f_box_OutputOrder_v2_94_Out_2,
                [3] = self.f_box_OutputOrder_v2_94_Out_3,
                [4] = self.f_box_OutputOrder_v2_94_Out_4,
                [5] = self.f_box_OutputOrder_v2_94_Out_5,
                [6] = self.f_box_OutputOrder_v2_94_Out_6,
                [7] = self.f_box_OutputOrder_v2_94_Out_7,
                [8] = self.f_box_OutputOrder_v2_94_Out_8,
                [9] = self.f_box_OutputOrder_v2_94_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1573352694");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_68_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B10_011a",
            id = "1027289",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1582494035");
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

function export:OnEnter_box__TargetManager_v2_188()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109140658764650461",
        -- eWoodpole,
        [11] = "2109596531882466327",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_126()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287123096985934",
        -- SoundId,
        [1] = "4027802590",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_245");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1626881577");
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

function export:OnEnter_box_SoundModifier_v2_143()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287123096985934",
        -- SoundId,
        [1] = "3193178485",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1654761425");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_20_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_20_A_ne_B,
    });
    params = {
        -- A,
        [0] = self.iProgressUpdate_RND2,
        -- B,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1657630855");
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
                [0] = self.f_box_OutputOrder_v2_140_Out_0,
                [1] = self.f_box_OutputOrder_v2_140_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_217()
    local params;
    params = {
        -- Group,
        [0] = self.eNana,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2378816749",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1692828346");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_12_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_12_A_ne_B,
    });
    params = {
        -- A,
        [0] = self.iProgressUpdate_RND1,
        -- B,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_149()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287167990718804",
        -- SoundId,
        [1] = "3193178485",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_132()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002667590186",
        -- eWoodpole,
        [11] = "2109596297353763719",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_16()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002625647116",
        -- eWoodpole,
        [11] = "2109596113376910119",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1751169366");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_99_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T03,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1783356638");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_105_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1786252400");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B10_020",
            id = "1008920",
        },
        -- Progress,
        [1] = 1,
        -- ProgressId,
        [2] = self.iProgressID_RND1,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_215()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1796561407");
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
                [0] = self.f_box_OutputOrder_v2_183_Out_0,
                [1] = self.f_box_OutputOrder_v2_183_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1813194448");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_55_Out,
    });
    params = {
        -- A,
        [0] = self.iProgressUpdate_RND2,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1818339078");
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

function export:OnEnter_box_OutputOrder_v2_247()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_247");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1821682320");
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
                [0] = self.f_box_OutputOrder_v2_247_Out_0,
                [1] = self.f_box_OutputOrder_v2_247_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1831483296");
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
                [0] = self.f_box_OutputOrder_v2_111_Out_0,
                [1] = self.f_box_OutputOrder_v2_111_Out_1,
                [2] = self.f_box_OutputOrder_v2_111_Out_2,
                [3] = self.f_box_OutputOrder_v2_111_Out_3,
                [4] = self.f_box_OutputOrder_v2_111_Out_4,
                [5] = self.f_box_OutputOrder_v2_111_Out_5,
                [6] = self.f_box_OutputOrder_v2_111_Out_6,
                [7] = self.f_box_OutputOrder_v2_111_Out_7,
                [8] = self.f_box_OutputOrder_v2_111_Out_8,
                [9] = self.f_box_OutputOrder_v2_111_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_54()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = false,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2109122398115616716",
        -- eTargetDynamic,
        [8] = "2109165745632981698",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109138440414059148",
        -- eTargetDynamic_PosUP,
        [10] = "2109138440414059146",
        -- eWoodpole,
        [11] = "2109596493825448961",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1851456626");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_84_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B10_012a_Timer",
            id = "1032525",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_258()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_58()
    local params;
    params = {
        -- bBreakableMonitor,
        [0] = false,
        -- bMoveMonitor,
        [1] = true,
        -- bMoveMonitor_Check_XYZ,
        [2] = false,
        -- bNeedsObjective,
        [3] = false,
        -- bTargetDynamic,
        [4] = true,
        -- bTargetDynamic_Need_Up_Down,
        [5] = true,
        -- eShootTarget,
        [7] = "2109122437837772810",
        -- eTargetDynamic,
        [8] = "2109168084815242477",
        -- eTargetDynamic_PosDOWN,
        [9] = "2109140900650162188",
        -- eTargetDynamic_PosUP,
        [10] = "2109140900652259342",
        -- eWoodpole,
        [11] = "2109596543483911203",
        -- fTargetDynamic_MovingDelay,
        [12] = self.fTargetDynamic_MovingDelay,
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_242()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 80,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1884351763");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_223_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1896671204");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_4_Out,
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
        [5] = false,
        -- eShootTarget,
        [7] = "2108640682070516385",
        -- eWoodpole,
        [11] = "2109596465830566889",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_152()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287171448922456",
        -- SoundId,
        [1] = "3193178485",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1923715411");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_18_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108030824323492801",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1934294672");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_30_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108030824323492801",
        -- Entity,
        [2] = self.eNana,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1943419696");
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
            item = "MIS_570_B10_020b",
            id = "1026697",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 10,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|1948515788");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_158_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bRND2_T09,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_228()
    local params;
    params = {
        -- Group,
        [0] = self.eNana,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3150749454",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_220()
    local params;
    params = {
        -- Group,
        [0] = self.eNana,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2444480250",
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_44()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109122398115616716",
        -- eWoodpole,
        [11] = "2109596493825448961",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box__FadeToBlack_Deactivate_9()
    local params;
    params = {
        -- bNeedFadeToBlack,
        [0] = false,
        -- bNeedTeleport,
        [1] = false,
        -- Player_CanMove,
        [2] = true,
        -- Unload_MissionBlockID,
        [4] = "54181901970645545",
        -- Unload_MissionLayerID,
        [5] = "72196300886802333",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2007659738");
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

function export:OnEnter_box_SetBoolean_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2012158215");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_100_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_129()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287171448922456",
        -- SoundId,
        [1] = "4027802590",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2052409069");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_86_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2073702912");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_81_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_570_B10_020b",
            id = "1026697",
        },
        -- TargetGroup,
        [2] = self.PlayerGroup,
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2079598444");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_76_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2080305572");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_61_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iProgressUpdate_RND2,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box__TargetManager_v2_122()
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
        [5] = false,
        -- eShootTarget,
        [7] = "2109263002667590186",
        -- eWoodpole,
        [11] = "2109596297353763719",
        -- fTargetDynamic_WaitingDelay,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_151()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287163246960978",
        -- SoundId,
        [1] = "3193178485",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2106801567");
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
                [0] = self.f_box_OutputOrder_v2_196_Out_0,
                [1] = self.f_box_OutputOrder_v2_196_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2108295196");
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
                [0] = self.f_box_OutputOrder_v2_193_Out_0,
                [1] = self.f_box_OutputOrder_v2_193_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2108861896");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_232()
    local params;
    params = {
        -- Group,
        [0] = self.eNana,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3310088514",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2120149318");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_73_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_570_B10_011a_Timer",
            id = "1032524",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_134()
    local params;
    params = {
        -- Pawns,
        [0] = "2109287174177317210",
        -- SoundId,
        [1] = "4027802590",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_570\\MIS_570_B10.domino|@MIS_570_B10_Main|2144840051");
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
                [0] = self.f_box_OutputOrder_v2_109_Out_0,
                [1] = self.f_box_OutputOrder_v2_109_Out_1,
                [2] = self.f_box_OutputOrder_v2_109_Out_2,
                [3] = self.f_box_OutputOrder_v2_109_Out_3,
                [4] = self.f_box_OutputOrder_v2_109_Out_4,
                [5] = self.f_box_OutputOrder_v2_109_Out_5,
                [6] = self.f_box_OutputOrder_v2_109_Out_6,
                [7] = self.f_box_OutputOrder_v2_109_Out_7,
                [8] = self.f_box_OutputOrder_v2_109_Out_8,
                [9] = self.f_box_OutputOrder_v2_109_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_121_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND1_T09 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_123_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND1_T08 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_190_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T10 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_184_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T08 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.LocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_77_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND1_T02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_108_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND1_T06 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_96_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T03 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_87_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND1_T05 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_35_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T04 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_60_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_28_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_28;
    self.eNana = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_119_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND1_T10 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_117_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND1_T07 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_185_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T07 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_85_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND1_T01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_213_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.iProgressID_RND1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iProgressUpdate_RND1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_187_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T09 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_71_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.fTargetDynamic_MovingDelay = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_97_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_105_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T06 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iProgressUpdate_RND2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_223_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.MIS_570_B10.Completed_Round1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_64_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.iProgressID_RND2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_100_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND2_T05 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_86_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND1_T04 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_76_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bRND1_T03 = l0:GetDataOutValue(0);
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
