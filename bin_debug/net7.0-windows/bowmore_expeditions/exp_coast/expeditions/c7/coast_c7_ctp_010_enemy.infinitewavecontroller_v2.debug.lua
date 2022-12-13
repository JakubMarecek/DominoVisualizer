LUAC�$ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_coast/expeditions/c7/coast_c7_ctp_010_enemy.domino
-- User graph: InfiniteWaveController_V2
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Enemy.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Coast_C7_CTP_010_Enemy = nil;
    Globals.Coast_C7_CTP_010_Enemy = {
        gTrackedPlayers = nil,
        iC7CurrentNumberOfEnemies = 0,
        bTrackerNotYetActive = true,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Enemy.InfiniteWaveController_V2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "StartReinforcements",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnlyQuicklaunchPlayerLoadout",
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
                name = "Debug_ExtractionPOIID",
                type = "int",
            },
            [1] = {
                name = "Debug_PackagePositionID",
                type = "int",
            },
            [2] = {
                name = "Debug_PackageSpawner",
                type = "entity",
            },
            [3] = {
                name = "Debug_PlayerSpawnPOIIndex",
                type = "int",
            },
            [4] = {
                name = "DebugMode",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
            [0] = {
                name = "Difficulty",
                type = "int",
            },
            [1] = {
                name = "ExtractionPOIIndex",
                type = "int",
            },
            [2] = {
                name = "PackagePositionIndex",
                type = "int",
            },
            [3] = {
                name = "PackageSpawner",
                type = "entity",
            },
            [4] = {
                name = "PlayerSpawnPOIIndex",
                type = "int",
            },
        },
        dataOutCount = 5,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "CleanupOnly",
            },
            [2] = {
                name = "In",
            },
            [3] = {
                name = "UpdateAllowedRemainingNPCForNextCheck",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "AllowedRemainingNPCUpdated",
                delayed = false,
            },
            [1] = {
                name = "Cancelled",
                delayed = false,
            },
            [2] = {
                name = "NextWave",
                delayed = false,
            },
            [3] = {
                name = "ToStartFailSafeSetup",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "AllowedRemainingNPC",
                type = "int",
            },
            [1] = {
                name = "EnemyGroup",
                type = "group",
            },
            [2] = {
                name = "HardDelayBeforeNextWave",
                type = "float",
            },
            [3] = {
                name = "MaxWaveDuration",
                type = "float",
            },
            [4] = {
                name = "MinWaveDuration",
                type = "float",
            },
            [5] = {
                name = "NextWaveWaitUntilCombat",
                type = "bool",
            },
            [6] = {
                name = "opt_Spawner_2",
                type = "entity",
            },
            [7] = {
                name = "opt_Spawner_3",
                type = "entity",
            },
            [8] = {
                name = "opt_Spawner_4",
                type = "entity",
            },
            [9] = {
                name = "opt_Spawner_5",
                type = "entity",
            },
            [10] = {
                name = "Spawner_1",
                type = "entity",
            },
        },
        dataInCount = 11,
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
    metadataTable[GetPathID("Domino/System/IndexList_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
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
                name = "message",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Mission_Flow/MissionAckTriggerListener.lua")] = {
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
        },
        controlOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/Switch.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "None",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "InfiniteWaveController_V2";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2";
    self.Player_Zone = "";
    self.Max_NPC_ALIVE = 10;
    self.PlayerInBoatClub = false;
    self.PlayerInCliffHouses = false;
    self.PlayerInTunnel = false;
    self.PlayerInShipwreck = false;
    self.PlayerInBunker = false;
    self.PlayerInContainersShore = false;
    self.Spawner_VEH_Water = nil;
    self.Spawners_Close_Range_x3 = nil;
    self.Spawners_Medium_Range_x4 = nil;
    self.Spawners_Close_Range_x2 = nil;
    self.Spawner_Close_Range_3 = nil;
    self.Spawner_Medium_Range_x3 = nil;
    self.tes = nil;
    self.c7_enemies = nil;
    self.iDifficulty = 0;
    self.iC7AllowedRemainingNPCs = 0;
    self.iC7WavesNumber = 0;
    self.eSpawner_Close_Range_x1 = nil;
    self.eSpawner_Close_Range_x2 = nil;
    self.eSpawner_Medium_Range_x1 = nil;
    self.eSpawner_Medium_Range_x2_A = nil;
    self.eSpawner_Medium_Range_x2_B = nil;
    self.eSpawner_Long_Range = nil;
    self.eSpawner_Heavy = nil;
    self.eSpawner_Elite = nil;
    self.eSpawner_VEH = nil;
    self.eSpawner_VEH_Heavy = nil;
    self.sdasd = 0;
    self.iPlayerLocationIndex = 0;
    self.fC7MinWaveDuration = 0;
    self.fC7MaxWaveDuration = 0;
    self.iC7Difficulty = 0;
    self.iC7ExtractionPOIIndex = 0;
    self.eC7PackageSpawner = nil;
    self.iC7PackagePositionIndex = 0;
    self.iC7PlayerSpawnPOIIndex = 0;
    self.PlayerDetected = false;
    self.bTrackerNotYetActive = true;
    self.bPlayerInHelicopter = false;
    self.eSpawner_HelicopterDropOff = nil;
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|25920592");
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
    self.box_Brick_Exp_Common_WaveSpawner_28 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|28913838");
    l0:SetConnections({
        -- Cancelled,
        [1] = self.f_box_Brick_Exp_Common_WaveSpawner_28_Cancelled,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_28_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_28_ToStartFailSafeSetup,
    });
    self.box_IndexList_v2_140 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|81020960");
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
        -- Output,
        [0] = {
            connections = {
                [2] = self.f_box_IndexList_v2_140_Output_2,
            },
            count = 3,
        },
    });
    self.box_ProximityTrigger_v3_216 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|92619974");
    l0:SetConnections({
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_216_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_216_OnOccupied,
    });
    self.box_MessageListener_v3_3 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|189541424");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_3_Received,
    });
    self.box_MultipleOR_146 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|190484435");
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
        [0] = self.f_box_MultipleOR_146_Out,
    });
    self.box_MultipleOR_154 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|190756161");
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
        [0] = self.f_box_MultipleOR_154_Out,
    });
    self.box_MultipleOR_180 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|280208993");
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
    self.box_EntityStatusListener_138 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|291320748");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_138_Loaded,
    });
    self.box_Brick_Exp_Common_BasicSetups_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_BasicSetups.debug.lua");
    l0 = self.box_Brick_Exp_Common_BasicSetups_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_BasicSetups_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|325249778");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Brick_Exp_Common_BasicSetups_22_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_29 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|350259489");
    l0:SetConnections({
        -- Cancelled,
        [1] = self.f_box_Brick_Exp_Common_WaveSpawner_29_Cancelled,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_29_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_29_ToStartFailSafeSetup,
    });
    self.box_Brick_Exp_Common_WaveSpawner_157 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|353913601");
    l0:SetConnections({
        -- Cancelled,
        [1] = self.f_box_Brick_Exp_Common_WaveSpawner_157_Cancelled,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_157_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_157_ToStartFailSafeSetup,
    });
    self.box_Brick_Exp_Common_WaveSpawner_177 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|357889935");
    l0:SetConnections({
        -- Cancelled,
        [1] = self.f_box_Brick_Exp_Common_WaveSpawner_177_Cancelled,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_177_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_177_ToStartFailSafeSetup,
    });
    self.box_MultipleOR_150 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|382008203");
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
    self.box_MultipleOR_155 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|388282130");
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
        [0] = self.f_box_MultipleOR_155_Out,
    });
    self.box_Delay_v5_114 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|403828936");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_114_TimeElapsed,
    });
    self.box_MissionAckTriggerListener_213 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|418284207");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MissionAckTriggerListener_213_Enabled,
    });
    self.box_MissionAckTriggerListener_184 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|505626321");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MissionAckTriggerListener_184_Enabled,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|585402156");
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
    self.box_IndexList_v2_143 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|619534525");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_143_Output_0,
                [1] = self.f_box_IndexList_v2_143_Output_1,
                [2] = self.f_box_IndexList_v2_143_Output_2,
                [3] = self.f_box_IndexList_v2_143_Output_3,
                [4] = self.f_box_IndexList_v2_143_Output_4,
                [5] = self.f_box_IndexList_v2_143_Output_5,
                [6] = self.f_box_IndexList_v2_143_Output_6,
            },
            count = 7,
        },
    });
    self.box_Brick_Exp_Common_WaveSpawner_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|734493549");
    l0:SetConnections({
        -- AllowedRemainingNPCUpdated,
        [0] = self.f_box_Brick_Exp_Common_WaveSpawner_19_AllowedRemainingNPCUpdated,
        -- Cancelled,
        [1] = self.f_box_Brick_Exp_Common_WaveSpawner_19_Cancelled,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_19_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_19_ToStartFailSafeSetup,
    });
    self.box_MultipleOR_116 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|751129830");
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
        [0] = self.f_box_MultipleOR_116_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_59 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|791652088");
    l0:SetConnections({
        -- Cancelled,
        [1] = self.f_box_Brick_Exp_Common_WaveSpawner_59_Cancelled,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_59_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_59_ToStartFailSafeSetup,
    });
    self.box_OnceOnly_v3_131 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|820066824");
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
                [0] = self.f_box_OnceOnly_v3_131_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_159 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|828120985");
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
        [0] = self.f_box_MultipleOR_159_Out,
    });
    self.box_IndexList_v2_121 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|828991257");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_121_Output_0,
                [1] = self.f_box_IndexList_v2_121_Output_1,
                [2] = self.f_box_IndexList_v2_121_Output_2,
            },
            count = 3,
        },
    });
    self.box_MissionAckTriggerListener_193 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|843882619");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MissionAckTriggerListener_193_Enabled,
    });
    self.box_MultipleOR_139 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|855319163");
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
        [0] = self.f_box_MultipleOR_139_Out,
    });
    self.box_MultipleOR_176 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|888780492");
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
        [0] = self.f_box_MultipleOR_176_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|924971990");
    l0:SetConnections({
        -- Cancelled,
        [1] = self.f_box_Brick_Exp_Common_WaveSpawner_24_Cancelled,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_24_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_24_ToStartFailSafeSetup,
    });
    self.box_IndexList_v2_20 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1064549576");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_20_Output_0,
                [1] = self.f_box_IndexList_v2_20_Output_1,
                [2] = self.f_box_IndexList_v2_20_Output_2,
                [3] = self.f_box_IndexList_v2_20_Output_3,
                [4] = self.f_box_IndexList_v2_20_Output_4,
                [5] = self.f_box_IndexList_v2_20_Output_5,
                [6] = self.f_box_IndexList_v2_20_Output_6,
                [7] = self.f_box_IndexList_v2_20_Output_7,
            },
            count = 8,
        },
    });
    self.box_EntityStatusListener_136 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1093632726");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_136_Loaded,
    });
    self.box_Gate_v3_12 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1159385950");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_12_Out,
    });
    self.box_MultipleOR_232 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1159637645");
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
        [0] = self.f_box_MultipleOR_232_Out,
    });
    self.box_Switch_173 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1180741091");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Switch_173_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_173_Output_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_144 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1217747647");
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
        [0] = self.f_box_MultipleOR_144_Out,
    });
    self.box_MissionAckTriggerListener_209 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1241495222");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MissionAckTriggerListener_209_Enabled,
    });
    self.box_OnceOnly_v3_167 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1280867857");
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
                [0] = self.f_box_OnceOnly_v3_167_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_178 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1383003490");
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
                [0] = self.f_box_OnceOnly_v3_178_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_165 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1383225117");
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
                [0] = self.f_box_OnceOnly_v3_165_Out_0,
            },
            count = 2,
        },
    });
    self.box_MissionAckTriggerListener_196 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1503660122");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MissionAckTriggerListener_196_Enabled,
    });
    self.box_MultipleOR_151 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1534793972");
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
        [0] = self.f_box_MultipleOR_151_Out,
    });
    self.box_Brick_Exp_Common_WaveSpawner_179 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1596524009");
    l0:SetConnections({
        -- Cancelled,
        [1] = self.f_box_Brick_Exp_Common_WaveSpawner_179_Cancelled,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_179_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_179_ToStartFailSafeSetup,
    });
    self.box_OnceOnly_v3_168 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1610134973");
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
                [0] = self.f_box_OnceOnly_v3_168_Out_0,
            },
            count = 2,
        },
    });
    self.box_MessageListener_v3_132 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1666567073");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_132_Received,
    });
    self.box_Brick_Exp_Common_WaveSpawner_31 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1668340297");
    l0:SetConnections({
        -- Cancelled,
        [1] = self.f_box_Brick_Exp_Common_WaveSpawner_31_Cancelled,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_31_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_31_ToStartFailSafeSetup,
    });
    self.box_OnceOnly_v3_166 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1673983557");
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
                [0] = self.f_box_OnceOnly_v3_166_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Exp_Common_WaveSpawner_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_WaveSpawner.debug.lua");
    l0 = self.box_Brick_Exp_Common_WaveSpawner_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_WaveSpawner_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1692507085");
    l0:SetConnections({
        -- Cancelled,
        [1] = self.f_box_Brick_Exp_Common_WaveSpawner_21_Cancelled,
        -- NextWave,
        [2] = self.f_box_Brick_Exp_Common_WaveSpawner_21_NextWave,
        -- ToStartFailSafeSetup,
        [3] = self.f_box_Brick_Exp_Common_WaveSpawner_21_ToStartFailSafeSetup,
    });
    self.box_ProximityTrigger_v3_187 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1768255323");
    l0:SetConnections({
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_187_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_187_OnOccupied,
    });
    self.box_ProximityTrigger_v3_204 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1783692645");
    l0:SetConnections({
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_204_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_204_OnOccupied,
    });
    self.box_ProximityTrigger_v3_199 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1797965933");
    l0:SetConnections({
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_199_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_199_OnOccupied,
    });
    self.box_IndexList_v2_137 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1860141088");
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
        -- Output,
        [0] = {
            connections = {
                [2] = self.f_box_IndexList_v2_137_Output_2,
            },
            count = 3,
        },
    });
    self.box_MissionAckTriggerListener_202 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1863026952");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MissionAckTriggerListener_202_Enabled,
    });
    self.box_ProximityTrigger_v3_197 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1865894792");
    l0:SetConnections({
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_197_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_197_OnOccupied,
    });
    self.box_IndexList_v2_172 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1866238197");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_172_Output_0,
                [1] = self.f_box_IndexList_v2_172_Output_1,
                [2] = self.f_box_IndexList_v2_172_Output_2,
            },
            count = 3,
        },
    });
    self.box_OnceOnly_v3_182 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1879877738");
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
                [0] = self.f_box_OnceOnly_v3_182_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1908844661");
    l0:SetConnections({
        -- Paused,
        [1] = self.f_box_Delay_v5_40_Paused,
        -- Resumed,
        [2] = self.f_box_Delay_v5_40_Resumed,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_OnceOnly_v3_18 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1913347983");
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
                [0] = self.f_box_OnceOnly_v3_18_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_134 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1937996868");
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
        [0] = self.f_box_MultipleOR_134_Out,
    });
    self.box_OnceOnly_v3_163 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1956198038");
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
                [0] = self.f_box_OnceOnly_v3_163_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v3_208 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1962066537");
    l0:SetConnections({
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_208_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_208_OnOccupied,
    });
    self.box_Delay_v5_115 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1973156186");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_115_TimeElapsed,
    });
    self.box_IndexList_v2_153 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1988222150");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_153_Output_0,
                [1] = self.f_box_IndexList_v2_153_Output_1,
                [2] = self.f_box_IndexList_v2_153_Output_2,
            },
            count = 3,
        },
    });
    self.box_ProximityTrigger_v3_221 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2021936582");
    l0:SetConnections({
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_221_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_221_OnOccupied,
    });
    self.box_OnceOnly_v3_164 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2082358764");
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
                [0] = self.f_box_OnceOnly_v3_164_Out_0,
            },
            count = 2,
        },
    });
    self.box_MissionAckTriggerListener_219 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2089323016");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MissionAckTriggerListener_219_Enabled,
    });
    self.box_MultipleOR_148 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2091338085");
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
        [0] = self.f_box_MultipleOR_148_Out,
    });
    self.box_IndexList_v2_25 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2097850495");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_25_Output_0,
                [1] = self.f_box_IndexList_v2_25_Output_1,
                [2] = self.f_box_IndexList_v2_25_Output_2,
                [3] = self.f_box_IndexList_v2_25_Output_3,
                [4] = self.f_box_IndexList_v2_25_Output_4,
                [5] = self.f_box_IndexList_v2_25_Output_5,
                [6] = self.f_box_IndexList_v2_25_Output_6,
                [7] = self.f_box_IndexList_v2_25_Output_7,
            },
            count = 8,
        },
    });
    self.box_MessageListener_v3_126 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2102346022");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_126_Received,
    });
    self.box_OnceOnly_v3_169 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2118028519");
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
                [0] = self.f_box_OnceOnly_v3_169_Out_0,
            },
            count = 2,
        },
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|930266676", "930266676", "InfiniteWaveController_V2", "In", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:StartReinforcements()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_127();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|626386699", "626386699", "InfiniteWaveController_V2", "StartReinforcements", "box_OutputOrder_v2_127.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_258_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_143();
    l0 = self.box_IndexList_v2_143;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|389260199", "389260199", "InfiniteWaveController_V2", "box_Simple_Node_258.Out", "box_IndexList_v2_143.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_264_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1685214788", "1685214788", "InfiniteWaveController_V2", "box_Simple_Node_264.Out", "box_MultipleOR_139.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1385460328", "1385460328", "InfiniteWaveController_V2", "box_Simple_Node_264.Out", "box_OutputOrder_v2_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_262_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|218661329", "218661329", "InfiniteWaveController_V2", "box_Simple_Node_262.Out", "box_OutputOrder_v2_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1036577625", "1036577625", "InfiniteWaveController_V2", "box_Simple_Node_262.Out", "box_MultipleOR_139.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Simple_Node_260_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_231();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1988932930", "1988932930", "InfiniteWaveController_V2", "box_Simple_Node_260.Out", "box_OutputOrder_v2_231.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1347856650", "1347856650", "InfiniteWaveController_V2", "box_Simple_Node_260.Out", "box_MultipleOR_139.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_259_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2039942670", "2039942670", "InfiniteWaveController_V2", "box_Simple_Node_259.Out", "box_OutputOrder_v2_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_134;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|90181650", "90181650", "InfiniteWaveController_V2", "box_Simple_Node_259.Out", "box_MultipleOR_134.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_263_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|627901613", "627901613", "InfiniteWaveController_V2", "box_Simple_Node_263.Out", "box_OutputOrder_v2_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|174757708", "174757708", "InfiniteWaveController_V2", "box_Simple_Node_263.Out", "box_MultipleOR_139.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_265_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_134;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|684919083", "684919083", "InfiniteWaveController_V2", "box_Simple_Node_265.Out", "box_MultipleOR_134.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
    params = self:OnEnter_box_OutputOrder_v2_113();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|765338536", "765338536", "InfiniteWaveController_V2", "box_Simple_Node_265.Out", "box_OutputOrder_v2_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_261_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|714808951", "714808951", "InfiniteWaveController_V2", "box_Simple_Node_261.Out", "box_OutputOrder_v2_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_134;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1394417572", "1394417572", "InfiniteWaveController_V2", "box_Simple_Node_261.Out", "box_MultipleOR_134.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_267_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_2();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|881954940", "881954940", "InfiniteWaveController_V2", "box_Simple_Node_267.Out", "box_Compare_Boolean_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_266_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2002946391", "2002946391", "InfiniteWaveController_V2", "box_Simple_Node_266.Out", "box_OutputOrder_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_25();
    l0 = self.box_IndexList_v2_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2014554772", "2014554772", "InfiniteWaveController_V2", "box_Simple_Node_16.Out", "box_IndexList_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_160_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_169;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|968159746", "968159746", "InfiniteWaveController_V2", "box_OutputOrder_v2_160.Out", "box_OnceOnly_v3_169.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_160_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_267();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|865974", "865974", "InfiniteWaveController_V2", "box_OutputOrder_v2_160.Out", "box_Simple_Node_267.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_11_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_11;
    l1 = self.box_OnceOnly_v3_167;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1452177465", "1452177465", "InfiniteWaveController_V2", "box_MultipleOR_11.Out", "box_OnceOnly_v3_167.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_62_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_62_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_64();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1539764972", "1539764972", "InfiniteWaveController_V2", "box_SetEntity_v2_62.Out", "box_SetEntity_v2_64.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_28_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_149();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1969386375", "1969386375", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_28.Cancelled", "box_OutputOrder_v2_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_28_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_28;
    l1 = self.box_MultipleOR_150;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|606444409", "606444409", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_28.NextWave", "box_MultipleOR_150.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_28_ToStartFailSafeSetup()
    local params, l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_28();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|220122192", "220122192", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_28.ToStartFailSafeSetup", "box_Brick_Exp_Common_WaveSpawner_28.Cancel", l0:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_135_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_141();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1883320595", "1883320595", "InfiniteWaveController_V2", "box_UseContextualActionModifier_v3_135.Disabled", "box_Print_v2_141.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_135_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_142();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|998447599", "998447599", "InfiniteWaveController_V2", "box_UseContextualActionModifier_v3_135.Enabled", "box_Print_v2_142.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_88_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_88_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_87();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1532461322", "1532461322", "InfiniteWaveController_V2", "box_SetEntity_v2_88.Out", "box_SetEntity_v2_87.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_8_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_10();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2036398714", "2036398714", "InfiniteWaveController_V2", "box_Compare_Boolean_8.A_is_False", "box_SetInteger_v2_10.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_8_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_9();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1208402660", "1208402660", "InfiniteWaveController_V2", "box_Compare_Boolean_8.A_is_True", "box_SetInteger_v2_9.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_207_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_213();
    l0 = self.box_MissionAckTriggerListener_213;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2037541404", "2037541404", "InfiniteWaveController_V2", "box_OutputOrder_v2_207.Out", "box_MissionAckTriggerListener_213.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_207_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_202();
    l0 = self.box_MissionAckTriggerListener_202;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|132359414", "132359414", "InfiniteWaveController_V2", "box_OutputOrder_v2_207.Out", "box_MissionAckTriggerListener_202.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_207_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_209();
    l0 = self.box_MissionAckTriggerListener_209;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1266769207", "1266769207", "InfiniteWaveController_V2", "box_OutputOrder_v2_207.Out", "box_MissionAckTriggerListener_209.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_207_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_193();
    l0 = self.box_MissionAckTriggerListener_193;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|95076151", "95076151", "InfiniteWaveController_V2", "box_OutputOrder_v2_207.Out", "box_MissionAckTriggerListener_193.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_207_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_196();
    l0 = self.box_MissionAckTriggerListener_196;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|376482363", "376482363", "InfiniteWaveController_V2", "box_OutputOrder_v2_207.Out", "box_MissionAckTriggerListener_196.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_207_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_184();
    l0 = self.box_MissionAckTriggerListener_184;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|800598216", "800598216", "InfiniteWaveController_V2", "box_OutputOrder_v2_207.Out", "box_MissionAckTriggerListener_184.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_207_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_219();
    l0 = self.box_MissionAckTriggerListener_219;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|64826468", "64826468", "InfiniteWaveController_V2", "box_OutputOrder_v2_207.Out", "box_MissionAckTriggerListener_219.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_66_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_66_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_65();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1402987454", "1402987454", "InfiniteWaveController_V2", "box_SetEntity_v2_66.Out", "box_SetEntity_v2_65.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_50_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_50_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_55();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|278122716", "278122716", "InfiniteWaveController_V2", "box_SetEntity_v2_50.Out", "box_SetEntity_v2_55.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_140_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_138();
    l0 = self.box_IndexList_v2_140;
    l1 = self.box_EntityStatusListener_138;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1943581163", "1943581163", "InfiniteWaveController_V2", "box_IndexList_v2_140.Output", "box_EntityStatusListener_138.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_61_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_61_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_62();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|825420619", "825420619", "InfiniteWaveController_V2", "box_SetEntity_v2_61.Out", "box_SetEntity_v2_62.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_216_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_198();
    l0 = self.box_ProximityTrigger_v3_216;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1040738871", "1040738871", "InfiniteWaveController_V2", "box_ProximityTrigger_v3_216.OnEmpty", "box_Print_v2_198.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_216_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_211();
    l0 = self.box_ProximityTrigger_v3_216;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|145545933", "145545933", "InfiniteWaveController_V2", "box_ProximityTrigger_v3_216.OnOccupied", "box_SetInteger_v2_211.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_71_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_71_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_61();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|842789227", "842789227", "InfiniteWaveController_V2", "box_SetEntity_v2_71.Out", "box_SetEntity_v2_61.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_55_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_266();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1361497721", "1361497721", "InfiniteWaveController_V2", "box_SetEntity_v2_55.Out", "box_Simple_Node_266.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_74_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_74_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_77();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|83001647", "83001647", "InfiniteWaveController_V2", "box_SetEntity_v2_74.Out", "box_SetEntity_v2_77.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_17_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_15();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|389907134", "389907134", "InfiniteWaveController_V2", "box_SetFloat_v2_17.Out", "box_SetFloat_v2_15.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_3_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_5();
    l0 = self.box_MessageListener_v3_3;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1756547056", "1756547056", "InfiniteWaveController_V2", "box_MessageListener_v3_3.Received", "box_SetBoolean_v2_5.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_146_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_146;
    l1 = self.box_OnceOnly_v3_165;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1896867290", "1896867290", "InfiniteWaveController_V2", "box_MultipleOR_146.Out", "box_OnceOnly_v3_165.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_154_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_157();
    l0 = self.box_MultipleOR_154;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_157;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1046594532", "1046594532", "InfiniteWaveController_V2", "box_MultipleOR_154.Out", "box_Brick_Exp_Common_WaveSpawner_157.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SetEntity_v2_82_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_82_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_79();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|822529669", "822529669", "InfiniteWaveController_V2", "box_SetEntity_v2_82.Out", "box_SetEntity_v2_79.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_72_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_72_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_74();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1339694665", "1339694665", "InfiniteWaveController_V2", "box_SetEntity_v2_72.Out", "box_SetEntity_v2_74.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_20();
    l0 = self.box_IndexList_v2_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1973016251", "1973016251", "InfiniteWaveController_V2", "box_OutputOrder_v2_27.Out", "box_IndexList_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_30();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|820565926", "820565926", "InfiniteWaveController_V2", "box_OutputOrder_v2_27.Out", "box_Print_v2_30.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_120_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_120_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_125();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|68688136", "68688136", "InfiniteWaveController_V2", "box_SetFloat_v2_120.Out", "box_Print_v2_125.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_224_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_224_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_226();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1705532500", "1705532500", "InfiniteWaveController_V2", "box_SetEntity_v2_224.Out", "box_SetEntity_v2_226.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_124_Out()
    self:OnExit_box_SetEntity_v2_124_Out();
