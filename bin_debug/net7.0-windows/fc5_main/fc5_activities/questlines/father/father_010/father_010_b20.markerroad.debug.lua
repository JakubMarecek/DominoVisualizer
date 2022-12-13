LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/father/father_010/father_010_b20.domino
-- User graph: MarkerRoad
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ForceVehicleCrash.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/CameraShakeAndRumble_V2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/WindBlast.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3150851069.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3664236380.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4146692516.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2802339378.bnk]], "CSoundResource");
        cboxRes:LoadResource([[512241415.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3683391475.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2665284510.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3915179189.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1356172451.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4051113716.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3221510254.bnk]], "CSoundResource");
        cboxRes:LoadResource([[117974421.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1728169231.bnk]], "CSoundResource");
        cboxRes:LoadResource([[337498877.bnk]], "CSoundResource");
        cboxRes:LoadResource([[762144174.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1539997290.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2117096923.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1685043473.bnk]], "CSoundResource");
        cboxRes:LoadResource([[336746790.bnk]], "CSoundResource");
        cboxRes:LoadResource([[565196050.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3375092959.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1688949315.bnk]], "CSoundResource");
        cboxRes:LoadResource([[378966341.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4115565292.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1330988094.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4140139952.bnk]], "CSoundResource");
        cboxRes:LoadResource([[144035856.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4062771851.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3153539164.bnk]], "CSoundResource");
        cboxRes:LoadResource([[909793406.bnk]], "CSoundResource");
        cboxRes:LoadResource([[415756705.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3110544463.bnk]], "CSoundResource");
        cboxRes:LoadResource([[800177440.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4095350520.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1426030367.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B20.MarkerRoad.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "StopTimer",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
            [1] = {
                name = "Time_Elapsed",
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua")] = {
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
                name = "KeepBlackBars",
                type = "bool",
            },
            [1] = {
                name = "KeepGFHDisabled",
                type = "bool",
            },
            [2] = {
                name = "KeepGodMode",
                type = "bool",
            },
            [3] = {
                name = "KeepHUDMode",
                type = "bool",
            },
            [4] = {
                name = "KeepWeaponHolstered",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua")] = {
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
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "bUse2d_ProximityCheck",
                type = "bool",
            },
            [4] = {
                name = "bUseDetectionModifier",
                type = "bool",
            },
            [5] = {
                name = "eMarker",
                type = "entity",
            },
            [6] = {
                name = "eRadiusTarget",
                type = "entity",
            },
            [7] = {
                name = "eTrigger",
                type = "entity",
            },
            [8] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [9] = {
                name = "fObjectiveTimer",
                type = "float",
            },
            [10] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [11] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 12,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CIN_Skip",
            },
            [1] = {
                name = "Start",
            },
            [2] = {
                name = "Start_Reset_MIS_Attacked",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Box_Skipped",
                delayed = false,
            },
            [1] = {
                name = "CIN_Skipped",
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
                name = "EntityId",
                type = "entity",
            },
            [1] = {
                name = "FadeOutType",
                type = "int",
            },
            [2] = {
                name = "MUS_MIS_Step",
                type = "int",
            },
            [3] = {
                name = "Priority",
                type = "int",
            },
            [4] = {
                name = "SoundType",
                type = "SoundType",
            },
            [5] = {
                name = "Stackable",
                type = "bool",
            },
            [6] = {
                name = "StartEvent",
                type = "Sound",
            },
            [7] = {
                name = "StopEvent",
                type = "Sound",
            },
            [8] = {
                name = "StopFadeOut",
                type = "float",
            },
            [9] = {
                name = "WaitForMusicStatePriorityOver",
                type = "int",
            },
            [10] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [11] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 12,
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
    metadataTable[GetPathID("Domino/System/ForceVehicleCrash.lua")] = {
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
                name = "gasPedal",
                type = "float",
            },
            [1] = {
                name = "steeringWheel",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/OverrideEnvironment_v3.lua")] = {
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
                name = "adaptiveBloom",
                type = "string",
            },
            [1] = {
                name = "atmosphericScattering",
                type = "string",
            },
            [2] = {
                name = "characterVisibility",
                type = "string",
            },
            [3] = {
                name = "cloud",
                type = "string",
            },
            [4] = {
                name = "depthOfField",
                type = "string",
            },
            [5] = {
                name = "exposure",
                type = "string",
            },
            [6] = {
                name = "fog",
                type = "string",
            },
            [7] = {
                name = "lighting",
                type = "string",
            },
            [8] = {
                name = "motionBlur",
                type = "string",
            },
            [9] = {
                name = "ratio",
                type = "float",
            },
            [10] = {
                name = "shadow",
                type = "string",
            },
            [11] = {
                name = "sky",
                type = "string",
            },
            [12] = {
                name = "stormFactor",
                type = "float",
            },
            [13] = {
                name = "transitionTime",
                type = "float",
            },
            [14] = {
                name = "wind",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SendEvent",
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
                name = "EventName",
                type = "string",
            },
            [1] = {
                name = "IntensityModifier",
                type = "float",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/PostFx_v3.lua")] = {
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
            [0] = {
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "PostFxName",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/RequestPhoneCall_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Canceled",
                delayed = true,
            },
            [1] = {
                name = "Completed",
                delayed = true,
            },
            [2] = {
                name = "Failed",
                delayed = true,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
            [4] = {
                name = "Pending",
                delayed = true,
            },
            [5] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "CustomRingInSound",
                type = "Sound",
            },
            [1] = {
                name = "CustomRingOutSound",
                type = "Sound",
            },
            [2] = {
                name = "Delay",
                type = "float",
            },
            [3] = {
                name = "NoDeadair",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/VehicleListener_v3.lua")] = {
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
                name = "OnAllSitting",
                delayed = true,
            },
            [3] = {
                name = "OnAllStanding",
                delayed = true,
            },
            [4] = {
                name = "OnChangeSeat",
                delayed = true,
            },
            [5] = {
                name = "OnInteract",
                delayed = true,
            },
            [6] = {
                name = "OnSit",
                delayed = true,
            },
            [7] = {
                name = "OnStandUp",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicle",
                type = "entity",
            },
            [5] = {
                name = "vehicleTypeFilter",
                type = "int",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "activePawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/VehicleModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAlternativeSuspensionDisabled",
            },
            [1] = {
                name = "SetAlternativeSuspensionEnabled",
            },
            [2] = {
                name = "SetAsAnimated",
            },
            [3] = {
                name = "SetAsDestructable",
            },
            [4] = {
                name = "SetAsIndestructable",
            },
            [5] = {
                name = "SetAsNotAnimated",
            },
            [6] = {
                name = "SetAsUnusable",
            },
            [7] = {
                name = "SetAsUsable",
            },
            [8] = {
                name = "SetBrakesReleased",
            },
            [9] = {
                name = "SetCommandeerDisabled",
            },
            [10] = {
                name = "SetCommandeerEnabled",
            },
            [11] = {
                name = "SetEngineBroken",
            },
            [12] = {
                name = "SetEngineDisabled",
            },
            [13] = {
                name = "SetEngineMajorDamage",
            },
            [14] = {
                name = "SetEngineMinorDamage",
            },
            [15] = {
                name = "SetExitDisabled",
            },
            [16] = {
                name = "SetExitEnabled",
            },
            [17] = {
                name = "SetExplosion",
            },
            [18] = {
                name = "SetInputDisabled",
            },
            [19] = {
                name = "SetInputEnabled",
            },
        },
        controlInCount = 20,
        controlOut = {
            [0] = {
                name = "OnSetAlternativeSuspensionDisabled",
                delayed = false,
            },
            [1] = {
                name = "OnSetAlternativeSuspensionEnabled",
                delayed = false,
            },
            [2] = {
                name = "OnSetAsAnimated",
                delayed = false,
            },
            [3] = {
                name = "OnSetAsDestructible",
                delayed = false,
            },
            [4] = {
                name = "OnSetAsIndestructible",
                delayed = false,
            },
            [5] = {
                name = "OnSetAsNotAnimated",
                delayed = false,
            },
            [6] = {
                name = "OnSetAsUnusable",
                delayed = false,
            },
            [7] = {
                name = "OnSetAsUsable",
                delayed = false,
            },
            [8] = {
                name = "OnSetBrakesReleased",
                delayed = false,
            },
            [9] = {
                name = "OnSetCommandeerDisabled",
                delayed = false,
            },
            [10] = {
                name = "OnSetCommandeerEnabled",
                delayed = false,
            },
            [11] = {
                name = "OnSetEngineBroken",
                delayed = false,
            },
            [12] = {
                name = "OnSetEngineDisabled",
                delayed = false,
            },
            [13] = {
                name = "OnSetEngineMajorDamage",
                delayed = false,
            },
            [14] = {
                name = "OnSetEngineMinorDamage",
                delayed = false,
            },
            [15] = {
                name = "OnSetExitDisabled",
                delayed = false,
            },
            [16] = {
                name = "OnSetExitEnabled",
                delayed = false,
            },
            [17] = {
                name = "OnSetExplosion",
                delayed = false,
            },
            [18] = {
                name = "OnSetInputDisabled",
                delayed = false,
            },
            [19] = {
                name = "OnSetInputEnabled",
                delayed = false,
            },
        },
        controlOutCount = 20,
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
    metadataTable[GetPathID("Domino/System/WindBlast.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Start",
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
                name = "AnimationScale",
                type = "float",
            },
            [1] = {
                name = "EaseInTime",
                type = "float",
            },
            [2] = {
                name = "EaseOutTime",
                type = "float",
            },
            [3] = {
                name = "TimeScale",
                type = "float",
            },
            [4] = {
                name = "WindDirection",
                type = "float",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MarkerRoad";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad";
    self.Out = DummyFunction;
    self.Time_Elapsed = DummyFunction;
    self.Players = nil;
    self.Player = nil;
    self.box_RequestPhoneCall_v2_300 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_300;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_300");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2055274");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_15 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|21436377");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_15_Loaded,
    });
    self.box_PlaySequence_v8_151 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|54798406");
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
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "rumble",
                    value = self.f_box_PlaySequence_v8_151_SPOut__rumble_,
                },
            },
            count = 1,
        },
    });
    self.box_SpawnAI_52 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|60759338");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_52_Spawned,
    });
    self.box_SpawnAI_134 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|77681270");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_134_Spawned,
    });
    self.box_ProximityTrigger_v2_312 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_312;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_312");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|83348296");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_312_Enter,
    });
    self.box_EntityStatusListener_51 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|87666899");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_51_Loaded,
    });
    self.box_EntityStatusListener_308 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_308;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_308");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|95899921");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_308_Loaded,
    });
    self.box_Reach_GoTo_v2_53 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|99623687");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_53_Success,
    });
    self.box_ProximityTrigger_v2_177 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|104078223");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_177_Enter,
    });
    self.box_PlaySequence_v8_59 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|104483764");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "pause",
                    value = self.f_box_PlaySequence_v8_59_SPOut__pause_,
                },
                [1] = {
                    string = "rumble",
                    value = self.f_box_PlaySequence_v8_59_SPOut__rumble_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_59_Started,
    });
    self.box_RemoveEntity_v2_166 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|105064480");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_19 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|112802787");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_19_Loaded,
    });
    self.box_ProximityTrigger_v2_4 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|113770494");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_4_Enter,
    });
    self.box_EntityStatusListener_307 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_307;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_307");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|126459921");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_307_Loaded,
    });
    self.box_ProximityTrigger_v2_172 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|131235265");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_172_Enter,
    });
    self.box_EntityStatusListener_235 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_235;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|161794061");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_235_Loaded,
    });
    self.box_EntityStatusListener_79 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|165411296");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_79_Loaded,
    });
    self.box_MultipleOR_247 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_247");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|172812136");
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
        [0] = self.f_box_MultipleOR_247_Out,
    });
    self.box_MultipleOR_178 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|181557360");
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
        [0] = self.f_box_MultipleOR_178_Out,
    });
    self.box_PostFx_v3_284 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_284;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_284");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|191351385");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_222 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|192037681");
    l0:SetConnections({
    });
    self.box_Reach_GoTo_v2_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|200892808");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_41_Success,
    });
    self.box_PlayDialog_v6_27 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|219473160");
    l0:SetConnections({
    });
    self.box_MultipleOR_251 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_251");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|225634476");
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
    self.box_ProximityTrigger_v2_231 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|242195478");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_231_Enter,
    });
    self.box_EntityStatusListener_220 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|245973212");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_220_Loaded,
    });
    self.box_EntityStatusListener_45 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|247312740");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_45_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_45_Loaded,
    });
    self.box_RemoveEntity_v2_267 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_267;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_267");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|254344634");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_224 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|266571408");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_224_Enter,
    });
    self.box_SpawnAI_44 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|274106003");
    l0:SetConnections({
    });
    self.box_Delay_v5_99 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|280227547");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_99_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_99_TimeElapsed,
    });
    self.box_PlayDialog_v6_186 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|339433389");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_186_Finished,
    });
    self.box_Delay_v5_103 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|359814274");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_103_TimeElapsed,
    });
    self.box_Delay_v5_26 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|362127989");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_26_TimeElapsed,
    });
    self.box_EntityStatusListener_197 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|363066422");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_197_Loaded,
    });
    self.box_Reach_GoTo_v2_140 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|364624074");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_140_Success,
    });
    self.box_ProximityTrigger_v2_214 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|367208780");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_214_Enter,
    });
    self.box_EntityStatusListener_85 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|376363057");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_85_Loaded,
    });
    self.box_ProximityTrigger_v2_286 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_286;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_286");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|377166948");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_286_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_286_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_286_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_286_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_286_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_286_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_286_Use,
    });
    self.box_EntityStatusListener_137 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|390405975");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_137_Loaded,
    });
    self.box_EntityStatusListener_273 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_273;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_273");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|391647816");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_273_Unloaded,
    });
    self.box_EntityStatusListener_84 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|405412260");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_84_Loaded,
    });
    self.box_ProximityTrigger_v2_50 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|413214115");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_50_Enter,
    });
    self.box_Delay_v5_129 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|429603523");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_129_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_100 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|434958922");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_100_Enter,
    });
    self.box_EntityStatusListener_275 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_275;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_275");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|444293634");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_275_Loaded,
    });
    self.box_Gate_v3_257 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_257");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|451634553");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_257_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_257_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_257_Out,
    });
    self.box_PlayDialog_v6_217 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|453374954");
    l0:SetConnections({
    });
    self.box_MultipleOR_196 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|455841149");
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
        [0] = self.f_box_MultipleOR_196_Out,
    });
    self.box_ProximityTrigger_v2_76 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|461122370");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_76_Enter,
    });
    self.box_Gate_v3_255 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_255");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|472739239");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_255_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_255_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_255_Out,
    });
    self.box_PostFx_v3_330 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_330;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_330");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|527866744");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_330_Disabled,
    });
    self.box_PlaySequence_v8_34 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|545502808");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "pause",
                    value = self.f_box_PlaySequence_v8_34_SPOut__pause_,
                },
                [1] = {
                    string = "rumble",
                    value = self.f_box_PlaySequence_v8_34_SPOut__rumble_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_34_Started,
    });
    self.box_EntityStatusListener_37 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|550030481");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_37_Loaded,
    });
    self.box_PlayDialog_v6_227 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|557397307");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_227_Finished,
    });
    self.box_Reach_GoTo_v2_16 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|568676810");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_16_Success,
    });
    self.box_EntityStatusListener_268 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_268;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_268");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|574070615");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_268_Unloaded,
    });
    self.box_PlayDialog_v6_201 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|591117617");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_302 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_302;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_302");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|595098043");
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
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "rumble",
                    value = self.f_box_PlaySequence_v8_302_SPOut__rumble_,
                },
            },
            count = 1,
        },
    });
    self.box_PostFx_v3_331 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_331;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_331");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|604502578");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_331_Disabled,
    });
    self.box_PlayDialog_v6_228 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|606941746");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_191 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|628115878");
    l0:SetConnections({
    });
    self.box_MultipleOR_262 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_262;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_262");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|629657882");
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
        [0] = self.f_box_MultipleOR_262_Out,
    });
    self.box_OnceOnly_v3_311 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_311;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_311");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|631084139");
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
                [0] = self.f_box_OnceOnly_v3_311_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_253 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_253;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_253");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|645868154");
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
        [0] = self.f_box_MultipleOR_253_Out,
    });
    self.box_EntityStatusListener_281 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_281;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_281");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|651578312");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_281_Loaded,
    });
    self.box_SoundModifier_v2_241 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_241");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|670291644");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_316 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_316;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_316");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|684505176");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_237 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|686233512");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_199 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|689762615");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_199_Finished,
    });
    self.box_PlaySequence_v8_138 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|710541584");
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
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "rumble",
                    value = self.f_box_PlaySequence_v8_138_SPOut__rumble_,
                },
            },
            count = 1,
        },
    });
    self.box_EntityStatusListener_259 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_259;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_259");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|712455870");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_259_Unloaded,
    });
    self.box_ProximityTrigger_v2_219 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|721722744");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_219_Enter,
    });
    self.box_EntityStatusListener_183 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|725578665");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_183_Loaded,
    });
    self.box_PlaySequence_v8_90 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|735830114");
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
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "rumble",
                    value = self.f_box_PlaySequence_v8_90_SPOut__rumble_,
                },
            },
            count = 1,
        },
    });
    self.box_PlaySequence_v8_283 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_283;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_283");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|738439780");
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
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "BirdSound",
                    value = self.f_box_PlaySequence_v8_283_SPOut__BirdSound_,
                },
            },
            count = 1,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_283_Started,
    });
    self.box_Delay_v5_133 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|750479957");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_133_TimeElapsed,
    });
    self.box_EntityStatusListener_40 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|762252432");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_40_Loaded,
    });
    self.box_SoundModifier_v2_240 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|788887357");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_329 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_329;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_329");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|789046828");
    l0:SetConnections({
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|789803639");
    l0:SetConnections({
        -- LoopingEnded,
        [0] = self.f_box_Delay_v5_10_LoopingEnded,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_EntityStatusListener_260 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_260");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|809284369");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_260_Unloaded,
    });
    self.box_Delay_v5_324 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_324;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_324");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|811217268");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_324_TimeElapsed,
    });
    self.box_OnceOnly_v3_314 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_314;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_314");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|826642429");
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
                [0] = self.f_box_OnceOnly_v3_314_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_23 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|836505806");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_23_Enter,
    });
    self.box_EntityStatusListener_278 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_278;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_278");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|839693474");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_278_Loaded,
    });
    self.box_MultipleOR_266 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_266;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_266");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|847853839");
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
        [0] = self.f_box_MultipleOR_266_Out,
    });
    self.box_ProximityTrigger_v2_234 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|852169404");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_234_Enter,
    });
    self.box_ProximityTrigger_v2_114 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|863206965");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_114_Enter,
    });
    self.box_EntityStatusListener_54 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|865905838");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_54_Loaded,
    });
    self.box_PlayDialog_v6_200 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|882215338");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_225 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|912172444");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_210 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|917996441");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_210_Loaded,
    });
    self.box_EntityStatusListener_182 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|951335064");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_182_Loaded,
    });
    self.box_RemoveEntity_v2_160 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|951978897");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_165 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|955098152");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_165_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_165_Loaded,
    });
    self.box_Music_Quest_v2_333 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_333;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_333");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|964957601");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_94 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|969195117");
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
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "rumble",
                    value = self.f_box_PlaySequence_v8_94_SPOut__rumble_,
                },
            },
            count = 1,
        },
    });
    self.box_Gate_v3_254 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_254;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_254");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|985278004");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_254_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_254_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_254_Out,
    });
    self.box_EntityStatusListener_250 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_250");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1018934840");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_250_Unloaded,
    });
    self.box_Delay_v5_243 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_243");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1028171540");
    l0:SetConnections({
        -- LoopingEnded,
        [0] = self.f_box_Delay_v5_243_LoopingEnded,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_243_TimeElapsed,
    });
    self.box_PlayDialog_v6_216 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1039428267");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_216_Finished,
    });
    self.box_EntityStatusListener_75 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1040842102");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_75_Loaded,
    });
    self.box_ProximityTrigger_v2_204 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1043861091");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_204_Enter,
    });
    self.box_ProximityTrigger_v2_305 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_305;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_305");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1048518538");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_305_Enter,
    });
    self.box_ProximityTrigger_v2_81 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1049088012");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_81_Enter,
    });
    self.box_PlaySequence_v8_158 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1049833991");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "pause",
                    value = self.f_box_PlaySequence_v8_158_SPOut__pause_,
                },
                [1] = {
                    string = "rumble",
                    value = self.f_box_PlaySequence_v8_158_SPOut__rumble_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_158_Started,
    });
    self.box_Delay_v5_298 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_298;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_298");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1055157578");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_298_TimeElapsed,
    });
    self.box_PostFx_v3_107 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1056865405");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_107_Enabled,
    });
    self.box_ProximityTrigger_v2_105 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1064844648");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_105_Enter,
    });
    self.box_MultipleOR_195 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1066535803");
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
        [0] = self.f_box_MultipleOR_195_Out,
    });
    self.box_EntityStatusListener_223 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1067403578");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_223_Loaded,
    });
    self.box_PlayDialog_v6_230 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1093131246");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_115 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1097050883");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_115_Started,
    });
    self.box_EntityStatusListener_80 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1107469255");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_80_Loaded,
    });
    self.box_PlayDialog_v6_187 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1112487368");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_187_Finished,
    });
    self.box_EntityStatusListener_315 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_315;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_315");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1155735453");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_315_Loaded,
    });
    self.box_Reach_GoTo_v2_18 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1158734934");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_18_Success,
    });
    self.box_EntityStatusListener_232 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1168023659");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_232_Loaded,
    });
    self.box_Reach_GoTo_v2_47 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1180378674");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_47_Success,
    });
    self.box_MultipleOR_261 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_261");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1185134425");
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
        [0] = self.f_box_MultipleOR_261_Out,
    });
    self.box_MultipleAND_v2_91 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1189268869");
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
        [0] = self.f_box_MultipleAND_v2_91_Out,
    });
    self.box_Reach_GoTo_v2_33 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1191333273");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_33_Success,
    });
    self.box_Gate_v3_256 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_256;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_256");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1191731818");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_256_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_256_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_256_Out,
    });
    self.box_PlayDialog_v6_193 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1201381208");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_215 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1210969610");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_215_Finished,
    });
    self.box_EntityStatusListener_135 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1229652335");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_135_Loaded,
    });
    self.box_Reach_GoTo_v2_69 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1249106991");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_69_Success,
    });
    self.box_ProximityTrigger_v2_212 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1252705258");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_212_Enter,
    });
    self.box_EntityStatusListener_249 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_249");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1258213876");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_249_Unloaded,
    });
    self.box_VehicleListener_v3_277 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_277");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1270893159");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_277_OnSit,
    });
    self.box_PlayDialog_v6_206 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1286831881");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_208 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1300978191");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_236 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1306611199");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_203 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1317244536");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_203_Loaded,
    });
    self.box_EntityStatusListener_63 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1322206639");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_63_Loaded,
    });
    self.box_RemoveEntity_v2_164 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1323231384");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_167 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1323852266");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_167_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_167_Loaded,
    });
    self.box_ProximityTrigger_v2_194 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1325049790");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_194_Enter,
    });
    self.box_PlaySequence_v8_39 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1344970446");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "pause",
                    value = self.f_box_PlaySequence_v8_39_SPOut__pause_,
                },
                [1] = {
                    string = "rumble",
                    value = self.f_box_PlaySequence_v8_39_SPOut__rumble_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_39_Started,
    });
    self.box_ProximityTrigger_v2_150 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1354216520");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_150_Enter,
    });
    self.box_ProximityTrigger_v2_73 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1389207699");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_73_Enter,
    });
    self.box_EntityStatusListener_313 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_313;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_313");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1398645437");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_313_Loaded,
    });
    self.box_EntityStatusListener_174 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1415860130");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_174_Loaded,
    });
    self.box_ProximityTrigger_v2_87 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1436123570");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_87_Enter,
    });
    self.box_StaticBreakableListener_309 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_309;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_309");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1456424288");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_309_OnDamage,
    });
    self.box_PlayDialog_v6_185 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1456578741");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_185_Finished,
    });
    self.box_EntityStatusListener_248 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_248");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1468599448");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_248_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_248_Loaded,
    });
    self.box_ProximityTrigger_v2_209 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1470800581");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_209_Enter,
    });
    self.box_EntityStatusListener_97 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1471065602");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_97_Loaded,
    });
    self.box_EntityStatusListener_83 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1478638149");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_83_Loaded,
    });
    self.box_ProximityTrigger_v2_192 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1497736787");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_192_Enter,
    });
    self.box_ProximityTrigger_v2_92 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1501767856");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_92_Enter,
    });
    self.box_EntityStatusListener_211 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1503444658");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_211_Loaded,
    });
    self.box_EntityStatusListener_89 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1510885523");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_89_Loaded,
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1512783364");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_MultipleAND_v2_280 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_280;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_280");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1545205095");
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
        [0] = self.f_box_MultipleAND_v2_280_Out,
    });
    self.box_ProximityTrigger_v2_202 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1567630928");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_202_Enter,
    });
    self.box_RemoveEntity_v2_258 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_258");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1579181567");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_21 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1582997534");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_21_Loaded,
    });
    self.box_EntityStatusListener_77 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1583670932");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_77_Loaded,
    });
    self.box_StaticBreakableListener_179 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1607252087");
    l0:SetConnections({
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_179_OnDamage,
    });
    self.box_SoundModifier_v2_128 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1609677070");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_128_Finished,
        -- Started,
        [1] = self.f_box_SoundModifier_v2_128_Started,
    });
    self.box_EntityStatusListener_207 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1615226878");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_207_Loaded,
    });
    self.box_EntityStatusListener_30 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1621594185");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_30_Loaded,
    });
    self.box_RemoveEntity_v2_161 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1628187399");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_113 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1631269626");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_113_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_113_Loaded,
    });
    self.box_EntityStatusListener_93 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1638042989");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_93_Loaded,
    });
    self.box_EntityStatusListener_180 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1639991539");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_180_Loaded,
    });
    self.box_EntityStatusListener_188 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1651506612");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_188_Loaded,
    });
    self.box_PlayDialog_v6_205 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1654298475");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_62 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1659348203");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_62_Loaded,
    });
    self.box_MultipleOR_264 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_264;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_264");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1660423026");
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
        [0] = self.f_box_MultipleOR_264_Out,
    });
    self.box_EntityStatusListener_269 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_269;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_269");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1664543861");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_269_Unloaded,
    });
    self.box_Reach_GoTo_v2_142 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1680889377");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_142_Success,
    });
    self.box_VehicleListener_v3_301 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_301;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_301");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1691701228");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_301_OnSit,
    });
    self.box_Reach_GoTo_v2_68 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1705923311");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_68_Success,
    });
    self.box_EntityStatusListener_171 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1742191773");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_171_Loaded,
    });
    self.box_EntityStatusListener_213 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1746381763");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_213_Loaded,
    });
    self.box_EntityStatusListener_271 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_271;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_271");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1747302343");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_271_Unloaded,
    });
    self.box_Delay_v5_78 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1749375348");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_78_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_110 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1768427778");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_110_SomeoneNear,
    });
    self.box_ProximityTrigger_v2_136 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1770699137");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_136_Enter,
    });
    self.box_MultipleOR_265 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_265;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_265");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1775222858");
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
        [0] = self.f_box_MultipleOR_265_Out,
    });
    self.box_PlayDialog_v6_189 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1778249877");
    l0:SetConnections({
    });
    self.box_Reach_GoTo_v2_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1792206821");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_20_Success,
    });
    self.box_PlayDialog_v6_218 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1813877063");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_274 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_274;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_274");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1824961552");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_274_Loaded,
    });
    self.box_PlayDialog_v6_181 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1842977564");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_181_Finished,
    });
    self.box_EntityStatusListener_88 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1858279293");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_88_Loaded,
    });
    self.box_Delay_v5_238 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1858919233");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_238_TimeElapsed,
    });
    self.box_Delay_v5_25 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1859144686");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_25_TimeElapsed,
    });
    self.box_RemoveEntity_v2_168 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1860063015");
    l0:SetConnections({
    });
    self.box_Delay_v5_132 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1862510684");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_132_TimeElapsed,
    });
    self.box_EntityStatusListener_43 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1862690117");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_43_Loaded,
    });
    self.box_PlayDialog_v6_221 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1889895852");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_221_Finished,
    });
    self.box_ProximityRadiusListener_v3_98 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1896617702");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_98_SomeoneNear,
    });
    self.box_PostFx_v3_8 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1909635686");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_8_Disabled,
        -- Enabled,
        [1] = self.f_box_PostFx_v3_8_Enabled,
    });
    self.box_Delay_v5_3 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1917343423");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_3_TimeElapsed,
    });
    self.box_Reach_GoTo_v2_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1965221275");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_282 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_282;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_282");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1986942033");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_282_Loaded,
    });
    self.box_Reach_GoTo_v2_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1990258343");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_17_Success,
    });
    self.box_ProximityTrigger_v2_198 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2006308028");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_198_Enter,
    });
    self.box_EntityStatusListener_162 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2014393302");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_162_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_162_Loaded,
    });
    self.box_EntityStatusListener_163 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2016123917");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_163_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_163_Loaded,
    });
    self.box_EntityStatusListener_74 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2035666121");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_74_Loaded,
    });
    self.box_ProximityTrigger_v2_184 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2037409421");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_184_Enter,
    });
    self.box_Reach_GoTo_v2_58 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2038086233");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_58_Success,
    });
    self.box_PlaySequence_v8_49 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2063021954");
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
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "rumble",
                    value = self.f_box_PlaySequence_v8_49_SPOut__rumble_,
                },
            },
            count = 1,
        },
    });
    self.box_ProximityTrigger_v2_64 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2075924125");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_64_Enter,
    });
    self.box_ProximityTrigger_v2_304 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_304;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_304");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2085960677");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_304_Enter,
    });
    self.box_Delay_v5_111 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2086319912");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_111_TimeElapsed,
    });
    self.box_Delay_v5_101 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2090652967");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_101_TimeElapsed,
    });
    self.box_PlayDialog_v6_190 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2101051362");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_190_Finished,
    });
    self.box_EntityStatusListener_55 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2101612514");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_55_Loaded,
    });
    self.box_NarrativeSceneCleanUp_V2_334 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_334;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_334");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2106339064");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_334_Out,
    });
    self.box_PlayDialog_v6_233 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2125870550");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_57 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2126233775");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_57_Loaded,
    });
    self.box_ProximityTrigger_v2_32 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2139618078");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_32_Enter,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_153();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1367225586", "1367225586", "MarkerRoad", "In", "box_GetPlayerGroup_v2_153.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:StopTimer()
    
