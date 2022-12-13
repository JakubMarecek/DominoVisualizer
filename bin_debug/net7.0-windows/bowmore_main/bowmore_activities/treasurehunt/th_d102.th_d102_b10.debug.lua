LUACE} -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/treasurehunt/th_d102.domino
-- User graph: TH_D102_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/LockableListener.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/UnlockDoor.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1518920392.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2463503423.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/TreasureHunt/TH_D102.TH_D102_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua")] = {
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
                name = "b_CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "b_EntityIsProximityTrigger",
                type = "bool",
            },
            [2] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "e_EntityToInteractWith",
                type = "entity",
            },
            [4] = {
                name = "e_ObjectiveMarker",
                type = "entity",
            },
            [5] = {
                name = "InteractionHUD",
                type = "oasis",
            },
            [6] = {
                name = "o_ObjectiveText",
                type = "oasis",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "eInteractor",
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
    metadataTable[GetPathID("Domino/System/Coop/CoopActivePlayers.lua")] = {
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
                name = "OnePlayer",
                delayed = false,
            },
            [1] = {
                name = "PlayerAdded",
                delayed = true,
            },
            [2] = {
                name = "PlayerRemoved",
                delayed = true,
            },
            [3] = {
                name = "TwoPlayers",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Player1",
                type = "entity",
            },
            [1] = {
                name = "Player2",
                type = "entity",
            },
            [2] = {
                name = "PlayerAddedOrRemoved",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    self._name = "TH_D102_B10";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10";
    self.TRIGGER = nil;
    self.ObectiveMarker = nil;
    self.LookAtTrigger_TreasureHunt = nil;
    self.mine = nil;
    self.TH_PlayerGroup = nil;
    self._1 = 0;
    self.A = 0;
    self.iProgressID = 0;
    self.Machinelever = false;
    self.box_EntityStatusListener_42 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|5767136");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_42_Loaded,
    });
    self.box_CoopActivePlayers_36 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|96529680");
    l0:SetConnections({
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_36_PlayerAdded,
    });
    self.box_RemoveEntity_v2_5 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|136984946");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_5_Out,
    });
    self.box_Reach_GoTo_v3_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|182738062");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_41_Success,
    });
    self.box_Brick_Interact_With_Object_V6_25 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|259354819");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_25_Success,
    });
    self.box_SoundModifier_v2_43 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|305410088");
    l0:SetConnections({
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|306173058");
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
    self.box_StartCelebration_4 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|350840333");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_4_Ended,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|499933917");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_PositionModifier_v2_23 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|606339361");
    l0:SetConnections({
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|676999693");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_StaticBreakableListener_109 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|830100376");
    l0:SetConnections({
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_109_OnStateChanged,
    });
    self.box_LockListener_47 = cbox:CreateBox("Domino/System/LockableListener.lua");
    l0 = self.box_LockListener_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockListener_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1043416324");
    l0:SetConnections({
        -- Locked,
        [2] = self.f_box_LockListener_47_Locked,
        -- Unlocked,
        [3] = self.f_box_LockListener_47_Unlocked,
    });
    self.box_PositionModifier_v2_53 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1049213235");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_52 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1132757551");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_52_Loaded,
    });
    self.box_EntityStatusListener_16 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1257370398");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_16_Loaded,
    });
    self.box_MultipleOR_54 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1502688349");
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
        [0] = self.f_box_MultipleOR_54_Out,
    });
    self.box_StaticBreakableListener_50 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1569580372");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_50_OnBreak,
    });
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1721003171");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_StaticBreakableListener_12 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1828551945");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_12_OnBreak,
    });
    self.box_MultipleOR_108 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1873801632");
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
        [0] = self.f_box_MultipleOR_108_Out,
    });
    self.box_SoundModifier_v2_13 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1980954112");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_13_Started,
    });
    self.box_EntityStatusListener_38 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|2020503491");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_38_Loaded,
    });
    self.box_ProximityTrigger_v3_30 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|2033952500");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_30_Enter,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1813115450", "1813115450", "TH_D102_B10", "In", "box_OutputOrder_v2_10.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_MissionBlockLayer_17();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1435751833", "1435751833", "TH_D102_B10", "OnLeaveZone", "box_MissionBlockLayer_17.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_42_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_107();
    l0 = self.box_EntityStatusListener_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|102775085", "102775085", "TH_D102_B10", "box_EntityStatusListener_42.Loaded", "box_OutputOrder_v2_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_36_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_51();
    l0 = self.box_CoopActivePlayers_36;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|639304585", "639304585", "TH_D102_B10", "box_CoopActivePlayers_36.PlayerAdded", "box_Compare_Boolean_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_1();
    l0 = self.box_RemoveEntity_v2_5;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|580102377", "580102377", "TH_D102_B10", "box_RemoveEntity_v2_5.Out", "box_ActivityEnd_1.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_24_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_26();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|16614461", "16614461", "TH_D102_B10", "box_ParticleSystem_v3_24.Stopped", "box_ParticleSystem_v3_26.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UnlockDoor_11_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_23();
    l0 = self.box_PositionModifier_v2_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1547554020", "1547554020", "TH_D102_B10", "box_UnlockDoor_11.Unlocked", "box_PositionModifier_v2_23.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v3_41_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_Reach_GoTo_v3_41;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|578281064", "578281064", "TH_D102_B10", "box_Reach_GoTo_v3_41.Success", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_14();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|666173960", "666173960", "TH_D102_B10", "box_OutputOrder_v2_104.Out", "box_StaticBreakableBreaker_14.SetDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_104_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_50();
    l0 = self.box_StaticBreakableListener_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1871183206", "1871183206", "TH_D102_B10", "box_OutputOrder_v2_104.Out", "box_StaticBreakableListener_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Interact_With_Object_V6_25_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_49();
    l0 = self.box_Brick_Interact_With_Object_V6_25;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|510770317", "510770317", "TH_D102_B10", "box_Brick_Interact_With_Object_V6_25.Success", "box_SetBoolean_v2_49.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1497632890", "1497632890", "TH_D102_B10", "box_MultipleOR_6.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_StartCelebration_4_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_StartCelebration_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1323311623", "1323311623", "TH_D102_B10", "box_StartCelebration_4.Ended", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_51_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|83007392", "83007392", "TH_D102_B10", "box_Compare_Boolean_51.A_is_True", "box_MultipleOR_54.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_25();
    l0 = self.box_ActivityInitialized_2;
    l1 = self.box_Brick_Interact_With_Object_V6_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|397569564", "397569564", "TH_D102_B10", "box_ActivityInitialized_2.Out", "box_Brick_Interact_With_Object_V6_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_49_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_49_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1921844386", "1921844386", "TH_D102_B10", "box_SetBoolean_v2_49.Out", "box_MultipleOR_54.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_33();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1129157663", "1129157663", "TH_D102_B10", "box_Delay_v5_19.TimeElapsed", "box_ParticleSystem_v3_33.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_22();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1458895490", "1458895490", "TH_D102_B10", "box_OutputOrder_v2_34.Out", "box_UnlockDoor_22.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_13();
    l0 = self.box_SoundModifier_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|704487546", "704487546", "TH_D102_B10", "box_OutputOrder_v2_34.Out", "box_SoundModifier_v2_13.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_39();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|350385924", "350385924", "TH_D102_B10", "box_OutputOrder_v2_18.Out", "box_ParticleSystem_v3_39.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_5();
    l0 = self.box_RemoveEntity_v2_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|936360655", "936360655", "TH_D102_B10", "box_OutputOrder_v2_18.Out", "box_RemoveEntity_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_107_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LockListener_47();
    l0 = self.box_LockListener_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|395891721", "395891721", "TH_D102_B10", "box_OutputOrder_v2_107.Out", "box_LockListener_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_107_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_109();
    l0 = self.box_StaticBreakableListener_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|224780301", "224780301", "TH_D102_B10", "box_OutputOrder_v2_107.Out", "box_StaticBreakableListener_109.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_17_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_31();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|351541723", "351541723", "TH_D102_B10", "box_MissionBlockLayer_17.Disabled", "box_ActivityRetry_v2_31.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_109_OnStateChanged()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_109;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|455922880", "455922880", "TH_D102_B10", "box_StaticBreakableListener_109.OnStateChanged", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StimsEmitter_v2_137_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_28();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1870799189", "1870799189", "TH_D102_B10", "box_StimsEmitter_v2_137.Disabled", "box_StimsEmitter_v2_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LockListener_47_Locked()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_38();
    l0 = self.box_LockListener_47;
    l1 = self.box_EntityStatusListener_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|608298141", "608298141", "TH_D102_B10", "box_LockListener_47.Locked", "box_EntityStatusListener_38.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_LockListener_47_Unlocked()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_52();
    l0 = self.box_LockListener_47;
    l1 = self.box_EntityStatusListener_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1527082598", "1527082598", "TH_D102_B10", "box_LockListener_47.Unlocked", "box_EntityStatusListener_52.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UnlockDoor_22_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1063519133", "1063519133", "TH_D102_B10", "box_UnlockDoor_22.Unlocked", "box_OutputOrder_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_52_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_52;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|496845913", "496845913", "TH_D102_B10", "box_EntityStatusListener_52.Loaded", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_16_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_15();
    l0 = self.box_EntityStatusListener_16;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|388914312", "388914312", "TH_D102_B10", "box_EntityStatusListener_16.Loaded", "box_DynamicLightModifier_15.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_MultipleOR_54;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|541515153", "541515153", "TH_D102_B10", "box_MultipleOR_54.Out", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_39_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_40();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1765707556", "1765707556", "TH_D102_B10", "box_ParticleSystem_v3_39.Stopped", "box_ParticleSystem_v3_40.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_50_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_105();
    l0 = self.box_StaticBreakableListener_50;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|732632590", "732632590", "TH_D102_B10", "box_StaticBreakableListener_50.OnBreak", "box_StaticBreakableBreaker_105.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_136_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_137();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1085089339", "1085089339", "TH_D102_B10", "box_StimsEmitter_v2_136.Disabled", "box_StimsEmitter_v2_137.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1636056379", "1636056379", "TH_D102_B10", "box_OutputOrder_v2_10.Out", "box_ActivityAcknowledgeGate_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_42();
    l0 = self.box_EntityStatusListener_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|268594750", "268594750", "TH_D102_B10", "box_OutputOrder_v2_10.Out", "box_EntityStatusListener_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_16();
    l0 = self.box_EntityStatusListener_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|387216156", "387216156", "TH_D102_B10", "box_OutputOrder_v2_10.Out", "box_EntityStatusListener_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|655721495", "655721495", "TH_D102_B10", "box_OutputOrder_v2_10.Out", "box_CoopActivePlayers_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_StaticBreakableBreaker_14_DamageableChanged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_12();
    l0 = self.box_StaticBreakableListener_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|873340461", "873340461", "TH_D102_B10", "box_StaticBreakableBreaker_14.DamageableChanged", "box_StaticBreakableListener_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_41();
    l0 = self.box_Reach_GoTo_v3_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|89413809", "89413809", "TH_D102_B10", "box_OutputOrder_v2_8.Out", "box_Reach_GoTo_v3_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_30();
    l0 = self.box_ProximityTrigger_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|2038142019", "2038142019", "TH_D102_B10", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v3_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|710688052", "710688052", "TH_D102_B10", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|344375917", "344375917", "TH_D102_B10", "box_ActivityAcknowledgeGate_7.Reloaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_12_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_UnlockDoor_11();
    l0 = self.box_StaticBreakableListener_12;
    l1 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|891632010", "891632010", "TH_D102_B10", "box_StaticBreakableListener_12.OnBreak", "box_UnlockDoor_11.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1497206228", "1497206228", "TH_D102_B10", "box_OutputOrder_v2_27.Out", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_3();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1396695162", "1396695162", "TH_D102_B10", "box_OutputOrder_v2_27.Out", "box_DynamicLightModifier_3.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_136();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|2114347845", "2114347845", "TH_D102_B10", "box_OutputOrder_v2_27.Out", "box_StimsEmitter_v2_136.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_4();
    l0 = self.box_StartCelebration_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1099726723", "1099726723", "TH_D102_B10", "box_OutputOrder_v2_56.Out", "box_StartCelebration_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_108_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_106();
    l0 = self.box_MultipleOR_108;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1468280359", "1468280359", "TH_D102_B10", "box_MultipleOR_108.Out", "box_StaticBreakableBreaker_106.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_3_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_24();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1780970038", "1780970038", "TH_D102_B10", "box_DynamicLightModifier_3.Disabled", "box_ParticleSystem_v3_24.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_13_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_43();
    l0 = self.box_SoundModifier_v2_13;
    l1 = self.box_SoundModifier_v2_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|748073968", "748073968", "TH_D102_B10", "box_SoundModifier_v2_13.Started", "box_SoundModifier_v2_43.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_38_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = self.box_EntityStatusListener_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|610644072", "610644072", "TH_D102_B10", "box_EntityStatusListener_38.Loaded", "box_OutputOrder_v2_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_30_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_ProximityTrigger_v3_30;
    l1 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1121593845", "1121593845", "TH_D102_B10", "box_ProximityTrigger_v3_30.Enter", "box_Delay_v5_19.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableBreaker_106_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_53();
    l0 = self.box_PositionModifier_v2_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|232816032", "232816032", "TH_D102_B10", "box_StaticBreakableBreaker_106.Destroyed", "box_PositionModifier_v2_53.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:OnEnter_box_EntityStatusListener_42()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107036647183894022",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|88701186");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2109789105081563403",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_5()
    local params;
    params = {
        -- Group,
        [0] = "2107369404793643805",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|149661058");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_24_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2107242303876782584",
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|182658120");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_11_Unlocked,
    });
    params = {
        -- door,
        [0] = "2107036647183894022",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_41()
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
        [6] = "2107340597690918985",
        -- eTrigger,
        [8] = "2107065456020981117",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "D102_TH_B1_Obj_07",
            id = "955852",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|247017923");
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
                [1] = self.f_box_OutputOrder_v2_104_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_25()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = true,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2107064416378818811",
        -- e_ObjectiveMarker,
        [4] = "2107369713546847042",
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "D102_TH_B1_Obj_05",
            id = "955850",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_43()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1518920392",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_4()
    local params;
    params = {
        -- Preset,
        [0] = "9015219471541668",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|364828239");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2109206287494423639",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|371553358");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|455849127");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2107036732061926963",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|482326823");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_51_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Machinelever,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_23()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2107076410236471716",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107036647183894022",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|662805094");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_49_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|688367562");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|701757815");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|747263612");
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
                [0] = self.f_box_OutputOrder_v2_107_Out_0,
                [1] = self.f_box_OutputOrder_v2_107_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|769058061");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_17_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160297633106576",
        -- missionLayerId,
        [1] = "36167496887847569",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_109()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2107036647183894022",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|991057967");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_137_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109304211475796820",
    };
    return params;