end;

function export:f_box_SetEntity_v2_67_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_67_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_71();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|546054329", "546054329", "InfiniteWaveController_V2", "box_SetEntity_v2_67.Out", "box_SetEntity_v2_71.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_34_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_34_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_36();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1198341085", "1198341085", "InfiniteWaveController_V2", "box_SetEntity_v2_34.Out", "box_SetEntity_v2_36.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_180_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_180;
    l1 = self.box_OnceOnly_v3_182;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|377590890", "377590890", "InfiniteWaveController_V2", "box_MultipleOR_180.Out", "box_OnceOnly_v3_182.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_162_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_164;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1641803964", "1641803964", "InfiniteWaveController_V2", "box_OutputOrder_v2_162.Out", "box_OnceOnly_v3_164.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_162_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_267();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|204077053", "204077053", "InfiniteWaveController_V2", "box_OutputOrder_v2_162.Out", "box_Simple_Node_267.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_113_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_112();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|136570552", "136570552", "InfiniteWaveController_V2", "box_OutputOrder_v2_113.Out", "box_Print_v2_112.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_113_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_102();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2115548316", "2115548316", "InfiniteWaveController_V2", "box_OutputOrder_v2_113.Out", "box_SetEntity_v2_102.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_138_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_135();
    l0 = self.box_EntityStatusListener_138;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|81349213", "81349213", "InfiniteWaveController_V2", "box_EntityStatusListener_138.Loaded", "box_UseContextualActionModifier_v3_135.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_161_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_163;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1879566619", "1879566619", "InfiniteWaveController_V2", "box_OutputOrder_v2_161.Out", "box_OnceOnly_v3_163.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_161_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_267();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2083423396", "2083423396", "InfiniteWaveController_V2", "box_OutputOrder_v2_161.Out", "box_Simple_Node_267.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_BasicSetups_22_Out()
    local params, l0, l1;
    self:OnExit_box_Brick_Exp_Common_BasicSetups_22_Out();
    params = self:OnEnter_box_OutputOrder_v2_118();
    l0 = self.box_Brick_Exp_Common_BasicSetups_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1807777043", "1807777043", "InfiniteWaveController_V2", "box_Brick_Exp_Common_BasicSetups_22.Out", "box_OutputOrder_v2_118.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_60();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1599763592", "1599763592", "InfiniteWaveController_V2", "box_OutputOrder_v2_69.Out", "box_Print_v2_60.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_66();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1231674757", "1231674757", "InfiniteWaveController_V2", "box_OutputOrder_v2_69.Out", "box_SetEntity_v2_66.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_47();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|489672101", "489672101", "InfiniteWaveController_V2", "box_OutputOrder_v2_56.Out", "box_Print_v2_47.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_53();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1530760462", "1530760462", "InfiniteWaveController_V2", "box_OutputOrder_v2_56.Out", "box_SetEntity_v2_53.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_29_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1815961539", "1815961539", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_29.Cancelled", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_29_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_29;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|89750435", "89750435", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_29.NextWave", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_29_ToStartFailSafeSetup()
    local params, l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_29();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_29;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2017247046", "2017247046", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_29.ToStartFailSafeSetup", "box_Brick_Exp_Common_WaveSpawner_29.Cancel", l0:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_157_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_156();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_157;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1242932112", "1242932112", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_157.Cancelled", "box_OutputOrder_v2_156.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_157_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_157;
    l1 = self.box_MultipleOR_155;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1810957426", "1810957426", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_157.NextWave", "box_MultipleOR_155.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_157_ToStartFailSafeSetup()
    local params, l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_157();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_157;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1628631876", "1628631876", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_157.ToStartFailSafeSetup", "box_Brick_Exp_Common_WaveSpawner_157.Cancel", l0:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_177_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_175();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_177;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1340294867", "1340294867", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_177.Cancelled", "box_OutputOrder_v2_175.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_177_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_177;
    l1 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|668621842", "668621842", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_177.NextWave", "box_MultipleOR_176.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_177_ToStartFailSafeSetup()
    local params, l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_177();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_177;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|357177872", "357177872", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_177.ToStartFailSafeSetup", "box_Brick_Exp_Common_WaveSpawner_177.Cancel", l0:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_150_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_150;
    l1 = self.box_OnceOnly_v3_169;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1038982935", "1038982935", "InfiniteWaveController_V2", "box_MultipleOR_150.Out", "box_OnceOnly_v3_169.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_2_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_128();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|69227730", "69227730", "InfiniteWaveController_V2", "box_Compare_Boolean_2.A_is_False", "box_OutputOrder_v2_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_2_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|164062133", "164062133", "InfiniteWaveController_V2", "box_Compare_Boolean_2.A_is_True", "box_Print_v2_1.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_155_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_267();
    l0 = self.box_MultipleOR_155;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1663425821", "1663425821", "InfiniteWaveController_V2", "box_MultipleOR_155.Out", "box_Simple_Node_267.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_45_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_45_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_42();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|944185637", "944185637", "InfiniteWaveController_V2", "box_SetEntity_v2_45.Out", "box_SetEntity_v2_42.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_114_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_117();
    l0 = self.box_Delay_v5_114;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|241904508", "241904508", "InfiniteWaveController_V2", "box_Delay_v5_114.TimeElapsed", "box_SetEntity_v2_117.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_213_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_204();
    l0 = self.box_MissionAckTriggerListener_213;
    l1 = self.box_ProximityTrigger_v3_204;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1508375792", "1508375792", "InfiniteWaveController_V2", "box_MissionAckTriggerListener_213.Enabled", "box_ProximityTrigger_v3_204.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_75_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_75_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_266();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|958336931", "958336931", "InfiniteWaveController_V2", "box_SetEntity_v2_75.Out", "box_Simple_Node_266.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_36_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_36_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_35();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|507688379", "507688379", "InfiniteWaveController_V2", "box_SetEntity_v2_36.Out", "box_SetEntity_v2_35.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_212_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_212_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_186();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|152579397", "152579397", "InfiniteWaveController_V2", "box_SetEntity_v2_212.Out", "box_SetEntity_v2_186.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_128_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_238();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1970467627", "1970467627", "InfiniteWaveController_V2", "box_OutputOrder_v2_128.Out", "box_IntegerArithmetics_v2_238.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_128_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|946054211", "946054211", "InfiniteWaveController_V2", "box_OutputOrder_v2_128.Out", "box_OnceOnly_v3_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_128_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_131;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2118749032", "2118749032", "InfiniteWaveController_V2", "box_OutputOrder_v2_128.Out", "box_OnceOnly_v3_131.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_107_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_107_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_108();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|780032649", "780032649", "InfiniteWaveController_V2", "box_SetEntity_v2_107.Out", "box_SetEntity_v2_108.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_102_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_102_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_109();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1006616248", "1006616248", "InfiniteWaveController_V2", "box_SetEntity_v2_102.Out", "box_SetEntity_v2_109.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_184_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_197();
    l0 = self.box_MissionAckTriggerListener_184;
    l1 = self.box_ProximityTrigger_v3_197;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2049522468", "2049522468", "InfiniteWaveController_V2", "box_MissionAckTriggerListener_184.Enabled", "box_ProximityTrigger_v3_197.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_33_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_33_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_34();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1311617582", "1311617582", "InfiniteWaveController_V2", "box_SetEntity_v2_33.Out", "box_SetEntity_v2_34.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_152_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_151;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|733309601", "733309601", "InfiniteWaveController_V2", "box_OutputOrder_v2_152.Out", "box_MultipleOR_151.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_152_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_158();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1527177259", "1527177259", "InfiniteWaveController_V2", "box_OutputOrder_v2_152.Out", "box_Simple_Node_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_190_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_190_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_212();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|555318524", "555318524", "InfiniteWaveController_V2", "box_SetEntity_v2_190.Out", "box_SetEntity_v2_212.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_101_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_101_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_85();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|146424847", "146424847", "InfiniteWaveController_V2", "box_SetEntity_v2_101.Out", "box_SetEntity_v2_85.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetFloat_v2_17();
    l0 = self.box_MultipleOR_6;
    l1 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1873234313", "1873234313", "InfiniteWaveController_V2", "box_MultipleOR_6.Out", "box_SetFloat_v2_17.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_8();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2090280662", "2090280662", "InfiniteWaveController_V2", "box_OutputOrder_v2_127.Out", "box_Compare_Boolean_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_143_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_259();
    l0 = self.box_IndexList_v2_143;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|303210855", "303210855", "InfiniteWaveController_V2", "box_IndexList_v2_143.Output", "box_Simple_Node_259.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_143_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_260();
    l0 = self.box_IndexList_v2_143;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|640568993", "640568993", "InfiniteWaveController_V2", "box_IndexList_v2_143.Output", "box_Simple_Node_260.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_143_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_261();
    l0 = self.box_IndexList_v2_143;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1577263989", "1577263989", "InfiniteWaveController_V2", "box_IndexList_v2_143.Output", "box_Simple_Node_261.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_143_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_262();
    l0 = self.box_IndexList_v2_143;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1607862765", "1607862765", "InfiniteWaveController_V2", "box_IndexList_v2_143.Output", "box_Simple_Node_262.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_143_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_263();
    l0 = self.box_IndexList_v2_143;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1317520313", "1317520313", "InfiniteWaveController_V2", "box_IndexList_v2_143.Output", "box_Simple_Node_263.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_143_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_264();
    l0 = self.box_IndexList_v2_143;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|38947516", "38947516", "InfiniteWaveController_V2", "box_IndexList_v2_143.Output", "box_Simple_Node_264.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_143_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_265();
    l0 = self.box_IndexList_v2_143;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|900767433", "900767433", "InfiniteWaveController_V2", "box_IndexList_v2_143.Output", "box_Simple_Node_265.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_73_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_73_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_72();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1970128512", "1970128512", "InfiniteWaveController_V2", "box_SetEntity_v2_73.Out", "box_SetEntity_v2_72.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_96_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_96_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_95();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|646888273", "646888273", "InfiniteWaveController_V2", "box_SetEntity_v2_96.Out", "box_SetEntity_v2_95.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_19_AllowedRemainingNPCUpdated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_157();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_19;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_157;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1034249551", "1034249551", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_19.AllowedRemainingNPCUpdated", "box_Brick_Exp_Common_WaveSpawner_157.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_19_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_119();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|720398399", "720398399", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_19.Cancelled", "box_OutputOrder_v2_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_19_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_19;
    l1 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1402170150", "1402170150", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_19.NextWave", "box_MultipleOR_116.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_19_ToStartFailSafeSetup()
    local params, l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_19();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|185652648", "185652648", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_19.ToStartFailSafeSetup", "box_Brick_Exp_Common_WaveSpawner_19.Cancel", l0:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_116_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_116;
    l1 = self.box_OnceOnly_v3_166;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1782028682", "1782028682", "InfiniteWaveController_V2", "box_MultipleOR_116.Out", "box_OnceOnly_v3_166.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_106_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_106_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_104();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1034056559", "1034056559", "InfiniteWaveController_V2", "box_SetEntity_v2_106.Out", "box_SetEntity_v2_104.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_87_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_87_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_98();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1372211413", "1372211413", "InfiniteWaveController_V2", "box_SetEntity_v2_87.Out", "box_SetEntity_v2_98.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_59_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_145();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1599155641", "1599155641", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_59.Cancelled", "box_OutputOrder_v2_145.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_59_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_59;
    l1 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1780543440", "1780543440", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_59.NextWave", "box_MultipleOR_146.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_59_ToStartFailSafeSetup()
    local params, l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_59();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_59;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1821545834", "1821545834", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_59.ToStartFailSafeSetup", "box_Brick_Exp_Common_WaveSpawner_59.Cancel", l0:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_68_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_68_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_266();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|197724756", "197724756", "InfiniteWaveController_V2", "box_SetEntity_v2_68.Out", "box_Simple_Node_266.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_240_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_236();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1064528632", "1064528632", "InfiniteWaveController_V2", "box_Compare_Integers_240.A_ge_B", "box_SetInteger_v2_236.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_240_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_232;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1040150037", "1040150037", "InfiniteWaveController_V2", "box_Compare_Integers_240.A_lt_B", "box_MultipleOR_232.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_131_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_132();
    l0 = self.box_OnceOnly_v3_131;
    l1 = self.box_MessageListener_v3_132;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|851088831", "851088831", "InfiniteWaveController_V2", "box_OnceOnly_v3_131.Out", "box_MessageListener_v3_132.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_159_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_177();
    l0 = self.box_MultipleOR_159;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_177;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1770701005", "1770701005", "InfiniteWaveController_V2", "box_MultipleOR_159.Out", "box_Brick_Exp_Common_WaveSpawner_177.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_121_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_122();
    l0 = self.box_IndexList_v2_121;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1985800034", "1985800034", "InfiniteWaveController_V2", "box_IndexList_v2_121.Output", "box_SetEntity_v2_122.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_121_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_123();
    l0 = self.box_IndexList_v2_121;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|271486177", "271486177", "InfiniteWaveController_V2", "box_IndexList_v2_121.Output", "box_SetEntity_v2_123.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_121_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_124();
    l0 = self.box_IndexList_v2_121;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1206987974", "1206987974", "InfiniteWaveController_V2", "box_IndexList_v2_121.Output", "box_SetEntity_v2_124.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_215_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_215_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_194();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|817047961", "817047961", "InfiniteWaveController_V2", "box_SetInteger_v2_215.Out", "box_Print_v2_194.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_193_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_208();
    l0 = self.box_MissionAckTriggerListener_193;
    l1 = self.box_ProximityTrigger_v3_208;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|454106085", "454106085", "InfiniteWaveController_V2", "box_MissionAckTriggerListener_193.Enabled", "box_ProximityTrigger_v3_208.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_95_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_95_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_100();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1777542282", "1777542282", "InfiniteWaveController_V2", "box_SetEntity_v2_95.Out", "box_SetEntity_v2_100.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_139_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_140();
    l0 = self.box_MultipleOR_139;
    l1 = self.box_IndexList_v2_140;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|461151589", "461151589", "InfiniteWaveController_V2", "box_MultipleOR_139.Out", "box_IndexList_v2_140.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetInteger_v2_185_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_185_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_203();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1196279245", "1196279245", "InfiniteWaveController_V2", "box_SetInteger_v2_185.Out", "box_Print_v2_203.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_9_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1505140363", "1505140363", "InfiniteWaveController_V2", "box_SetInteger_v2_9.Out", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_58_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_58_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_48();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|885880203", "885880203", "InfiniteWaveController_V2", "box_SetEntity_v2_58.Out", "box_SetEntity_v2_48.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_267();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|429003519", "429003519", "InfiniteWaveController_V2", "box_OutputOrder_v2_14.Out", "box_Simple_Node_267.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1262226815", "1262226815", "InfiniteWaveController_V2", "box_OutputOrder_v2_14.Out", "box_Delay_v5_40.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_MultipleOR_176_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_176;
    l1 = self.box_OnceOnly_v3_178;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2003786785", "2003786785", "InfiniteWaveController_V2", "box_MultipleOR_176.Out", "box_OnceOnly_v3_178.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1514080043", "1514080043", "InfiniteWaveController_V2", "box_OutputOrder_v2_23.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_158();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|355325202", "355325202", "InfiniteWaveController_V2", "box_OutputOrder_v2_23.Out", "box_Simple_Node_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_24_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_152();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1969841139", "1969841139", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_24.Cancelled", "box_OutputOrder_v2_152.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_24_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_24;
    l1 = self.box_MultipleOR_151;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1042640233", "1042640233", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_24.NextWave", "box_MultipleOR_151.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_24_ToStartFailSafeSetup()
    local params, l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_24();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|864694456", "864694456", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_24.ToStartFailSafeSetup", "box_Brick_Exp_Common_WaveSpawner_24.Cancel", l0:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_117_Out()
    self:OnExit_box_SetEntity_v2_117_Out();
