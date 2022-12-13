LUACR� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/treasurehunt/th_e501.domino
-- User graph: TH_E501_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Burn_Target.Brick_Burn_Target_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EnableIgnitorEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ExtinguishAllFires.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/LockableListener.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2370726688.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3404117155.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3396814091.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2116273306.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3097191436.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/TreasureHunt/TH_E501.TH_E501_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "RemoveItemFromInventory",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "ItemsAcquired",
                delayed = false,
            },
            [1] = {
                name = "ItemsRemoved",
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
                name = "AmountRequired",
                type = "int",
            },
            [1] = {
                name = "bCheckAmountInInventory",
                type = "bool",
            },
            [2] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [4] = {
                name = "LootItemID",
                type = "genericdb",
            },
            [5] = {
                name = "MarkerTypeId",
                type = "database",
            },
            [6] = {
                name = "Objective",
                type = "oasis",
            },
            [7] = {
                name = "opt_eMarker",
                type = "entity",
            },
            [8] = {
                name = "ProtectItemOnSuccess",
                type = "bool",
            },
        },
        dataInCount = 9,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "extraMarker",
                delayed = false,
            },
            [1] = {
                name = "Failed",
                delayed = false,
            },
            [2] = {
                name = "PlayerDetected",
                delayed = true,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bPlayerDetection",
                type = "bool",
            },
            [2] = {
                name = "eGuardsCS",
                type = "entity",
            },
            [3] = {
                name = "eTargetCS",
                type = "entity",
            },
            [4] = {
                name = "Objective",
                type = "oasis",
            },
            [5] = {
                name = "sDamageType",
                type = "string",
            },
            [6] = {
                name = "TargetGroup",
                type = "group",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "eNumberOfEscaped",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Burn_Target.Brick_Burn_Target_v2.debug.lua")] = {
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
                name = "Started",
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
            [5] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 6,
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
                name = "Group",
                type = "group",
            },
            [3] = {
                name = "GroupSize",
                type = "int",
            },
            [4] = {
                name = "Objective",
                type = "oasis",
            },
            [5] = {
                name = "ObjectiveMarker",
                type = "entity",
            },
            [6] = {
                name = "Target",
                type = "entity",
            },
            [7] = {
                name = "useGroup",
                type = "bool",
            },
        },
        dataInCount = 8,
        dataOut = {
            [0] = {
                name = "BurningTarget",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")] = {
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/ExtinguishAllFires.lua")] = {
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
    metadataTable[GetPathID("Domino/System/LockableListener.lua")] = {
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
                name = "Locked",
                delayed = true,
            },
            [3] = {
                name = "Unlocked",
                delayed = true,
            },
            [4] = {
                name = "UnlockFailed",
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
                name = "lockableEntity",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/Narrative/PlaySequence_v8.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Play",
            },
            [2] = {
                name = "PlayFromStart",
            },
            [3] = {
                name = "Skip",
            },
            [4] = {
                name = "SPIn",
                dynamicType = 2,
            },
            [5] = {
                name = "Stop",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = true,
            },
            [2] = {
                name = "Skipped",
                delayed = true,
            },
            [3] = {
                name = "SPOut",
                dynamicType = 2,
                delayed = false,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "Stopped",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "cleanupArrows",
                type = "bool",
            },
            [1] = {
                name = "IsSkippable",
                type = "bool",
            },
            [2] = {
                name = "MetaSequenceID",
                type = "int",
            },
            [3] = {
                name = "SceneEntity",
                type = "entity",
            },
            [4] = {
                name = "SequenceFile",
                type = "sequence",
            },
            [5] = {
                name = "ShouldRemovePostFx",
                type = "bool",
            },
            [6] = {
                name = "SkipPostFx",
                type = "string",
            },
        },
        dataInCount = 7,
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
    metadataTable[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetNumberOfItems",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [2] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "numItems",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/SoundShapeModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Paused",
                delayed = false,
            },
            [1] = {
                name = "Resumed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "FadeTime",
                type = "float",
            },
            [1] = {
                name = "SoundShapeId",
                type = "entity",
            },
        },
        dataInCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "TH_E501_B10";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10";
    self.IKeyPickup = 0;
    self.PlayerGroup = nil;
    self._902526 = {
    };
    self.TimesFireExtinguished = 0;
    self.WentOutside = false;
    self.box_Delay_v5_189 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|4847040");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_189_TimeElapsed,
    });
    self.box_EntityStatusListener_57 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|20737331");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_57_Loaded,
    });
    self.box_Bind_v4_38 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|22731236");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_38_Bound,
    });
    self.box_RemoveEntity_v2_24 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|100983473");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_24_Out,
    });
    self.box_MultipleOR_181 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|105499199");
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
        [0] = self.f_box_MultipleOR_181_Out,
    });
    self.box_OnceOnly_v3_186 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|131733293");
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
                [0] = self.f_box_OnceOnly_v3_186_Out_0,
            },
            count = 2,
        },
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|178531147");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_StaticBreakableListener_117 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|213540950");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_117_OnBreak,
    });
    self.box_Delay_v5_188 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|221854619");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_188_TimeElapsed,
    });
    self.box_MultipleOR_103 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|232199955");
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
        [0] = self.f_box_MultipleOR_103_Out,
    });
    self.box_Bind_v4_55 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|240339506");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_55_Bound,
    });
    self.box_MultipleOR_198 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|252159159");
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
        [0] = self.f_box_MultipleOR_198_Out,
    });
    self.box_SoundModifier_v2_176 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|341306861");
    l0:SetConnections({
    });
    self.box_MultipleOR_101 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|354576926");
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
        [0] = self.f_box_MultipleOR_101_Out,
    });
    self.box_Delay_v5_207 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|385135823");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_207_TimeElapsed,
    });
    self.box_StartCelebration_5 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|395920895");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_5_Ended,
    });
    self.box_PlaySequence_v8_16 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|418460792");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 0,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_79 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|496650625");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_79_Done,
    });
    self.box_LockListener_151 = cbox:CreateBox("Domino/System/LockableListener.lua");
    l0 = self.box_LockListener_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockListener_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|534203951");
    l0:SetConnections({
        -- Locked,
        [2] = self.f_box_LockListener_151_Locked,
        -- Unlocked,
        [3] = self.f_box_LockListener_151_Unlocked,
    });
    self.box_SpawnAI_47 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|541152091");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_100 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|546205662");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_100_Loaded,
    });
    self.box_Delay_v5_194 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|549036204");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_194_TimeElapsed,
    });
    self.box_PlaySequence_v8_22 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|598809726");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 0,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_128 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|600368412");
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
                [0] = self.f_box_OnceOnly_v3_128_Out_0,
            },
            count = 2,
        },
    });
    self.box_PhysicsModifier_174 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|603395739");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_6 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|633857246");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_6_Out,
    });
    self.box_Bind_v4_92 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|638948898");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_92_Bound,
    });
    self.box_OnceOnly_v3_102 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|640854479");
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
                [0] = self.f_box_OnceOnly_v3_102_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_173 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|644298051");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_173_TimeElapsed,
    });
    self.box_SoundModifier_v2_179 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|702493876");
    l0:SetConnections({
    });
    self.box_Bind_v4_13 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|761320646");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_13_Bound,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|767786370");
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
    self.box_ProximityTrigger_v3_185 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|808089234");
    l0:SetConnections({
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_185_OnAllInside,
    });
    self.box_EntityStatusListener_71 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|859734362");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_71_Loaded,
    });
    self.box_EntityStatusListener_60 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|866657182");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_60_Loaded,
    });
    self.box_ProximityTrigger_v3_86 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|907088998");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_86_Enter,
    });
    self.box_Delay_v5_108 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|913327164");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_108_TimeElapsed,
    });
    self.box_SoundModifier_v2_14 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|969284349");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_165 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1017002428");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_165_Enter,
    });
    self.box_SoundModifier_v2_39 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1018922993");
    l0:SetConnections({
    });
    self.box_Delay_v5_84 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1039703371");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_84_TimeElapsed,
    });
    self.box_PositionModifier_v2_98 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1066784876");
    l0:SetConnections({
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1080443930");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_PlaySequence_v8_23 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1100203994");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_23_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_23_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Pause",
                },
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_78 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1138155747");
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
                [0] = self.f_box_OnceOnly_v3_78_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_20 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1142038650");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_20_Out,
    });
    self.box_Delay_v5_73 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1222293790");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_73_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_21 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1289627029");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_21_Enter,
    });
    self.box_ProximityTrigger_v3_197 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1320290795");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_197_Enter,
    });
    self.box_Brick_Burn_Target_v2_53 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Burn_Target.Brick_Burn_Target_v2.debug.lua");
    l0 = self.box_Brick_Burn_Target_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Burn_Target_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1394440222");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_Brick_Burn_Target_v2_53_Started,
        -- StartedBurning,
        [3] = self.f_box_Brick_Burn_Target_v2_53_StartedBurning,
    });
    self.box_ProximityTrigger_v3_167 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1419867929");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_167_Enter,
    });
    self.box_PlaySequence_v8_58 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1420546577");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 0,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
    });
    self.box_Delay_v5_64 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1462995842");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_64_TimeElapsed,
    });
    self.box_Reach_GoTo_v3_110 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1515237918");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_Reach_GoTo_v3_110_Started,
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_110_Success,
    });
    self.box_Delay_v5_206 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1516777607");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_206_TimeElapsed,
    });
    self.box_Bind_v4_166 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1524524429");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_166_Bound,
    });
    self.box_Delay_v5_205 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1553389675");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_205_TimeElapsed,
    });
    self.box_Bind_v4_51 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1563726530");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_51_Bound,
    });
    self.box_MultipleOR_50 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1626870118");
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
        [0] = self.f_box_MultipleOR_50_Out,
    });
    self.box_LookAtTrigger_v2_164 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1628858002");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_164_EnterFOV,
    });
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1650091040");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_Delay_v5_150 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1696152901");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_150_TimeElapsed,
    });
    self.box_MultipleOR_122 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1725530435");
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
        [0] = self.f_box_MultipleOR_122_Out,
    });
    self.box_LookAtTrigger_v2_135 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1805947268");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_135_EnterFOV,
    });
    self.box_OnceOnly_v3_30 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1847297630");
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
                [0] = self.f_box_OnceOnly_v3_30_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_AcquireObject_v6_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
    l0 = self.box_Brick_AcquireObject_v6_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v6_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1870424692");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v6_12_ItemsAcquired,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1871908431");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_Delay_v5_94 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1880063234");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_94_TimeElapsed,
    });
    self.box_MultipleOR_77 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1881979487");
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
        [0] = self.f_box_MultipleOR_77_Out,
    });
    self.box_PhysicsModifier_170 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1888256444");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhysicsModifier_170_Enabled,
    });
    self.box_Brick_Kill_Target_CORE_v2_29 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua");
    l0 = self.box_Brick_Kill_Target_CORE_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Kill_Target_CORE_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1896639080");
    l0:SetConnections({
        -- Success,
        [4] = self.f_box_Brick_Kill_Target_CORE_v2_29_Success,
    });
    self.box_ProximityTrigger_v3_96 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1924690889");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_96_Enter,
    });
    self.box_SoundModifier_v2_178 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1943222739");
    l0:SetConnections({
    });
    self.box_SpawnAI_87 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1958312155");
    l0:SetConnections({
    });
    self.box_Delay_v5_9 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2002883298");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_9_TimeElapsed,
    });
    self.box_PositionModifier_v2_28 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2017016428");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_28_StartOut,
    });
    self.box_SoundModifier_v2_91 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2023413043");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_91_Started,
    });
    self.box_MultipleOR_191 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2042355518");
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
        [0] = self.f_box_MultipleOR_191_Out,
    });
    self.box_PositionModifier_v2_200 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2133277115");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_183 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2137621937");
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
                [0] = self.f_box_OnceOnly_v3_183_Out_0,
            },
            count = 2,
        },
    });
    self.box_PhysicsModifier_80 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2142165261");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|230521260", "230521260", "TH_E501_B10", "In", "box_ActivityAcknowledgeGate_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_196();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|340097824", "340097824", "TH_E501_B10", "OnLeaveZone", "box_ActivityRetry_v2_196.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_187_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1856980372", "1856980372", "TH_E501_B10", "box_Simple_Node_187.Out", "box_MultipleOR_191.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_113_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|635535003", "635535003", "TH_E501_B10", "box_Simple_Node_113.Out", "box_MultipleOR_4.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_172_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_71();
    l0 = self.box_EntityStatusListener_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|70637652", "70637652", "TH_E501_B10", "box_Simple_Node_172.Out", "box_EntityStatusListener_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_35();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|773764162", "773764162", "TH_E501_B10", "box_OutputOrder_v2_43.Out", "box_StimsEmitter_v2_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_33();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1951062672", "1951062672", "TH_E501_B10", "box_OutputOrder_v2_43.Out", "box_StimsEmitter_v2_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_56();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1905222226", "1905222226", "TH_E501_B10", "box_OutputOrder_v2_43.Out", "box_StaticBreakableBreaker_56.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_59();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1891208473", "1891208473", "TH_E501_B10", "box_OutputOrder_v2_43.Out", "box_StaticBreakableBreaker_59.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_178();
    l0 = self.box_SoundModifier_v2_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|73145432", "73145432", "TH_E501_B10", "box_OutputOrder_v2_43.Out", "box_SoundModifier_v2_178.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_43_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_41();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1089571843", "1089571843", "TH_E501_B10", "box_OutputOrder_v2_43.Out", "box_SoundShapeModifier_41.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_189_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ExtinguishAllFires_193();
    l0 = self.box_Delay_v5_189;
    l1 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1211570792", "1211570792", "TH_E501_B10", "box_Delay_v5_189.TimeElapsed", "box_ExtinguishAllFires_193.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_144();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|753022852", "753022852", "TH_E501_B10", "box_OutputOrder_v2_145.Out", "box_ParticleSystem_v3_144.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_107();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1834423020", "1834423020", "TH_E501_B10", "box_OutputOrder_v2_145.Out", "box_ParticleSystem_v3_107.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_137();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|987168448", "987168448", "TH_E501_B10", "box_OutputOrder_v2_145.Out", "box_ParticleSystem_v3_137.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_97();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2111303311", "2111303311", "TH_E501_B10", "box_OutputOrder_v2_145.Out", "box_ParticleSystem_v3_97.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_146();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1816789929", "1816789929", "TH_E501_B10", "box_OutputOrder_v2_145.Out", "box_ParticleSystem_v3_146.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_132();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2064910502", "2064910502", "TH_E501_B10", "box_OutputOrder_v2_145.Out", "box_ParticleSystem_v3_132.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_45();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1301822240", "1301822240", "TH_E501_B10", "box_OutputOrder_v2_145.Out", "box_ParticleSystem_v3_45.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_37();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1198751542", "1198751542", "TH_E501_B10", "box_OutputOrder_v2_145.Out", "box_ParticleSystem_v3_37.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_42();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1184737789", "1184737789", "TH_E501_B10", "box_OutputOrder_v2_145.Out", "box_ParticleSystem_v3_42.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_26();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|864509999", "864509999", "TH_E501_B10", "box_OutputOrder_v2_145.Out", "box_ParticleSystem_v3_26.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_90();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|537449699", "537449699", "TH_E501_B10", "box_OutputOrder_v2_145.Out", "box_ParticleSystem_v3_90.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_8();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|400826319", "400826319", "TH_E501_B10", "box_OutputOrder_v2_145.Out", "box_StimsEmitter_v2_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_152();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|814062362", "814062362", "TH_E501_B10", "box_OutputOrder_v2_145.Out", "box_StimsEmitter_v2_152.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_155();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|56495240", "56495240", "TH_E501_B10", "box_OutputOrder_v2_145.Out", "box_ParticleSystem_v3_155.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_201();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1409800507", "1409800507", "TH_E501_B10", "box_OutputOrder_v2_145.Out", "box_SoundShapeModifier_201.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_57_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_92();
    l0 = self.box_EntityStatusListener_57;
    l1 = self.box_Bind_v4_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|167931295", "167931295", "TH_E501_B10", "box_EntityStatusListener_57.Loaded", "box_Bind_v4_92.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_38_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_48();
    l0 = self.box_Bind_v4_38;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|9358855", "9358855", "TH_E501_B10", "box_Bind_v4_38.Bound", "box_StimsEmitter_v2_48.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_158_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|238768124", "238768124", "TH_E501_B10", "box_Compare_Boolean_158.A_is_False", "box_OnceOnly_v3_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_75_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|116709405", "116709405", "TH_E501_B10", "box_EndActivityObjective_v2_75.Out", "box_MultipleOR_198.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RemoveEntity_v2_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_188();
    l0 = self.box_RemoveEntity_v2_24;
    l1 = self.box_Delay_v5_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|935398761", "935398761", "TH_E501_B10", "box_RemoveEntity_v2_24.Out", "box_Delay_v5_188.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_181_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_181;
    l1 = self.box_OnceOnly_v3_183;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1369665279", "1369665279", "TH_E501_B10", "box_MultipleOR_181.Out", "box_OnceOnly_v3_183.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_123_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|545340560", "545340560", "TH_E501_B10", "box_OutputOrder_v2_123.Out", "box_MultipleOR_122.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_123_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1501019443", "1501019443", "TH_E501_B10", "box_OutputOrder_v2_123.Out", "box_MultipleOR_101.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_123_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_124();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|144133838", "144133838", "TH_E501_B10", "box_OutputOrder_v2_123.Out", "box_EndActivityObjective_v2_124.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_125();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1500152984", "1500152984", "TH_E501_B10", "box_OutputOrder_v2_123.Out", "box_ActivityObjectiveMarkerModifier_v3_125.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_176();
    l0 = self.box_SoundModifier_v2_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|592832786", "592832786", "TH_E501_B10", "box_OutputOrder_v2_123.Out", "box_SoundModifier_v2_176.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_186_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_175();
    l0 = self.box_OnceOnly_v3_186;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|381473618", "381473618", "TH_E501_B10", "box_OnceOnly_v3_186.Out", "box_OutputOrder_v2_175.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_120_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1407404053", "1407404053", "TH_E501_B10", "box_Compare_Integers_120.A_gt_B", "box_MultipleOR_4.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_120_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_95();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|751844070", "751844070", "TH_E501_B10", "box_Compare_Integers_120.A_le_B", "box_OutputOrder_v2_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_87();
    l0 = self.box_SpawnAI_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|701899304", "701899304", "TH_E501_B10", "box_OutputOrder_v2_49.Out", "box_SpawnAI_87.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableIgnitorEntityBox_v2_114();
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|259837486", "259837486", "TH_E501_B10", "box_OutputOrder_v2_49.Out", "box_EnableIgnitorEntityBox_v2_114.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_74();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1269470138", "1269470138", "TH_E501_B10", "box_OutputOrder_v2_49.Out", "box_EndActivityObjective_v2_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_176();
    l0 = self.box_SoundModifier_v2_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|559177391", "559177391", "TH_E501_B10", "box_OutputOrder_v2_49.Out", "box_SoundModifier_v2_176.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_203_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_206();
    l0 = self.box_Delay_v5_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|271800890", "271800890", "TH_E501_B10", "box_ParticleSystem_v3_203.Started", "box_Delay_v5_206.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1098959916", "1098959916", "TH_E501_B10", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2131802790", "2131802790", "TH_E501_B10", "box_ActivityAcknowledgeGate_1.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_117_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_123();
    l0 = self.box_StaticBreakableListener_117;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1212798893", "1212798893", "TH_E501_B10", "box_StaticBreakableListener_117.OnBreak", "box_OutputOrder_v2_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_188_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = self.box_Delay_v5_188;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|809046355", "809046355", "TH_E501_B10", "box_Delay_v5_188.TimeElapsed", "box_ActivityEnd_7.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_48_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_173();
    l0 = self.box_Delay_v5_173;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1607227264", "1607227264", "TH_E501_B10", "box_StimsEmitter_v2_48.Enabled", "box_Delay_v5_173.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_103_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_5();
    l0 = self.box_MultipleOR_103;
    l1 = self.box_StartCelebration_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|434253166", "434253166", "TH_E501_B10", "box_MultipleOR_103.Out", "box_StartCelebration_5.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_55_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_28();
    l0 = self.box_Bind_v4_55;
    l1 = self.box_PositionModifier_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|289003674", "289003674", "TH_E501_B10", "box_Bind_v4_55.Bound", "box_PositionModifier_v2_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_198_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_93();
    l0 = self.box_MultipleOR_198;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|768762959", "768762959", "TH_E501_B10", "box_MultipleOR_198.Out", "box_OutputOrder_v2_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_85_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_147();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|672914923", "672914923", "TH_E501_B10", "box_OutputOrder_v2_85.Out", "box_ParticleSystem_v3_147.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_85_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_148();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1993428318", "1993428318", "TH_E501_B10", "box_OutputOrder_v2_85.Out", "box_StimsEmitter_v2_148.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EnableIgnitorEntityBox_v2_112_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_106();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|58090683", "58090683", "TH_E501_B10", "box_EnableIgnitorEntityBox_v2_112.Enabled", "box_OutputOrder_v2_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_101_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_101;
    l1 = self.box_OnceOnly_v3_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|394956443", "394956443", "TH_E501_B10", "box_MultipleOR_101.Out", "box_OnceOnly_v3_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_153_Out()
    self:OnExit_box_GetPlayerGroup_v2_153_Out();