end;

function export:f_box_Simple_Node_245_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_240();
    l0 = self.box_SoundModifier_v2_240;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1137547627", "1137547627", "MarkerRoad", "box_Simple_Node_245.Out", "box_SoundModifier_v2_240.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_337_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_329();
    l0 = self.box_SoundModifier_v2_329;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1667451768", "1667451768", "MarkerRoad", "box_Simple_Node_337.Out", "box_SoundModifier_v2_329.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_246_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_237();
    l0 = self.box_SoundModifier_v2_237;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1101100622", "1101100622", "MarkerRoad", "box_Simple_Node_246.Out", "box_SoundModifier_v2_237.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_335_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_241();
    l0 = self.box_SoundModifier_v2_241;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|445107269", "445107269", "MarkerRoad", "box_Simple_Node_335.Out", "box_SoundModifier_v2_241.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_285_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_64();
    l0 = self.box_ProximityTrigger_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1262747580", "1262747580", "MarkerRoad", "box_Simple_Node_285.Out", "box_ProximityTrigger_v2_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_EntityStatusListener_57();
    l0 = self.box_EntityStatusListener_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|25191083", "25191083", "MarkerRoad", "box_Simple_Node_285.Out", "box_EntityStatusListener_57.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ProximityTrigger_v2_194();
    l0 = self.box_ProximityTrigger_v2_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1806927856", "1806927856", "MarkerRoad", "box_Simple_Node_285.Out", "box_ProximityTrigger_v2_194.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ProximityTrigger_v2_100();
    l0 = self.box_ProximityTrigger_v2_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1232805948", "1232805948", "MarkerRoad", "box_Simple_Node_285.Out", "box_ProximityTrigger_v2_100.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_EntityStatusListener_89();
    l0 = self.box_EntityStatusListener_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1956310838", "1956310838", "MarkerRoad", "box_Simple_Node_285.Out", "box_EntityStatusListener_89.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_EntityStatusListener_45();
    l0 = self.box_EntityStatusListener_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|301251246", "301251246", "MarkerRoad", "box_Simple_Node_285.Out", "box_EntityStatusListener_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_VehicleListener_v3_277();
    l0 = self.box_VehicleListener_v3_277;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|998560989", "998560989", "MarkerRoad", "box_Simple_Node_285.Out", "box_VehicleListener_v3_277.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|817718450", "817718450", "MarkerRoad", "box_Simple_Node_285.Out", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_EntityStatusListener_135();
    l0 = self.box_EntityStatusListener_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|764523376", "764523376", "MarkerRoad", "box_Simple_Node_285.Out", "box_EntityStatusListener_135.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_EntityStatusListener_30();
    l0 = self.box_EntityStatusListener_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1205464182", "1205464182", "MarkerRoad", "box_Simple_Node_285.Out", "box_EntityStatusListener_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ProximityTrigger_v2_105();
    l0 = self.box_ProximityTrigger_v2_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1615301515", "1615301515", "MarkerRoad", "box_Simple_Node_285.Out", "box_ProximityTrigger_v2_105.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_EntityStatusListener_315();
    l0 = self.box_EntityStatusListener_315;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|460618150", "460618150", "MarkerRoad", "box_Simple_Node_285.Out", "box_EntityStatusListener_315.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_EntityStatusListener_54();
    l0 = self.box_EntityStatusListener_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1409173192", "1409173192", "MarkerRoad", "box_Simple_Node_285.Out", "box_EntityStatusListener_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_VehicleListener_v3_301();
    l0 = self.box_VehicleListener_v3_301;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1673041132", "1673041132", "MarkerRoad", "box_Simple_Node_285.Out", "box_VehicleListener_v3_301.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|987849115", "987849115", "MarkerRoad", "box_Simple_Node_285.Out", "box_OutputOrder_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ProximityTrigger_v2_92();
    l0 = self.box_ProximityTrigger_v2_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1069614401", "1069614401", "MarkerRoad", "box_Simple_Node_285.Out", "box_ProximityTrigger_v2_92.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|871906848", "871906848", "MarkerRoad", "box_Simple_Node_285.Out", "box_OutputOrder_v2_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_176();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1631343738", "1631343738", "MarkerRoad", "box_Simple_Node_285.Out", "box_OutputOrder_v2_176.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_EntityStatusListener_307();
    l0 = self.box_EntityStatusListener_307;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1216553986", "1216553986", "MarkerRoad", "box_Simple_Node_285.Out", "box_EntityStatusListener_307.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ProximityTrigger_v2_286();
    l0 = self.box_ProximityTrigger_v2_286;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|405517899", "405517899", "MarkerRoad", "box_Simple_Node_285.Out", "box_ProximityTrigger_v2_286.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ProximityTrigger_v2_304();
    l0 = self.box_ProximityTrigger_v2_304;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|660278283", "660278283", "MarkerRoad", "box_Simple_Node_285.Out", "box_ProximityTrigger_v2_304.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_15_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_91();
    l0 = self.box_EntityStatusListener_15;
    l1 = self.box_MultipleAND_v2_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|646105561", "646105561", "MarkerRoad", "box_EntityStatusListener_15.Loaded", "box_MultipleAND_v2_91.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_PlaySequence_v8_151_SPOut__rumble_()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_295();
    l0 = self.box_PlaySequence_v8_151;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1239204530", "1239204530", "MarkerRoad", "box_PlaySequence_v8_151.SPOut", "box_CameraShakeAndRumble_V2_295.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_52_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_299();
    l0 = self.box_SpawnAI_52;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|686837926", "686837926", "MarkerRoad", "box_SpawnAI_52.Spawned", "box_OutputOrder_v2_299.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_253;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1848705007", "1848705007", "MarkerRoad", "box_OutputOrder_v2_1.Out", "box_MultipleOR_253.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_261;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|754871470", "754871470", "MarkerRoad", "box_OutputOrder_v2_1.Out", "box_MultipleOR_261.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_247;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|239903781", "239903781", "MarkerRoad", "box_OutputOrder_v2_1.Out", "box_MultipleOR_247.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_1_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_262;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|994301450", "994301450", "MarkerRoad", "box_OutputOrder_v2_1.Out", "box_MultipleOR_262.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_81();
    l0 = self.box_ProximityTrigger_v2_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|911870782", "911870782", "MarkerRoad", "box_OutputOrder_v2_61.Out", "box_ProximityTrigger_v2_81.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_59();
    l0 = self.box_PlaySequence_v8_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|975740829", "975740829", "MarkerRoad", "box_OutputOrder_v2_61.Out", "box_PlaySequence_v8_59.PlayFromStart", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayFromStart
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_134_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_242();
    l0 = self.box_SpawnAI_134;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|92179464", "92179464", "MarkerRoad", "box_SpawnAI_134.Spawned", "box_OutputOrder_v2_242.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_103();
    l0 = self.box_Delay_v5_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1270345959", "1270345959", "MarkerRoad", "box_OutputOrder_v2_65.Out", "box_Delay_v5_103.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_65_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_243();
    l0 = self.box_Delay_v5_243;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1159877043", "1159877043", "MarkerRoad", "box_OutputOrder_v2_65.Out", "box_Delay_v5_243.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_312_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_312;
    l1 = self.box_OnceOnly_v3_314;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1667525773", "1667525773", "MarkerRoad", "box_ProximityTrigger_v2_312.Enter", "box_OnceOnly_v3_314.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_51_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_73();
    l0 = self.box_EntityStatusListener_51;
    l1 = self.box_ProximityTrigger_v2_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|806542424", "806542424", "MarkerRoad", "box_EntityStatusListener_51.Loaded", "box_ProximityTrigger_v2_73.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_308_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_305();
    l0 = self.box_EntityStatusListener_308;
    l1 = self.box_ProximityTrigger_v2_305;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1075713817", "1075713817", "MarkerRoad", "box_EntityStatusListener_308.Loaded", "box_ProximityTrigger_v2_305.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v2_53_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v2_22();
    l0 = self.box_Reach_GoTo_v2_53;
    l1 = self.box_Reach_GoTo_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1815247904", "1815247904", "MarkerRoad", "box_Reach_GoTo_v2_53.Success", "box_Reach_GoTo_v2_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_177_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_181();
    l0 = self.box_ProximityTrigger_v2_177;
    l1 = self.box_PlayDialog_v6_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1986259666", "1986259666", "MarkerRoad", "box_ProximityTrigger_v2_177.Enter", "box_PlayDialog_v6_181.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_59_SPOut__pause_()
    local params, l0;
    params = self:OnEnter_box_PlaySequence_v8_59();
    l0 = self.box_PlaySequence_v8_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1572405192", "1572405192", "MarkerRoad", "box_PlaySequence_v8_59.SPOut", "box_PlaySequence_v8_59.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