end;

function export:f_box_SetInteger_v2_236_Out()
    local l0;
    self:OnExit_box_SetInteger_v2_236_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_232;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1103107926", "1103107926", "InfiniteWaveController_V2", "box_SetInteger_v2_236.Out", "box_MultipleOR_232.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_83();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1099561198", "1099561198", "InfiniteWaveController_V2", "box_OutputOrder_v2_78.Out", "box_Print_v2_83.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_76();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|979979372", "979979372", "InfiniteWaveController_V2", "box_OutputOrder_v2_78.Out", "box_SetEntity_v2_76.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_217_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_217_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_206();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1023307895", "1023307895", "InfiniteWaveController_V2", "box_SetInteger_v2_217.Out", "box_Print_v2_206.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_175_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|261135704", "261135704", "InfiniteWaveController_V2", "box_OutputOrder_v2_175.Out", "box_MultipleOR_176.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_175_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_158();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1415364555", "1415364555", "InfiniteWaveController_V2", "box_OutputOrder_v2_175.Out", "box_Simple_Node_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_70_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_70_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_67();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|504290966", "504290966", "InfiniteWaveController_V2", "box_SetEntity_v2_70.Out", "box_SetEntity_v2_67.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_229_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_229_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_266();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|737613139", "737613139", "InfiniteWaveController_V2", "box_SetEntity_v2_229.Out", "box_Simple_Node_266.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_42_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_42_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_46();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1110620386", "1110620386", "InfiniteWaveController_V2", "box_SetEntity_v2_42.Out", "box_SetEntity_v2_46.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_20_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_29();
    l0 = self.box_IndexList_v2_20;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_29;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2089276214", "2089276214", "InfiniteWaveController_V2", "box_IndexList_v2_20.Output", "box_Brick_Exp_Common_WaveSpawner_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_20_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_153();
    l0 = self.box_IndexList_v2_20;
    l1 = self.box_IndexList_v2_153;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2117343244", "2117343244", "InfiniteWaveController_V2", "box_IndexList_v2_20.Output", "box_IndexList_v2_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_20_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_21();
    l0 = self.box_IndexList_v2_20;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1180364058", "1180364058", "InfiniteWaveController_V2", "box_IndexList_v2_20.Output", "box_Brick_Exp_Common_WaveSpawner_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_20_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_59();
    l0 = self.box_IndexList_v2_20;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_59;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2139106230", "2139106230", "InfiniteWaveController_V2", "box_IndexList_v2_20.Output", "box_Brick_Exp_Common_WaveSpawner_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_20_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_172();
    l0 = self.box_IndexList_v2_20;
    l1 = self.box_IndexList_v2_172;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|203614542", "203614542", "InfiniteWaveController_V2", "box_IndexList_v2_20.Output", "box_IndexList_v2_172.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_20_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_31();
    l0 = self.box_IndexList_v2_20;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|543375837", "543375837", "InfiniteWaveController_V2", "box_IndexList_v2_20.Output", "box_Brick_Exp_Common_WaveSpawner_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_20_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_28();
    l0 = self.box_IndexList_v2_20;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1331268979", "1331268979", "InfiniteWaveController_V2", "box_IndexList_v2_20.Output", "box_Brick_Exp_Common_WaveSpawner_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_20_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_24();
    l0 = self.box_IndexList_v2_20;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|427575916", "427575916", "InfiniteWaveController_V2", "box_IndexList_v2_20.Output", "box_Brick_Exp_Common_WaveSpawner_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_SetEntity_v2_85_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_85_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_86();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|837150718", "837150718", "InfiniteWaveController_V2", "box_SetEntity_v2_85.Out", "box_SetEntity_v2_86.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_105_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_105_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_266();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1003310700", "1003310700", "InfiniteWaveController_V2", "box_SetEntity_v2_105.Out", "box_Simple_Node_266.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_136_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_135();
    l0 = self.box_EntityStatusListener_136;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|211617651", "211617651", "InfiniteWaveController_V2", "box_EntityStatusListener_136.Loaded", "box_UseContextualActionModifier_v3_135.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_57_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_57_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_54();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|577207920", "577207920", "InfiniteWaveController_V2", "box_SetEntity_v2_57.Out", "box_SetEntity_v2_54.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_12_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_12;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1457728863", "1457728863", "InfiniteWaveController_V2", "box_Gate_v3_12.Out", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_232_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_258();
    l0 = self.box_MultipleOR_232;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1430484223", "1430484223", "InfiniteWaveController_V2", "box_MultipleOR_232.Out", "box_Simple_Node_258.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_173_None()
    local l0, l1;
    l0 = self.box_Switch_173;
    l1 = self.box_MultipleOR_159;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1895485188", "1895485188", "InfiniteWaveController_V2", "box_Switch_173.None", "box_MultipleOR_159.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_173_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_179();
    l0 = self.box_Switch_173;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_179;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|110815915", "110815915", "InfiniteWaveController_V2", "box_Switch_173.Output", "box_Brick_Exp_Common_WaveSpawner_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_129_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_144;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|47797410", "47797410", "InfiniteWaveController_V2", "box_OutputOrder_v2_129.Out", "box_MultipleOR_144.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_129_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_158();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1905787715", "1905787715", "InfiniteWaveController_V2", "box_OutputOrder_v2_129.Out", "box_Simple_Node_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_231_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_230();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1085542757", "1085542757", "InfiniteWaveController_V2", "box_OutputOrder_v2_231.Out", "box_Print_v2_230.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_231_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_190();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|513251760", "513251760", "InfiniteWaveController_V2", "box_OutputOrder_v2_231.Out", "box_SetEntity_v2_190.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_144_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_144;
    l1 = self.box_OnceOnly_v3_168;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|235582411", "235582411", "InfiniteWaveController_V2", "box_MultipleOR_144.Out", "box_OnceOnly_v3_168.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_54_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_54_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_58();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1277099678", "1277099678", "InfiniteWaveController_V2", "box_SetEntity_v2_54.Out", "box_SetEntity_v2_58.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_98_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_98_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_266();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1237945214", "1237945214", "InfiniteWaveController_V2", "box_SetEntity_v2_98.Out", "box_Simple_Node_266.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_209_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_199();
    l0 = self.box_MissionAckTriggerListener_209;
    l1 = self.box_ProximityTrigger_v3_199;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|559554749", "559554749", "InfiniteWaveController_V2", "box_MissionAckTriggerListener_209.Enabled", "box_ProximityTrigger_v3_199.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_63_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_63_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_68();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1308136971", "1308136971", "InfiniteWaveController_V2", "box_SetEntity_v2_63.Out", "box_SetEntity_v2_68.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_118_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_115();
    l0 = self.box_Delay_v5_115;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2043548694", "2043548694", "InfiniteWaveController_V2", "box_OutputOrder_v2_118.Out", "box_Delay_v5_115.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_118_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_114();
    l0 = self.box_Delay_v5_114;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2031342301", "2031342301", "InfiniteWaveController_V2", "box_OutputOrder_v2_118.Out", "box_Delay_v5_114.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_118_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_3();
    l0 = self.box_MessageListener_v3_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1072050039", "1072050039", "InfiniteWaveController_V2", "box_OutputOrder_v2_118.Out", "box_MessageListener_v3_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_118_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_121();
    l0 = self.box_IndexList_v2_121;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|599353205", "599353205", "InfiniteWaveController_V2", "box_OutputOrder_v2_118.Out", "box_IndexList_v2_121.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetInteger_v2_210_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_210_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_195();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|526705509", "526705509", "InfiniteWaveController_V2", "box_SetInteger_v2_210.Out", "box_Print_v2_195.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_167_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_267();
    l0 = self.box_OnceOnly_v3_167;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|286001343", "286001343", "InfiniteWaveController_V2", "box_OnceOnly_v3_167.Out", "box_Simple_Node_267.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_122_Out()
    self:OnExit_box_SetEntity_v2_122_Out();