end;

function export:f_box_ParticleSystem_v3_61_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_154();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|475260044", "475260044", "TH_E501_B10", "box_ParticleSystem_v3_61.Started", "box_OutputOrder_v2_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_207_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_204();
    l0 = self.box_Delay_v5_207;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|111933765", "111933765", "TH_E501_B10", "box_Delay_v5_207.TimeElapsed", "box_ParticleSystem_v3_204.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExtinguishAllFires_177_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_189();
    l0 = self.box_Delay_v5_189;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|372635841", "372635841", "TH_E501_B10", "box_ExtinguishAllFires_177.Out", "box_Delay_v5_189.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_StartCelebration_5_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_6();
    l0 = self.box_StartCelebration_5;
    l1 = self.box_RemoveEntity_v2_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|761713713", "761713713", "TH_E501_B10", "box_StartCelebration_5.Ended", "box_RemoveEntity_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_19_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1881588506", "1881588506", "TH_E501_B10", "box_ParticleSystem_v3_19.Started", "box_OutputOrder_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_19_Stopped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1923489788", "1923489788", "TH_E501_B10", "box_ParticleSystem_v3_19.Stopped", "box_MultipleOR_50.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_95_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_159();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1425117553", "1425117553", "TH_E501_B10", "box_OutputOrder_v2_95.Out", "box_AddActivityObjective_v2_159.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_95_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_94();
    l0 = self.box_Delay_v5_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|853727192", "853727192", "TH_E501_B10", "box_OutputOrder_v2_95.Out", "box_Delay_v5_94.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_95_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableIgnitorEntityBox_v2_15();
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1632294173", "1632294173", "TH_E501_B10", "box_OutputOrder_v2_95.Out", "box_EnableIgnitorEntityBox_v2_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_95_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableIgnitorEntityBox_v2_83();
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1997186277", "1997186277", "TH_E501_B10", "box_OutputOrder_v2_95.Out", "box_EnableIgnitorEntityBox_v2_83.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_95_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableIgnitorEntityBox_v2_118();
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1072220415", "1072220415", "TH_E501_B10", "box_OutputOrder_v2_95.Out", "box_EnableIgnitorEntityBox_v2_118.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_95_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_172();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1138885616", "1138885616", "TH_E501_B10", "box_OutputOrder_v2_95.Out", "box_Simple_Node_172.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_95_Out_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|749073767", "749073767", "TH_E501_B10", "box_OutputOrder_v2_95.Out", "box_OnceOnly_v3_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_192_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_82();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1238363651", "1238363651", "TH_E501_B10", "box_MissionBlockLayer_192.Disabled", "box_SetBoolean_v2_82.FromBool", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromBool
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ExtinguishAllFires_193_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_194();
    l0 = self.box_Delay_v5_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2092495217", "2092495217", "TH_E501_B10", "box_ExtinguishAllFires_193.Out", "box_Delay_v5_194.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_79_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_121();
    l0 = self.box_PositionModifier_v2_79;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|651527602", "651527602", "TH_E501_B10", "box_PositionModifier_v2_79.Done", "box_OutputOrder_v2_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_46();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|686772703", "686772703", "TH_E501_B10", "box_OutputOrder_v2_11.Out", "box_ParticleSystem_v3_46.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Kill_Target_CORE_v2_29();
    l0 = self.box_Brick_Kill_Target_CORE_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|979518312", "979518312", "TH_E501_B10", "box_OutputOrder_v2_11.Out", "box_Brick_Kill_Target_CORE_v2_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_LockListener_151_Locked()
    local params, l0, l1;
    params = self:OnEnter_box_GetInventoryItemQuantity_119();
    l0 = self.box_LockListener_151;
    l1 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|842573270", "842573270", "TH_E501_B10", "box_LockListener_151.Locked", "box_GetInventoryItemQuantity_119.GetNumberOfItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetNumberOfItems
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LockListener_151_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_113();
    l0 = self.box_LockListener_151;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2008165291", "2008165291", "TH_E501_B10", "box_LockListener_151.Unlocked", "box_Simple_Node_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_100_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_80();
    l0 = self.box_EntityStatusListener_100;
    l1 = self.box_PhysicsModifier_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|806354386", "806354386", "TH_E501_B10", "box_EntityStatusListener_100.Loaded", "box_PhysicsModifier_80.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_194_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ExtinguishAllFires_195();
    l0 = self.box_Delay_v5_194;
    l1 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|655600320", "655600320", "TH_E501_B10", "box_Delay_v5_194.TimeElapsed", "box_ExtinguishAllFires_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_46_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_64();
    l0 = self.box_Delay_v5_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|752297848", "752297848", "TH_E501_B10", "box_ParticleSystem_v3_46.Started", "box_Delay_v5_64.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_128_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_140();
    l0 = self.box_OnceOnly_v3_128;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|15120578", "15120578", "TH_E501_B10", "box_OnceOnly_v3_128.Out", "box_OutputOrder_v2_140.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_204_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_205();
    l0 = self.box_Delay_v5_205;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1313514977", "1313514977", "TH_E501_B10", "box_ParticleSystem_v3_204.Started", "box_Delay_v5_205.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_24();
    l0 = self.box_RemoveEntity_v2_6;
    l1 = self.box_RemoveEntity_v2_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1293693472", "1293693472", "TH_E501_B10", "box_RemoveEntity_v2_6.Out", "box_RemoveEntity_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_92_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_51();
    l0 = self.box_Bind_v4_92;
    l1 = self.box_Bind_v4_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1065175751", "1065175751", "TH_E501_B10", "box_Bind_v4_92.Bound", "box_Bind_v4_51.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_102_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_19();
    l0 = self.box_OnceOnly_v3_102;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1688484485", "1688484485", "TH_E501_B10", "box_OnceOnly_v3_102.Out", "box_ParticleSystem_v3_19.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_173_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_48();
    l0 = self.box_Delay_v5_173;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1504156566", "1504156566", "TH_E501_B10", "box_Delay_v5_173.TimeElapsed", "box_StimsEmitter_v2_48.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_93_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|547073928", "547073928", "TH_E501_B10", "box_OutputOrder_v2_93.Out", "box_OnceOnly_v3_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_93_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_19();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1800190489", "1800190489", "TH_E501_B10", "box_OutputOrder_v2_93.Out", "box_ParticleSystem_v3_19.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_10_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_36();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1460345073", "1460345073", "TH_E501_B10", "box_ParticleSystem_v3_10.Started", "box_StimsEmitter_v2_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_121_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Burn_Target_v2_53();
    l0 = self.box_Brick_Burn_Target_v2_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|132197815", "132197815", "TH_E501_B10", "box_OutputOrder_v2_121.Out", "box_Brick_Burn_Target_v2_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_121_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_117();
    l0 = self.box_StaticBreakableListener_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|413708563", "413708563", "TH_E501_B10", "box_OutputOrder_v2_121.Out", "box_StaticBreakableListener_117.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Bind_v4_13_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_88();
    l0 = self.box_Bind_v4_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1449895630", "1449895630", "TH_E501_B10", "box_Bind_v4_13.Bound", "box_OutputOrder_v2_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v3_110();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_Reach_GoTo_v3_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|249504374", "249504374", "TH_E501_B10", "box_MultipleOR_4.Out", "box_Reach_GoTo_v3_110.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_185_OnAllInside()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_192();
    l0 = self.box_ProximityTrigger_v3_185;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|679387107", "679387107", "TH_E501_B10", "box_ProximityTrigger_v3_185.OnAllInside", "box_MissionBlockLayer_192.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_71_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_58();
    l0 = self.box_EntityStatusListener_71;
    l1 = self.box_PlaySequence_v8_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1010549152", "1010549152", "TH_E501_B10", "box_EntityStatusListener_71.Loaded", "box_PlaySequence_v8_58.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_60_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_16();
    l0 = self.box_EntityStatusListener_60;
    l1 = self.box_PlaySequence_v8_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1265654376", "1265654376", "TH_E501_B10", "box_EntityStatusListener_60.Loaded", "box_PlaySequence_v8_16.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_86_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_158();
    l0 = self.box_ProximityTrigger_v3_86;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|865519554", "865519554", "TH_E501_B10", "box_ProximityTrigger_v3_86.Enter", "box_Compare_Boolean_158.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_108_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_133();
    l0 = self.box_Delay_v5_108;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1031450677", "1031450677", "TH_E501_B10", "box_Delay_v5_108.TimeElapsed", "box_ParticleSystem_v3_133.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_171_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_174();
    l0 = self.box_PhysicsModifier_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|880604127", "880604127", "TH_E501_B10", "box_OutputOrder_v2_171.Out", "box_PhysicsModifier_174.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_171_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_170();
    l0 = self.box_PhysicsModifier_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2056274339", "2056274339", "TH_E501_B10", "box_OutputOrder_v2_171.Out", "box_PhysicsModifier_170.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_171_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_23();
    l0 = self.box_PlaySequence_v8_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1077369971", "1077369971", "TH_E501_B10", "box_OutputOrder_v2_171.Out", "box_PlaySequence_v8_23.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_143();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|349371485", "349371485", "TH_E501_B10", "box_OutputOrder_v2_65.Out", "box_ParticleSystem_v3_143.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_141();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1072391465", "1072391465", "TH_E501_B10", "box_OutputOrder_v2_65.Out", "box_ParticleSystem_v3_141.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_136();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1637438372", "1637438372", "TH_E501_B10", "box_OutputOrder_v2_65.Out", "box_ParticleSystem_v3_136.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_149();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|244475224", "244475224", "TH_E501_B10", "box_OutputOrder_v2_65.Out", "box_ParticleSystem_v3_149.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_44();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|859281771", "859281771", "TH_E501_B10", "box_OutputOrder_v2_65.Out", "box_StimsEmitter_v2_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_34();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1602769273", "1602769273", "TH_E501_B10", "box_OutputOrder_v2_65.Out", "box_StimsEmitter_v2_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_162();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|185562872", "185562872", "TH_E501_B10", "box_OutputOrder_v2_65.Out", "box_StimsEmitter_v2_162.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_165_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_156();
    l0 = self.box_ProximityTrigger_v3_165;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1527877824", "1527877824", "TH_E501_B10", "box_ProximityTrigger_v3_165.Enter", "box_Compare_Boolean_156.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_159_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_163();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1831663966", "1831663966", "TH_E501_B10", "box_AddActivityObjective_v2_159.Out", "box_ActivityObjectiveMarkerModifier_v3_163.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_35_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_9();
    l0 = self.box_Delay_v5_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|255639933", "255639933", "TH_E501_B10", "box_StimsEmitter_v2_35.Enabled", "box_Delay_v5_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_84_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = self.box_Delay_v5_84;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1675521137", "1675521137", "TH_E501_B10", "box_Delay_v5_84.TimeElapsed", "box_OutputOrder_v2_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_99_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_89();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|439533179", "439533179", "TH_E501_B10", "box_AddActivityObjective_v2_99.Out", "box_ActivityObjectiveMarkerModifier_v3_89.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|218295722", "218295722", "TH_E501_B10", "box_MultipleOR_3.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PlaySequence_v8_23_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_23;
    l1 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|924179805", "924179805", "TH_E501_B10", "box_PlaySequence_v8_23.Finished", "box_MultipleOR_77.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_23_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_23;
    l1 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|866524032", "866524032", "TH_E501_B10", "box_PlaySequence_v8_23.Skipped", "box_MultipleOR_77.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_109_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_108();
    l0 = self.box_Delay_v5_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|824567866", "824567866", "TH_E501_B10", "box_ParticleSystem_v3_109.Started", "box_Delay_v5_108.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_73();
    l0 = self.box_Delay_v5_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|209744545", "209744545", "TH_E501_B10", "box_OutputOrder_v2_76.Out", "box_Delay_v5_73.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_62();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1957714985", "1957714985", "TH_E501_B10", "box_OutputOrder_v2_76.Out", "box_ParticleSystem_v3_62.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_63();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1020827161", "1020827161", "TH_E501_B10", "box_OutputOrder_v2_76.Out", "box_ParticleSystem_v3_63.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetInventoryItemQuantity_119_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_119_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_120();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|332396755", "332396755", "TH_E501_B10", "box_GetInventoryItemQuantity_119.Out", "box_Compare_Integers_120.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_78_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_78;
    l1 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1893433049", "1893433049", "TH_E501_B10", "box_OnceOnly_v3_78.Out", "box_MultipleOR_103.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_SpawnAI_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1916855367", "1916855367", "TH_E501_B10", "box_SpawnAI_20.Out", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_142_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_161();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1582610430", "1582610430", "TH_E501_B10", "box_ParticleSystem_v3_142.Started", "box_StimsEmitter_v2_161.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_105_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_150();
    l0 = self.box_Delay_v5_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1259700717", "1259700717", "TH_E501_B10", "box_ParticleSystem_v3_105.Started", "box_Delay_v5_150.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_163_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_164();
    l0 = self.box_LookAtTrigger_v2_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1774256610", "1774256610", "TH_E501_B10", "box_ActivityObjectiveMarkerModifier_v3_163.Enabled", "box_LookAtTrigger_v2_164.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_73_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_131();
    l0 = self.box_Delay_v5_73;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1889197159", "1889197159", "TH_E501_B10", "box_Delay_v5_73.TimeElapsed", "box_OutputOrder_v2_131.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_126_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_27();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1529641398", "1529641398", "TH_E501_B10", "box_Compare_Boolean_126.A_is_False", "box_ParticleSystem_v3_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_175_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_142();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1659227423", "1659227423", "TH_E501_B10", "box_OutputOrder_v2_175.Out", "box_ParticleSystem_v3_142.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_175_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_10();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1500633651", "1500633651", "TH_E501_B10", "box_OutputOrder_v2_175.Out", "box_ParticleSystem_v3_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_175_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_129();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1890004595", "1890004595", "TH_E501_B10", "box_OutputOrder_v2_175.Out", "box_ParticleSystem_v3_129.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_175_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_207();
    l0 = self.box_Delay_v5_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1209780165", "1209780165", "TH_E501_B10", "box_OutputOrder_v2_175.Out", "box_Delay_v5_207.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_21_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_47();
    l0 = self.box_ProximityTrigger_v3_21;
    l1 = self.box_SpawnAI_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1760840055", "1760840055", "TH_E501_B10", "box_ProximityTrigger_v3_21.Enter", "box_SpawnAI_47.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_131_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_109();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1728390266", "1728390266", "TH_E501_B10", "box_OutputOrder_v2_131.Out", "box_ParticleSystem_v3_109.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_131_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_130();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|105606832", "105606832", "TH_E501_B10", "box_OutputOrder_v2_131.Out", "box_ParticleSystem_v3_130.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_197_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_180();
    l0 = self.box_ProximityTrigger_v3_197;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|411461114", "411461114", "TH_E501_B10", "box_ProximityTrigger_v3_197.Enter", "box_OutputOrder_v2_180.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_88_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_38();
    l0 = self.box_Bind_v4_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|84311486", "84311486", "TH_E501_B10", "box_OutputOrder_v2_88.Out", "box_Bind_v4_38.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_88_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|764664212", "764664212", "TH_E501_B10", "box_OutputOrder_v2_88.Out", "box_OutputOrder_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Burn_Target_v2_53_Started()
    local l0, l1;
    l0 = self.box_Brick_Burn_Target_v2_53;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|348574716", "348574716", "TH_E501_B10", "box_Brick_Burn_Target_v2_53.Started", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Burn_Target_v2_53_StartedBurning()
    local l0, l1;
    l0 = self.box_Brick_Burn_Target_v2_53;
    l1 = self.box_MultipleOR_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1519357063", "1519357063", "TH_E501_B10", "box_Brick_Burn_Target_v2_53.StartedBurning", "box_MultipleOR_101.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v3_167_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_157();
    l0 = self.box_ProximityTrigger_v3_167;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1183336742", "1183336742", "TH_E501_B10", "box_ProximityTrigger_v3_167.Enter", "box_Compare_Boolean_157.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_64_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_61();
    l0 = self.box_Delay_v5_64;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1427566644", "1427566644", "TH_E501_B10", "box_Delay_v5_64.TimeElapsed", "box_ParticleSystem_v3_61.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableIgnitorEntityBox_v2_116();
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|134780790", "134780790", "TH_E501_B10", "box_OutputOrder_v2_127.Out", "box_EnableIgnitorEntityBox_v2_116.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_166();
    l0 = self.box_Bind_v4_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|6738942", "6738942", "TH_E501_B10", "box_OutputOrder_v2_127.Out", "box_Bind_v4_166.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_127_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_185();
    l0 = self.box_ProximityTrigger_v3_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2081452680", "2081452680", "TH_E501_B10", "box_OutputOrder_v2_127.Out", "box_ProximityTrigger_v3_185.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_127_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_86();
    l0 = self.box_ProximityTrigger_v3_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|124198843", "124198843", "TH_E501_B10", "box_OutputOrder_v2_127.Out", "box_ProximityTrigger_v3_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_127_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_96();
    l0 = self.box_ProximityTrigger_v3_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1516318186", "1516318186", "TH_E501_B10", "box_OutputOrder_v2_127.Out", "box_ProximityTrigger_v3_96.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_127_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_182();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|921184858", "921184858", "TH_E501_B10", "box_OutputOrder_v2_127.Out", "box_OutputOrder_v2_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExtinguishAllFires_18();
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1415641829", "1415641829", "TH_E501_B10", "box_OutputOrder_v2_127.Out", "box_ExtinguishAllFires_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_110_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_197();
    l0 = self.box_Reach_GoTo_v3_110;
    l1 = self.box_ProximityTrigger_v3_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|164073156", "164073156", "TH_E501_B10", "box_Reach_GoTo_v3_110.Started", "box_ProximityTrigger_v3_197.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Reach_GoTo_v3_110_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_190();
    l0 = self.box_Reach_GoTo_v3_110;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1274108798", "1274108798", "TH_E501_B10", "box_Reach_GoTo_v3_110.Success", "box_OutputOrder_v2_190.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_206_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_202();
    l0 = self.box_Delay_v5_206;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|446618", "446618", "TH_E501_B10", "box_Delay_v5_206.TimeElapsed", "box_ParticleSystem_v3_202.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_166_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_98();
    l0 = self.box_Bind_v4_166;
    l1 = self.box_PositionModifier_v2_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1395126743", "1395126743", "TH_E501_B10", "box_Bind_v4_166.Bound", "box_PositionModifier_v2_98.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_157_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_60();
    l0 = self.box_EntityStatusListener_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|965112520", "965112520", "TH_E501_B10", "box_Compare_Boolean_157.A_is_False", "box_EntityStatusListener_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_205_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_203();
    l0 = self.box_Delay_v5_205;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|67944113", "67944113", "TH_E501_B10", "box_Delay_v5_205.TimeElapsed", "box_ParticleSystem_v3_203.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_182_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_165();
    l0 = self.box_ProximityTrigger_v3_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|661891605", "661891605", "TH_E501_B10", "box_OutputOrder_v2_182.Out", "box_ProximityTrigger_v3_165.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_167();
    l0 = self.box_ProximityTrigger_v3_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|105137926", "105137926", "TH_E501_B10", "box_OutputOrder_v2_182.Out", "box_ProximityTrigger_v3_167.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Bind_v4_51_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_13();
    l0 = self.box_Bind_v4_51;
    l1 = self.box_Bind_v4_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|212849924", "212849924", "TH_E501_B10", "box_Bind_v4_51.Bound", "box_Bind_v4_13.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_138_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_85();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1153850650", "1153850650", "TH_E501_B10", "box_ParticleSystem_v3_138.Started", "box_OutputOrder_v2_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_140_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_14();
    l0 = self.box_SoundModifier_v2_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1496317398", "1496317398", "TH_E501_B10", "box_OutputOrder_v2_140.Out", "box_SoundModifier_v2_14.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_140_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_105();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|819491779", "819491779", "TH_E501_B10", "box_OutputOrder_v2_140.Out", "box_ParticleSystem_v3_105.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_156_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_171();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|345541728", "345541728", "TH_E501_B10", "box_Compare_Boolean_156.A_is_False", "box_OutputOrder_v2_171.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_55();
    l0 = self.box_MultipleOR_50;
    l1 = self.box_Bind_v4_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1021900916", "1021900916", "TH_E501_B10", "box_MultipleOR_50.Out", "box_Bind_v4_55.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_LookAtTrigger_v2_164_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = self.box_LookAtTrigger_v2_164;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1636065263", "1636065263", "TH_E501_B10", "box_LookAtTrigger_v2_164.EnterFOV", "box_OutputOrder_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_17();
    l0 = self.box_Delay_v5_31;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|389332051", "389332051", "TH_E501_B10", "box_Delay_v5_31.TimeElapsed", "box_StimsEmitter_v2_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|394632407", "394632407", "TH_E501_B10", "box_OutputOrder_v2_32.Out", "box_MultipleOR_50.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_99();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|598489184", "598489184", "TH_E501_B10", "box_OutputOrder_v2_32.Out", "box_AddActivityObjective_v2_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_190_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1959221396", "1959221396", "TH_E501_B10", "box_OutputOrder_v2_190.Out", "box_MultipleOR_181.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_190_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_75();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|421021236", "421021236", "TH_E501_B10", "box_OutputOrder_v2_190.Out", "box_EndActivityObjective_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_150_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_Delay_v5_150;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1781375367", "1781375367", "TH_E501_B10", "box_Delay_v5_150.TimeElapsed", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_111_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_187();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1024319689", "1024319689", "TH_E501_B10", "box_Compare_Boolean_111.A_is_True", "box_Simple_Node_187.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_122_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EnableIgnitorEntityBox_v2_115();
    l0 = self.box_MultipleOR_122;
    l1 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|502127331", "502127331", "TH_E501_B10", "box_MultipleOR_122.Out", "box_EnableIgnitorEntityBox_v2_115.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_57();
    l0 = self.box_EntityStatusListener_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2146991066", "2146991066", "TH_E501_B10", "box_OutputOrder_v2_25.Out", "box_EntityStatusListener_57.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_91();
    l0 = self.box_SoundModifier_v2_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|777533853", "777533853", "TH_E501_B10", "box_OutputOrder_v2_25.Out", "box_SoundModifier_v2_91.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_154_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1124454889", "1124454889", "TH_E501_B10", "box_OutputOrder_v2_154.Out", "box_Delay_v5_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_154_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_134();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1425646133", "1425646133", "TH_E501_B10", "box_OutputOrder_v2_154.Out", "box_ParticleSystem_v3_134.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_129_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_139();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1952098666", "1952098666", "TH_E501_B10", "box_ParticleSystem_v3_129.Started", "box_StimsEmitter_v2_139.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_133_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_160();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2005970498", "2005970498", "TH_E501_B10", "box_ParticleSystem_v3_133.Started", "box_StimsEmitter_v2_160.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_27_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1594573256", "1594573256", "TH_E501_B10", "box_ParticleSystem_v3_27.Started", "box_OutputOrder_v2_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_135_EnterFOV()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_135;
    l1 = self.box_MultipleOR_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1145078726", "1145078726", "TH_E501_B10", "box_LookAtTrigger_v2_135.EnterFOV", "box_MultipleOR_191.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_30_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_21();
    l0 = self.box_OnceOnly_v3_30;
    l1 = self.box_ProximityTrigger_v3_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1492164371", "1492164371", "TH_E501_B10", "box_OnceOnly_v3_30.Out", "box_ProximityTrigger_v3_21.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Brick_AcquireObject_v6_12_ItemsAcquired()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_127();
    l0 = self.box_Brick_AcquireObject_v6_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|401992912", "401992912", "TH_E501_B10", "box_Brick_AcquireObject_v6_12.ItemsAcquired", "box_OutputOrder_v2_127.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_168();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|178347084", "178347084", "TH_E501_B10", "box_ActivityInitialized_2.Out", "box_OutputOrder_v2_168.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_94_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_87();
    l0 = self.box_Delay_v5_94;
    l1 = self.box_SpawnAI_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|159113208", "159113208", "TH_E501_B10", "box_Delay_v5_94.TimeElapsed", "box_SpawnAI_87.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_22();
    l0 = self.box_MultipleOR_77;
    l1 = self.box_PlaySequence_v8_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|615717117", "615717117", "TH_E501_B10", "box_MultipleOR_77.Out", "box_PlaySequence_v8_22.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PhysicsModifier_170_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_200();
    l0 = self.box_PhysicsModifier_170;
    l1 = self.box_PositionModifier_v2_200;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|186195214", "186195214", "TH_E501_B10", "box_PhysicsModifier_170.Enabled", "box_PositionModifier_v2_200.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Brick_Kill_Target_CORE_v2_29_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_169();
    l0 = self.box_Brick_Kill_Target_CORE_v2_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1804119818", "1804119818", "TH_E501_B10", "box_Brick_Kill_Target_CORE_v2_29.Success", "box_OutputOrder_v2_169.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_168_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LockListener_151();
    l0 = self.box_LockListener_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1700002861", "1700002861", "TH_E501_B10", "box_OutputOrder_v2_168.Out", "box_LockListener_151.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_168_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_100();
    l0 = self.box_EntityStatusListener_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|813215599", "813215599", "TH_E501_B10", "box_OutputOrder_v2_168.Out", "box_EntityStatusListener_100.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_168_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_153();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|301502156", "301502156", "TH_E501_B10", "box_OutputOrder_v2_168.Out", "box_GetPlayerGroup_v2_153.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_168_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_197();
    l0 = self.box_ProximityTrigger_v3_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2073560825", "2073560825", "TH_E501_B10", "box_OutputOrder_v2_168.Out", "box_ProximityTrigger_v3_197.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_180_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|187488235", "187488235", "TH_E501_B10", "box_OutputOrder_v2_180.Out", "box_MultipleOR_198.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_180_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|289520068", "289520068", "TH_E501_B10", "box_OutputOrder_v2_180.Out", "box_MultipleOR_181.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_96_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_126();
    l0 = self.box_ProximityTrigger_v3_96;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1705945671", "1705945671", "TH_E501_B10", "box_ProximityTrigger_v3_96.Enter", "box_Compare_Boolean_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EnableIgnitorEntityBox_v2_116_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EnableIgnitorEntityBox_v2_112();
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|483882889", "483882889", "TH_E501_B10", "box_EnableIgnitorEntityBox_v2_116.Enabled", "box_EnableIgnitorEntityBox_v2_112.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_9_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_35();
    l0 = self.box_Delay_v5_9;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|330035547", "330035547", "TH_E501_B10", "box_Delay_v5_9.TimeElapsed", "box_StimsEmitter_v2_35.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_106_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_113();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1402213727", "1402213727", "TH_E501_B10", "box_OutputOrder_v2_106.Out", "box_Simple_Node_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_106_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_138();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2035284995", "2035284995", "TH_E501_B10", "box_OutputOrder_v2_106.Out", "box_ParticleSystem_v3_138.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_106_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_145();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1856920200", "1856920200", "TH_E501_B10", "box_OutputOrder_v2_106.Out", "box_OutputOrder_v2_145.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_169_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_46();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2013247008", "2013247008", "TH_E501_B10", "box_OutputOrder_v2_169.Out", "box_ParticleSystem_v3_46.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_169_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v6_12();
    l0 = self.box_Brick_AcquireObject_v6_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|142277347", "142277347", "TH_E501_B10", "box_OutputOrder_v2_169.Out", "box_Brick_AcquireObject_v6_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_169_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExtinguishAllFires_177();
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1020671163", "1020671163", "TH_E501_B10", "box_OutputOrder_v2_169.Out", "box_ExtinguishAllFires_177.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_28_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_39();
    l0 = self.box_PositionModifier_v2_28;
    l1 = self.box_SoundModifier_v2_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1657983065", "1657983065", "TH_E501_B10", "box_PositionModifier_v2_28.StartOut", "box_SoundModifier_v2_39.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_82_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_82_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_135();
    l0 = self.box_LookAtTrigger_v2_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1681027531", "1681027531", "TH_E501_B10", "box_SetBoolean_v2_82.Out", "box_LookAtTrigger_v2_135.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EnableIgnitorEntityBox_v2_114_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_79();
    l0 = self.box_PositionModifier_v2_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|485024308", "485024308", "TH_E501_B10", "box_EnableIgnitorEntityBox_v2_114.Enabled", "box_PositionModifier_v2_79.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_134_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_84();
    l0 = self.box_Delay_v5_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|236427826", "236427826", "TH_E501_B10", "box_ParticleSystem_v3_134.Started", "box_Delay_v5_84.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SoundModifier_v2_91_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_179();
    l0 = self.box_SoundModifier_v2_91;
    l1 = self.box_SoundModifier_v2_179;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1548342229", "1548342229", "TH_E501_B10", "box_SoundModifier_v2_91.Started", "box_SoundModifier_v2_179.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_191_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_191;
    l1 = self.box_OnceOnly_v3_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1506283143", "1506283143", "TH_E501_B10", "box_MultipleOR_191.Out", "box_OnceOnly_v3_186.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_89_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_20();
    l0 = self.box_SpawnAI_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|518209824", "518209824", "TH_E501_B10", "box_ActivityObjectiveMarkerModifier_v3_89.Enabled", "box_SpawnAI_20.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_183_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_111();
    l0 = self.box_OnceOnly_v3_183;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2126179454", "2126179454", "TH_E501_B10", "box_OnceOnly_v3_183.Out", "box_Compare_Boolean_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|@BurnOutsideChurch");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_187_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|@Got the key");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_113_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|@LoadFallingPlanks");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_172_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|3236234");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
                [2] = self.f_box_OutputOrder_v2_43_Out_2,
                [3] = self.f_box_OutputOrder_v2_43_Out_3,
                [4] = self.f_box_OutputOrder_v2_43_Out_4,
                [5] = self.f_box_OutputOrder_v2_43_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_189()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|9554650");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108973107430561982",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_145()
    local params, l0;
    DrawTextToScreen("Comment: start Fire vfx in church", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: start Fire vfx in church");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|19251799");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 15,
        },
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
                [2] = self.f_box_OutputOrder_v2_145_Out_2,
                [3] = self.f_box_OutputOrder_v2_145_Out_3,
                [4] = self.f_box_OutputOrder_v2_145_Out_4,
                [5] = self.f_box_OutputOrder_v2_145_Out_5,
                [6] = self.f_box_OutputOrder_v2_145_Out_6,
                [7] = self.f_box_OutputOrder_v2_145_Out_7,
                [8] = self.f_box_OutputOrder_v2_145_Out_8,
                [9] = self.f_box_OutputOrder_v2_145_Out_9,
                [10] = self.f_box_OutputOrder_v2_145_Out_10,
                [11] = self.f_box_OutputOrder_v2_145_Out_11,
                [12] = self.f_box_OutputOrder_v2_145_Out_12,
                [13] = self.f_box_OutputOrder_v2_145_Out_13,
                [14] = self.f_box_OutputOrder_v2_145_Out_14,
            },
            count = 15,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_57()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108738826754067386",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|21997659");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108903353539888680",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_38()
    local params;
    params = {
        -- BoneName,
        [0] = "head",
        -- EntityA,
        [1] = "2108738826754067386",
        -- EntityB,
        [2] = "2109304658999666153",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|34130847");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2107919753541587158",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "THE501_Objective_03",
            id = "744711",
        },
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|69090533");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_158_A_is_False,
    });
    params = {
        -- A,
        [0] = self.WentOutside,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|86197486");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_75_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "THE501_Objective_02",
            id = "728786",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_24()
    local params;
    params = {
        -- Group,
        [0] = "2109869621392735047",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|126184523");
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
                [0] = self.f_box_OutputOrder_v2_123_Out_0,
                [1] = self.f_box_OutputOrder_v2_123_Out_1,
                [2] = self.f_box_OutputOrder_v2_123_Out_2,
                [3] = self.f_box_OutputOrder_v2_123_Out_3,
                [4] = self.f_box_OutputOrder_v2_123_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|149644664");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_120_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_120_A_le_B,
    });
    params = {
        -- A,
        [0] = self.IKeyPickup,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|175455730");
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
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
                [2] = self.f_box_OutputOrder_v2_49_Out_2,
                [3] = self.f_box_OutputOrder_v2_49_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|177937631");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_203_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109566704309767398",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|185292139");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2106994034852517647",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|189918997");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108973170275915989",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_117()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2107946725527261934",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_188()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|223532057");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_48_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109304658999666153",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|230080469");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108903899921385029",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_55()
    local params;
    params = {
        -- EntityA,
        [1] = "2107729513516368941",
        -- EntityB,
        [2] = "2107729500912485420",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|253758886");
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
                [0] = self.f_box_OutputOrder_v2_85_Out_0,
                [1] = self.f_box_OutputOrder_v2_85_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EnableIgnitorEntityBox_v2_112()
    local params, l0;
    DrawTextToScreen("Comment: church is burnable now", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'EnableIgnitorEntityBox_v2')-- Comment: church is burnable now");
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableIgnitorEntityBox_v2_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|278604408");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EnableIgnitorEntityBox_v2_112_Enabled,
    });
    params = {
        -- Entity,
        [0] = "2107615600047033154",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_176()
    local params;
    params = {
        -- Pawns,
        [0] = "2107756121436459746",
        -- SoundId,
        [1] = "3396814091",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|364947535");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_153_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|375317943");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_61_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108971997946976464",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_207()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|390567416");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ExtinguishAllFires_177_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_5()
    local params;
    params = {
        -- Preset,
        [0] = "9015219471541668",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|395967240");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2106994034850420443",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|396906862");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_19_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_19_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2106994034854614838",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|408811059");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2109016233079737508",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|416612149");
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
                [0] = self.f_box_OutputOrder_v2_95_Out_0,
                [1] = self.f_box_OutputOrder_v2_95_Out_1,
                [2] = self.f_box_OutputOrder_v2_95_Out_2,
                [3] = self.f_box_OutputOrder_v2_95_Out_3,
                [4] = self.f_box_OutputOrder_v2_95_Out_4,
                [5] = self.f_box_OutputOrder_v2_95_Out_5,
                [6] = self.f_box_OutputOrder_v2_95_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_16()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109221874773813029",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/TH_E501_SE/th_e501_se_stud_burntwood.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_192()
    local params, l0;
    DrawTextToScreen("Comment: disable VFX layer for fire inside the church", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: disable VFX layer for fire inside the church");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|429563982");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_192_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160293472871974",
        -- missionLayerId,
        [1] = "27160313076543840",
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|446010729");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ExtinguishAllFires_193_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_74()
    local params, l0;
    DrawTextToScreen("Comment: Enter the church objective", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'EndActivityObjective_v2')-- Comment: Enter the church objective");
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|465212544");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "THE501_Objective_01",
            id = "728785",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_79()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2108804230723672105",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107946725527261934",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|513976010");
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
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LockListener_151()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- lockableEntity,
        [1] = "2108102582097415393",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_47()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107741849690051179",
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|542848605");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_100()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109262224806649094",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|548106220");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2109304222548787664",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_194()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|581691130");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_46_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2106994034850420439",
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|589837817");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_22()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109181701990148069",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/TH_E501_SE/th_e501_woodbloackade_endstate.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|601850336");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "THE501_Objective_03",
            id = "744711",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_174()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109274417912617627",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|624498297");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_204_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109566316997248624",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_6()
    local params;
    params = {
        -- Group,
        [0] = "2106981957616293104",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_92()
    local params;
    params = {
        -- BoneName,
        [0] = "head",
        -- EntityA,
        [1] = "2108738826754067386",
        -- EntityB,
        [2] = "2107935093870823513",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_173()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|670850193");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108903373011945002",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|671081199");
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
                [1] = self.f_box_OutputOrder_v2_93_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|689704111");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2106994034852517670",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_179()
    local params;
    params = {
        -- Pawns,
        [0] = "2107756121436459746",
        -- SoundId,
        [1] = "3404117155",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|712797625");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2106994034852517674",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|731420143");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_10_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108973210444765410",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|738625606");
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
                [0] = self.f_box_OutputOrder_v2_121_Out_0,
                [1] = self.f_box_OutputOrder_v2_121_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_13()
    local params;
    params = {
        -- BoneName,
        [0] = "head",
        -- EntityA,
        [1] = "2108738826754067386",
        -- EntityB,
        [2] = "2106994034850420439",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|798261583");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108971914142685384",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_185()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.PlayerGroup,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109484895779695542",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|841725042");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2106994034854614869",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|843446468");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109566501682939508",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_71()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109181701990148069",
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
        [2] = "2109221874773813029",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_86()
    local params;
    DrawTextToScreen("Comment: trigger to spawn big fireball no 2 while crawling", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityTrigger_v3')-- Comment: trigger to spawn big fireball no 2 while crawling");
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109013871109871879",
    };
    return params;
end;

function export:OnEnter_box_EnableIgnitorEntityBox_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableIgnitorEntityBox_v2_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|912539297");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2100100405749887071",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_108()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|920501295");
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

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|955799276");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
                [2] = self.f_box_OutputOrder_v2_65_Out_2,
                [3] = self.f_box_OutputOrder_v2_65_Out_3,
                [4] = self.f_box_OutputOrder_v2_65_Out_4,
                [5] = self.f_box_OutputOrder_v2_65_Out_5,
                [6] = self.f_box_OutputOrder_v2_65_Out_6,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_14()
    local params;
    params = {
        -- Pawns,
        [0] = "2109454421233506921",
        -- SoundId,
        [1] = "2116273306",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|995690087");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2109016033707691144",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_165()
    local params;
    DrawTextToScreen("Comment: Player triggers falling boards", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityTrigger_v3')-- Comment: Player triggers falling boards");
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109207474008491555",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_39()
    local params;
    params = {
        -- Pawns,
        [0] = "2107753476191688031",
        -- SoundId,
        [1] = "2370726688",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1020365490");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_159_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "THE501_Objective_01",
            id = "728785",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1036308602");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_35_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2106994034854614831",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_84()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1050308492");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2107742659473839436",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1058155667");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_99_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "THE501_Objective_04",
            id = "1002209",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_98()
    local params;
    DrawTextToScreen("Comment: rotate plank", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: rotate plank");
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2109263129526440269",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109263090362126657",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_EnableIgnitorEntityBox_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableIgnitorEntityBox_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1071032967");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2107615600047033154",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1095011754");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2109885585958118358",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_23()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109181701990148069",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/TH_E501_SE/th_e501_woodbloackade_main.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1109825881");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_109_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108903347825149478",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1121755586");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
                [2] = self.f_box_OutputOrder_v2_76_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1133445907");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_119_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015339489697858",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_20()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2106994034854614852",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_142()
    local params, l0;
    DrawTextToScreen("Comment: church bell burns", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: church bell burns");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1146210068");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_142_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108904513359321218",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1161499314");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2109398439014963858",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1204285454");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2106994034856712033",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_105()
    local params, l0;
    DrawTextToScreen("Comment: big fireball no 2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: big fireball no 2");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1206667133");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_105_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108929231971943934",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1208260121");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_163_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2108103211389817798",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "THE501_Objective_01",
            id = "728785",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1215528799");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_73()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1230779178");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_126_A_is_False,
    });
    params = {
        -- A,
        [0] = self.WentOutside,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1240071386");
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
                [0] = self.f_box_OutputOrder_v2_175_Out_0,
                [1] = self.f_box_OutputOrder_v2_175_Out_1,
                [2] = self.f_box_OutputOrder_v2_175_Out_2,
                [3] = self.f_box_OutputOrder_v2_175_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1243064160");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108904538441259140",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_155()
    local params, l0;
    DrawTextToScreen("Comment: smoke for outside of the church in the scaffolding keep active when out of the church", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: smoke for outside of the church in the scaffolding keep active when out of the church");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1257813904");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108931911700186638",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_21()
    local params;
    DrawTextToScreen("Comment: Spawn wolverine when entering this trigger", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityTrigger_v3')-- Comment: Spawn wolverine when entering this trigger");
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109001654736001266",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1309234229");
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
                [0] = self.f_box_OutputOrder_v2_131_Out_0,
                [1] = self.f_box_OutputOrder_v2_131_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_197()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109302230646526243",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1346715904");
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
                [0] = self.f_box_OutputOrder_v2_88_Out_0,
                [1] = self.f_box_OutputOrder_v2_88_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1370919395");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108970493097810102",
    };
    return params;
