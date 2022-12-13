LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_320/mis_320_b40.domino
-- User graph: MIS_320_B40_Exfiltration
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ForceExitVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UnlockDoor.lua");
        cboxRes:RegisterBox("Domino/System/VehiclePositionLockModifier.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_PlayerLock.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[469576666.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1982792409.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2263250773.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1526070147.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1135927399.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3607026267.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b40.MIS_320_B40_Exfiltration.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "PlayerDetected",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EnteredTruck",
                delayed = false,
            },
            [1] = {
                name = "Out",
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
    metadataTable[GetPathID("Domino/System/AI/SpawnAIRequestGroup_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "SpawnByCount",
            },
            [2] = {
                name = "SpawnByPercentage",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "AtLeastOneRequestSucceeded",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "RequestsFailed",
                delayed = false,
            },
            [3] = {
                name = "RequestSpawned",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "RequestGroupName",
                type = "string",
            },
            [1] = {
                name = "SpawnerCount",
                type = "int",
            },
            [2] = {
                name = "SpawnerPercentage",
                type = "int",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/ForceExitVehicle_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ForceExit",
            },
            [1] = {
                name = "TryExit",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "ForceExitted",
                delayed = false,
            },
            [1] = {
                name = "TryExitted",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "noFail",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "vehicle",
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v6.lua")] = {
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
                name = "MemberDied",
                delayed = true,
            },
            [4] = {
                name = "MemberRemoved",
                delayed = true,
            },
            [5] = {
                name = "MemberSpawned",
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
    metadataTable[GetPathID("Domino/System/NoWeaponMode_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Off",
            },
            [1] = {
                name = "On",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnEnter",
                delayed = false,
            },
            [1] = {
                name = "OnLeave",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "useAnims",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/VehiclePositionLockModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Lock",
            },
            [1] = {
                name = "Unlock",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Locked",
                delayed = false,
            },
            [1] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "VehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Lock",
            },
            [1] = {
                name = "Unlock",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Locked",
                delayed = false,
            },
            [1] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "IsAI",
                type = "bool",
            },
            [1] = {
                name = "IsPlayer",
                type = "bool",
            },
            [2] = {
                name = "SeatIndex",
                type = "int",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_PlayerLock.debug.lua")] = {
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
        },
        controlOutCount = 2,
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
    self._name = "MIS_320_B40_Exfiltration";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration";
    self.Out = DummyFunction;
    self.EnteredTruck = DummyFunction;
    self.e_LilFucker = nil;
    self.g_FrienglyPlayers = nil;
    self.i_eliteCountdown = 0;
    self.box_SoundModifier_v2_85 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|97454090");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_85_Started,
    });
    self.box_Delay_v5_93 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|103922652");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_93_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_68 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|152111027");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_64 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|163813976");
    l0:SetConnections({
    });
    self.box_Gate_v3_41 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|193308412");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_41_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_41_Out,
    });
    self.box_PositionModifier_v2_61 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|232612148");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_61_StartOut,
    });
    self.box_GroupSizeListener_v6_69 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|233815448");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_69_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_69_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_69_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_69_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_69_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_69_MemberSpawned,
    });
    self.box_UniversalInteractionModifier_v2_11 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|326734272");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_11_Disabled,
    });
    self.box_SoundModifier_v2_84 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|351893653");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_75 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|360023881");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_43 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|388192565");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_43_StartOut,
    });
    self.box_Delay_v5_80 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|392008197");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_80_TimeElapsed,
    });
    self.box_NavLinkModifier_45 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|437157399");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_45_Activated,
    });
    self.box_Delay_v5_66 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|509300190");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_66_TimeElapsed,
    });
    self.box_SoundModifier_v2_83 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|533381282");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_83_Started,
    });
    self.box_SpawnAI_51 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|566317054");
    l0:SetConnections({
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|595099235");
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
    self.box_MultipleOR_35 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|609074212");
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
        [0] = self.f_box_MultipleOR_35_Out,
    });
    self.box_UniversalInteractionModifier_v2_19 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|664907660");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_19_Interacted,
    });
    self.box_PlayDialog_v6_33 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|751716953");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_33_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_33_FinishedInterrupted,
    });
    self.box_SoundModifier_v2_89 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|761909766");
    l0:SetConnections({
    });
    self.box_Delay_v5_81 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|775942033");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_81_TimeElapsed,
    });
    self.box_CharacterLoadedIdListener_v2_60 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|823276923");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_60_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_60_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_60_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_60_LoadedIdReceived,
    });
    self.box_UniversalInteractionModifier_v2_26 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|881758258");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_26_Enabled,
    });
    self.box_EntityStatusListener_29 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|918611080");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_29_Loaded,
    });
    self.box_SoundModifier_v2_63 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|942054368");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v6_2 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|967949050");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_2_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_2_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_2_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_2_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_2_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_2_MemberSpawned,
    });
    self.box_SoundModifier_v2_82 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1059798452");
    l0:SetConnections({
    });
    self.box_MIS_320_PlayerLock_56 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_PlayerLock.debug.lua");
    l0 = self.box_MIS_320_PlayerLock_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_PlayerLock_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1086727529");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MIS_320_PlayerLock_56_Enabled,
    });
    self.box_NavLinkModifier_8 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1151001165");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_8_Activated,
    });
    self.box_Delay_v5_27 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1182532925");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_27_TimeElapsed,
    });
    self.box_PositionModifier_v2_44 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1195345358");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_44_StartOut,
    });
    self.box_SoundModifier_v2_37 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1238774489");
    l0:SetConnections({
    });
    self.box_NoWeaponMode_v3_12 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1344163718");
    l0:SetConnections({
        -- OnEnter,
        [0] = self.f_box_NoWeaponMode_v3_12_OnEnter,
    });
    self.box_NavLinkModifier_17 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1360546022");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_17_Activated,
    });
    self.box_CharacterLoadedIdListener_v2_15 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1396312959");
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
    self.box_NavLinkModifier_46 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1433991863");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_46_Activated,
    });
    self.box_EntityStatusListener_28 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1457471314");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_28_Loaded,
    });
    self.box_SpawnAIRequestGroup_v2_40 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1501402344");
    l0:SetConnections({
        -- AtLeastOneRequestSucceeded,
        [0] = self.f_box_SpawnAIRequestGroup_v2_40_AtLeastOneRequestSucceeded,
        -- Out,
        [1] = self.f_box_SpawnAIRequestGroup_v2_40_Out,
    });
    self.box_Delay_v5_42 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1505337906");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_42_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_42_TimeElapsed,
    });
    self.box_MultipleOR_47 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1511070845");
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
    self.box_OnceOnly_v3_52 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1583029669");
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
                [0] = self.f_box_OnceOnly_v3_52_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_30 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1639741011");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_30_Out,
    });
    self.box_MultipleOR_78 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1734556883");
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
        [0] = self.f_box_MultipleOR_78_Out,
    });
    self.box_UniversalInteractionModifier_v2_24 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1825782353");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_24_Disabled,
    });
    self.box_NavLinkModifier_13 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1840683031");
    l0:SetConnections({
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1938421038");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_18_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_SoundModifier_v2_62 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1939734890");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_25 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1956116793");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionModifier_v2_25_Interacted,
    });
    self.box_SpawnAI_16 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1978530612");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_16_Out,
    });
    self.box_Reach_GoTo_v3_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|2023094473");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_Reach_GoTo_v3_4_Disabled,
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_4_Success,
    });
    self.box_SoundModifier_v2_74 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|2063059753");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_7 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|2124928717");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_7_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_7_StartOut,
    });
    self.box_ProximityRadiusListener_v3_32 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|2128432648");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_32_SomeoneNear,
    });
    self.box_PlayDialog_v6_53 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|2133669844");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1310486617", "1310486617", "MIS_320_B40_Exfiltration", "In", "box_OutputOrder_v2_23.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:PlayerDetected()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_20();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1927499142", "1927499142", "MIS_320_B40_Exfiltration", "PlayerDetected", "box_Simple_Node_20.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_92_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_85();
    l0 = self.box_SoundModifier_v2_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1316097910", "1316097910", "MIS_320_B40_Exfiltration", "box_Simple_Node_92.Out", "box_SoundModifier_v2_85.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_28();
    l0 = self.box_EntityStatusListener_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1774842750", "1774842750", "MIS_320_B40_Exfiltration", "box_Simple_Node_20.Out", "box_EntityStatusListener_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SetContextualStrategy_31();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|804277513", "804277513", "MIS_320_B40_Exfiltration", "box_Simple_Node_20.Out", "box_SetContextualStrategy_31.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ProximityRadiusListener_v3_32();
    l0 = self.box_ProximityRadiusListener_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|419093218", "419093218", "MIS_320_B40_Exfiltration", "box_Simple_Node_20.Out", "box_ProximityRadiusListener_v3_32.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_66();
    l0 = self.box_Delay_v5_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1770831926", "1770831926", "MIS_320_B40_Exfiltration", "box_Simple_Node_20.Out", "box_Delay_v5_66.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_GroupSizeListener_v6_2();
    l0 = self.box_GroupSizeListener_v6_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1523464369", "1523464369", "MIS_320_B40_Exfiltration", "box_Simple_Node_20.Out", "box_GroupSizeListener_v6_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_Reach_GoTo_v3_4();
    l0 = self.box_Reach_GoTo_v3_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|452487570", "452487570", "MIS_320_B40_Exfiltration", "box_Simple_Node_20.Out", "box_Reach_GoTo_v3_4.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|264418988", "264418988", "MIS_320_B40_Exfiltration", "box_Simple_Node_20.Out", "box_Delay_v5_18.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_15();
    l0 = self.box_CharacterLoadedIdListener_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|161483085", "161483085", "MIS_320_B40_Exfiltration", "box_Simple_Node_20.Out", "box_CharacterLoadedIdListener_v2_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_86_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_44();
    l0 = self.box_PositionModifier_v2_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1028326728", "1028326728", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_86.Out", "box_PositionModifier_v2_44.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_86_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_92();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1804205551", "1804205551", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_86.Out", "box_Simple_Node_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_37();
    l0 = self.box_SoundModifier_v2_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1184531683", "1184531683", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_65.Out", "box_SoundModifier_v2_37.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_63();
    l0 = self.box_SoundModifier_v2_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|708298029", "708298029", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_65.Out", "box_SoundModifier_v2_63.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_65_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_64();
    l0 = self.box_SoundModifier_v2_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1896244205", "1896244205", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_65.Out", "box_SoundModifier_v2_64.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_65_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_62();
    l0 = self.box_SoundModifier_v2_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|969567358", "969567358", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_65.Out", "box_SoundModifier_v2_62.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_65_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_74();
    l0 = self.box_SoundModifier_v2_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|449115987", "449115987", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_65.Out", "box_SoundModifier_v2_74.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_65_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_75();
    l0 = self.box_SoundModifier_v2_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|472623830", "472623830", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_65.Out", "box_SoundModifier_v2_75.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_85_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = self.box_SoundModifier_v2_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|270984907", "270984907", "MIS_320_B40_Exfiltration", "box_SoundModifier_v2_85.Started", "box_OutputOrder_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_71_Out()
    self:OnExit_box_SetBoolean_v2_71_Out();