end;

function export:f_box_OutputOrder_v2_181_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1100791714", "1100791714", "InfiniteWaveController_V2", "box_OutputOrder_v2_181.Out", "box_MultipleOR_180.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_181_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_158();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1787454766", "1787454766", "InfiniteWaveController_V2", "box_OutputOrder_v2_181.Out", "box_Simple_Node_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_111_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_111_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_106();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1830788526", "1830788526", "InfiniteWaveController_V2", "box_SetEntity_v2_111.Out", "box_SetEntity_v2_106.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|771738217", "771738217", "InfiniteWaveController_V2", "box_OutputOrder_v2_13.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_12();
    l0 = self.box_Gate_v3_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1824640418", "1824640418", "InfiniteWaveController_V2", "box_OutputOrder_v2_13.Out", "box_Gate_v3_12.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_109_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_109_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_111();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1418072850", "1418072850", "InfiniteWaveController_V2", "box_SetEntity_v2_109.Out", "box_SetEntity_v2_111.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_76_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_76_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_73();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1077094471", "1077094471", "InfiniteWaveController_V2", "box_SetEntity_v2_76.Out", "box_SetEntity_v2_73.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_227_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_227_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_228();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2014863132", "2014863132", "InfiniteWaveController_V2", "box_SetEntity_v2_227.Out", "box_SetEntity_v2_228.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_37_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_37_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_45();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|927565357", "927565357", "InfiniteWaveController_V2", "box_SetEntity_v2_37.Out", "box_SetEntity_v2_45.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_178_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_267();
    l0 = self.box_OnceOnly_v3_178;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|223672027", "223672027", "InfiniteWaveController_V2", "box_OnceOnly_v3_178.Out", "box_Simple_Node_267.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_165_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_267();
    l0 = self.box_OnceOnly_v3_165;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|505435628", "505435628", "InfiniteWaveController_V2", "box_OnceOnly_v3_165.Out", "box_Simple_Node_267.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_5_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_3();
    l0 = self.box_MessageListener_v3_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1211525665", "1211525665", "InfiniteWaveController_V2", "box_SetBoolean_v2_5.Out", "box_MessageListener_v3_3.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SetInteger_v2_10_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1529695568", "1529695568", "InfiniteWaveController_V2", "box_SetInteger_v2_10.Out", "box_OutputOrder_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_104_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_104_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_103();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1675362781", "1675362781", "InfiniteWaveController_V2", "box_SetEntity_v2_104.Out", "box_SetEntity_v2_103.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_43_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_43_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_266();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1196942820", "1196942820", "InfiniteWaveController_V2", "box_SetEntity_v2_43.Out", "box_Simple_Node_266.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_150;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|756494925", "756494925", "InfiniteWaveController_V2", "box_OutputOrder_v2_149.Out", "box_MultipleOR_150.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_149_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_158();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1516280101", "1516280101", "InfiniteWaveController_V2", "box_OutputOrder_v2_149.Out", "box_Simple_Node_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_196_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_187();
    l0 = self.box_MissionAckTriggerListener_196;
    l1 = self.box_ProximityTrigger_v3_187;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|456868481", "456868481", "InfiniteWaveController_V2", "box_MissionAckTriggerListener_196.Enabled", "box_ProximityTrigger_v3_187.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_77_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_77_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_81();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|817341631", "817341631", "InfiniteWaveController_V2", "box_SetEntity_v2_77.Out", "box_SetEntity_v2_81.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_151_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_151;
    l1 = self.box_OnceOnly_v3_163;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1919959145", "1919959145", "InfiniteWaveController_V2", "box_MultipleOR_151.Out", "box_OnceOnly_v3_163.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IntegerArithmetics_v2_238_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_238_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_240();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1849486301", "1849486301", "InfiniteWaveController_V2", "box_IntegerArithmetics_v2_238.Out", "box_Compare_Integers_240.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|237134550", "237134550", "InfiniteWaveController_V2", "box_OutputOrder_v2_7.Out", "box_Simple_Node_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_12();
    l0 = self.box_Gate_v3_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|326503067", "326503067", "InfiniteWaveController_V2", "box_OutputOrder_v2_7.Out", "box_Gate_v3_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_49_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_49_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_51();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|345582642", "345582642", "InfiniteWaveController_V2", "box_SetEntity_v2_49.Out", "box_SetEntity_v2_51.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_80_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_80_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_75();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|50057408", "50057408", "InfiniteWaveController_V2", "box_SetEntity_v2_80.Out", "box_SetEntity_v2_75.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_52_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_52_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_57();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|609919890", "609919890", "InfiniteWaveController_V2", "box_SetEntity_v2_52.Out", "box_SetEntity_v2_57.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_100_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_100_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_97();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|152400344", "152400344", "InfiniteWaveController_V2", "box_SetEntity_v2_100.Out", "box_SetEntity_v2_97.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_179_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_181();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_179;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|241161905", "241161905", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_179.Cancelled", "box_OutputOrder_v2_181.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_179_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_179;
    l1 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|927607315", "927607315", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_179.NextWave", "box_MultipleOR_180.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_179_ToStartFailSafeSetup()
    local params, l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_179();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_179;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1558199433", "1558199433", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_179.ToStartFailSafeSetup", "box_Brick_Exp_Common_WaveSpawner_179.Cancel", l0:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_168_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_267();
    l0 = self.box_OnceOnly_v3_168;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|818670472", "818670472", "InfiniteWaveController_V2", "box_OnceOnly_v3_168.Out", "box_Simple_Node_267.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_99_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_84();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|635565256", "635565256", "InfiniteWaveController_V2", "box_OutputOrder_v2_99.Out", "box_Print_v2_84.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_96();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2054278206", "2054278206", "InfiniteWaveController_V2", "box_OutputOrder_v2_99.Out", "box_SetEntity_v2_96.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_32();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1275023612", "1275023612", "InfiniteWaveController_V2", "box_OutputOrder_v2_44.Out", "box_Print_v2_32.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_41();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1626633034", "1626633034", "InfiniteWaveController_V2", "box_OutputOrder_v2_44.Out", "box_SetEntity_v2_41.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_48_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_48_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_49();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1104681256", "1104681256", "InfiniteWaveController_V2", "box_SetEntity_v2_48.Out", "box_SetEntity_v2_49.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_108_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_108_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_110();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2058554588", "2058554588", "InfiniteWaveController_V2", "box_SetEntity_v2_108.Out", "box_SetEntity_v2_110.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_228_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_228_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_229();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|961083685", "961083685", "InfiniteWaveController_V2", "box_SetEntity_v2_228.Out", "box_SetEntity_v2_229.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_132_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_130();
    l0 = self.box_MessageListener_v3_132;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|902882635", "902882635", "InfiniteWaveController_V2", "box_MessageListener_v3_132.Received", "box_SetInteger_v2_130.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_31_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_147();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|890111916", "890111916", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_31.Cancelled", "box_OutputOrder_v2_147.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_31_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_31;
    l1 = self.box_MultipleOR_148;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1217975964", "1217975964", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_31.NextWave", "box_MultipleOR_148.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_31_ToStartFailSafeSetup()
    local params, l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_31();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1489785000", "1489785000", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_31.ToStartFailSafeSetup", "box_Brick_Exp_Common_WaveSpawner_31.Cancel", l0:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_166_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_267();
    l0 = self.box_OnceOnly_v3_166;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|241140939", "241140939", "InfiniteWaveController_V2", "box_OnceOnly_v3_166.Out", "box_Simple_Node_267.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_BasicSetups_22();
    l0 = self.box_Brick_Exp_Common_BasicSetups_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1149912376", "1149912376", "InfiniteWaveController_V2", "box_OutputOrder_v2_4.Out", "box_Brick_Exp_Common_BasicSetups_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_21_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_129();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2102784417", "2102784417", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_21.Cancelled", "box_OutputOrder_v2_129.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_21_NextWave()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_WaveSpawner_21;
    l1 = self.box_MultipleOR_144;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|240955446", "240955446", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_21.NextWave", "box_MultipleOR_144.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Common_WaveSpawner_21_ToStartFailSafeSetup()
    local params, l0;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_21();
    l0 = self.box_Brick_Exp_Common_WaveSpawner_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|350039436", "350039436", "InfiniteWaveController_V2", "box_Brick_Exp_Common_WaveSpawner_21.ToStartFailSafeSetup", "box_Brick_Exp_Common_WaveSpawner_21.Cancel", l0:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_200_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_200_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_224();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1532274499", "1532274499", "InfiniteWaveController_V2", "box_SetEntity_v2_200.Out", "box_SetEntity_v2_224.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_53_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_53_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_52();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|94656249", "94656249", "InfiniteWaveController_V2", "box_SetEntity_v2_53.Out", "box_SetEntity_v2_52.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_211_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_211_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_205();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|830893601", "830893601", "InfiniteWaveController_V2", "box_SetInteger_v2_211.Out", "box_Print_v2_205.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_225_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_225_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_200();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|506354445", "506354445", "InfiniteWaveController_V2", "box_SetEntity_v2_225.Out", "box_SetEntity_v2_200.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1923379373", "1923379373", "InfiniteWaveController_V2", "box_OutputOrder_v2_145.Out", "box_MultipleOR_146.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_145_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_158();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1159453252", "1159453252", "InfiniteWaveController_V2", "box_OutputOrder_v2_145.Out", "box_Simple_Node_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_51_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_51_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_50();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|272916276", "272916276", "InfiniteWaveController_V2", "box_SetEntity_v2_51.Out", "box_SetEntity_v2_50.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_103_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_103_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_107();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|192772044", "192772044", "InfiniteWaveController_V2", "box_SetEntity_v2_103.Out", "box_SetEntity_v2_107.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_187_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_201();
    l0 = self.box_ProximityTrigger_v3_187;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1633434078", "1633434078", "InfiniteWaveController_V2", "box_ProximityTrigger_v3_187.OnEmpty", "box_Print_v2_201.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_187_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_192();
    l0 = self.box_ProximityTrigger_v3_187;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1787497654", "1787497654", "InfiniteWaveController_V2", "box_ProximityTrigger_v3_187.OnOccupied", "box_SetInteger_v2_192.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_46_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_46_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_33();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1319021288", "1319021288", "InfiniteWaveController_V2", "box_SetEntity_v2_46.Out", "box_SetEntity_v2_33.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_204_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_189();
    l0 = self.box_ProximityTrigger_v3_204;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1281912070", "1281912070", "InfiniteWaveController_V2", "box_ProximityTrigger_v3_204.OnEmpty", "box_Print_v2_189.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_204_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_185();
    l0 = self.box_ProximityTrigger_v3_204;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|473018499", "473018499", "InfiniteWaveController_V2", "box_ProximityTrigger_v3_204.OnOccupied", "box_SetInteger_v2_185.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_199_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_214();
    l0 = self.box_ProximityTrigger_v3_199;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1451125289", "1451125289", "InfiniteWaveController_V2", "box_ProximityTrigger_v3_199.OnEmpty", "box_Print_v2_214.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_199_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_215();
    l0 = self.box_ProximityTrigger_v3_199;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1173924915", "1173924915", "InfiniteWaveController_V2", "box_ProximityTrigger_v3_199.OnOccupied", "box_SetInteger_v2_215.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_86_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_86_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_88();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|855030571", "855030571", "InfiniteWaveController_V2", "box_SetEntity_v2_86.Out", "box_SetEntity_v2_88.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_119_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|339012941", "339012941", "InfiniteWaveController_V2", "box_OutputOrder_v2_119.Out", "box_MultipleOR_116.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_119_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_158();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|422300789", "422300789", "InfiniteWaveController_V2", "box_OutputOrder_v2_119.Out", "box_Simple_Node_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_137_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_136();
    l0 = self.box_IndexList_v2_137;
    l1 = self.box_EntityStatusListener_136;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|254723542", "254723542", "InfiniteWaveController_V2", "box_IndexList_v2_137.Output", "box_EntityStatusListener_136.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MissionAckTriggerListener_202_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_216();
    l0 = self.box_MissionAckTriggerListener_202;
    l1 = self.box_ProximityTrigger_v3_216;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2002777", "2002777", "InfiniteWaveController_V2", "box_MissionAckTriggerListener_202.Enabled", "box_ProximityTrigger_v3_216.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_197_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_191();
    l0 = self.box_ProximityTrigger_v3_197;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|883701621", "883701621", "InfiniteWaveController_V2", "box_ProximityTrigger_v3_197.OnEmpty", "box_Print_v2_191.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_197_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_217();
    l0 = self.box_ProximityTrigger_v3_197;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1628177468", "1628177468", "InfiniteWaveController_V2", "box_ProximityTrigger_v3_197.OnOccupied", "box_SetInteger_v2_217.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_172_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_172;
    l1 = self.box_MultipleOR_159;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1479161305", "1479161305", "InfiniteWaveController_V2", "box_IndexList_v2_172.Output", "box_MultipleOR_159.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_172_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_173();
    l0 = self.box_IndexList_v2_172;
    l1 = self.box_Switch_173;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1372933026", "1372933026", "InfiniteWaveController_V2", "box_IndexList_v2_172.Output", "box_Switch_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_172_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_172;
    l1 = self.box_MultipleOR_159;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|118622496", "118622496", "InfiniteWaveController_V2", "box_IndexList_v2_172.Output", "box_MultipleOR_159.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetEntity_v2_35_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_35_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_43();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1374555451", "1374555451", "InfiniteWaveController_V2", "box_SetEntity_v2_35.Out", "box_SetEntity_v2_43.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_182_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_267();
    l0 = self.box_OnceOnly_v3_182;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|942145254", "942145254", "InfiniteWaveController_V2", "box_OnceOnly_v3_182.Out", "box_Simple_Node_267.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_97_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_97_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_101();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1457804805", "1457804805", "InfiniteWaveController_V2", "box_SetEntity_v2_97.Out", "box_SetEntity_v2_101.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_81_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_81_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_82();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2089227127", "2089227127", "InfiniteWaveController_V2", "box_SetEntity_v2_81.Out", "box_SetEntity_v2_82.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_40_Paused()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_170();
    l0 = self.box_Delay_v5_40;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|12083051", "12083051", "InfiniteWaveController_V2", "box_Delay_v5_40.Paused", "box_Print_v2_170.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_40_Resumed()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_171();
    l0 = self.box_Delay_v5_40;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|490152021", "490152021", "InfiniteWaveController_V2", "box_Delay_v5_40.Resumed", "box_Print_v2_171.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_39();
    l0 = self.box_Delay_v5_40;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|322385556", "322385556", "InfiniteWaveController_V2", "box_Delay_v5_40.TimeElapsed", "box_Compare_Integers_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_18_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_126();
    l0 = self.box_OnceOnly_v3_18;
    l1 = self.box_MessageListener_v3_126;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|952977031", "952977031", "InfiniteWaveController_V2", "box_OnceOnly_v3_18.Out", "box_MessageListener_v3_126.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_110_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_110_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_105();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|577330971", "577330971", "InfiniteWaveController_V2", "box_SetEntity_v2_110.Out", "box_SetEntity_v2_105.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_134_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_137();
    l0 = self.box_MultipleOR_134;
    l1 = self.box_IndexList_v2_137;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1877577297", "1877577297", "InfiniteWaveController_V2", "box_MultipleOR_134.Out", "box_IndexList_v2_137.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_147_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_148;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|19492786", "19492786", "InfiniteWaveController_V2", "box_OutputOrder_v2_147.Out", "box_MultipleOR_148.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_147_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_158();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|886176354", "886176354", "InfiniteWaveController_V2", "box_OutputOrder_v2_147.Out", "box_Simple_Node_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_163_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_162();
    l0 = self.box_OnceOnly_v3_163;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1553432868", "1553432868", "InfiniteWaveController_V2", "box_OnceOnly_v3_163.Out", "box_OutputOrder_v2_162.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_208_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_188();
    l0 = self.box_ProximityTrigger_v3_208;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1340361752", "1340361752", "InfiniteWaveController_V2", "box_ProximityTrigger_v3_208.OnEmpty", "box_Print_v2_188.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_208_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_210();
    l0 = self.box_ProximityTrigger_v3_208;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1518154664", "1518154664", "InfiniteWaveController_V2", "box_ProximityTrigger_v3_208.OnOccupied", "box_SetInteger_v2_210.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_115_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_207();
    l0 = self.box_Delay_v5_115;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|566056455", "566056455", "InfiniteWaveController_V2", "box_Delay_v5_115.TimeElapsed", "box_OutputOrder_v2_207.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_153_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_19();
    l0 = self.box_IndexList_v2_153;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1026210314", "1026210314", "InfiniteWaveController_V2", "box_IndexList_v2_153.Output", "box_Brick_Exp_Common_WaveSpawner_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