end;

function export:OnEnter_box_Brick_Burn_Target_v2_53()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bRequiresObjective,
        [1] = true,
        -- Objective,
        [4] = {
            section = "Objectives",
            item = "THE501_Objective_03",
            id = "744711",
        },
        -- ObjectiveMarker,
        [5] = "2107919753541587158",
        -- Target,
        [6] = "2107946725527261934",
        -- useGroup,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_167()
    local params;
    DrawTextToScreen("Comment: Player triggers falling boards 2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityTrigger_v3')-- Comment: Player triggers falling boards 2");
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109207942329796148",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_58()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109181701990148069",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/TH_E501_SE/th_e501_woodbloackade_startstate.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1447932063");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2109016356308390621",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_64()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1511736509");
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
                [0] = self.f_box_OutputOrder_v2_127_Out_0,
                [1] = self.f_box_OutputOrder_v2_127_Out_1,
                [2] = self.f_box_OutputOrder_v2_127_Out_2,
                [3] = self.f_box_OutputOrder_v2_127_Out_3,
                [4] = self.f_box_OutputOrder_v2_127_Out_4,
                [5] = self.f_box_OutputOrder_v2_127_Out_5,
                [6] = self.f_box_OutputOrder_v2_127_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_110()
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
        [6] = "2107034833359210664",
        -- eTrigger,
        [8] = "2109302230646526243",
        -- fDistanceFromTarget,
        [9] = 1,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "THE501_Objective_02",
            id = "728786",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_206()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_166()
    local params;
    DrawTextToScreen("Comment: bind plank to strategicpoint", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Bind_v4')-- Comment: bind plank to strategicpoint");
    params = {
        -- EntityA,
        [1] = "2109263090362126657",
        -- EntityB,
        [2] = "2107672954262260844",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1534497567");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108970501698230456",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1540654884");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_157_A_is_False,
    });
    params = {
        -- A,
        [0] = self.WentOutside,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_205()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1557588548");
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
                [0] = self.f_box_OutputOrder_v2_182_Out_0,
                [1] = self.f_box_OutputOrder_v2_182_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_51()
    local params;
    params = {
        -- BoneName,
        [0] = "head",
        -- EntityA,
        [1] = "2108738826754067386",
        -- EntityB,
        [2] = "2108131921241327958",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1580577475");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2106994034850420432",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1589612908");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_138_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108904697006921855",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1594531785");
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
                [0] = self.f_box_OutputOrder_v2_140_Out_0,
                [1] = self.f_box_OutputOrder_v2_140_Out_1,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1621711368");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_156_A_is_False,
    });
    params = {
        -- A,
        [0] = self.WentOutside,
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_164()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = self.PlayerGroup,
        -- triggerId,
        [2] = "2109205660517271085",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_31()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1656686228");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2107742665591231822",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1669192224");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1690636164");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2109580623908707735",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1690957860");
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
                [0] = self.f_box_OutputOrder_v2_190_Out_0,
                [1] = self.f_box_OutputOrder_v2_190_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_150()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1697723004");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_111_A_is_True,
    });
    params = {
        -- A,
        [0] = self.WentOutside,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1709852412");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2107949235946130545",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1727835029");
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

function export:OnEnter_box_OutputOrder_v2_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1730882680");
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

function export:OnEnter_box_ParticleSystem_v3_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1746722493");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_129_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109566683126435042",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1770660080");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_133_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108971974570023118",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1771715313");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2109485147366629692",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1777458350");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_27_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2106994034854614849",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1791448806");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_135()
    local params;
    DrawTextToScreen("Comment: triggers fire on bell when player looks at it", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'LookAtTrigger_v2')-- Comment: triggers fire on bell when player looks at it");
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109014595482946629",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1827909697");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108931724581799419",
    };
    return params;