end;

function export:f_box_PlaySequence_v8_59_SPOut__rumble_()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_289();
    l0 = self.box_PlaySequence_v8_59;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|761551548", "761551548", "MarkerRoad", "box_PlaySequence_v8_59.SPOut", "box_CameraShakeAndRumble_V2_289.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_59_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_256();
    l0 = self.box_PlaySequence_v8_59;
    l1 = self.box_Gate_v3_256;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1858227735", "1858227735", "MarkerRoad", "box_PlaySequence_v8_59.Started", "box_Gate_v3_256.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_19_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_23();
    l0 = self.box_EntityStatusListener_19;
    l1 = self.box_ProximityTrigger_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1416356027", "1416356027", "MarkerRoad", "box_EntityStatusListener_19.Loaded", "box_ProximityTrigger_v2_23.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_4_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_42();
    l0 = self.box_ProximityTrigger_v2_4;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|49568784", "49568784", "MarkerRoad", "box_ProximityTrigger_v2_4.Enter", "box_ParticleSystem_v3_42.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_242_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_110();
    l0 = self.box_ProximityRadiusListener_v3_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1304208732", "1304208732", "MarkerRoad", "box_OutputOrder_v2_242.Out", "box_ProximityRadiusListener_v3_110.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_113();
    l0 = self.box_EntityStatusListener_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1196671932", "1196671932", "MarkerRoad", "box_OutputOrder_v2_2.Out", "box_EntityStatusListener_113.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_171();
    l0 = self.box_EntityStatusListener_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1601814216", "1601814216", "MarkerRoad", "box_OutputOrder_v2_2.Out", "box_EntityStatusListener_171.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_182();
    l0 = self.box_EntityStatusListener_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|836701355", "836701355", "MarkerRoad", "box_OutputOrder_v2_2.Out", "box_EntityStatusListener_182.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_307_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_308();
    l0 = self.box_EntityStatusListener_307;
    l1 = self.box_EntityStatusListener_308;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2007147735", "2007147735", "MarkerRoad", "box_EntityStatusListener_307.Loaded", "box_EntityStatusListener_308.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_172_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_173();
    l0 = self.box_ProximityTrigger_v2_172;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1901020033", "1901020033", "MarkerRoad", "box_ProximityTrigger_v2_172.Enter", "box_ParticleSystem_v3_173.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_235_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_234();
    l0 = self.box_EntityStatusListener_235;
    l1 = self.box_ProximityTrigger_v2_234;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|971697553", "971697553", "MarkerRoad", "box_EntityStatusListener_235.Loaded", "box_ProximityTrigger_v2_234.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_79_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_80();
    l0 = self.box_EntityStatusListener_79;
    l1 = self.box_EntityStatusListener_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|69388845", "69388845", "MarkerRoad", "box_EntityStatusListener_79.Loaded", "box_EntityStatusListener_80.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_247_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_256();
    l0 = self.box_MultipleOR_247;
    l1 = self.box_Gate_v3_256;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|476081144", "476081144", "MarkerRoad", "box_MultipleOR_247.Out", "box_Gate_v3_256.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_178_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_178;
    l1 = self.box_OnceOnly_v3_311;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1525905989", "1525905989", "MarkerRoad", "box_MultipleOR_178.Out", "box_OnceOnly_v3_311.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Reach_GoTo_v2_41_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v2_58();
    l0 = self.box_Reach_GoTo_v2_41;
    l1 = self.box_Reach_GoTo_v2_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|811906686", "811906686", "MarkerRoad", "box_Reach_GoTo_v2_41.Success", "box_Reach_GoTo_v2_58.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_251_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_254();
    l0 = self.box_MultipleOR_251;
    l1 = self.box_Gate_v3_254;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1587393021", "1587393021", "MarkerRoad", "box_MultipleOR_251.Out", "box_Gate_v3_254.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_231_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_233();
    l0 = self.box_ProximityTrigger_v2_231;
    l1 = self.box_PlayDialog_v6_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2972387", "2972387", "MarkerRoad", "box_ProximityTrigger_v2_231.Enter", "box_PlayDialog_v6_233.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_220_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_219();
    l0 = self.box_EntityStatusListener_220;
    l1 = self.box_ProximityTrigger_v2_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1443128297", "1443128297", "MarkerRoad", "box_EntityStatusListener_220.Loaded", "box_ProximityTrigger_v2_219.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_45_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_162();
    l0 = self.box_EntityStatusListener_45;
    l1 = self.box_EntityStatusListener_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|787630885", "787630885", "MarkerRoad", "box_EntityStatusListener_45.Enabled", "box_EntityStatusListener_162.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_45_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_160();
    l0 = self.box_EntityStatusListener_45;
    l1 = self.box_RemoveEntity_v2_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|81119654", "81119654", "MarkerRoad", "box_EntityStatusListener_45.Loaded", "box_RemoveEntity_v2_160.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_224_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_229();
    l0 = self.box_ProximityTrigger_v2_224;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1934036166", "1934036166", "MarkerRoad", "box_ProximityTrigger_v2_224.Enter", "box_OutputOrder_v2_229.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_99_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_Delay_v5_99;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|965169093", "965169093", "MarkerRoad", "box_Delay_v5_99.Started", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_99_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_8();
    l0 = self.box_Delay_v5_99;
    l1 = self.box_PostFx_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1938486392", "1938486392", "MarkerRoad", "box_Delay_v5_99.TimeElapsed", "box_PostFx_v3_8.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_319_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_104();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|524059580", "524059580", "MarkerRoad", "box_OutputOrder_v2_319.Out", "box_VehicleModifier_v2_104.SetEngineMinorDamage", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEngineMinorDamage
    l0:Exec(14, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_319_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_320();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1253512832", "1253512832", "MarkerRoad", "box_OutputOrder_v2_319.Out", "box_OverrideEnvironment_v3_320.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_186_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_189();
    l0 = self.box_PlayDialog_v6_186;
    l1 = self.box_PlayDialog_v6_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1588606789", "1588606789", "MarkerRoad", "box_PlayDialog_v6_186.Finished", "box_PlayDialog_v6_189.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_103_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_323();
    l0 = self.box_Delay_v5_103;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1136876697", "1136876697", "MarkerRoad", "box_Delay_v5_103.TimeElapsed", "box_OutputOrder_v2_323.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_26_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_239();
    l0 = self.box_Delay_v5_26;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|809430138", "809430138", "MarkerRoad", "box_Delay_v5_26.TimeElapsed", "box_StimsEmitter_v2_239.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_197_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_198();
    l0 = self.box_EntityStatusListener_197;
    l1 = self.box_ProximityTrigger_v2_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|407965602", "407965602", "MarkerRoad", "box_EntityStatusListener_197.Loaded", "box_ProximityTrigger_v2_198.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v2_140_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v2_142();
    l0 = self.box_Reach_GoTo_v2_140;
    l1 = self.box_Reach_GoTo_v2_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|99486035", "99486035", "MarkerRoad", "box_Reach_GoTo_v2_140.Success", "box_Reach_GoTo_v2_142.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_214_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_215();
    l0 = self.box_ProximityTrigger_v2_214;
    l1 = self.box_PlayDialog_v6_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|388548065", "388548065", "MarkerRoad", "box_ProximityTrigger_v2_214.Enter", "box_PlayDialog_v6_215.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_85_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_EntityStatusListener_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|225229511", "225229511", "MarkerRoad", "box_EntityStatusListener_85.Loaded", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_286_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_12();
    l0 = self.box_ProximityTrigger_v2_286;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|246867547", "246867547", "MarkerRoad", "box_ProximityTrigger_v2_286.Enter", "box_CameraShakeAndRumble_V2_12.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_137_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_136();
    l0 = self.box_EntityStatusListener_137;
    l1 = self.box_ProximityTrigger_v2_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|986780333", "986780333", "MarkerRoad", "box_EntityStatusListener_137.Loaded", "box_ProximityTrigger_v2_136.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_273_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_273;
    l1 = self.box_MultipleOR_266;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1564936801", "1564936801", "MarkerRoad", "box_EntityStatusListener_273.Unloaded", "box_MultipleOR_266.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_84_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_88();
    l0 = self.box_EntityStatusListener_84;
    l1 = self.box_EntityStatusListener_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1215266257", "1215266257", "MarkerRoad", "box_EntityStatusListener_84.Loaded", "box_EntityStatusListener_88.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_50_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_158();
    l0 = self.box_ProximityTrigger_v2_50;
    l1 = self.box_PlaySequence_v8_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2121088252", "2121088252", "MarkerRoad", "box_ProximityTrigger_v2_50.Enter", "box_PlaySequence_v8_158.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_50();
    l0 = self.box_ProximityTrigger_v2_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|232438753", "232438753", "MarkerRoad", "box_OutputOrder_v2_60.Out", "box_ProximityTrigger_v2_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_158();
    l0 = self.box_PlaySequence_v8_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|307768596", "307768596", "MarkerRoad", "box_OutputOrder_v2_60.Out", "box_PlaySequence_v8_158.PlayFromStart", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayFromStart
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_129_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_128();
    l0 = self.box_Delay_v5_129;
    l1 = self.box_SoundModifier_v2_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1551789993", "1551789993", "MarkerRoad", "box_Delay_v5_129.TimeElapsed", "box_SoundModifier_v2_128.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_100_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_94();
    l0 = self.box_ProximityTrigger_v2_100;
    l1 = self.box_PlaySequence_v8_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|917700848", "917700848", "MarkerRoad", "box_ProximityTrigger_v2_100.Enter", "box_PlaySequence_v8_94.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_275_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_280();
    l0 = self.box_EntityStatusListener_275;
    l1 = self.box_MultipleAND_v2_280;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1779492535", "1779492535", "MarkerRoad", "box_EntityStatusListener_275.Loaded", "box_MultipleAND_v2_280.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Gate_v3_257_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_79();
    l0 = self.box_Gate_v3_257;
    l1 = self.box_EntityStatusListener_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1097777998", "1097777998", "MarkerRoad", "box_Gate_v3_257.Closed", "box_EntityStatusListener_79.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_257_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_272();
    l0 = self.box_Gate_v3_257;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1073393341", "1073393341", "MarkerRoad", "box_Gate_v3_257.Opened", "box_OutputOrder_v2_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_257_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_257;
    l1 = self.box_MultipleOR_262;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1555659429", "1555659429", "MarkerRoad", "box_Gate_v3_257.Out", "box_MultipleOR_262.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_282();
    l0 = self.box_EntityStatusListener_282;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|469245273", "469245273", "MarkerRoad", "box_OutputOrder_v2_31.Out", "box_EntityStatusListener_282.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_107();
    l0 = self.box_PostFx_v3_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1450552798", "1450552798", "MarkerRoad", "box_OutputOrder_v2_31.Out", "box_PostFx_v3_107.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_246();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|663706707", "663706707", "MarkerRoad", "box_OutputOrder_v2_31.Out", "box_Simple_Node_246.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_196_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_71();
    l0 = self.box_MultipleOR_196;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|240743853", "240743853", "MarkerRoad", "box_MultipleOR_196.Out", "box_CameraShakeAndRumble_V2_71.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_76_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_34();
    l0 = self.box_ProximityTrigger_v2_76;
    l1 = self.box_PlaySequence_v8_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|990810760", "990810760", "MarkerRoad", "box_ProximityTrigger_v2_76.Enter", "box_PlaySequence_v8_34.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_255_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_74();
    l0 = self.box_Gate_v3_255;
    l1 = self.box_EntityStatusListener_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|400760857", "400760857", "MarkerRoad", "box_Gate_v3_255.Closed", "box_EntityStatusListener_74.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_255_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_263();
    l0 = self.box_Gate_v3_255;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|263095176", "263095176", "MarkerRoad", "box_Gate_v3_255.Opened", "box_OutputOrder_v2_263.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_255_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_255;
    l1 = self.box_MultipleOR_261;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|886070120", "886070120", "MarkerRoad", "box_Gate_v3_255.Out", "box_MultipleOR_261.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_326_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_WindBlast_244();
    l0 = Boxes[GetPathID("Domino/System/WindBlast.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|338307898", "338307898", "MarkerRoad", "box_OutputOrder_v2_326.Out", "box_WindBlast_244.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_326_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_335();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1522569822", "1522569822", "MarkerRoad", "box_OutputOrder_v2_326.Out", "box_Simple_Node_335.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_330_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_334();
    l0 = self.box_PostFx_v3_330;
    l1 = self.box_NarrativeSceneCleanUp_V2_334;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|207324723", "207324723", "MarkerRoad", "box_PostFx_v3_330.Disabled", "box_NarrativeSceneCleanUp_V2_334.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_34_SPOut__pause_()
    local params, l0;
    params = self:OnEnter_box_PlaySequence_v8_34();
    l0 = self.box_PlaySequence_v8_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|660543555", "660543555", "MarkerRoad", "box_PlaySequence_v8_34.SPOut", "box_PlaySequence_v8_34.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
end;

function export:f_box_PlaySequence_v8_34_SPOut__rumble_()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_288();
    l0 = self.box_PlaySequence_v8_34;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|697950839", "697950839", "MarkerRoad", "box_PlaySequence_v8_34.SPOut", "box_CameraShakeAndRumble_V2_288.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_34_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_255();
    l0 = self.box_PlaySequence_v8_34;
    l1 = self.box_Gate_v3_255;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|666140613", "666140613", "MarkerRoad", "box_PlaySequence_v8_34.Started", "box_Gate_v3_255.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_37_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_93();
    l0 = self.box_EntityStatusListener_37;
    l1 = self.box_EntityStatusListener_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1480520849", "1480520849", "MarkerRoad", "box_EntityStatusListener_37.Loaded", "box_EntityStatusListener_93.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_227_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_230();
    l0 = self.box_PlayDialog_v6_227;
    l1 = self.box_PlayDialog_v6_230;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|152826115", "152826115", "MarkerRoad", "box_PlayDialog_v6_227.Finished", "box_PlayDialog_v6_230.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_153_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_153_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_285();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|249413592", "249413592", "MarkerRoad", "box_GetPlayerGroup_v2_153.Out", "box_Simple_Node_285.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v2_16_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v2_68();
    l0 = self.box_Reach_GoTo_v2_16;
    l1 = self.box_Reach_GoTo_v2_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2023320950", "2023320950", "MarkerRoad", "box_Reach_GoTo_v2_16.Success", "box_Reach_GoTo_v2_68.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_268_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_268;
    l1 = self.box_MultipleOR_265;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1683346768", "1683346768", "MarkerRoad", "box_EntityStatusListener_268.Unloaded", "box_MultipleOR_265.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_302_SPOut__rumble_()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_303();
    l0 = self.box_PlaySequence_v8_302;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1564909283", "1564909283", "MarkerRoad", "box_PlaySequence_v8_302.SPOut", "box_CameraShakeAndRumble_V2_303.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_331_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_330();
    l0 = self.box_PostFx_v3_331;
    l1 = self.box_PostFx_v3_330;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1080100939", "1080100939", "MarkerRoad", "box_PostFx_v3_331.Disabled", "box_PostFx_v3_330.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ForceVehicleCrash_130_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_132();
    l0 = self.box_Delay_v5_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|474112482", "474112482", "MarkerRoad", "box_ForceVehicleCrash_130.Out", "box_Delay_v5_132.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_262_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_257();
    l0 = self.box_MultipleOR_262;
    l1 = self.box_Gate_v3_257;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1284711351", "1284711351", "MarkerRoad", "box_MultipleOR_262.Out", "box_Gate_v3_257.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_311_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_175();
    l0 = self.box_OnceOnly_v3_311;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|636058566", "636058566", "MarkerRoad", "box_OnceOnly_v3_311.Out", "box_ParticleSystem_v3_175.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_253_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_254();
    l0 = self.box_MultipleOR_253;
    l1 = self.box_Gate_v3_254;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|890285319", "890285319", "MarkerRoad", "box_MultipleOR_253.Out", "box_Gate_v3_254.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_281_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_169();
    l0 = self.box_EntityStatusListener_281;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1025468601", "1025468601", "MarkerRoad", "box_EntityStatusListener_281.Loaded", "box_ParticleSystem_v3_169.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_297_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_276();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1913280547", "1913280547", "MarkerRoad", "box_OutputOrder_v2_297.Out", "box_ParticleSystem_v3_276.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_297_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_296();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|790613362", "790613362", "MarkerRoad", "box_OutputOrder_v2_297.Out", "box_ParticleSystem_v3_296.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_199_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_200();
    l0 = self.box_PlayDialog_v6_199;
    l1 = self.box_PlayDialog_v6_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1313436735", "1313436735", "MarkerRoad", "box_PlayDialog_v6_199.Finished", "box_PlayDialog_v6_200.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_332_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_306();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1881880276", "1881880276", "MarkerRoad", "box_OutputOrder_v2_332.Out", "box_ParticleSystem_v3_306.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_332_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_337();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1620474858", "1620474858", "MarkerRoad", "box_OutputOrder_v2_332.Out", "box_Simple_Node_337.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_76();
    l0 = self.box_ProximityTrigger_v2_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|777459893", "777459893", "MarkerRoad", "box_OutputOrder_v2_5.Out", "box_ProximityTrigger_v2_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_34();
    l0 = self.box_PlaySequence_v8_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|469246287", "469246287", "MarkerRoad", "box_OutputOrder_v2_5.Out", "box_PlaySequence_v8_34.PlayFromStart", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayFromStart
    l0:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_138_SPOut__rumble_()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_294();
    l0 = self.box_PlaySequence_v8_138;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2140494436", "2140494436", "MarkerRoad", "box_PlaySequence_v8_138.SPOut", "box_CameraShakeAndRumble_V2_294.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_259_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_259;
    l1 = self.box_MultipleOR_264;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1585834598", "1585834598", "MarkerRoad", "box_EntityStatusListener_259.Unloaded", "box_MultipleOR_264.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_219_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_221();
    l0 = self.box_ProximityTrigger_v2_219;
    l1 = self.box_PlayDialog_v6_221;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|253028344", "253028344", "MarkerRoad", "box_ProximityTrigger_v2_219.Enter", "box_PlayDialog_v6_221.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_183_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_184();
    l0 = self.box_EntityStatusListener_183;
    l1 = self.box_ProximityTrigger_v2_184;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|984235215", "984235215", "MarkerRoad", "box_EntityStatusListener_183.Loaded", "box_ProximityTrigger_v2_184.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_90_SPOut__rumble_()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_292();
    l0 = self.box_PlaySequence_v8_90;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|980786370", "980786370", "MarkerRoad", "box_PlaySequence_v8_90.SPOut", "box_CameraShakeAndRumble_V2_292.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_283_SPOut__BirdSound_()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_245();
    l0 = self.box_PlaySequence_v8_283;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1861462848", "1861462848", "MarkerRoad", "box_PlaySequence_v8_283.SPOut", "box_Simple_Node_245.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_283_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_27();
    l0 = self.box_PlaySequence_v8_283;
    l1 = self.box_PlayDialog_v6_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|3849618", "3849618", "MarkerRoad", "box_PlaySequence_v8_283.Started", "box_PlayDialog_v6_27.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_133_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_130();
    l0 = self.box_Delay_v5_133;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1687797830", "1687797830", "MarkerRoad", "box_Delay_v5_133.TimeElapsed", "box_ForceVehicleCrash_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_40_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_150();
    l0 = self.box_EntityStatusListener_40;
    l1 = self.box_ProximityTrigger_v2_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|11715318", "11715318", "MarkerRoad", "box_EntityStatusListener_40.Loaded", "box_ProximityTrigger_v2_150.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_10_LoopingEnded()
    local l0, l1;
    l0 = self.box_Delay_v5_10;
    l1 = self.box_MultipleOR_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|309085330", "309085330", "MarkerRoad", "box_Delay_v5_10.LoopingEnded", "box_MultipleOR_195.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_10;
    l1 = self.box_MultipleOR_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|879264049", "879264049", "MarkerRoad", "box_Delay_v5_10.TimeElapsed", "box_MultipleOR_195.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_279_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_275();
    l0 = self.box_EntityStatusListener_275;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2064692447", "2064692447", "MarkerRoad", "box_OutputOrder_v2_279.Out", "box_EntityStatusListener_275.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_279_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_278();
    l0 = self.box_EntityStatusListener_278;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1838585586", "1838585586", "MarkerRoad", "box_OutputOrder_v2_279.Out", "box_EntityStatusListener_278.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_260_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_260;
    l1 = self.box_MultipleOR_264;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1030774043", "1030774043", "MarkerRoad", "box_EntityStatusListener_260.Unloaded", "box_MultipleOR_264.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_324_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_331();
    l0 = self.box_Delay_v5_324;
    l1 = self.box_PostFx_v3_331;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1799093518", "1799093518", "MarkerRoad", "box_Delay_v5_324.TimeElapsed", "box_PostFx_v3_331.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_314_Out_0()
    local l0;
    l0 = self.box_OnceOnly_v3_314;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|131612457", "131612457", "MarkerRoad", "box_OnceOnly_v3_314.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_ProximityTrigger_v2_23_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_23;
    l1 = self.box_OnceOnly_v3_314;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|780081507", "780081507", "MarkerRoad", "box_ProximityTrigger_v2_23.Enter", "box_OnceOnly_v3_314.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_278_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_280();
    l0 = self.box_EntityStatusListener_278;
    l1 = self.box_MultipleAND_v2_280;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1997363065", "1997363065", "MarkerRoad", "box_EntityStatusListener_278.Loaded", "box_MultipleAND_v2_280.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_266_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_257();
    l0 = self.box_MultipleOR_266;
    l1 = self.box_Gate_v3_257;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1386991024", "1386991024", "MarkerRoad", "box_MultipleOR_266.Out", "box_Gate_v3_257.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_234_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_236();
    l0 = self.box_ProximityTrigger_v2_234;
    l1 = self.box_PlayDialog_v6_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|112407571", "112407571", "MarkerRoad", "box_ProximityTrigger_v2_234.Enter", "box_PlayDialog_v6_236.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_114_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_112();
    l0 = self.box_ProximityTrigger_v2_114;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1377754751", "1377754751", "MarkerRoad", "box_ProximityTrigger_v2_114.Enter", "box_ForceVehicleCrash_112.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_54_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_51();
    l0 = self.box_EntityStatusListener_54;
    l1 = self.box_EntityStatusListener_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|11166085", "11166085", "MarkerRoad", "box_EntityStatusListener_54.Loaded", "box_EntityStatusListener_51.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_109_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_78();
    l0 = self.box_Delay_v5_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1310088587", "1310088587", "MarkerRoad", "box_ParticleSystem_v3_109.Started", "box_Delay_v5_78.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_210_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_209();
    l0 = self.box_EntityStatusListener_210;
    l1 = self.box_ProximityTrigger_v2_209;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|844605030", "844605030", "MarkerRoad", "box_EntityStatusListener_210.Loaded", "box_ProximityTrigger_v2_209.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_WindBlast_244_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/WindBlast.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_318();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|31904575", "31904575", "MarkerRoad", "box_WindBlast_244.Out", "box_OverrideEnvironment_v3_318.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_182_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_310();
    l0 = self.box_EntityStatusListener_182;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|129984737", "129984737", "MarkerRoad", "box_EntityStatusListener_182.Loaded", "box_OutputOrder_v2_310.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_165_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_167();
    l0 = self.box_EntityStatusListener_165;
    l1 = self.box_EntityStatusListener_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1842942737", "1842942737", "MarkerRoad", "box_EntityStatusListener_165.Enabled", "box_EntityStatusListener_167.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_165_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_166();
    l0 = self.box_EntityStatusListener_165;
    l1 = self.box_RemoveEntity_v2_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1586689539", "1586689539", "MarkerRoad", "box_EntityStatusListener_165.Loaded", "box_RemoveEntity_v2_166.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_94_SPOut__rumble_()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_293();
    l0 = self.box_PlaySequence_v8_94;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|699938008", "699938008", "MarkerRoad", "box_PlaySequence_v8_94.SPOut", "box_CameraShakeAndRumble_V2_293.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_254_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_21();
    l0 = self.box_Gate_v3_254;
    l1 = self.box_EntityStatusListener_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1445345874", "1445345874", "MarkerRoad", "box_Gate_v3_254.Closed", "box_EntityStatusListener_21.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_254_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_252();
    l0 = self.box_Gate_v3_254;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1886190698", "1886190698", "MarkerRoad", "box_Gate_v3_254.Opened", "box_OutputOrder_v2_252.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_254_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_254;
    l1 = self.box_MultipleOR_253;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1613304021", "1613304021", "MarkerRoad", "box_Gate_v3_254.Out", "box_MultipleOR_253.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_250_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_250;
    l1 = self.box_MultipleOR_251;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|183761330", "183761330", "MarkerRoad", "box_EntityStatusListener_250.Unloaded", "box_MultipleOR_251.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_243_LoopingEnded()
    local l0, l1;
    l0 = self.box_Delay_v5_243;
    l1 = self.box_MultipleOR_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1915716432", "1915716432", "MarkerRoad", "box_Delay_v5_243.LoopingEnded", "box_MultipleOR_196.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_243_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_243;
    l1 = self.box_MultipleOR_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|944731909", "944731909", "MarkerRoad", "box_Delay_v5_243.TimeElapsed", "box_MultipleOR_196.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_216_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_217();
    l0 = self.box_PlayDialog_v6_216;
    l1 = self.box_PlayDialog_v6_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1190038972", "1190038972", "MarkerRoad", "box_PlayDialog_v6_216.Finished", "box_PlayDialog_v6_217.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_75_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_EntityStatusListener_75;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|196854515", "196854515", "MarkerRoad", "box_EntityStatusListener_75.Loaded", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_204_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_206();
    l0 = self.box_ProximityTrigger_v2_204;
    l1 = self.box_PlayDialog_v6_206;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|803561054", "803561054", "MarkerRoad", "box_ProximityTrigger_v2_204.Enter", "box_PlayDialog_v6_206.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_305_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_332();
    l0 = self.box_ProximityTrigger_v2_305;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1501153929", "1501153929", "MarkerRoad", "box_ProximityTrigger_v2_305.Enter", "box_OutputOrder_v2_332.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_299_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_239();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|510112864", "510112864", "MarkerRoad", "box_OutputOrder_v2_299.Out", "box_StimsEmitter_v2_239.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_299_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_25();
    l0 = self.box_Delay_v5_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1117365092", "1117365092", "MarkerRoad", "box_OutputOrder_v2_299.Out", "box_Delay_v5_25.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_81_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_59();
    l0 = self.box_ProximityTrigger_v2_81;
    l1 = self.box_PlaySequence_v8_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1178705391", "1178705391", "MarkerRoad", "box_ProximityTrigger_v2_81.Enter", "box_PlaySequence_v8_59.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_158_SPOut__pause_()
    local params, l0;
    params = self:OnEnter_box_PlaySequence_v8_158();
    l0 = self.box_PlaySequence_v8_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1399524403", "1399524403", "MarkerRoad", "box_PlaySequence_v8_158.SPOut", "box_PlaySequence_v8_158.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
end;

function export:f_box_PlaySequence_v8_158_SPOut__rumble_()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_287();
    l0 = self.box_PlaySequence_v8_158;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|287834128", "287834128", "MarkerRoad", "box_PlaySequence_v8_158.SPOut", "box_CameraShakeAndRumble_V2_287.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_158_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_254();
    l0 = self.box_PlaySequence_v8_158;
    l1 = self.box_Gate_v3_254;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1167030006", "1167030006", "MarkerRoad", "box_PlaySequence_v8_158.Started", "box_Gate_v3_254.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_298_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_52();
    l0 = self.box_Delay_v5_298;
    l1 = self.box_SpawnAI_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|790018346", "790018346", "MarkerRoad", "box_Delay_v5_298.TimeElapsed", "box_SpawnAI_52.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_PostFx_v3_107_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_96();
    l0 = self.box_PostFx_v3_107;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|610368008", "610368008", "MarkerRoad", "box_PostFx_v3_107.Enabled", "box_OutputOrder_v2_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_105_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_138();
    l0 = self.box_ProximityTrigger_v2_105;
    l1 = self.box_PlaySequence_v8_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1648590674", "1648590674", "MarkerRoad", "box_ProximityTrigger_v2_105.Enter", "box_PlaySequence_v8_138.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_195_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_108();
    l0 = self.box_MultipleOR_195;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1118033919", "1118033919", "MarkerRoad", "box_MultipleOR_195.Out", "box_CameraShakeAndRumble_V2_108.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_223_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_224();
    l0 = self.box_EntityStatusListener_223;
    l1 = self.box_ProximityTrigger_v2_224;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2120805813", "2120805813", "MarkerRoad", "box_EntityStatusListener_223.Loaded", "box_ProximityTrigger_v2_224.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_WindBlast_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/WindBlast.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_319();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|886824405", "886824405", "MarkerRoad", "box_WindBlast_14.Out", "box_OutputOrder_v2_319.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_115_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_111();
    l0 = self.box_SoundModifier_v2_115;
    l1 = self.box_Delay_v5_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|968922884", "968922884", "MarkerRoad", "box_SoundModifier_v2_115.Started", "box_Delay_v5_111.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_80_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_83();
    l0 = self.box_EntityStatusListener_80;
    l1 = self.box_EntityStatusListener_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|569018011", "569018011", "MarkerRoad", "box_EntityStatusListener_80.Loaded", "box_EntityStatusListener_83.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ForceVehicleCrash_112_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_11();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1833393519", "1833393519", "MarkerRoad", "box_ForceVehicleCrash_112.Out", "box_VehicleModifier_v2_11.SetExplosion", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetExplosion
    l0:Exec(17, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_187_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_218();
    l0 = self.box_PlayDialog_v6_187;
    l1 = self.box_PlayDialog_v6_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1708849452", "1708849452", "MarkerRoad", "box_PlayDialog_v6_187.Finished", "box_PlayDialog_v6_218.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_315_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_316();
    l0 = self.box_EntityStatusListener_315;
    l1 = self.box_PhysicsModifier_316;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|316923264", "316923264", "MarkerRoad", "box_EntityStatusListener_315.Loaded", "box_PhysicsModifier_316.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_Reach_GoTo_v2_18_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v2_20();
    l0 = self.box_Reach_GoTo_v2_18;
    l1 = self.box_Reach_GoTo_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|478017420", "478017420", "MarkerRoad", "box_Reach_GoTo_v2_18.Success", "box_Reach_GoTo_v2_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_96_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|46503974", "46503974", "MarkerRoad", "box_OutputOrder_v2_96.Out", "box_Delay_v5_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_96_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1448530283", "1448530283", "MarkerRoad", "box_OutputOrder_v2_96.Out", "box_Delay_v5_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_96_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|53977883", "53977883", "MarkerRoad", "box_OutputOrder_v2_96.Out", "box_Delay_v5_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_232_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_231();
    l0 = self.box_EntityStatusListener_232;
    l1 = self.box_ProximityTrigger_v2_231;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|188711736", "188711736", "MarkerRoad", "box_EntityStatusListener_232.Loaded", "box_ProximityTrigger_v2_231.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v2_47_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v2_17();
    l0 = self.box_Reach_GoTo_v2_47;
    l1 = self.box_Reach_GoTo_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1840656196", "1840656196", "MarkerRoad", "box_Reach_GoTo_v2_47.Success", "box_Reach_GoTo_v2_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_261_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_255();
    l0 = self.box_MultipleOR_261;
    l1 = self.box_Gate_v3_255;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|374298267", "374298267", "MarkerRoad", "box_MultipleOR_261.Out", "box_Gate_v3_255.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_91_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_37();
    l0 = self.box_MultipleAND_v2_91;
    l1 = self.box_EntityStatusListener_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|838519855", "838519855", "MarkerRoad", "box_MultipleAND_v2_91.Out", "box_EntityStatusListener_37.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v2_33_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v2_16();
    l0 = self.box_Reach_GoTo_v2_33;
    l1 = self.box_Reach_GoTo_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|69429872", "69429872", "MarkerRoad", "box_Reach_GoTo_v2_33.Success", "box_Reach_GoTo_v2_16.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_256_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_84();
    l0 = self.box_Gate_v3_256;
    l1 = self.box_EntityStatusListener_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1376509854", "1376509854", "MarkerRoad", "box_Gate_v3_256.Closed", "box_EntityStatusListener_84.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_256_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_270();
    l0 = self.box_Gate_v3_256;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|125817924", "125817924", "MarkerRoad", "box_Gate_v3_256.Opened", "box_OutputOrder_v2_270.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_256_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_256;
    l1 = self.box_MultipleOR_247;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|69803133", "69803133", "MarkerRoad", "box_Gate_v3_256.Out", "box_MultipleOR_247.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_215_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_PlayDialog_v6_215;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|342972135", "342972135", "MarkerRoad", "box_PlayDialog_v6_215.Finished", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_310_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_309();
    l0 = self.box_StaticBreakableListener_309;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1273088096", "1273088096", "MarkerRoad", "box_OutputOrder_v2_310.Out", "box_StaticBreakableListener_309.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_310_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_179();
    l0 = self.box_StaticBreakableListener_179;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1102233252", "1102233252", "MarkerRoad", "box_OutputOrder_v2_310.Out", "box_StaticBreakableListener_179.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_135_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_137();
    l0 = self.box_EntityStatusListener_135;
    l1 = self.box_EntityStatusListener_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1447977629", "1447977629", "MarkerRoad", "box_EntityStatusListener_135.Loaded", "box_EntityStatusListener_137.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v2_69_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v2_53();
    l0 = self.box_Reach_GoTo_v2_69;
    l1 = self.box_Reach_GoTo_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1807958752", "1807958752", "MarkerRoad", "box_Reach_GoTo_v2_69.Success", "box_Reach_GoTo_v2_53.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_212_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_208();
    l0 = self.box_ProximityTrigger_v2_212;
    l1 = self.box_PlayDialog_v6_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1626906604", "1626906604", "MarkerRoad", "box_ProximityTrigger_v2_212.Enter", "box_PlayDialog_v6_208.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_249_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_249;
    l1 = self.box_MultipleOR_251;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|893259819", "893259819", "MarkerRoad", "box_EntityStatusListener_249.Unloaded", "box_MultipleOR_251.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleListener_v3_277_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_279();
    l0 = self.box_VehicleListener_v3_277;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1001557430", "1001557430", "MarkerRoad", "box_VehicleListener_v3_277.OnSit", "box_OutputOrder_v2_279.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_203_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_202();
    l0 = self.box_EntityStatusListener_203;
    l1 = self.box_ProximityTrigger_v2_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|543022177", "543022177", "MarkerRoad", "box_EntityStatusListener_203.Loaded", "box_ProximityTrigger_v2_202.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_63_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_91();
    l0 = self.box_EntityStatusListener_63;
    l1 = self.box_MultipleAND_v2_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1311159634", "1311159634", "MarkerRoad", "box_EntityStatusListener_63.Loaded", "box_MultipleAND_v2_91.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_EntityStatusListener_167_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_248();
    l0 = self.box_EntityStatusListener_167;
    l1 = self.box_EntityStatusListener_248;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1309273519", "1309273519", "MarkerRoad", "box_EntityStatusListener_167.Enabled", "box_EntityStatusListener_248.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_167_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_168();
    l0 = self.box_EntityStatusListener_167;
    l1 = self.box_RemoveEntity_v2_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|387149785", "387149785", "MarkerRoad", "box_EntityStatusListener_167.Loaded", "box_RemoveEntity_v2_168.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_194_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_151();
    l0 = self.box_ProximityTrigger_v2_194;
    l1 = self.box_PlaySequence_v8_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|39550635", "39550635", "MarkerRoad", "box_ProximityTrigger_v2_194.Enter", "box_PlaySequence_v8_151.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_39_SPOut__pause_()
    local params, l0;
    params = self:OnEnter_box_PlaySequence_v8_39();
    l0 = self.box_PlaySequence_v8_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1383185045", "1383185045", "MarkerRoad", "box_PlaySequence_v8_39.SPOut", "box_PlaySequence_v8_39.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
end;

function export:f_box_PlaySequence_v8_39_SPOut__rumble_()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_290();
    l0 = self.box_PlaySequence_v8_39;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1485518554", "1485518554", "MarkerRoad", "box_PlaySequence_v8_39.SPOut", "box_CameraShakeAndRumble_V2_290.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_39_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_257();
    l0 = self.box_PlaySequence_v8_39;
    l1 = self.box_Gate_v3_257;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|558550252", "558550252", "MarkerRoad", "box_PlaySequence_v8_39.Started", "box_Gate_v3_257.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_150_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_283();
    l0 = self.box_ProximityTrigger_v2_150;
    l1 = self.box_PlaySequence_v8_283;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|776870904", "776870904", "MarkerRoad", "box_ProximityTrigger_v2_150.Enter", "box_PlaySequence_v8_283.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_73_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_109();
    l0 = self.box_ProximityTrigger_v2_73;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|317858246", "317858246", "MarkerRoad", "box_ProximityTrigger_v2_73.Enter", "box_ParticleSystem_v3_109.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_313_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_312();
    l0 = self.box_EntityStatusListener_313;
    l1 = self.box_ProximityTrigger_v2_312;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1347845294", "1347845294", "MarkerRoad", "box_EntityStatusListener_313.Loaded", "box_ProximityTrigger_v2_312.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_174_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_172();
    l0 = self.box_EntityStatusListener_174;
    l1 = self.box_ProximityTrigger_v2_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1861095280", "1861095280", "MarkerRoad", "box_EntityStatusListener_174.Loaded", "box_ProximityTrigger_v2_172.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_252_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_249();
    l0 = self.box_EntityStatusListener_249;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1712761713", "1712761713", "MarkerRoad", "box_OutputOrder_v2_252.Out", "box_EntityStatusListener_249.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_252_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_250();
    l0 = self.box_EntityStatusListener_250;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|277179712", "277179712", "MarkerRoad", "box_OutputOrder_v2_252.Out", "box_EntityStatusListener_250.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_87_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_39();
    l0 = self.box_ProximityTrigger_v2_87;
    l1 = self.box_PlaySequence_v8_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|399106787", "399106787", "MarkerRoad", "box_ProximityTrigger_v2_87.Enter", "box_PlaySequence_v8_39.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_309_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_309;
    l1 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|439582336", "439582336", "MarkerRoad", "box_StaticBreakableListener_309.OnDamage", "box_MultipleOR_178.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_185_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_186();
    l0 = self.box_PlayDialog_v6_185;
    l1 = self.box_PlayDialog_v6_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|711276527", "711276527", "MarkerRoad", "box_PlayDialog_v6_185.Finished", "box_PlayDialog_v6_186.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_248_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_274();
    l0 = self.box_EntityStatusListener_248;
    l1 = self.box_EntityStatusListener_274;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1576640444", "1576640444", "MarkerRoad", "box_EntityStatusListener_248.Enabled", "box_EntityStatusListener_274.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_248_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_258();
    l0 = self.box_EntityStatusListener_248;
    l1 = self.box_RemoveEntity_v2_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|167912196", "167912196", "MarkerRoad", "box_EntityStatusListener_248.Loaded", "box_RemoveEntity_v2_258.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_209_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_205();
    l0 = self.box_ProximityTrigger_v2_209;
    l1 = self.box_PlayDialog_v6_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1179268297", "1179268297", "MarkerRoad", "box_ProximityTrigger_v2_209.Enter", "box_PlayDialog_v6_205.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_97_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_114();
    l0 = self.box_EntityStatusListener_97;
    l1 = self.box_ProximityTrigger_v2_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1256221106", "1256221106", "MarkerRoad", "box_EntityStatusListener_97.Loaded", "box_ProximityTrigger_v2_114.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_83_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_159();
    l0 = self.box_EntityStatusListener_83;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1882298120", "1882298120", "MarkerRoad", "box_EntityStatusListener_83.Loaded", "box_OutputOrder_v2_159.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_192_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_193();
    l0 = self.box_ProximityTrigger_v2_192;
    l1 = self.box_PlayDialog_v6_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1421823008", "1421823008", "MarkerRoad", "box_ProximityTrigger_v2_192.Enter", "box_PlayDialog_v6_193.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_92_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_90();
    l0 = self.box_ProximityTrigger_v2_92;
    l1 = self.box_PlaySequence_v8_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1843059947", "1843059947", "MarkerRoad", "box_ProximityTrigger_v2_92.Enter", "box_PlaySequence_v8_90.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_211_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_212();
    l0 = self.box_EntityStatusListener_211;
    l1 = self.box_ProximityTrigger_v2_212;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|469276268", "469276268", "MarkerRoad", "box_EntityStatusListener_211.Loaded", "box_ProximityTrigger_v2_212.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_89_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_70();
    l0 = self.box_EntityStatusListener_89;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1564786699", "1564786699", "MarkerRoad", "box_EntityStatusListener_89.Loaded", "box_OutputOrder_v2_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_326();
    l0 = self.box_Delay_v5_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1137738278", "1137738278", "MarkerRoad", "box_Delay_v5_13.TimeElapsed", "box_OutputOrder_v2_326.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_280_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_297();
    l0 = self.box_MultipleAND_v2_280;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|622112837", "622112837", "MarkerRoad", "box_MultipleAND_v2_280.Out", "box_OutputOrder_v2_297.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_323_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_WindBlast_14();
    l0 = Boxes[GetPathID("Domino/System/WindBlast.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2136536160", "2136536160", "MarkerRoad", "box_OutputOrder_v2_323.Out", "box_WindBlast_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_323_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_335();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1054080165", "1054080165", "MarkerRoad", "box_OutputOrder_v2_323.Out", "box_Simple_Node_335.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_202_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_201();
    l0 = self.box_ProximityTrigger_v2_202;
    l1 = self.box_PlayDialog_v6_201;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1680883796", "1680883796", "MarkerRoad", "box_ProximityTrigger_v2_202.Enter", "box_PlayDialog_v6_201.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_21_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_55();
    l0 = self.box_EntityStatusListener_21;
    l1 = self.box_EntityStatusListener_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2015672298", "2015672298", "MarkerRoad", "box_EntityStatusListener_21.Loaded", "box_EntityStatusListener_55.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_77_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_75();
    l0 = self.box_EntityStatusListener_77;
    l1 = self.box_EntityStatusListener_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1767958717", "1767958717", "MarkerRoad", "box_EntityStatusListener_77.Loaded", "box_EntityStatusListener_75.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_179_OnDamage()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_179;
    l1 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|118809221", "118809221", "MarkerRoad", "box_StaticBreakableListener_179.OnDamage", "box_MultipleOR_178.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_298();
    l0 = self.box_Delay_v5_298;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1192757473", "1192757473", "MarkerRoad", "box_OutputOrder_v2_24.Out", "box_Delay_v5_298.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_44();
    l0 = self.box_SpawnAI_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|913402740", "913402740", "MarkerRoad", "box_OutputOrder_v2_24.Out", "box_SpawnAI_44.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_128_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_133();
    l0 = self.box_SoundModifier_v2_128;
    l1 = self.box_Delay_v5_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1179388256", "1179388256", "MarkerRoad", "box_SoundModifier_v2_128.Finished", "box_Delay_v5_133.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SoundModifier_v2_128_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_129();
    l0 = self.box_SoundModifier_v2_128;
    l1 = self.box_Delay_v5_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|731843222", "731843222", "MarkerRoad", "box_SoundModifier_v2_128.Started", "box_Delay_v5_129.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_207_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_204();
    l0 = self.box_EntityStatusListener_207;
    l1 = self.box_ProximityTrigger_v2_204;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|938030879", "938030879", "MarkerRoad", "box_EntityStatusListener_207.Loaded", "box_ProximityTrigger_v2_204.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_30_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_40();
    l0 = self.box_EntityStatusListener_30;
    l1 = self.box_EntityStatusListener_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|384023782", "384023782", "MarkerRoad", "box_EntityStatusListener_30.Loaded", "box_EntityStatusListener_40.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_113_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_97();
    l0 = self.box_EntityStatusListener_113;
    l1 = self.box_EntityStatusListener_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|845936282", "845936282", "MarkerRoad", "box_EntityStatusListener_113.Enabled", "box_EntityStatusListener_97.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_113_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_98();
    l0 = self.box_EntityStatusListener_113;
    l1 = self.box_ProximityRadiusListener_v3_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1428931567", "1428931567", "MarkerRoad", "box_EntityStatusListener_113.Loaded", "box_ProximityRadiusListener_v3_98.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_93_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_32();
    l0 = self.box_EntityStatusListener_93;
    l1 = self.box_ProximityTrigger_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1330466873", "1330466873", "MarkerRoad", "box_EntityStatusListener_93.Loaded", "box_ProximityTrigger_v2_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_180_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_177();
    l0 = self.box_EntityStatusListener_180;
    l1 = self.box_ProximityTrigger_v2_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1359766054", "1359766054", "MarkerRoad", "box_EntityStatusListener_180.Loaded", "box_ProximityTrigger_v2_177.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_188_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_192();
    l0 = self.box_EntityStatusListener_188;
    l1 = self.box_ProximityTrigger_v2_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2018968922", "2018968922", "MarkerRoad", "box_EntityStatusListener_188.Loaded", "box_ProximityTrigger_v2_192.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_62_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = self.box_EntityStatusListener_62;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|9477222", "9477222", "MarkerRoad", "box_EntityStatusListener_62.Loaded", "box_OutputOrder_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_264_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_255();
    l0 = self.box_MultipleOR_264;
    l1 = self.box_Gate_v3_255;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1646864037", "1646864037", "MarkerRoad", "box_MultipleOR_264.Out", "box_Gate_v3_255.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_269_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_269;
    l1 = self.box_MultipleOR_265;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|627164164", "627164164", "MarkerRoad", "box_EntityStatusListener_269.Unloaded", "box_MultipleOR_265.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_272_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_271();
    l0 = self.box_EntityStatusListener_271;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1899723669", "1899723669", "MarkerRoad", "box_OutputOrder_v2_272.Out", "box_EntityStatusListener_271.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_272_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_273();
    l0 = self.box_EntityStatusListener_273;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1585471862", "1585471862", "MarkerRoad", "box_OutputOrder_v2_272.Out", "box_EntityStatusListener_273.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v2_142_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v2_47();
    l0 = self.box_Reach_GoTo_v2_142;
    l1 = self.box_Reach_GoTo_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|453261083", "453261083", "MarkerRoad", "box_Reach_GoTo_v2_142.Success", "box_Reach_GoTo_v2_47.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_301_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_324();
    l0 = self.box_VehicleListener_v3_301;
    l1 = self.box_Delay_v5_324;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1433707874", "1433707874", "MarkerRoad", "box_VehicleListener_v3_301.OnSit", "box_Delay_v5_324.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_70_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_63();
    l0 = self.box_EntityStatusListener_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|616502784", "616502784", "MarkerRoad", "box_OutputOrder_v2_70.Out", "box_EntityStatusListener_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_70_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_15();
    l0 = self.box_EntityStatusListener_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1921872155", "1921872155", "MarkerRoad", "box_OutputOrder_v2_70.Out", "box_EntityStatusListener_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v2_68_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v2_18();
    l0 = self.box_Reach_GoTo_v2_68;
    l1 = self.box_Reach_GoTo_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|48932342", "48932342", "MarkerRoad", "box_Reach_GoTo_v2_68.Success", "box_Reach_GoTo_v2_18.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_176_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_180();
    l0 = self.box_EntityStatusListener_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1792902989", "1792902989", "MarkerRoad", "box_OutputOrder_v2_176.Out", "box_EntityStatusListener_180.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_176_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_223();
    l0 = self.box_EntityStatusListener_223;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1659569741", "1659569741", "MarkerRoad", "box_OutputOrder_v2_176.Out", "box_EntityStatusListener_223.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_176_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_183();
    l0 = self.box_EntityStatusListener_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1069558860", "1069558860", "MarkerRoad", "box_OutputOrder_v2_176.Out", "box_EntityStatusListener_183.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_176_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_188();
    l0 = self.box_EntityStatusListener_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1767446753", "1767446753", "MarkerRoad", "box_OutputOrder_v2_176.Out", "box_EntityStatusListener_188.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_176_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_197();
    l0 = self.box_EntityStatusListener_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|311096292", "311096292", "MarkerRoad", "box_OutputOrder_v2_176.Out", "box_EntityStatusListener_197.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_176_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_203();
    l0 = self.box_EntityStatusListener_203;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1308820727", "1308820727", "MarkerRoad", "box_OutputOrder_v2_176.Out", "box_EntityStatusListener_203.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_176_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_207();
    l0 = self.box_EntityStatusListener_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|257612550", "257612550", "MarkerRoad", "box_OutputOrder_v2_176.Out", "box_EntityStatusListener_207.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_176_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_210();
    l0 = self.box_EntityStatusListener_210;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1810397540", "1810397540", "MarkerRoad", "box_OutputOrder_v2_176.Out", "box_EntityStatusListener_210.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_176_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_211();
    l0 = self.box_EntityStatusListener_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2068360936", "2068360936", "MarkerRoad", "box_OutputOrder_v2_176.Out", "box_EntityStatusListener_211.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_176_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_213();
    l0 = self.box_EntityStatusListener_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1520677965", "1520677965", "MarkerRoad", "box_OutputOrder_v2_176.Out", "box_EntityStatusListener_213.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_176_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_220();
    l0 = self.box_EntityStatusListener_220;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1464791066", "1464791066", "MarkerRoad", "box_OutputOrder_v2_176.Out", "box_EntityStatusListener_220.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_176_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_232();
    l0 = self.box_EntityStatusListener_232;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|823335146", "823335146", "MarkerRoad", "box_OutputOrder_v2_176.Out", "box_EntityStatusListener_232.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_176_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_235();
    l0 = self.box_EntityStatusListener_235;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|785423329", "785423329", "MarkerRoad", "box_OutputOrder_v2_176.Out", "box_EntityStatusListener_235.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_171_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_174();
    l0 = self.box_EntityStatusListener_171;
    l1 = self.box_EntityStatusListener_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|535506797", "535506797", "MarkerRoad", "box_EntityStatusListener_171.Loaded", "box_EntityStatusListener_174.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_213_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_214();
    l0 = self.box_EntityStatusListener_213;
    l1 = self.box_ProximityTrigger_v2_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|867369249", "867369249", "MarkerRoad", "box_EntityStatusListener_213.Loaded", "box_ProximityTrigger_v2_214.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_271_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_271;
    l1 = self.box_MultipleOR_266;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|808422626", "808422626", "MarkerRoad", "box_EntityStatusListener_271.Unloaded", "box_MultipleOR_266.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_78_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_Delay_v5_78;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1279822332", "1279822332", "MarkerRoad", "box_Delay_v5_78.TimeElapsed", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_270_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_269();
    l0 = self.box_EntityStatusListener_269;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|608175984", "608175984", "MarkerRoad", "box_OutputOrder_v2_270.Out", "box_EntityStatusListener_269.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_270_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_268();
    l0 = self.box_EntityStatusListener_268;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|541738223", "541738223", "MarkerRoad", "box_OutputOrder_v2_270.Out", "box_EntityStatusListener_268.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StimsEmitter_v2_239_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|698594057", "698594057", "MarkerRoad", "box_StimsEmitter_v2_239.Enabled", "box_Delay_v5_26.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_110_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_128();
    l0 = self.box_ProximityRadiusListener_v3_110;
    l1 = self.box_SoundModifier_v2_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1259421596", "1259421596", "MarkerRoad", "box_ProximityRadiusListener_v3_110.SomeoneNear", "box_SoundModifier_v2_128.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_136_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_134();
    l0 = self.box_ProximityTrigger_v2_136;
    l1 = self.box_SpawnAI_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|225914608", "225914608", "MarkerRoad", "box_ProximityTrigger_v2_136.Enter", "box_SpawnAI_134.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_265_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_256();
    l0 = self.box_MultipleOR_265;
    l1 = self.box_Gate_v3_256;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|554692242", "554692242", "MarkerRoad", "box_MultipleOR_265.Out", "box_Gate_v3_256.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v2_20_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v2_69();
    l0 = self.box_Reach_GoTo_v2_20;
    l1 = self.box_Reach_GoTo_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|897075940", "897075940", "MarkerRoad", "box_Reach_GoTo_v2_20.Success", "box_Reach_GoTo_v2_69.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_42_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_101();
    l0 = self.box_Delay_v5_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|862424622", "862424622", "MarkerRoad", "box_ParticleSystem_v3_42.Started", "box_Delay_v5_101.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_274_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_267();
    l0 = self.box_EntityStatusListener_274;
    l1 = self.box_RemoveEntity_v2_267;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|980289846", "980289846", "MarkerRoad", "box_EntityStatusListener_274.Loaded", "box_RemoveEntity_v2_267.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v2_41();
    l0 = self.box_Reach_GoTo_v2_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1522217743", "1522217743", "MarkerRoad", "box_OutputOrder_v2_102.Out", "box_Reach_GoTo_v2_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_19();
    l0 = self.box_EntityStatusListener_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|23371259", "23371259", "MarkerRoad", "box_OutputOrder_v2_102.Out", "box_EntityStatusListener_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_102_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_313();
    l0 = self.box_EntityStatusListener_313;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|738624349", "738624349", "MarkerRoad", "box_OutputOrder_v2_102.Out", "box_EntityStatusListener_313.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_181_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_226();
    l0 = self.box_PlayDialog_v6_181;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1931622950", "1931622950", "MarkerRoad", "box_PlayDialog_v6_181.Finished", "box_OutputOrder_v2_226.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_88_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_85();
    l0 = self.box_EntityStatusListener_88;
    l1 = self.box_EntityStatusListener_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1493048985", "1493048985", "MarkerRoad", "box_EntityStatusListener_88.Loaded", "box_EntityStatusListener_85.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_238_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_333();
    l0 = self.box_Delay_v5_238;
    l1 = self.box_Music_Quest_v2_333;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|262144591", "262144591", "MarkerRoad", "box_Delay_v5_238.TimeElapsed", "box_Music_Quest_v2_333.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_25_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_7();
    l0 = self.box_Delay_v5_25;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|707891845", "707891845", "MarkerRoad", "box_Delay_v5_25.TimeElapsed", "box_HealthModifier_v2_7.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_132_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_131();
    l0 = self.box_Delay_v5_132;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1408404321", "1408404321", "MarkerRoad", "box_Delay_v5_132.TimeElapsed", "box_VehicleModifier_v2_131.SetExplosion", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExplosion
    l1:Exec(17, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_43_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_4();
    l0 = self.box_EntityStatusListener_43;
    l1 = self.box_ProximityTrigger_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|14898521", "14898521", "MarkerRoad", "box_EntityStatusListener_43.Loaded", "box_ProximityTrigger_v2_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_221_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_222();
    l0 = self.box_PlayDialog_v6_221;
    l1 = self.box_PlayDialog_v6_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|133579512", "133579512", "MarkerRoad", "box_PlayDialog_v6_221.Finished", "box_PlayDialog_v6_222.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_98_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_115();
    l0 = self.box_ProximityRadiusListener_v3_98;
    l1 = self.box_SoundModifier_v2_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1752107839", "1752107839", "MarkerRoad", "box_ProximityRadiusListener_v3_98.SomeoneNear", "box_SoundModifier_v2_115.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PostFx_v3_8_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_284();
    l0 = self.box_PostFx_v3_8;
    l1 = self.box_PostFx_v3_284;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2114082875", "2114082875", "MarkerRoad", "box_PostFx_v3_8.Disabled", "box_PostFx_v3_284.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PostFx_v3_8_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_99();
    l0 = self.box_PostFx_v3_8;
    l1 = self.box_Delay_v5_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|399031952", "399031952", "MarkerRoad", "box_PostFx_v3_8.Enabled", "box_Delay_v5_99.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_3_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_107();
    l0 = self.box_Delay_v5_3;
    l1 = self.box_PostFx_v3_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1522811153", "1522811153", "MarkerRoad", "box_Delay_v5_3.TimeElapsed", "box_PostFx_v3_107.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_282_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_9();
    l0 = self.box_EntityStatusListener_282;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1980358577", "1980358577", "MarkerRoad", "box_EntityStatusListener_282.Loaded", "box_ParticleSystem_v3_9.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v2_17_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v2_33();
    l0 = self.box_Reach_GoTo_v2_17;
    l1 = self.box_Reach_GoTo_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|67026715", "67026715", "MarkerRoad", "box_Reach_GoTo_v2_17.Success", "box_Reach_GoTo_v2_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_198_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_199();
    l0 = self.box_ProximityTrigger_v2_198;
    l1 = self.box_PlayDialog_v6_199;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|287477905", "287477905", "MarkerRoad", "box_ProximityTrigger_v2_198.Enter", "box_PlayDialog_v6_199.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_162_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_163();
    l0 = self.box_EntityStatusListener_162;
    l1 = self.box_EntityStatusListener_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1601109600", "1601109600", "MarkerRoad", "box_EntityStatusListener_162.Enabled", "box_EntityStatusListener_163.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_162_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_164();
    l0 = self.box_EntityStatusListener_162;
    l1 = self.box_RemoveEntity_v2_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1560561970", "1560561970", "MarkerRoad", "box_EntityStatusListener_162.Loaded", "box_RemoveEntity_v2_164.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_163_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_165();
    l0 = self.box_EntityStatusListener_163;
    l1 = self.box_EntityStatusListener_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|859063942", "859063942", "MarkerRoad", "box_EntityStatusListener_163.Enabled", "box_EntityStatusListener_165.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_163_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_161();
    l0 = self.box_EntityStatusListener_163;
    l1 = self.box_RemoveEntity_v2_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|350672515", "350672515", "MarkerRoad", "box_EntityStatusListener_163.Loaded", "box_RemoveEntity_v2_161.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_229_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_227();
    l0 = self.box_PlayDialog_v6_227;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1847035375", "1847035375", "MarkerRoad", "box_OutputOrder_v2_229.Out", "box_PlayDialog_v6_227.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_229_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_228();
    l0 = self.box_PlayDialog_v6_228;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1006820933", "1006820933", "MarkerRoad", "box_OutputOrder_v2_229.Out", "box_PlayDialog_v6_228.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_74_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_77();
    l0 = self.box_EntityStatusListener_74;
    l1 = self.box_EntityStatusListener_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|828189372", "828189372", "MarkerRoad", "box_EntityStatusListener_74.Loaded", "box_EntityStatusListener_77.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_184_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_190();
    l0 = self.box_ProximityTrigger_v2_184;
    l1 = self.box_PlayDialog_v6_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1359005704", "1359005704", "MarkerRoad", "box_ProximityTrigger_v2_184.Enter", "box_PlayDialog_v6_190.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v2_58_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v2_140();
    l0 = self.box_Reach_GoTo_v2_58;
    l1 = self.box_Reach_GoTo_v2_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|347332464", "347332464", "MarkerRoad", "box_Reach_GoTo_v2_58.Success", "box_Reach_GoTo_v2_140.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_170_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_8();
    l0 = self.box_PostFx_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|739849646", "739849646", "MarkerRoad", "box_OutputOrder_v2_170.Out", "box_PostFx_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_170_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_281();
    l0 = self.box_EntityStatusListener_281;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1540604403", "1540604403", "MarkerRoad", "box_OutputOrder_v2_170.Out", "box_EntityStatusListener_281.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_170_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_246();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|697163404", "697163404", "MarkerRoad", "box_OutputOrder_v2_170.Out", "box_Simple_Node_246.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_216();
    l0 = self.box_PlayDialog_v6_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1867768273", "1867768273", "MarkerRoad", "box_OutputOrder_v2_56.Out", "box_PlayDialog_v6_216.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_187();
    l0 = self.box_PlayDialog_v6_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|275849425", "275849425", "MarkerRoad", "box_OutputOrder_v2_56.Out", "box_PlayDialog_v6_187.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_226_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_185();
    l0 = self.box_PlayDialog_v6_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1518184247", "1518184247", "MarkerRoad", "box_OutputOrder_v2_226.Out", "box_PlayDialog_v6_185.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_226_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_238();
    l0 = self.box_Delay_v5_238;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|37806005", "37806005", "MarkerRoad", "box_OutputOrder_v2_226.Out", "box_Delay_v5_238.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_226_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_225();
    l0 = self.box_PlayDialog_v6_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|368073210", "368073210", "MarkerRoad", "box_OutputOrder_v2_226.Out", "box_PlayDialog_v6_225.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_49_SPOut__rumble_()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_291();
    l0 = self.box_PlaySequence_v8_49;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|954875370", "954875370", "MarkerRoad", "box_PlaySequence_v8_49.SPOut", "box_CameraShakeAndRumble_V2_291.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_64_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_49();
    l0 = self.box_ProximityTrigger_v2_64;
    l1 = self.box_PlaySequence_v8_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1703047079", "1703047079", "MarkerRoad", "box_ProximityTrigger_v2_64.Enter", "box_PlaySequence_v8_49.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_304_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_302();
    l0 = self.box_ProximityTrigger_v2_304;
    l1 = self.box_PlaySequence_v8_302;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1356187417", "1356187417", "MarkerRoad", "box_ProximityTrigger_v2_304.Enter", "box_PlaySequence_v8_302.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_111_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_115();
    l0 = self.box_Delay_v5_111;
    l1 = self.box_SoundModifier_v2_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|425370875", "425370875", "MarkerRoad", "box_Delay_v5_111.TimeElapsed", "box_SoundModifier_v2_115.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_101_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_170();
    l0 = self.box_Delay_v5_101;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1492447557", "1492447557", "MarkerRoad", "box_Delay_v5_101.TimeElapsed", "box_OutputOrder_v2_170.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_159_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_87();
    l0 = self.box_ProximityTrigger_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1141806672", "1141806672", "MarkerRoad", "box_OutputOrder_v2_159.Out", "box_ProximityTrigger_v2_87.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_159_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_39();
    l0 = self.box_PlaySequence_v8_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1999666170", "1999666170", "MarkerRoad", "box_OutputOrder_v2_159.Out", "box_PlaySequence_v8_39.PlayFromStart", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayFromStart
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_190_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_191();
    l0 = self.box_PlayDialog_v6_190;
    l1 = self.box_PlayDialog_v6_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1293624715", "1293624715", "MarkerRoad", "box_PlayDialog_v6_190.Finished", "box_PlayDialog_v6_191.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_55_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_62();
    l0 = self.box_EntityStatusListener_55;
    l1 = self.box_EntityStatusListener_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1319497322", "1319497322", "MarkerRoad", "box_EntityStatusListener_55.Loaded", "box_EntityStatusListener_62.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_NarrativeSceneCleanUp_V2_334_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_300();
    l0 = self.box_NarrativeSceneCleanUp_V2_334;
    l1 = self.box_RequestPhoneCall_v2_300;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1457870014", "1457870014", "MarkerRoad", "box_NarrativeSceneCleanUp_V2_334.Out", "box_RequestPhoneCall_v2_300.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_263_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_260();
    l0 = self.box_EntityStatusListener_260;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1995041781", "1995041781", "MarkerRoad", "box_OutputOrder_v2_263.Out", "box_EntityStatusListener_260.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_263_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_259();
    l0 = self.box_EntityStatusListener_259;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|765196784", "765196784", "MarkerRoad", "box_OutputOrder_v2_263.Out", "box_EntityStatusListener_259.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_57_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_43();
    l0 = self.box_EntityStatusListener_57;
    l1 = self.box_EntityStatusListener_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|562378878", "562378878", "MarkerRoad", "box_EntityStatusListener_57.Loaded", "box_EntityStatusListener_43.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_32_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_ProximityTrigger_v2_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|190094424", "190094424", "MarkerRoad", "box_ProximityTrigger_v2_32.Enter", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_245");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|@Bird_Impact_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_245_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_337()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_337");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|@Car_explosion_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_337_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_246");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|@Nucealr_Blast_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_246_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_335()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_335");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|@Nuclear_Wind_Blast");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_335_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_285()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_285");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|@Start_Stuff");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_285_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_300()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "336746790",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103682027776675506",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|31538149");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104285203401832508",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_151()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2104851144604950569",
        -- SequenceFile,
        [4] = "sequences/zeta_main/fc5_activities/fc5_activities_lieutenants/Father/father_010_b20_extra_tree_5.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_52()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103674438034730432",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|69880913");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
                [3] = self.f_box_OutputOrder_v2_1_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|73558708");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_134()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103969656522969498",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|80661994");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [2] = self.f_box_OutputOrder_v2_65_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_312()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105305898271416808",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_51()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104271992642382282",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_308()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2105131069381551812",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_53()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2103675829597894533",
        -- eTrigger,
        [7] = "2103675838703728521",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "FATHER_010_B20_ReachHomeBase",
            id = "570102",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_177()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104339811096624956",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_59()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2104274190581400423",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/CIN_Father_010_B20_Tree15M/cin_father_010_b20_tree15m.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_166()
    local params;
    params = {
        -- Group,
        [0] = "2099821029466577327",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_19()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103498828719094384",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_4()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104051586901808077",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_242");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|114524767");
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
                [0] = self.f_box_OutputOrder_v2_242_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|119894848");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_307()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2105130735099745798",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_172()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104324213992104598",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_287()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_287");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|151062810");
    l0:SetConnections({
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 0.5,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_235()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104352990222647295",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_79()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104274283804001137",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_284()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "heat_distortion",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_222()
    local params;
    params = {
        -- Group,
        [0] = "2104757906321731616",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "144035856",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_41()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2102641439874749472",
        -- eTrigger,
        [7] = "2103497766947791151",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "FATHER_010_B20_ReachHomeBase",
            id = "570102",
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_27()
    local params;
    params = {
        -- Group,
        [0] = "2104757906321731616",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4115565292",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|241773435");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2103969668051014111",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_231()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103497955779551563",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_220()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104352709416091614",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_45()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099821048089287092",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_267()
    local params;
    params = {
        -- Group,
        [0] = "2099821495518767045",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_224()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104352768880836585",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_44()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103682027776675506",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|279205143");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103980102384660431",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_99()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_319()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_319");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|292175297");
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
                [0] = self.f_box_OutputOrder_v2_319_Out_0,
                [1] = self.f_box_OutputOrder_v2_319_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_186()
    local params;
    params = {
        -- Group,
        [0] = "2104757873497108214",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1426030367",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_103()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_26()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_197()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104341790539694484",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_140()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2104050960130153753",
        -- eTrigger,
        [7] = "2104050948518223125",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "FATHER_010_B20_ReachHomeBase",
            id = "570102",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_214()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104352679026261971",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_85()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103870946151595270",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_286()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104854402830463373",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_137()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103969949310534232",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_273()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104274288048636788",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_84()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104274190581400423",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_50()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103841198270589543",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|419710507");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_129()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_100()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104851574944735335",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_275()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104853393185998430",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_257()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|451640474");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
                [2] = self.f_box_OutputOrder_v2_31_Out_2,
            },
            count = 3,
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
        [0] = "2104757918829146366",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3915179189",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_76()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103870783444057331",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_255()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_288()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_288");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|517143886");
    l0:SetConnections({
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 0.5,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_326()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_326");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|525579652");
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
                [0] = self.f_box_OutputOrder_v2_326_Out_0,
                [1] = self.f_box_OutputOrder_v2_326_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_330()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenwithfadeoutfx",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_34()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2104274184594031461",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/CIN_Father_010_B20_Tree15M/cin_father_010_b20_tree15m.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103675056577148703",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_227()
    local params;
    params = {
        -- Group,
        [0] = "2104757906321731616",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "762144174",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|563409074");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_153_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_16()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2103497983430500699",
        -- eTrigger,
        [7] = "2103497942059983167",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "FATHER_010_B20_ReachHomeBase",
            id = "570102",
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_268()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104274194794578796",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|581277594");
    l0:SetConnections({
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_201()
    local params;
    params = {
        -- Group,
        [0] = "2104757906321731616",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3221510254",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_302()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2105127466975655073",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/fc5_activities/fc5_activities_lieutenants/father/father_010_b20_extra_tree_6.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_331()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_228()
    local params;
    params = {
        -- Group,
        [0] = "2104757918829146366",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1330988094",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|622043584");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceVehicleCrash_130_Out,
    });
    params = {
        -- vehicle,
        [2] = "2103969668051014111",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_191()
    local params;
    params = {
        -- Group,
        [0] = "2104757873497108214",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3150851069",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_281()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104285203401832508",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_297()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_297");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|655812436");
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
                [0] = self.f_box_OutputOrder_v2_297_Out_0,
                [1] = self.f_box_OutputOrder_v2_297_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_320()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_320");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|665009846");
    l0:SetConnections({
    });
    params = {
        -- exposure,
        [5] = "FCZ_Default:Special.FatherShowdown_Fire_End_Exposure",
        -- fog,
        [6] = "FCZ_Default:Special.FatherShowdown_Fire_End_Fog",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 3,
        -- wind,
        [14] = "FCZ_Default:Special.FatherShowdown_Fire_End_Wind",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_241()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "565196050",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_296()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_296");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|676749009");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104853655082534496",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_316()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104518807469960402",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_237()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2802339378",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_199()
    local params;
    params = {
        -- Group,
        [0] = "2104757918829146366",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1539997290",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_332()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_332");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|692196311");
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
                [0] = self.f_box_OutputOrder_v2_332_Out_0,
                [1] = self.f_box_OutputOrder_v2_332_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|709675747");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_138()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2104851142824468519",
        -- SequenceFile,
        [4] = "sequences/zeta_main/fc5_activities/fc5_activities_lieutenants/Father/father_010_b20_extra_tree_4.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_259()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104274194404508522",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_219()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104352709416091614",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_183()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104339835989819207",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_90()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2104851138550472739",
        -- SequenceFile,
        [4] = "sequences/zeta_main/fc5_activities/fc5_activities_lieutenants/Father/father_010_b20_extra_tree_2.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_283()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2104771471655071507",
        -- SequenceFile,
        [4] = "sequences/zeta_main/fc5_activities/fc5_activities_lieutenants/Father/father_010_b20_deadbirds.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_133()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_40()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104771471655071507",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_240()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "337498877",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_329()
    local params;
    params = {
        -- Pawns,
        [0] = "2105874544538474078",
        -- SoundId,
        [1] = "4062771851",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_10()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- nbLoop,
        [1] = 4,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_279()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_279");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|807224336");
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
                [0] = self.f_box_OutputOrder_v2_279_Out_0,
                [1] = self.f_box_OutputOrder_v2_279_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_260()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104274184594031461",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_324()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_295()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_295");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|825063914");
    l0:SetConnections({
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 0.5,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_23()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103498828719094384",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_278()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104853655082534496",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_234()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104352990222647295",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_114()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "2104105343144446007",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104105479945865427",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_54()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103497937720975675",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_290()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_290");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|871447439");
    l0:SetConnections({
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 0.5,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_200()
    local params;
    params = {
        -- Group,
        [0] = "2104757873497108214",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3110544463",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|891622881");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_109_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104271992642382282",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_225()
    local params;
    params = {
        -- Group,
        [0] = "2104757912309100664",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3683391475",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_210()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104342498244641609",
    };
    return params;
end;

function export:OnEnter_box_WindBlast_244()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/WindBlast.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WindBlast_244");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|926726875");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_WindBlast_244_Out,
    });
    params = {
        -- AnimationScale,
        [0] = 1.3,
        -- EaseInTime,
        [1] = 3,
        -- EaseOutTime,
        [2] = 5,
        -- TimeScale,
        [3] = 7,
        -- WindDirection,
        [4] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_182()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104337963642027838",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_160()
    local params;
    params = {
        -- Group,
        [0] = "2099821048089287092",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_165()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099821029466577327",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_333()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 13,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1356172451",
        -- StopEvent,
        [7] = "2665284510",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_94()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2104851141614411813",
        -- SequenceFile,
        [4] = "sequences/zeta_main/fc5_activities/fc5_activities_lieutenants/Father/father_010_b20_extra_tree_3.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_254()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_250()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104274077947560801",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_243()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- nbLoop,
        [1] = 4,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_216()
    local params;
    params = {
        -- Group,
        [0] = "2104757918829146366",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4095350520",
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
        [2] = "2103870783444057331",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_204()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104342456236589893",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1047067788");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104282844311342238",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_305()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105130735099745798",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_299()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_299");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1048756509");
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
                [0] = self.f_box_OutputOrder_v2_299_Out_0,
                [1] = self.f_box_OutputOrder_v2_299_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_81()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103870946151595270",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_158()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2104274077947560801",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/CIN_Father_010_B20_Tree15M/cin_father_010_b20_tree15m.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_298()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_107()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "nuclearexplosion",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_291()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_291");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1059331757");
    l0:SetConnections({
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 0.5,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_105()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104853123727118479",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_223()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104352768880836585",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_230()
    local params;
    params = {
        -- Group,
        [0] = "2104757873497108214",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4140139952",
    };
    return params;
end;

function export:OnEnter_box_WindBlast_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/WindBlast.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WindBlast_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1093255936");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_WindBlast_14_Out,
    });
    params = {
        -- AnimationScale,
        [0] = 1.3,
        -- EaseInTime,
        [1] = 3,
        -- EaseOutTime,
        [2] = 5,
        -- TimeScale,
        [3] = 7,
        -- WindDirection,
        [4] = 40,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_115()
    local params;
    params = {
        -- Pawns,
        [0] = "2104105343146543161",
        -- SoundId,
        [1] = "2117096923",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_80()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104274288048636788",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1108961837");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceVehicleCrash_112_Out,
    });
    params = {
        -- steeringWheel,
        [1] = -1,
        -- vehicle,
        [2] = "2104105343146543161",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_187()
    local params;
    params = {
        -- Group,
        [0] = "2104757906321731616",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4051113716",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1113314356");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2103499325295352776",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_315()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104518807469960402",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_18()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2103497996468494691",
        -- eTrigger,
        [7] = "2103497954384945479",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "FATHER_010_B20_ReachHomeBase",
            id = "570102",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1162113285");
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
                [0] = self.f_box_OutputOrder_v2_96_Out_0,
                [1] = self.f_box_OutputOrder_v2_96_Out_1,
                [2] = self.f_box_OutputOrder_v2_96_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_232()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103497955779551563",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_47()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2103497970835005779",
        -- eTrigger,
        [7] = "2103497927224729907",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "FATHER_010_B20_ReachHomeBase",
            id = "570102",
        },
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_91()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_33()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2104051298438539865",
        -- eTrigger,
        [7] = "2104051298436442709",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "FATHER_010_B20_ReachHomeBase",
            id = "570102",
        },
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_256()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_193()
    local params;
    params = {
        -- Group,
        [0] = "2104757873497108214",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1685043473",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_215()
    local params;
    params = {
        -- Group,
        [0] = "2104757918829146366",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3153539164",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_310()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_310");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1216348627");
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
                [0] = self.f_box_OutputOrder_v2_310_Out_0,
                [1] = self.f_box_OutputOrder_v2_310_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_135()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103969656522969498",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_69()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2103498035462939028",
        -- eTrigger,
        [7] = "2103498773895346722",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "FATHER_010_B20_ReachHomeBase",
            id = "570102",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_212()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104342511809020749",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_249()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104274031866839904",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_318()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_318");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1258486298");
    l0:SetConnections({
    });
    params = {
        -- exposure,
        [5] = "FCZ_Default:Special.FatherShowdown_Fire_Mid_Exposure",
        -- fog,
        [6] = "FCZ_Default:Special.FatherShowdown_Fire_Mid_Fog",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 3,
        -- wind,
        [14] = "FCZ_Default:Special.FatherShowdown_Fire_Mid_Wind",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_277()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2103499325295352776",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_206()
    local params;
    params = {
        -- Group,
        [0] = "2104757873497108214",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "512241415",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_208()
    local params;
    params = {
        -- Group,
        [0] = "2104757873497108214",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "909793406",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_292()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_292");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1301851944");
    l0:SetConnections({
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 0.5,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_236()
    local params;
    params = {
        -- Group,
        [0] = "2104757873497108214",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "378966341",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_289()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_289");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1308669072");
    l0:SetConnections({
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 0.5,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_203()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104342358492529466",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_276()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_276");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1319256552");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104853393185998430",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_63()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103674438034730432",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_164()
    local params;
    params = {
        -- Group,
        [0] = "2100970327849839524",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_167()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099821018672535979",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_194()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104851679324184690",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_39()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2104274283804001137",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/CIN_Father_010_B20_Tree15M/cin_father_010_b20_tree15m.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1345005600");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104337963642027838",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_150()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104838150158324442",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_73()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103497937720975675",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_313()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2105305898271416808",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_174()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104324213992104598",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_252()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_252");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1429786958");
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
                [0] = self.f_box_OutputOrder_v2_252_Out_0,
                [1] = self.f_box_OutputOrder_v2_252_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_87()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103871184159472946",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_309()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101950081929334416",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_185()
    local params;
    params = {
        -- Group,
        [0] = "2104757906321731616",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "800177440",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_248()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099821501013305289",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_209()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104342498244641609",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_97()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104105479945865427",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_83()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103871184159472946",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_192()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104341347308716387",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_92()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104851413730369621",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_211()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104342511809020749",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_293()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_293");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1506501057");
    l0:SetConnections({
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 0.5,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_89()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103681998359924392",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_280()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_323()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_323");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1553279986");
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
                [0] = self.f_box_OutputOrder_v2_323_Out_0,
                [1] = self.f_box_OutputOrder_v2_323_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_202()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104342358492529466",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_258()
    local params;
    params = {
        -- Group,
        [0] = "2099821501013305289",
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
        [2] = "2104274077947560801",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_77()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104274194404508522",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_179()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101950099704794779",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1607296468");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_128()
    local params;
    params = {
        -- Pawns,
        [0] = "2103969668051014111",
        -- SoundId,
        [1] = "2117096923",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_207()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104342456236589893",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104838150158324442",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_161()
    local params;
    params = {
        -- Group,
        [0] = "2101135580061503067",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_294()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_294");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1629703142");
    l0:SetConnections({
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 0.5,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_113()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104105343146543161",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_93()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103675048050128433",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_180()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104339811096624956",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_188()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104341347308716387",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_205()
    local params;
    params = {
        -- Group,
        [0] = "2104757873497108214",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3375092959",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_62()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103841198270589543",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_269()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104274190581400423",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_272()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_272");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1667839386");
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
                [0] = self.f_box_OutputOrder_v2_272_Out_0,
                [1] = self.f_box_OutputOrder_v2_272_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1679705280");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "2103674443067895436",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_142()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2104050967040269597",
        -- eTrigger,
        [7] = "2104051008553393441",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "FATHER_010_B20_ReachHomeBase",
            id = "570102",
        },
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_301()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2103499325295352776",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1701418412");
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
                [0] = self.f_box_OutputOrder_v2_70_Out_0,
                [1] = self.f_box_OutputOrder_v2_70_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_68()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2103497991911383391",
        -- eTrigger,
        [7] = "2103497949804765507",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "FATHER_010_B20_ReachHomeBase",
            id = "570102",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1722200792");
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
                [0] = self.f_box_OutputOrder_v2_176_Out_0,
                [1] = self.f_box_OutputOrder_v2_176_Out_1,
                [2] = self.f_box_OutputOrder_v2_176_Out_2,
                [3] = self.f_box_OutputOrder_v2_176_Out_3,
                [5] = self.f_box_OutputOrder_v2_176_Out_5,
                [6] = self.f_box_OutputOrder_v2_176_Out_6,
                [7] = self.f_box_OutputOrder_v2_176_Out_7,
                [8] = self.f_box_OutputOrder_v2_176_Out_8,
                [9] = self.f_box_OutputOrder_v2_176_Out_9,
                [10] = self.f_box_OutputOrder_v2_176_Out_10,
                [11] = self.f_box_OutputOrder_v2_176_Out_11,
                [12] = self.f_box_OutputOrder_v2_176_Out_12,
                [13] = self.f_box_OutputOrder_v2_176_Out_13,
            },
            count = 15,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_171()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103980102384660431",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_213()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104352679026261971",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_271()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104274283804001137",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_78()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_270()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_270");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1753247420");
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
                [0] = self.f_box_OutputOrder_v2_270_Out_0,
                [1] = self.f_box_OutputOrder_v2_270_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_239()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1753780434");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_239_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2104674910874921890",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_110()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2103499325295352776",
        -- id2,
        [3] = "2103969668051014111",
        -- nearZone,
        [4] = 50,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_136()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103969949310534232",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_189()
    local params;
    params = {
        -- Group,
        [0] = "2104757873497108214",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3664236380",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_20()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2103498006822134119",
        -- eTrigger,
        [7] = "2103497955779551563",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "FATHER_010_B20_ReachHomeBase",
            id = "570102",
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_218()
    local params;
    params = {
        -- Group,
        [0] = "2104757906321731616",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4146692516",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1823484014");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_42_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104272060510415308",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_274()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099821495518767045",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1836342699");
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
                [0] = self.f_box_OutputOrder_v2_102_Out_0,
                [1] = self.f_box_OutputOrder_v2_102_Out_1,
                [2] = self.f_box_OutputOrder_v2_102_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_181()
    local params;
    params = {
        -- Group,
        [0] = "2104757918829146366",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "415756705",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_306()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_306");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1857280998");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2105131069381551812",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_88()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104274194794578796",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_238()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_25()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5.5,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_168()
    local params;
    params = {
        -- Group,
        [0] = "2099821018672535979",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_303()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_303");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1860939665");
    l0:SetConnections({
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 0.5,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_132()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_43()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104272060510415308",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_221()
    local params;
    params = {
        -- Group,
        [0] = "2104757918829146366",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1728169231",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_98()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2103499325295352776",
        -- id2,
        [3] = "2104105343146543161",
        -- nearZone,
        [4] = 50,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_8()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "nuclearexplosion",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_3()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_22()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2100206431929130315",
        -- eTrigger,
        [7] = "2103498828719094384",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "FATHER_010_B20_ReachHomeBase",
            id = "570102",
        },
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1984762073");
    l0:SetConnections({
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_282()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104282844311342238",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_17()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2103497978028237143",
        -- eTrigger,
        [7] = "2103970924991687727",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "FATHER_010_B20_ReachHomeBase",
            id = "570102",
        },
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|1999273936");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2104105343146543161",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_198()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104341790539694484",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_162()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100970327849839524",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_163()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101135580061503067",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2034307129");
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

function export:OnEnter_box_EntityStatusListener_74()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104274184594031461",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_184()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104339835989819207",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_58()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2103675696560863103",
        -- eTrigger,
        [7] = "2103675705037551491",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "FATHER_010_B20_ReachHomeBase",
            id = "570102",
        },
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2041853091");
    l0:SetConnections({
    });
    l0 = self.box_ProximityTrigger_v2_286;
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 0.5,
        -- pawns,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2049021219");
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
                [0] = self.f_box_OutputOrder_v2_170_Out_0,
                [1] = self.f_box_OutputOrder_v2_170_Out_1,
                [2] = self.f_box_OutputOrder_v2_170_Out_2,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2055040027");
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

function export:OnEnter_box_OutputOrder_v2_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2056827892");
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
                [0] = self.f_box_OutputOrder_v2_226_Out_0,
                [1] = self.f_box_OutputOrder_v2_226_Out_1,
                [2] = self.f_box_OutputOrder_v2_226_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_49()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2104851132479217697",
        -- SequenceFile,
        [4] = "sequences/zeta_main/fc5_activities/fc5_activities_lieutenants/Father/father_010_b20_extra_tree_1.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_64()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104851300798734408",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_304()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105128855464322757",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_111()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_101()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2099606354");
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
                [0] = self.f_box_OutputOrder_v2_159_Out_0,
                [1] = self.f_box_OutputOrder_v2_159_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_190()
    local params;
    params = {
        -- Group,
        [0] = "2104757906321731616",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "117974421",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_55()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104274031866839904",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_334()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGFHDisabled,
        [1] = true,
        -- KeepGodMode,
        [2] = false,
        -- KeepHUDMode,
        [3] = false,
        -- KeepWeaponHolstered,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_263()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_263");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B20.domino|@MarkerRoad|2114529389");
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
                [0] = self.f_box_OutputOrder_v2_263_Out_0,
                [1] = self.f_box_OutputOrder_v2_263_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_233()
    local params;
    params = {
        -- Group,
        [0] = "2104757873497108214",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1688949315",
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
        [2] = "2104051586901808077",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_32()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103681998359924392",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_153_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Player = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Time_Elapsed()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="StopTimer" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Time_Elapsed" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