end;

function export:f_box_IndexList_v2_153_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_153;
    l1 = self.box_MultipleOR_154;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|841796481", "841796481", "InfiniteWaveController_V2", "box_IndexList_v2_153.Output", "box_MultipleOR_154.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_153_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_153;
    l1 = self.box_MultipleOR_154;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2072434760", "2072434760", "InfiniteWaveController_V2", "box_IndexList_v2_153.Output", "box_MultipleOR_154.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_79_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_79_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_80();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1348758652", "1348758652", "InfiniteWaveController_V2", "box_SetEntity_v2_79.Out", "box_SetEntity_v2_80.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_156_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_155;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1730233840", "1730233840", "InfiniteWaveController_V2", "box_OutputOrder_v2_156.Out", "box_MultipleOR_155.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_156_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_158();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1835452109", "1835452109", "InfiniteWaveController_V2", "box_OutputOrder_v2_156.Out", "box_Simple_Node_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_221_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_223();
    l0 = self.box_ProximityTrigger_v3_221;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1151367280", "1151367280", "InfiniteWaveController_V2", "box_ProximityTrigger_v3_221.OnEmpty", "box_Print_v2_223.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_221_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_220();
    l0 = self.box_ProximityTrigger_v3_221;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|965524373", "965524373", "InfiniteWaveController_V2", "box_ProximityTrigger_v3_221.OnOccupied", "box_SetInteger_v2_220.FromInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromInteger
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_186_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_186_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_225();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|489937535", "489937535", "InfiniteWaveController_V2", "box_SetEntity_v2_186.Out", "box_SetEntity_v2_225.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_123_Out()
    self:OnExit_box_SetEntity_v2_123_Out();