end;

function export:f_box_Delay_v5_93_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_68();
    l0 = self.box_Delay_v5_93;
    l1 = self.box_UniversalInteractionModifier_v2_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|909232793", "909232793", "MIS_320_B40_Exfiltration", "box_Delay_v5_93.TimeElapsed", "box_UniversalInteractionModifier_v2_68.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|445982802", "445982802", "MIS_320_B40_Exfiltration", "box_SetContextualStrategy_31.Out", "box_Delay_v5_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Gate_v3_41_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_41;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|482355861", "482355861", "MIS_320_B40_Exfiltration", "box_Gate_v3_41.Opened", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_41_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_41;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1930226882", "1930226882", "MIS_320_B40_Exfiltration", "box_Gate_v3_41.Out", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_38_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_40();
    l0 = self.box_SpawnAIRequestGroup_v2_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1197669016", "1197669016", "MIS_320_B40_Exfiltration", "box_Compare_Integers_38.A_le_B", "box_SpawnAIRequestGroup_v2_40.SpawnByCount", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnByCount
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_61_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_70();
    l0 = self.box_PositionModifier_v2_61;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|608499710", "608499710", "MIS_320_B40_Exfiltration", "box_PositionModifier_v2_61.StartOut", "box_SetBoolean_v2_70.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_69_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_69;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1721387562", "1721387562", "MIS_320_B40_Exfiltration", "box_GroupSizeListener_v6_69.Enabled", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_69_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_69;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|2147466419", "2147466419", "MIS_320_B40_Exfiltration", "box_GroupSizeListener_v6_69.MemberRemoved", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UniversalInteractionModifier_v2_11_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehiclePositionLockModifier_10();
    l0 = self.box_UniversalInteractionModifier_v2_11;
    l1 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|915921479", "915921479", "MIS_320_B40_Exfiltration", "box_UniversalInteractionModifier_v2_11.Disabled", "box_VehiclePositionLockModifier_10.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_2();
    l0 = self.box_GroupSizeListener_v6_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|87595717", "87595717", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_36.Out", "box_GroupSizeListener_v6_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_49();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|376890018", "376890018", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_36.Out", "box_SetInteger_v2_49.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_43_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_72();
    l0 = self.box_PositionModifier_v2_43;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1186210114", "1186210114", "MIS_320_B40_Exfiltration", "box_PositionModifier_v2_43.StartOut", "box_SetBoolean_v2_72.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_80_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_84();
    l0 = self.box_Delay_v5_80;
    l1 = self.box_SoundModifier_v2_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1176570053", "1176570053", "MIS_320_B40_Exfiltration", "box_Delay_v5_80.TimeElapsed", "box_SoundModifier_v2_84.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_14_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_67();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1522982785", "1522982785", "MIS_320_B40_Exfiltration", "box_UseContextualActionModifier_v3_14.Disabled", "box_UseContextualActionModifier_v3_67.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_45_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_46();
    l0 = self.box_NavLinkModifier_45;
    l1 = self.box_NavLinkModifier_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|87387487", "87387487", "MIS_320_B40_Exfiltration", "box_NavLinkModifier_45.Activated", "box_NavLinkModifier_46.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_67_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_1();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|850837779", "850837779", "MIS_320_B40_Exfiltration", "box_UseContextualActionModifier_v3_67.Disabled", "box_VehicleSeatModifier_v2_1.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_66_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_Delay_v5_66;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|761496895", "761496895", "MIS_320_B40_Exfiltration", "box_Delay_v5_66.TimeElapsed", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_80();
    l0 = self.box_Delay_v5_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1393699127", "1393699127", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_79.Out", "box_Delay_v5_80.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_83();
    l0 = self.box_SoundModifier_v2_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1990876991", "1990876991", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_79.Out", "box_SoundModifier_v2_83.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_83_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_81();
    l0 = self.box_SoundModifier_v2_83;
    l1 = self.box_Delay_v5_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|122971151", "122971151", "MIS_320_B40_Exfiltration", "box_SoundModifier_v2_83.Started", "box_Delay_v5_81.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_41();
    l0 = self.box_MultipleOR_39;
    l1 = self.box_Gate_v3_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|277845694", "277845694", "MIS_320_B40_Exfiltration", "box_MultipleOR_39.Out", "box_Gate_v3_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_34();
    l0 = self.box_MultipleOR_35;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|2043605172", "2043605172", "MIS_320_B40_Exfiltration", "box_MultipleOR_35.Out", "box_Compare_Integers_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_19_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_11();
    l0 = self.box_UniversalInteractionModifier_v2_19;
    l1 = self.box_UniversalInteractionModifier_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|289342876", "289342876", "MIS_320_B40_Exfiltration", "box_UniversalInteractionModifier_v2_19.Interacted", "box_UniversalInteractionModifier_v2_11.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_88_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_86();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|2144398246", "2144398246", "MIS_320_B40_Exfiltration", "box_Compare_Boolean_88.A_is_False", "box_OutputOrder_v2_86.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehiclePositionLockModifier_6_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_77();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1756166412", "1756166412", "MIS_320_B40_Exfiltration", "box_VehiclePositionLockModifier_6.Unlocked", "box_UnlockDoor_77.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_33_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_33;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|357601164", "357601164", "MIS_320_B40_Exfiltration", "box_PlayDialog_v6_33.Finished", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_33_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_33;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1777194613", "1777194613", "MIS_320_B40_Exfiltration", "box_PlayDialog_v6_33.FinishedInterrupted", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_81_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_82();
    l0 = self.box_Delay_v5_81;
    l1 = self.box_SoundModifier_v2_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1270546475", "1270546475", "MIS_320_B40_Exfiltration", "box_Delay_v5_81.TimeElapsed", "box_SoundModifier_v2_82.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_16();
    l0 = self.box_SpawnAI_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|2076587342", "2076587342", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_23.Out", "box_SpawnAI_16.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1322198960", "1322198960", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_23.Out", "box_AddActivityObjective_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_60_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_60_LoadedIdReceived();
    params = self:OnEnter_box_PlayDialog_v6_33();
    l0 = self.box_CharacterLoadedIdListener_v2_60;
    l1 = self.box_PlayDialog_v6_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|22359532", "22359532", "MIS_320_B40_Exfiltration", "box_CharacterLoadedIdListener_v2_60.LoadedIdReceived", "box_PlayDialog_v6_33.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_22();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1416408192", "1416408192", "MIS_320_B40_Exfiltration", "box_AddActivityObjective_v2_9.Out", "box_ActivityObjectiveMarkerModifier_v3_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_60();
    l0 = self.box_CharacterLoadedIdListener_v2_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1944881716", "1944881716", "MIS_320_B40_Exfiltration", "box_EndActivityObjective_v2_21.Out", "box_CharacterLoadedIdListener_v2_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ForceExitVehicle_v2_58_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_93();
    l0 = self.box_Delay_v5_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|176394574", "176394574", "MIS_320_B40_Exfiltration", "box_ForceExitVehicle_v2_58.ForceExitted", "box_Delay_v5_93.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_26_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_19();
    l0 = self.box_UniversalInteractionModifier_v2_26;
    l1 = self.box_UniversalInteractionModifier_v2_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1776834566", "1776834566", "MIS_320_B40_Exfiltration", "box_UniversalInteractionModifier_v2_26.Enabled", "box_UniversalInteractionModifier_v2_19.ForceInteraction", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceInteraction
    l1:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_70_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_70_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|91415515", "91415515", "MIS_320_B40_Exfiltration", "box_SetBoolean_v2_70.Out", "box_Delay_v5_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_29_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehiclePositionLockModifier_6();
    l0 = self.box_EntityStatusListener_29;
    l1 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|63969348", "63969348", "MIS_320_B40_Exfiltration", "box_EntityStatusListener_29.Loaded", "box_VehiclePositionLockModifier_6.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UnlockDoor_77_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_76();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|656575103", "656575103", "MIS_320_B40_Exfiltration", "box_UnlockDoor_77.Unlocked", "box_UnlockDoor_76.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_2_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_2;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1738931742", "1738931742", "MIS_320_B40_Exfiltration", "box_GroupSizeListener_v6_2.Enabled", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_2_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_2;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|638136609", "638136609", "MIS_320_B40_Exfiltration", "box_GroupSizeListener_v6_2.MemberRemoved", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleSeatModifier_v2_3_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_15();
    l0 = self.box_CharacterLoadedIdListener_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|2016096433", "2016096433", "MIS_320_B40_Exfiltration", "box_VehicleSeatModifier_v2_3.Locked", "box_CharacterLoadedIdListener_v2_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MIS_320_PlayerLock_56_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_12();
    l0 = self.box_MIS_320_PlayerLock_56;
    l1 = self.box_NoWeaponMode_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1006055345", "1006055345", "MIS_320_B40_Exfiltration", "box_MIS_320_PlayerLock_56.Enabled", "box_NoWeaponMode_v3_12.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_8_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_13();
    l0 = self.box_NavLinkModifier_8;
    l1 = self.box_NavLinkModifier_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1242068302", "1242068302", "MIS_320_B40_Exfiltration", "box_NavLinkModifier_8.Activated", "box_NavLinkModifier_13.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_88();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|442020412", "442020412", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_87.Out", "box_Compare_Boolean_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_87_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceExitVehicle_v2_58();
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1355543791", "1355543791", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_87.Out", "box_ForceExitVehicle_v2_58.ForceExit", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceExit
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_27_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_21();
    l0 = self.box_Delay_v5_27;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|944180586", "944180586", "MIS_320_B40_Exfiltration", "box_Delay_v5_27.TimeElapsed", "box_EndActivityObjective_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_44_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_73();
    l0 = self.box_PositionModifier_v2_44;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1206224150", "1206224150", "MIS_320_B40_Exfiltration", "box_PositionModifier_v2_44.StartOut", "box_SetBoolean_v2_73.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_73_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_73_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_43();
    l0 = self.box_PositionModifier_v2_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|660657685", "660657685", "MIS_320_B40_Exfiltration", "box_SetBoolean_v2_73.Out", "box_PositionModifier_v2_43.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_72_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_72_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_45();
    l0 = self.box_NavLinkModifier_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|109090937", "109090937", "MIS_320_B40_Exfiltration", "box_SetBoolean_v2_72.Out", "box_NavLinkModifier_45.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_NoWeaponMode_v3_12_OnEnter()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_26();
    l0 = self.box_NoWeaponMode_v3_12;
    l1 = self.box_UniversalInteractionModifier_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|683942490", "683942490", "MIS_320_B40_Exfiltration", "box_NoWeaponMode_v3_12.OnEnter", "box_UniversalInteractionModifier_v2_26.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_17_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_8();
    l0 = self.box_NavLinkModifier_17;
    l1 = self.box_NavLinkModifier_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|951158174", "951158174", "MIS_320_B40_Exfiltration", "box_NavLinkModifier_17.Activated", "box_NavLinkModifier_8.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_48_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_48_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_50();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|563291020", "563291020", "MIS_320_B40_Exfiltration", "box_IntegerArithmetics_v2_48.Out", "box_Compare_Integers_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_15_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_15_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = self.box_CharacterLoadedIdListener_v2_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|255540968", "255540968", "MIS_320_B40_Exfiltration", "box_CharacterLoadedIdListener_v2_15.LoadedIdReceived", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_34_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|553456538", "553456538", "MIS_320_B40_Exfiltration", "box_Compare_Integers_34.A_le_B", "box_OutputOrder_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehiclePositionLockModifier_10_Unlocked()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|595148364", "595148364", "MIS_320_B40_Exfiltration", "box_VehiclePositionLockModifier_10.Unlocked", "EnteredTruck", clone:GetLuaBox(), self);
    self:EnteredTruck();