end;

function export:OnEnter_box_EnableIgnitorEntityBox_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableIgnitorEntityBox_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1843053139");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2107946725527261934",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1847248002");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2106994034852517671",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1853058556");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108973196993632475",
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v6_12()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bCheckAmountInInventory,
        [1] = true,
        -- bRequiresObjective,
        [2] = true,
        -- CompletePreviousObjective,
        [3] = true,
        -- LootItemID,
        [4] = "9015339489697858",
        -- Objective,
        [6] = {
            section = "Objectives",
            item = "THE501_Objective_05",
            id = "1002210",
        },
        -- opt_eMarker,
        [7] = "2108131921241327958",
        -- ProtectItemOnSuccess,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_EnableIgnitorEntityBox_v2_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableIgnitorEntityBox_v2_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1880049770");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2108101290323101299",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_94()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_170()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109262224806649094",
    };
    return params;
end;

function export:OnEnter_box_Brick_Kill_Target_CORE_v2_29()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bPlayerDetection,
        [1] = false,
        -- Objective,
        [4] = {
            section = "Objectives",
            item = "THE501_Objective_04",
            id = "1002209",
        },
        -- TargetGroup,
        [6] = "#62D14118",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1904796078");
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
                [0] = self.f_box_OutputOrder_v2_168_Out_0,
                [1] = self.f_box_OutputOrder_v2_168_Out_1,
                [2] = self.f_box_OutputOrder_v2_168_Out_2,
                [3] = self.f_box_OutputOrder_v2_168_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1915815845");
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
                [0] = self.f_box_OutputOrder_v2_180_Out_0,
                [1] = self.f_box_OutputOrder_v2_180_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_96()
    local params;
    DrawTextToScreen("Comment: Player is in the trigger after burning the nest", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityTrigger_v3')-- Comment: Player is in the trigger after burning the nest");
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2107770940510181679",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_178()
    local params;
    params = {
        -- Pawns,
        [0] = "2107753477881992545",
        -- SoundId,
        [1] = "2116273306",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_87()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107615340698543094",
    };
    return params;
end;

function export:OnEnter_box_EnableIgnitorEntityBox_v2_116()
    local params, l0;
    DrawTextToScreen("Comment: church is burnable now", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'EnableIgnitorEntityBox_v2')-- Comment: church is burnable now");
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableIgnitorEntityBox_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|1972649531");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EnableIgnitorEntityBox_v2_116_Enabled,
    });
    params = {
        -- Entity,
        [0] = "2100100405749887071",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_9()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2008641518");
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
                [0] = self.f_box_OutputOrder_v2_106_Out_0,
                [1] = self.f_box_OutputOrder_v2_106_Out_1,
                [2] = self.f_box_OutputOrder_v2_106_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2011259839");
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
                [0] = self.f_box_OutputOrder_v2_169_Out_0,
                [1] = self.f_box_OutputOrder_v2_169_Out_1,
                [2] = self.f_box_OutputOrder_v2_169_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_28()
    local params;
    params = {
        -- blendTime,
        [1] = 0.4,
        -- endTarget,
        [4] = "2107729550799537204",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107729513516368941",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2018140004");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_82_Out,
    });
    params = {
        -- Bool,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EnableIgnitorEntityBox_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableIgnitorEntityBox_v2_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2023076646");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EnableIgnitorEntityBox_v2_114_Enabled,
    });
    params = {
        -- Entity,
        [0] = "2107946725527261934",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2023368416");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_134_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108973146196416721",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_91()
    local params;
    params = {
        -- Pawns,
        [0] = "2107756121436459746",
        -- SoundId,
        [1] = "3097191436",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2029856857");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108973124180515018",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2050161811");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108903268221453860",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2061713576");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_89_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2107935093870823513",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "THE501_Objective_04",
            id = "1002209",
        },
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2066692692");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2109016258700643501",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2090269094");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108973180440811735",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_E501.domino|@TH_E501_B10|2111822869");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109262599056016217",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_200()
    local params;
    params = {
        -- blendTime,
        [1] = 0.5,
        -- endTarget,
        [4] = "2109580746411744670",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109262224806649094",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_80()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109262224806649094",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_153_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_119_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self.IKeyPickup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_82_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.WentOutside = l0:GetDataOutValue(0);
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