end;

function export:f_box_SetInteger_v2_220_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_220_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_222();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|665181297", "665181297", "InfiniteWaveController_V2", "box_SetInteger_v2_220.Out", "box_Print_v2_222.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_130_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_130_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_133();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|191435753", "191435753", "InfiniteWaveController_V2", "box_SetInteger_v2_130.Out", "box_Print_v2_133.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_192_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_192_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_183();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|355850665", "355850665", "InfiniteWaveController_V2", "box_SetInteger_v2_192.Out", "box_Print_v2_183.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_65_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_65_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_70();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2119577192", "2119577192", "InfiniteWaveController_V2", "box_SetEntity_v2_65.Out", "box_SetEntity_v2_70.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_164_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_160();
    l0 = self.box_OnceOnly_v3_164;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|298842835", "298842835", "InfiniteWaveController_V2", "box_OnceOnly_v3_164.Out", "box_OutputOrder_v2_160.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_39_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1836055205", "1836055205", "InfiniteWaveController_V2", "box_Compare_Integers_39.A_le_B", "box_OutputOrder_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_15_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_15_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1401855819", "1401855819", "InfiniteWaveController_V2", "box_SetFloat_v2_15.Out", "box_Delay_v5_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MissionAckTriggerListener_219_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_221();
    l0 = self.box_MissionAckTriggerListener_219;
    l1 = self.box_ProximityTrigger_v3_221;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|437436593", "437436593", "InfiniteWaveController_V2", "box_MissionAckTriggerListener_219.Enabled", "box_ProximityTrigger_v3_221.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_148_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_148;
    l1 = self.box_OnceOnly_v3_164;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1129533509", "1129533509", "InfiniteWaveController_V2", "box_MultipleOR_148.Out", "box_OnceOnly_v3_164.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_25_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_29();
    l0 = self.box_IndexList_v2_25;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_29;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2128629720", "2128629720", "InfiniteWaveController_V2", "box_IndexList_v2_25.Output", "box_Brick_Exp_Common_WaveSpawner_29.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_IndexList_v2_25_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_19();
    l0 = self.box_IndexList_v2_25;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1289181747", "1289181747", "InfiniteWaveController_V2", "box_IndexList_v2_25.Output", "box_Brick_Exp_Common_WaveSpawner_19.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_IndexList_v2_25_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_21();
    l0 = self.box_IndexList_v2_25;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|746553303", "746553303", "InfiniteWaveController_V2", "box_IndexList_v2_25.Output", "box_Brick_Exp_Common_WaveSpawner_21.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_IndexList_v2_25_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_59();
    l0 = self.box_IndexList_v2_25;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_59;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1851334746", "1851334746", "InfiniteWaveController_V2", "box_IndexList_v2_25.Output", "box_Brick_Exp_Common_WaveSpawner_59.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_IndexList_v2_25_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_177();
    l0 = self.box_IndexList_v2_25;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_177;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|859252077", "859252077", "InfiniteWaveController_V2", "box_IndexList_v2_25.Output", "box_Brick_Exp_Common_WaveSpawner_177.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_IndexList_v2_25_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_31();
    l0 = self.box_IndexList_v2_25;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2081769862", "2081769862", "InfiniteWaveController_V2", "box_IndexList_v2_25.Output", "box_Brick_Exp_Common_WaveSpawner_31.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_IndexList_v2_25_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_28();
    l0 = self.box_IndexList_v2_25;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1566634060", "1566634060", "InfiniteWaveController_V2", "box_IndexList_v2_25.Output", "box_Brick_Exp_Common_WaveSpawner_28.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_IndexList_v2_25_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Common_WaveSpawner_24();
    l0 = self.box_IndexList_v2_25;
    l1 = self.box_Brick_Exp_Common_WaveSpawner_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|723802323", "723802323", "InfiniteWaveController_V2", "box_IndexList_v2_25.Output", "box_Brick_Exp_Common_WaveSpawner_24.UpdateAllowedRemainingNPCForNextCheck", l0:GetLuaBox(), l1:GetLuaBox());
    -- UpdateAllowedRemainingNPCForNextCheck
    l1:Exec(3, params);