end;

function export:f_box_NavLinkModifier_46_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_71();
    l0 = self.box_NavLinkModifier_46;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|530051367", "530051367", "MIS_320_B40_Exfiltration", "box_NavLinkModifier_46.Activated", "box_SetBoolean_v2_71.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_28_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehiclePositionLockModifier_5();
    l0 = self.box_EntityStatusListener_28;
    l1 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|766090253", "766090253", "MIS_320_B40_Exfiltration", "box_EntityStatusListener_28.Loaded", "box_VehiclePositionLockModifier_5.Lock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAIRequestGroup_v2_40_AtLeastOneRequestSucceeded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_42();
    l0 = self.box_SpawnAIRequestGroup_v2_40;
    l1 = self.box_Delay_v5_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1671841200", "1671841200", "MIS_320_B40_Exfiltration", "box_SpawnAIRequestGroup_v2_40.AtLeastOneRequestSucceeded", "box_Delay_v5_42.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAIRequestGroup_v2_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_41();
    l0 = self.box_SpawnAIRequestGroup_v2_40;
    l1 = self.box_Gate_v3_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1493440659", "1493440659", "MIS_320_B40_Exfiltration", "box_SpawnAIRequestGroup_v2_40.Out", "box_Gate_v3_41.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_42_Started()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_48();
    l0 = self.box_Delay_v5_42;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1309856341", "1309856341", "MIS_320_B40_Exfiltration", "box_Delay_v5_42.Started", "box_IntegerArithmetics_v2_48.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_42_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_41();
    l0 = self.box_Delay_v5_42;
    l1 = self.box_Gate_v3_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1093727566", "1093727566", "MIS_320_B40_Exfiltration", "box_Delay_v5_42.TimeElapsed", "box_Gate_v3_41.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_38();
    l0 = self.box_MultipleOR_47;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|436553459", "436553459", "MIS_320_B40_Exfiltration", "box_MultipleOR_47.Out", "box_Compare_Integers_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_52_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_51();
    l0 = self.box_OnceOnly_v3_52;
    l1 = self.box_SpawnAI_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|559848998", "559848998", "MIS_320_B40_Exfiltration", "box_OnceOnly_v3_52.Out", "box_SpawnAI_51.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_57_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_59();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|2125288515", "2125288515", "MIS_320_B40_Exfiltration", "box_UseContextualActionModifier_v3_57.Enabled", "box_UseContextualActionModifier_v3_59.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_30_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_30;
    l1 = self.box_MIS_320_PlayerLock_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|557378173", "557378173", "MIS_320_B40_Exfiltration", "box_Gate_v3_30.Out", "box_MIS_320_PlayerLock_56.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_UnlockDoor_76_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_57();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|800812545", "800812545", "MIS_320_B40_Exfiltration", "box_UnlockDoor_76.Unlocked", "box_UseContextualActionModifier_v3_57.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_78_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_29();
    l0 = self.box_MultipleOR_78;
    l1 = self.box_EntityStatusListener_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|859381949", "859381949", "MIS_320_B40_Exfiltration", "box_MultipleOR_78.Out", "box_EntityStatusListener_29.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehiclePositionLockModifier_5_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1369173328", "1369173328", "MIS_320_B40_Exfiltration", "box_VehiclePositionLockModifier_5.Locked", "box_UseContextualActionModifier_v3_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_24_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v3_4();
    l0 = self.box_UniversalInteractionModifier_v2_24;
    l1 = self.box_Reach_GoTo_v3_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1312102355", "1312102355", "MIS_320_B40_Exfiltration", "box_UniversalInteractionModifier_v2_24.Disabled", "box_Reach_GoTo_v3_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetInteger_v2_49_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_49_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_69();
    l0 = self.box_GroupSizeListener_v6_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|915909308", "915909308", "MIS_320_B40_Exfiltration", "box_SetInteger_v2_49.Out", "box_GroupSizeListener_v6_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_55_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_32();
    l0 = self.box_ProximityRadiusListener_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1362879147", "1362879147", "MIS_320_B40_Exfiltration", "box_GetPlayerGroup_v2_55.Out", "box_ProximityRadiusListener_v3_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_59_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|231931545", "231931545", "MIS_320_B40_Exfiltration", "box_UseContextualActionModifier_v3_59.Disabled", "box_OutputOrder_v2_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_18_Started()
    local l0;
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1840617012", "1840617012", "MIS_320_B40_Exfiltration", "box_Delay_v5_18.Started", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_28();
    l0 = self.box_Delay_v5_18;
    l1 = self.box_EntityStatusListener_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|623094802", "623094802", "MIS_320_B40_Exfiltration", "box_Delay_v5_18.TimeElapsed", "box_EntityStatusListener_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_1_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_3();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1800086542", "1800086542", "MIS_320_B40_Exfiltration", "box_VehicleSeatModifier_v2_1.Locked", "box_VehicleSeatModifier_v2_3.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_25_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_24();
    l0 = self.box_UniversalInteractionModifier_v2_25;
    l1 = self.box_UniversalInteractionModifier_v2_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1252855736", "1252855736", "MIS_320_B40_Exfiltration", "box_UniversalInteractionModifier_v2_25.Interacted", "box_UniversalInteractionModifier_v2_24.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_90();
    l0 = self.box_SpawnAI_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1070717093", "1070717093", "MIS_320_B40_Exfiltration", "box_SpawnAI_16.Out", "box_OutputOrder_v2_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_25();
    l0 = self.box_UniversalInteractionModifier_v2_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|622796776", "622796776", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_54.Out", "box_UniversalInteractionModifier_v2_25.ForceInteraction", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceInteraction
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_55();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|679761316", "679761316", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_54.Out", "box_GetPlayerGroup_v2_55.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_90_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_7();
    l0 = self.box_PositionModifier_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|624056855", "624056855", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_90.Out", "box_PositionModifier_v2_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_90_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_89();
    l0 = self.box_SoundModifier_v2_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1109184396", "1109184396", "MIS_320_B40_Exfiltration", "box_OutputOrder_v2_90.Out", "box_SoundModifier_v2_89.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_50_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|379500064", "379500064", "MIS_320_B40_Exfiltration", "box_Compare_Integers_50.A_ge_B", "box_OnceOnly_v3_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Reach_GoTo_v3_4_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_30();
    l0 = self.box_Reach_GoTo_v3_4;
    l1 = self.box_Gate_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1617247615", "1617247615", "MIS_320_B40_Exfiltration", "box_Reach_GoTo_v3_4.Disabled", "box_Gate_v3_30.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Reach_GoTo_v3_4_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_30();
    l0 = self.box_Reach_GoTo_v3_4;
    l1 = self.box_Gate_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|53646798", "53646798", "MIS_320_B40_Exfiltration", "box_Reach_GoTo_v3_4.Success", "box_Gate_v3_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_7_Done()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_17();
    l0 = self.box_PositionModifier_v2_7;
    l1 = self.box_NavLinkModifier_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1641669329", "1641669329", "MIS_320_B40_Exfiltration", "box_PositionModifier_v2_7.Done", "box_NavLinkModifier_17.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_7_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_61();
    l0 = self.box_PositionModifier_v2_7;
    l1 = self.box_PositionModifier_v2_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|188688390", "188688390", "MIS_320_B40_Exfiltration", "box_PositionModifier_v2_7.StartOut", "box_PositionModifier_v2_61.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_32_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_53();
    l0 = self.box_ProximityRadiusListener_v3_32;
    l1 = self.box_PlayDialog_v6_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|163701092", "163701092", "MIS_320_B40_Exfiltration", "box_ProximityRadiusListener_v3_32.SomeoneNear", "box_PlayDialog_v6_53.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|@exfiltration_door_sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_92_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|@n_PlayerDetected");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_20_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|22828674");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2108405354883725670",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_320_B40_OBJ_HIDE",
            id = "1012944",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|25914517");
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
                [0] = self.f_box_OutputOrder_v2_86_Out_0,
                [1] = self.f_box_OutputOrder_v2_86_Out_1,
            },
            count = 2,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|90966997");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
                [2] = self.f_box_OutputOrder_v2_65_Out_2,
                [3] = self.f_box_OutputOrder_v2_65_Out_3,
                [4] = self.f_box_OutputOrder_v2_65_Out_4,
                [5] = self.f_box_OutputOrder_v2_65_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_85()
    local params;
    params = {
        -- Pawns,
        [0] = "2108336010025775721",
        -- SoundId,
        [1] = "3607026267",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|101149411");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_71_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_93()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|110208854");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_31_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108153819664759840",
        -- Group,
        [1] = "#4652D5FC",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_68()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108140365753107819",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_64()
    local params;
    params = {
        -- Pawns,
        [0] = "2109177327838576508",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
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

function export:OnEnter_box_Compare_Integers_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|222336007");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_38_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v6_69;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_61()
    local params;
    params = {
        -- blendTime,
        [1] = 7,
        -- endTarget,
        [4] = "2109001357208928485",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108833885333761473",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_69()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#C746222C",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_11()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108140365753107819",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_84()
    local params;
    params = {
        -- Pawns,
        [0] = "2108336010025775721",
        -- SoundId,
        [1] = "1982792409",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_75()
    local params;
    params = {
        -- Pawns,
        [0] = "2109304803036237364",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|378722334");
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
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_43()
    local params;
    params = {
        -- blendTime,
        [1] = 6,
        -- endTarget,
        [4] = "2108250916118343179",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108250896444960246",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_80()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|400789541");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_14_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109179891013478682",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_45()
    local params;
    params = {
        -- Entity,
        [0] = "2108251069258673737",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|462772894");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_67_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108129244692353920",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_66()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|525673994");
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
                [0] = self.f_box_OutputOrder_v2_79_Out_0,
                [1] = self.f_box_OutputOrder_v2_79_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_83()
    local params;
    params = {
        -- Pawns,
        [0] = "2108336004543820391",
        -- SoundId,
        [1] = "3607026267",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_51()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108833796299184648",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_19()
    local params;
    params = {
        -- interactor,
        [2] = self.e_LilFucker,
        -- usableEntity,
        [4] = "2108140365753107819",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|700815784");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_88_A_is_False,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.mis_320_b10.b_Prison_OutsideCourtyardGate_Opened,
    };
    return params;
end;

function export:OnEnter_box_VehiclePositionLockModifier_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehiclePositionLockModifier_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|710328020");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehiclePositionLockModifier_6_Unlocked,
    });
    params = {
        -- VehicleEntity,
        [0] = "2108140365753107819",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_33()
    local params;
    params = {
        -- Group,
        [0] = self.e_LilFucker,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1526070147",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_89()
    local params;
    params = {
        -- Pawns,
        [0] = "2108804290643508230",
        -- SoundId,
        [1] = "469576666",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_81()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|783733175");
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

function export:OnEnter_box_CharacterLoadedIdListener_v2_60()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870438634",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|823748489");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_9_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_320_B40_OBJ_HIDE",
            id = "1012944",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|833242579");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_21_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_320_B40_OBJ_HIDE",
            id = "1012944",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|840663650");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_58_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = self.e_LilFucker,
        -- vehicle,
        [2] = "2108140365753107819",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_26()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108140365753107819",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|917375578");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_70_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_29()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108140365753107819",
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|941496496");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_77_Unlocked,
    });
    params = {
        -- door,
        [0] = "2109578938450759225",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_63()
    local params;
    params = {
        -- Pawns,
        [0] = "2109177329117839230",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_2()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#4652D5FC",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|988193810");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_3_Locked,
    });
    params = {
        -- IsAI,
        [0] = false,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = "2108140365753107819",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_82()
    local params;
    params = {
        -- Pawns,
        [0] = "2108336004543820391",
        -- SoundId,
        [1] = "1982792409",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_8()
    local params;
    params = {
        -- Entity,
        [0] = "2101065775749015994",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1179546407");
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
                [0] = self.f_box_OutputOrder_v2_87_Out_0,
                [1] = self.f_box_OutputOrder_v2_87_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_27()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_44()
    local params;
    params = {
        -- blendTime,
        [1] = 6,
        -- endTarget,
        [4] = "2108250910909017599",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108250903306841592",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1198846566");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_73_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1232632375");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_72_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_37()
    local params;
    params = {
        -- Pawns,
        [0] = "2109177331217088384",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_12()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_17()
    local params;
    params = {
        -- Entity,
        [0] = "2101065785496578493",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1373250161");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_48_Out,
    });
    params = {
        -- A,
        [0] = self.i_eliteCountdown,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870438634",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1407461533");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_34_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v6_2;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_VehiclePositionLockModifier_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehiclePositionLockModifier_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1417880658");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehiclePositionLockModifier_10_Unlocked,
    });
    params = {
        -- VehicleEntity,
        [0] = "2108140365753107819",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_46()
    local params;
    params = {
        -- Entity,
        [0] = "2108251072496676429",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_28()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108140365753107819",
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_40()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "gp_b40_renf",
        -- SpawnerCount,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_42()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1639050971");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_57_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108997572157790836",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_30()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1705195978");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_76_Unlocked,
    });
    params = {
        -- door,
        [0] = "2109567616107443887",
    };
    return params;
end;

function export:OnEnter_box_VehiclePositionLockModifier_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehiclePositionLockModifier_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1791513739");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehiclePositionLockModifier_5_Locked,
    });
    params = {
        -- VehicleEntity,
        [0] = "2108140365753107819",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_24()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108140365753107819",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_13()
    local params;
    params = {
        -- Entity,
        [0] = "2102518621673689319",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1874826974");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_49_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1927903450");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_55_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1932874221");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_59_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108140455293109715",
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

function export:OnEnter_box_SoundModifier_v2_62()
    local params;
    params = {
        -- Pawns,
        [0] = "2109177314928508794",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1949631072");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_1_Locked,
    });
    params = {
        -- IsAI,
        [0] = false,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 1,
        -- vehicleEntity,
        [4] = "2108140365753107819",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_25()
    local params;
    params = {
        -- interactor,
        [2] = self.e_LilFucker,
        -- usableEntity,
        [4] = "2108140365753107819",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_16()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108140365734233443",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|1999752495");
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

function export:OnEnter_box_OutputOrder_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|2001012574");
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
                [0] = self.f_box_OutputOrder_v2_90_Out_0,
                [1] = self.f_box_OutputOrder_v2_90_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40_Exfiltration|2002260968");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_50_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.i_eliteCountdown,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_4()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresAllPlayer,
        [2] = true,
        -- bRequiresObjective,
        [3] = false,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eTrigger,
        [8] = "2108140562610669026",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_GoTo",
            id = "373019",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_74()
    local params;
    params = {
        -- Pawns,
        [0] = "2109304797424258610",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_7()
    local params;
    params = {
        -- blendTime,
        [1] = 8,
        -- endTarget,
        [4] = "2106703420304925229",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103786170283483231",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = self.e_LilFucker,
        -- nearZone,
        [4] = 10,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_53()
    local params;
    params = {
        -- Group,
        [0] = self.e_LilFucker,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2263250773",
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_71_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_320_b10.b_Prison_EntranceDoor_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_60_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_60;
    self.e_LilFucker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_70_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_320_b10.b_Prison_FrontGate_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_73_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_320_b10.b_Prison_OutsideCourtyardGate_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_72_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_320_b10.b_Prison_InsideCourtyardGate_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_48_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.i_eliteCountdown = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_15_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_15;
    self.e_LilFucker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_49_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_eliteCountdown = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_55_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_32;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:EnteredTruck()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="PlayerDetected" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="EnteredTruck" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