end;

function export:OnEnter_box_LockListener_47()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- lockableEntity,
        [1] = "2107036647183894022",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_53()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2107076410236471716",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107036647183894022",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1083916714");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_22_Unlocked,
    });
    params = {
        -- door,
        [0] = "2107258364856657836",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_52()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107036732061926963",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1159450853");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109510138093142667",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1207802416");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2107245924209133824",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_16()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109206287494423639",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1467222414");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1534841495");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_39_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2107242303876782584",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_50()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2107036647183894022",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1603667163");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_136_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109288304649188703",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1639778578");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
                [3] = self.f_box_OutputOrder_v2_10_Out_3,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1641919996");
    l0:SetConnections({
        -- DamageableChanged,
        [0] = self.f_box_StaticBreakableBreaker_14_DamageableChanged,
    });
    params = {
        -- entity,
        [0] = "2107036732061926963",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1653389101");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2107036732061926963",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1848578119");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
                [2] = self.f_box_OutputOrder_v2_27_Out_2,
            },
            count = 3,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1870254651");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1912685414");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_3_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109206287494423639",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|1974137377");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2107245924209133824",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_13()
    local params;
    params = {
        -- Pawns,
        [0] = "2107477367755676145",
        -- SoundId,
        [1] = "2463503423",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_38()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107036732061926963",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2107162605658313399",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_D102.domino|@TH_D102_B10|2046184945");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_106_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2107036732061926963",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_49_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Machinelever = l0:GetDataOutValue(0);
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