end;

function export:f_box_MessageListener_v3_126_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SetFloat_v2_120();
    l0 = self.box_MessageListener_v3_126;
    l1 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|813785595", "813785595", "InfiniteWaveController_V2", "box_MessageListener_v3_126.Received", "box_SetFloat_v2_120.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_169_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_161();
    l0 = self.box_OnceOnly_v3_169;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|329057316", "329057316", "InfiniteWaveController_V2", "box_OnceOnly_v3_169.Out", "box_OutputOrder_v2_161.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_226_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_226_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_227();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|352084624", "352084624", "InfiniteWaveController_V2", "box_SetEntity_v2_226.Out", "box_SetEntity_v2_227.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_64_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_64_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_63();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1791435169", "1791435169", "InfiniteWaveController_V2", "box_SetEntity_v2_64.Out", "box_SetEntity_v2_63.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_41_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_41_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_37();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|378213182", "378213182", "InfiniteWaveController_V2", "box_SetEntity_v2_41.Out", "box_SetEntity_v2_37.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_258()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_258");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|@AssignSpawners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_258_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_264()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_264");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|@AssignSpawners_Beach");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_264_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_262()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_262");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|@AssignSpawners_Checkpoint");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_262_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_260()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_260");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|@AssignSpawners_Hangar");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_260_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_259()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_259");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|@AssignSpawners_Island");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_259_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_263()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_263");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|@AssignSpawners_Lighthouse");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_263_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_265()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_265");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|@AssignSpawners_Sea");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_265_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_261()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_261");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|@AssignSpawners_Shore");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_261_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|@FailSafeSetup");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_267()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_267");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|@NextWave");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_267_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_266()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_266");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|@Spawners_Assigned");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_266_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|@UpdateAllowedRemainingNPCs");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|20854243");
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
                [0] = self.f_box_OutputOrder_v2_160_Out_0,
                [1] = self.f_box_OutputOrder_v2_160_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|28189314");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_62_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925156268189344",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_28()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.iC7AllowedRemainingNPCs,
        -- EnemyGroup,
        [1] = "#FA620E34",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = self.fC7MaxWaveDuration,
        -- MinWaveDuration,
        [4] = self.fC7MinWaveDuration,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C7_CTP_010_Enemy.bTrackerNotYetActive,
        -- opt_Spawner_2,
        [6] = self.eSpawner_Heavy,
        -- opt_Spawner_3,
        [7] = self.eSpawner_Medium_Range_x1,
        -- Spawner_1,
        [10] = self.eSpawner_Medium_Range_x2_A,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|30242861");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_135_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_135_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2110028465064392977",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|45123130");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_88_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925238034049887",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|49548823");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_8_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_8_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.Coast_C7_CTP_010_Enemy.bTrackerNotYetActive,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|63474896");
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
                [0] = self.f_box_OutputOrder_v2_207_Out_0,
                [1] = self.f_box_OutputOrder_v2_207_Out_1,
                [2] = self.f_box_OutputOrder_v2_207_Out_2,
                [3] = self.f_box_OutputOrder_v2_207_Out_3,
                [4] = self.f_box_OutputOrder_v2_207_Out_4,
                [5] = self.f_box_OutputOrder_v2_207_Out_5,
                [6] = self.f_box_OutputOrder_v2_207_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|64255430");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_66_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925156232537730",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|67514285");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_50_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052299780494",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_140()
    local params;
    params = {
        -- Index,
        [0] = self.iC7Difficulty,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|89724298");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_61_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925156278675113",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_216()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#8D366524",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108908566694861329",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|99808466");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_71_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925156318521031",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|102059689");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_55_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052358500771",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|113931256");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_74_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925684154905746",
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|142644806");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_17_Out,
    });
    params = {
        -- Float,
        [0] = 20,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|153372586");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.iC7WavesNumber,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Starting Wave Number ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mPlayerInHelicopter",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|194137721");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_82_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925684119254135",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|196015529");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_72_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925684142322825",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|196056963");
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

function export:OnEnter_box_SetFloat_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|202827979");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_120_Out,
    });
    params = {
        -- Float,
        [0] = 30,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|209409367");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_224_Out,
    });
    params = {
        -- Entity,
        [0] = "2108922458831591912",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|214197673");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_124_Out,
    });
    params = {
        -- Entity,
        [0] = "2109878635690216901",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|223984109");
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
        [8] = "Disable Mortar STP",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|268305673");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_67_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925156299646651",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|268962000");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_34_Out,
    });
    params = {
        -- Entity,
        [0] = "2108924964796112019",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|279641765");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Zone Empty - Checkpoint",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|280559143");
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

function export:OnEnter_box_OutputOrder_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|284646945");
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
                [0] = self.f_box_OutputOrder_v2_113_Out_0,
                [1] = self.f_box_OutputOrder_v2_113_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_138()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2110028465064392977",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|322016301");
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

function export:OnEnter_box_Brick_Exp_Common_BasicSetups_22()
    local params;
    params = {
        -- DebugMode,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|327995201");
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
                [0] = self.f_box_OutputOrder_v2_69_Out_0,
                [1] = self.f_box_OutputOrder_v2_69_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|329225953");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_29()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.iC7AllowedRemainingNPCs,
        -- EnemyGroup,
        [1] = "#FA620E34",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = self.fC7MaxWaveDuration,
        -- MinWaveDuration,
        [4] = self.fC7MinWaveDuration,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C7_CTP_010_Enemy.bTrackerNotYetActive,
        -- Spawner_1,
        [10] = self.eSpawner_VEH,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_157()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.iC7AllowedRemainingNPCs,
        -- EnemyGroup,
        [1] = "#FA620E34",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = self.fC7MaxWaveDuration,
        -- MinWaveDuration,
        [4] = self.fC7MinWaveDuration,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C7_CTP_010_Enemy.bTrackerNotYetActive,
        -- opt_Spawner_2,
        [6] = "2110153597017669177",
        -- Spawner_1,
        [10] = self.eSpawner_HelicopterDropOff,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_177()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.iC7AllowedRemainingNPCs,
        -- EnemyGroup,
        [1] = "#FA620E34",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = self.fC7MaxWaveDuration,
        -- MinWaveDuration,
        [4] = self.fC7MinWaveDuration,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C7_CTP_010_Enemy.bTrackerNotYetActive,
        -- opt_Spawner_2,
        [6] = self.eSpawner_Long_Range,
        -- Spawner_1,
        [10] = self.eSpawner_Medium_Range_x2_B,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|384049169");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_2_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_2_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bPlayerInHelicopter,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|402343058");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_45_Out,
    });
    params = {
        -- Entity,
        [0] = "2108924964814986405",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_114()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_213()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- triggerId,
        [1] = "2108908552113363472",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|455752324");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_75_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925684022785092",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|458423665");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_36_Out,
    });
    params = {
        -- Entity,
        [0] = "2108924964781431946",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|464491813");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_212_Out,
    });
    params = {
        -- Entity,
        [0] = "2108922418908109074",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|474024300");
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
                [0] = self.f_box_OutputOrder_v2_128_Out_0,
                [1] = self.f_box_OutputOrder_v2_128_Out_1,
                [2] = self.f_box_OutputOrder_v2_128_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|480070314");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_107_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052232671579",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|501380312");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_102_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052192825661",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_184()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2108908652392880714",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|537182869");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_33_Out,
    });
    params = {
        -- Entity,
        [0] = "2108924964804500636",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|545119154");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Enemy spawners assigned for AIZone Island",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|546447863");
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

function export:OnEnter_box_SetEntity_v2_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|551243579");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_190_Out,
    });
    params = {
        -- Entity,
        [0] = "2108922044954450065",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|571485924");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_101_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925238084381583",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|593837335");
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
                [0] = self.f_box_OutputOrder_v2_127_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_143()
    local params;
    params = {
        -- Index,
        [0] = self.iPlayerLocationIndex,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|621221080");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_73_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925684089893986",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|729019992");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_96_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925238006786890",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_19()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.iC7AllowedRemainingNPCs,
        -- EnemyGroup,
        [1] = "#FA620E34",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = self.fC7MaxWaveDuration,
        -- MinWaveDuration,
        [4] = self.fC7MinWaveDuration,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C7_CTP_010_Enemy.bTrackerNotYetActive,
        -- opt_Spawner_2,
        [6] = self.eSpawner_Medium_Range_x2_B,
        -- Spawner_1,
        [10] = self.eSpawner_Medium_Range_x2_A,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|756668009");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_106_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052264128886",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|767200497");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_87_Out,
    });
    params = {
        -- Entity,
        [0] = "2109199244219917781",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|772418457");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "PackageInExtractionZone . Set Min Wave Timer to 30 sec",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_59()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.iC7AllowedRemainingNPCs,
        -- EnemyGroup,
        [1] = "#FA620E34",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = self.fC7MaxWaveDuration,
        -- MinWaveDuration,
        [4] = self.fC7MinWaveDuration,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C7_CTP_010_Enemy.bTrackerNotYetActive,
        -- Spawner_1,
        [10] = self.eSpawner_VEH_Heavy,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|799284852");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_68_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925156184303213",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|811837113");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_240_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_240_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iC7WavesNumber,
        -- B,
        [1] = 9,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_121()
    local params;
    params = {
        -- Index,
        [0] = self.iC7ExtractionPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|833301951");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_215_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_193()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2108908595797039635",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|851956505");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_95_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925238015175507",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|855891987");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_185_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|858267950");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_9_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|869932836");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_58_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052283003266",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|873766009");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|899647897");
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
        [8] = "GroupSizeListener - Resumed >",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|913974692");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_24()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.iC7AllowedRemainingNPCs,
        -- EnemyGroup,
        [1] = "#FA620E34",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = self.fC7MaxWaveDuration,
        -- MinWaveDuration,
        [4] = self.fC7MinWaveDuration,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C7_CTP_010_Enemy.bTrackerNotYetActive,
        -- opt_Spawner_2,
        [6] = self.eSpawner_Medium_Range_x1,
        -- opt_Spawner_3,
        [7] = self.eSpawner_Close_Range_x1,
        -- Spawner_1,
        [10] = self.eSpawner_Medium_Range_x2_B,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|949144014");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_117_Out,
    });
    params = {
        -- Entity,
        [0] = PersistentGlobals.Coast_C7_CTP_010_Main.PackageSpawner,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|949728800");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_236_Out,
    });
    params = {
        -- Integer,
        [1] = 6,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|972263471");
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

function export:OnEnter_box_SetInteger_v2_217()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|975903730");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_217_Out,
    });
    params = {
        -- Integer,
        [1] = 6,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|989740866");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.iPlayerLocationIndex,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Zone Occupied - Island - ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1005061193");
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
                [0] = self.f_box_OutputOrder_v2_175_Out_0,
                [1] = self.f_box_OutputOrder_v2_175_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1024247855");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_70_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925156289160882",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1024683929");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_229_Out,
    });
    params = {
        -- Entity,
        [0] = "2108922695031725030",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1028821572");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_42_Out,
    });
    params = {
        -- Entity,
        [0] = "2108924964825472174",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_20()
    local params;
    params = {
        -- Index,
        [0] = self.iC7WavesNumber,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1067347366");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_85_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925238050827121",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1073361433");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_105_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052358500771",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1082344498");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.iPlayerLocationIndex,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Zone Occupied - Shore - ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1089695035");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Zone Empty - Beach",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1091666730");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Zone Empty - Sea",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_136()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2110028465064392977",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1113291066");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_57_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052253643117",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_12()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1161395071");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.iPlayerLocationIndex,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Zone Occupied - Lighthouse - ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Switch_173()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1185881222");
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
                [0] = self.f_box_OutputOrder_v2_129_Out_0,
                [1] = self.f_box_OutputOrder_v2_129_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1205030365");
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

function export:OnEnter_box_SetEntity_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1234323118");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_54_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052264128886",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1238106503");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_98_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925238153587632",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_209()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2108908576819911186",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1254776070");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_63_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925156335298259",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1265474556");
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
                [0] = self.f_box_OutputOrder_v2_118_Out_0,
                [1] = self.f_box_OutputOrder_v2_118_Out_1,
                [2] = self.f_box_OutputOrder_v2_118_Out_2,
                [3] = self.f_box_OutputOrder_v2_118_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1278434264");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_210_Out,
    });
    params = {
        -- Integer,
        [1] = 4,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1297058446");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_122_Out,
    });
    params = {
        -- Entity,
        [0] = "2109932266999272805",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1300563667");
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

function export:OnEnter_box_SetEntity_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1304449256");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_111_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052253643117",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1310381862");
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

function export:OnEnter_box_SetEntity_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1338732416");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_109_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052205408582",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1351891185");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_76_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925684075213913",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1352176323");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_227_Out,
    });
    params = {
        -- Entity,
        [0] = "2108922482370026084",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1382653944");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_37_Out,
    });
    params = {
        -- Entity,
        [0] = "2108924964760460414",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1414214491");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1440111729");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_10_Out,
    });
    params = {
        -- Integer,
        [1] = 7,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1461213822");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.iPlayerLocationIndex,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Zone Occupied - Hangar - ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1471490339");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_104_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052283003266",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1484819885");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_43_Out,
    });
    params = {
        -- Entity,
        [0] = "2108924964710128736",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1487327701");
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
                [0] = self.f_box_OutputOrder_v2_149_Out_0,
                [1] = self.f_box_OutputOrder_v2_149_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_196()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2108908666945018443",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1521255844");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_77_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925684173780126",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1534817039");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_238_Out,
    });
    params = {
        -- A,
        [0] = self.iC7WavesNumber,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1539215190");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1539476173");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_49_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052232671579",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1542761014");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_80_Out,
    });
    params = {
        -- Entity,
        [0] = "2110086242302446240",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1564438745");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_52_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052205408582",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1582626316");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_100_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925238059215738",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_179()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.iC7AllowedRemainingNPCs,
        -- EnemyGroup,
        [1] = "#FA620E34",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = self.fC7MaxWaveDuration,
        -- MinWaveDuration,
        [4] = self.fC7MinWaveDuration,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C7_CTP_010_Enemy.bTrackerNotYetActive,
        -- opt_Spawner_2,
        [6] = self.eSpawner_Elite,
        -- Spawner_1,
        [10] = self.eSpawner_Medium_Range_x2_B,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1621471264");
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

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1625677554");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1626836260");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_48_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052243157348",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1631929234");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_108_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052222185810",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1650408791");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_228_Out,
    });
    params = {
        -- Entity,
        [0] = "2108922498992052927",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_132()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "ExtractionHelicopterArrived",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_31()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.iC7AllowedRemainingNPCs,
        -- EnemyGroup,
        [1] = "#FA620E34",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = self.fC7MaxWaveDuration,
        -- MinWaveDuration,
        [4] = self.fC7MinWaveDuration,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C7_CTP_010_Enemy.bTrackerNotYetActive,
        -- opt_Spawner_2,
        [6] = self.eSpawner_Close_Range_x2,
        -- opt_Spawner_3,
        [7] = self.eSpawner_Medium_Range_x1,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1673730314");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.iPlayerLocationIndex,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Zone Occupied - Sea - ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1680727969");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Enemy spawners assigned for AIZone Checkpoint",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1688556021");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_WaveSpawner_21()
    local params;
    params = {
        -- AllowedRemainingNPC,
        [0] = self.iC7AllowedRemainingNPCs,
        -- EnemyGroup,
        [1] = "#FA620E34",
        -- HardDelayBeforeNextWave,
        [2] = 3,
        -- MaxWaveDuration,
        [3] = self.fC7MaxWaveDuration,
        -- MinWaveDuration,
        [4] = self.fC7MinWaveDuration,
        -- NextWaveWaitUntilCombat,
        [5] = Globals.Coast_C7_CTP_010_Enemy.bTrackerNotYetActive,
        -- opt_Spawner_2,
        [6] = self.eSpawner_Medium_Range_x2_A,
        -- opt_Spawner_3,
        [7] = self.eSpawner_Medium_Range_x1,
        -- Spawner_1,
        [10] = self.eSpawner_Close_Range_x1,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1710809970");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_200_Out,
    });
    params = {
        -- Entity,
        [0] = "2108922451176987064",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1715252154");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Helicopter Arrived - Decrease Allowed reminin NPC to improve AI budget for goodbye party",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1744130808");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_53_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052192825661",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1749600647");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_211_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1761099678");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_225_Out,
    });
    params = {
        -- Entity,
        [0] = "2108922442998094221",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1761267576");
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
                [0] = self.f_box_OutputOrder_v2_145_Out_0,
                [1] = self.f_box_OutputOrder_v2_145_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1763366561");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_51_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052222185810",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1765632077");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_103_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052243157348",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_187()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#8D366524",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108908666945018443",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1778391730");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_46_Out,
    });
    params = {
        -- Entity,
        [0] = "2108924964848540858",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_204()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#8D366524",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108908552113363472",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_199()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#8D366524",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108908576819911186",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1814603856");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.iPlayerLocationIndex,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Zone Occupied - Checkpoint - ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1814674559");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_86_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925238042438504",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1820874259");
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
        [8] = "GroupSizeListener - Paused ||",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1828767630");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Enemy spawners assigned for AIZone Shore",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1829863884");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Enemy spawners assigned for AIZone Sea",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1835456268");
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
                [0] = self.f_box_OutputOrder_v2_119_Out_0,
                [1] = self.f_box_OutputOrder_v2_119_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1840886828");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Zone Empty - Shore",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1859970151");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Enemy spawners assigned for AIZone Lighthouse",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_137()
    local params;
    params = {
        -- Index,
        [0] = self.iC7Difficulty,
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_202()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2108908566694861329",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_197()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#8D366524",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108908652392880714",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_172()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C7_CTP_010_Main.iDifficulty,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1877974033");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_35_Out,
    });
    params = {
        -- Entity,
        [0] = "2108924964871609542",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1890605006");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_97_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925238067604355",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1894221847");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Zone Empty - Island",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1896140409");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_81_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925684131837056",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1935785742");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_110_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925052299780494",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1938949188");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Enemy spawners assigned for AIZone Hangar",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1939718819");
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

function export:OnEnter_box_ProximityTrigger_v3_208()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#8D366524",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108908595797039635",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1968518844");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Enemy spawners assigned for AIZone Beach",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_115()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1986575936");
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
        [8] = "Enable Mortar STP",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_153()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C7_CTP_010_Main.iDifficulty,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|1995998324");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_79_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925684108768366",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2009366784");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Player in helicopter, waves stopped",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2012610044");
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

function export:OnEnter_box_ProximityTrigger_v3_221()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#8D366524",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108908625670969876",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2024180458");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_186_Out,
    });
    params = {
        -- Entity,
        [0] = "2108922432424253790",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2026240436");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_123_Out,
    });
    params = {
        -- Entity,
        [0] = "2109932898298649083",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2056915450");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_220_Out,
    });
    params = {
        -- Integer,
        [1] = 7,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2067928557");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_130_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2076060849");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_192_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2076265574");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_65_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925156243023499",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2082422628");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.iPlayerLocationIndex,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Zone Occupied - Beach - ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2085522125");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_39_A_le_B,
    });
    params = {
        -- A,
        [0] = Globals.Coast_C7_CTP_010_Enemy.iC7CurrentNumberOfEnemies,
        -- B,
        [1] = self.Max_NPC_ALIVE,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2088842946");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_15_Out,
    });
    params = {
        -- Float,
        [0] = 45,
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_219()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2108908625670969876",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_25()
    local params;
    params = {
        -- Index,
        [0] = self.iC7WavesNumber,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_126()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "PackageInExtractionZone",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2120280996");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_226_Out,
    });
    params = {
        -- Entity,
        [0] = "2108922467801111068",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2129529599");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Zone Empty - Lighthouse",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2135475315");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Zone Empty - Hangar",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2146082302");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_64_Out,
    });
    params = {
        -- Entity,
        [0] = "2108925156259800727",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@InfiniteWaveController_V2|2147407403");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_41_Out,
    });
    params = {
        -- Entity,
        [0] = "2108924964752071797",
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_62_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Heavy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_88_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Elite = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_66_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Close_Range_x1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_50_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_VEH = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_61_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Long_Range = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_71_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_VEH_Heavy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_74_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.fC7MinWaveDuration = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_82_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Heavy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_72_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_120_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.fC7MinWaveDuration = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_224_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Long_Range = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_124_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_HelicopterDropOff = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_67_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Heavy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Exp_Common_BasicSetups_22_Out()
    local l0;
    l0 = self.box_Brick_Exp_Common_BasicSetups_22;
    self.iC7Difficulty = l0:GetDataOutValue(0);
    self.iC7PlayerSpawnPOIIndex = l0:GetDataOutValue(4);
    self.iC7ExtractionPOIIndex = l0:GetDataOutValue(1);
    self.iC7PackagePositionIndex = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetEntity_v2_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_75_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_VEH_Heavy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Elite = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_212_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Close_Range_x2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_107_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Heavy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_102_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Close_Range_x1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_33_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Long_Range = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_190_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Close_Range_x1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_101_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_73_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Close_Range_x2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_96_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Close_Range_x1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_106_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_87_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_VEH = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_68_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_VEH_Heavy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_215_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPlayerLocationIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_95_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Close_Range_x2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_185_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPlayerLocationIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iC7AllowedRemainingNPCs = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_58_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_117_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eC7PackageSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_236_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iC7WavesNumber = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_217_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPlayerLocationIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_70_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_229_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_VEH_Heavy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_42_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_85_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Long_Range = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_105_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_VEH_Heavy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_57_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_54_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_98_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_VEH_Heavy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_63_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_VEH = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_210_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPlayerLocationIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_122_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_HelicopterDropOff = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_111_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_109_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Close_Range_x2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_76_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Close_Range_x1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_227_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Elite = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Close_Range_x2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bPlayerInHelicopter = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iC7AllowedRemainingNPCs = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_104_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_43_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_VEH_Heavy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_77_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_238_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iC7WavesNumber = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_49_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Heavy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_80_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_VEH = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_52_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Close_Range_x2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_100_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_48_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Long_Range = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_108_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Elite = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_228_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_VEH = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_200_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_53_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Close_Range_x1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_211_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPlayerLocationIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_225_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_51_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Elite = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_103_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Long_Range = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_46_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x2_B = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_86_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Heavy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_35_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_VEH = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_97_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x2_A = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Long_Range = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_110_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_VEH = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_79_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Elite = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_186_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Medium_Range_x1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_123_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_HelicopterDropOff = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_220_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPlayerLocationIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_130_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iC7AllowedRemainingNPCs = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_192_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iPlayerLocationIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_65_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Close_Range_x2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.fC7MaxWaveDuration = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_226_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Heavy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_64_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Elite = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_41_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eSpawner_Close_Range_x1 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="StartReinforcements" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
