LUAC�
 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_050/lt02_050_b40.domino
-- User graph: LT02_050_B40_main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Heal_Target.Brick_Revive_Target_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/CameraShakeAndRumble_V2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TaggingModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_050/LT02_050_B40.LT02_050_B40_CamShake.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1841512287.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2775559492.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3484999458.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4206728942.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2735559691.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3965725859.bnk]], "CSoundResource");
        cboxRes:LoadResource([[631286123.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3412380687.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1486568226.bnk]], "CSoundResource");
        cboxRes:LoadResource([[74376852.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3820782692.bnk]], "CSoundResource");
        cboxRes:LoadResource([[127619059.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4225027819.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2602558439.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2258571098.bnk]], "CSoundResource");
        cboxRes:LoadResource([[928151078.bnk]], "CSoundResource");
        cboxRes:LoadResource([[15889115.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3555743869.bnk]], "CSoundResource");
        cboxRes:LoadResource([[937376037.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2213701168.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2123435015.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3928580550.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1523996765.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1038783366.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3491282602.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_050/LT02_050_B40.LT02_050_B40_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Heal_Target.Brick_Revive_Target_v2.debug.lua")] = {
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
                name = "Fail",
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
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bIsCharacterPersistent",
                type = "bool",
            },
            [2] = {
                name = "bMultipleTargets",
                type = "bool",
            },
            [3] = {
                name = "bObjectiveProgress",
                type = "bool",
            },
            [4] = {
                name = "e_Target",
                type = "entity",
            },
            [5] = {
                name = "o_TargetName",
                type = "oasis",
            },
            [6] = {
                name = "opt_MobileMarker",
                type = "entity",
            },
            [7] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 8,
        dataOut = {
            [0] = {
                name = "e_RevivedTarget",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua")] = {
        stateless = false,
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Hour",
                type = "int",
            },
            [1] = {
                name = "Minute",
                type = "int",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener.lua")] = {
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
                type = "string",
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
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/FastTravelModifier_v2.lua")] = {
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
        },
        dataInCount = 0,
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
    metadataTable[GetPathID("Domino/System/GFHSystemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableGFHSystem",
            },
            [1] = {
                name = "EnableGFHSystem",
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
                name = "enableAfterBeat",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua")] = {
        stateless = false,
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
            [3] = {
                name = "Enable",
            },
        },
        controlInCount = 4,
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
            [3] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
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
    metadataTable[GetPathID("Domino/System/Player/PhoneCallExclusivityModifier.lua")] = {
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
    metadataTable[GetPathID("Domino/System/RandomFloat_v2.lua")] = {
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
                name = "Max",
                type = "float",
            },
            [1] = {
                name = "Min",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/SoundPointModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "soundPoint",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/TaggingModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "TagEntity",
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
                name = "Tagged",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "Pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")] = {
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
        },
        dataInCount = 0,
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
            [5] = {
                name = "usageType",
                type = "string",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UniversalInterationListener.lua")] = {
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
                name = "Interacted",
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
                name = "usableEntityId",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "entityInteracted",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_050/LT02_050_B40.LT02_050_B40_CamShake.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "StopListening",
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
                name = "e_ProxyTrigger",
                type = "entity",
            },
            [1] = {
                name = "gp_Players",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "LT02_050_B40_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main";
    self.Player_Group = nil;
    self.e_Pratt = nil;
    self.e_Waypoint = nil;
    self.b_PrattDowned = false;
    self.i_WaypointIndex = 0;
    self.box_EntityStatusListener_115 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|22709510");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_115_Loaded,
    });
    self.box_NavLinkModifier_179 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|23063732");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_155 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|27358956");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_155_Finished,
    });
    self.box_Delay_v5_380 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_380;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_380");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|35679949");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_380_TimeElapsed,
    });
    self.box_EntityStatusListener_292 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_292;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_292");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|47188563");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_292_Loaded,
    });
    self.box_EntityStatusListener_101 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|51316336");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_101_Loaded,
    });
    self.box_Gate_v3_433 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_433;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_433");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|57591429");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_433_Out,
    });
    self.box_LT02_050_B40_CamShake_160 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_050/LT02_050_B40.LT02_050_B40_CamShake.debug.lua");
    l0 = self.box_LT02_050_B40_CamShake_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_050_B40_CamShake_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|58417083");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LT02_050_B40_CamShake_160_Out,
    });
    self.box_SoundModifier_v2_372 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_372;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_372");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|62048160");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_372_Started,
    });
    self.box_SpawnAI_83 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|68229987");
    l0:SetConnections({
    });
    self.box_MultipleOR_119 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|83610296");
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
        [0] = self.f_box_MultipleOR_119_Out,
    });
    self.box_BaseMissionBlock_v2_216 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|93444698");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_286 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_286;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_286");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|97495715");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_286_Loaded,
    });
    self.box_Switch_128 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|106575334");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_128_Output_0,
                [1] = self.f_box_Switch_128_Output_1,
                [2] = self.f_box_Switch_128_Output_2,
                [3] = self.f_box_Switch_128_Output_3,
            },
            count = 4,
        },
    });
    self.box_Switch_329 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_329;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_329");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|112565978");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 13,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_329_Output_0,
                [1] = self.f_box_Switch_329_Output_1,
                [2] = self.f_box_Switch_329_Output_2,
                [3] = self.f_box_Switch_329_Output_3,
                [4] = self.f_box_Switch_329_Output_4,
                [5] = self.f_box_Switch_329_Output_5,
                [6] = self.f_box_Switch_329_Output_6,
            },
            count = 13,
        },
    });
    self.box_IndexList_v2_387 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_387;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_387");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|115293766");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 9,
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
                [0] = self.f_box_IndexList_v2_387_Output_0,
                [1] = self.f_box_IndexList_v2_387_Output_1,
                [2] = self.f_box_IndexList_v2_387_Output_2,
                [3] = self.f_box_IndexList_v2_387_Output_3,
                [4] = self.f_box_IndexList_v2_387_Output_4,
                [5] = self.f_box_IndexList_v2_387_Output_5,
                [6] = self.f_box_IndexList_v2_387_Output_6,
                [7] = self.f_box_IndexList_v2_387_Output_7,
                [8] = self.f_box_IndexList_v2_387_Output_8,
            },
            count = 9,
        },
    });
    self.box_SoundModifier_v2_42 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|128805870");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|130164560");
    l0:SetConnections({
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|149557306");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_SoundModifier_v2_41 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|150078669");
    l0:SetConnections({
    });
    self.box_MultipleOR_357 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_357;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_357");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|158022925");
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
        [0] = self.f_box_MultipleOR_357_Out,
    });
    self.box_SpawnAI_86 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|159672537");
    l0:SetConnections({
    });
    self.box_LT02_050_B40_CamShake_68 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_050/LT02_050_B40.LT02_050_B40_CamShake.debug.lua");
    l0 = self.box_LT02_050_B40_CamShake_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_050_B40_CamShake_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|168880356");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LT02_050_B40_CamShake_68_Out,
    });
    self.box_ProximityTrigger_v2_201 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|169401591");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_201_Enabled,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_201_OnOccupied,
    });
    self.box_ProximityTrigger_v2_183 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|190752967");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_183_Enabled,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_183_OnOccupied,
    });
    self.box_Gate_v3_154 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|194054468");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_154_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_154_Out,
    });
    self.box_SoundModifier_v2_212 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|194698924");
    l0:SetConnections({
    });
    self.box_SpawnAI_12 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|205143614");
    l0:SetConnections({
    });
    self.box_MultipleOR_436 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_436;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_436");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|206031039");
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
        [0] = self.f_box_MultipleOR_436_Out,
    });
    self.box_SpawnAI_106 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|206055755");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_195 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|207126760");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_195_Enabled,
    });
    self.box_Delay_v5_280 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_280;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_280");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|227923937");
    l0:SetConnections({
        -- LoopingEnded,
        [0] = self.f_box_Delay_v5_280_LoopingEnded,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_280_TimeElapsed,
    });
    self.box_OnceOnly_v3_13 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|231328553");
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
                [0] = self.f_box_OnceOnly_v3_13_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_402 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_402;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_402");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|238899569");
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
        [0] = self.f_box_MultipleOR_402_Out,
    });
    self.box_Delay_v5_298 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_298;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_298");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|242689127");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_298_TimeElapsed,
    });
    self.box_BaseMissionBlock_v2_338 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_338;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_338");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|243545794");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_84 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|257422759");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_84_Loaded,
    });
    self.box_OnceOnly_v3_423 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_423;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_423");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|257854298");
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
                [0] = self.f_box_OnceOnly_v3_423_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_290 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_290;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_290");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|259505033");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_290_TimeElapsed,
    });
    self.box_EntityStatusListener_51 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|260884534");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_51_Loaded,
    });
    self.box_MultipleOR_428 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_428;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_428");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|266500938");
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
        [0] = self.f_box_MultipleOR_428_Out,
    });
    self.box_UniversalInteractionModifier_v2_126 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|277545292");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_126_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_126_Enabled,
    });
    self.box_OnceOnly_v3_408 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_408;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_408");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|287058005");
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
                [0] = self.f_box_OnceOnly_v3_408_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_52 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|304114350");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_52_Loaded,
    });
    self.box_NavLinkModifier_225 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|313928871");
    l0:SetConnections({
    });
    self.box_Delay_v5_363 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_363;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_363");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|314137603");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_363_TimeElapsed,
    });
    self.box_UniversalInteractionListener_324 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_324;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_324");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|329053894");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_324_Interacted,
    });
    self.box_Delay_v5_148 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|351173621");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_148_TimeElapsed,
    });
    self.box_Delay_v5_254 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_254;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_254");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|366489107");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_254_TimeElapsed,
    });
    self.box_SpawnAI_85 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|370753127");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_218 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|393815878");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_218_Done,
    });
    self.box_PlayDialog_v6_221 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|409614064");
    l0:SetConnections({
    });
    self.box_SpawnAI_103 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|418166351");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_94 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|434222404");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_94_Finished,
    });
    self.box_PlayDialog_v6_138 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|476999810");
    l0:SetConnections({
    });
    self.box_Switch_362 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_362;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_362");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|500678041");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 13,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_362_Output_0,
                [1] = self.f_box_Switch_362_Output_1,
                [2] = self.f_box_Switch_362_Output_2,
                [3] = self.f_box_Switch_362_Output_3,
                [4] = self.f_box_Switch_362_Output_4,
                [5] = self.f_box_Switch_362_Output_5,
                [6] = self.f_box_Switch_362_Output_6,
            },
            count = 13,
        },
    });
    self.box_Delay_v5_321 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_321;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_321");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|501852320");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_321_TimeElapsed,
    });
    self.box_EntityStatusListener_78 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|509260545");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_78_Loaded,
    });
    self.box_Delay_v5_379 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_379;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_379");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|536545534");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_379_TimeElapsed,
    });
    self.box_PlayDialog_v6_37 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|549635688");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_37_Started,
    });
    self.box_PlayDialog_v6_35 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|603886546");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_35_Started,
    });
    self.box_Delay_v5_248 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_248");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|606147045");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_248_TimeElapsed,
    });
    self.box_PlayDialog_v6_122 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|610845922");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_376 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_376;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_376");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|613480691");
    l0:SetConnections({
    });
    self.box_MultipleOR_360 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_360;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_360");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|652758311");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 12,
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
        [0] = self.f_box_MultipleOR_360_Out,
    });
    self.box_MultipleOR_332 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_332;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_332");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|664589700");
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
        [0] = self.f_box_MultipleOR_332_Out,
    });
    self.box_SpawnAI_87 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|678101019");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_189 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|685953562");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_129 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|734107209");
    l0:SetConnections({
    });
    self.box_LT02_050_B40_CamShake_187 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_050/LT02_050_B40.LT02_050_B40_CamShake.debug.lua");
    l0 = self.box_LT02_050_B40_CamShake_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_050_B40_CamShake_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|752275411");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LT02_050_B40_CamShake_187_Out,
    });
    self.box_EntityStatusListener_80 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|791216136");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_80_Loaded,
    });
    self.box_EntityStatusListener_294 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_294;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_294");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|800997759");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_294_Loaded,
    });
    self.box_SpawnAI_110 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|806891650");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_275 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_275;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_275");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|819031020");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_275_Loaded,
    });
    self.box_NavLinkModifier_205 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|833775352");
    l0:SetConnections({
    });
    self.box_MultipleOR_291 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_291;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_291");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|855521164");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 12,
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
        [0] = self.f_box_MultipleOR_291_Out,
    });
    self.box_PositionModifier_v2_165 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|864242017");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_165_Done,
    });
    self.box_OnceOnly_v3_415 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_415;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_415");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|906342125");
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
                [0] = self.f_box_OnceOnly_v3_415_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_400 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_400;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_400");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|910458712");
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
        [0] = self.f_box_MultipleOR_400_Out,
    });
    self.box_EntityStatusListener_96 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|918908498");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_96_Loaded,
    });
    self.box_Delay_v5_285 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_285;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_285");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|926119003");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_285_TimeElapsed,
    });
    self.box_EntityStatusListener_278 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_278;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_278");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|933101063");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_278_Loaded,
    });
    self.box_NavLinkModifier_197 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|941914253");
    l0:SetConnections({
    });
    self.box_Brick_Revive_Target_v2_91 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Heal_Target.Brick_Revive_Target_v2.debug.lua");
    l0 = self.box_Brick_Revive_Target_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Revive_Target_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|963632902");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_Brick_Revive_Target_v2_91_Started,
        -- Success,
        [3] = self.f_box_Brick_Revive_Target_v2_91_Success,
    });
    self.box_EntityStatusListener_102 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|981396015");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_102_Loaded,
    });
    self.box_EntityStatusListener_82 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|982842850");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_82_Loaded,
    });
    self.box_PlayDialog_v6_57 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|995819770");
    l0:SetConnections({
    });
    self.box_LockTimeOfDay_40 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
    l0 = self.box_LockTimeOfDay_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockTimeOfDay_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1002041682");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LockTimeOfDay_40_Out,
    });
    self.box_NavLinkModifier_162 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1020049949");
    l0:SetConnections({
    });
    self.box_Gate_v3_141 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1028404357");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_141_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_141_Out,
    });
    self.box_Delay_v5_311 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_311;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_311");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1035726111");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_311_TimeElapsed,
    });
    self.box_Switch_283 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_283;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_283");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1056886226");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 5,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_283_Output_0,
                [1] = self.f_box_Switch_283_Output_1,
                [2] = self.f_box_Switch_283_Output_2,
            },
            count = 5,
        },
    });
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1062192327");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_PositionModifier_v2_229 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_229;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1098564957");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_229_Done,
    });
    self.box_LT02_050_B40_CamShake_313 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_050/LT02_050_B40.LT02_050_B40_CamShake.debug.lua");
    l0 = self.box_LT02_050_B40_CamShake_313;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_050_B40_CamShake_313");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1111562686");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LT02_050_B40_CamShake_313_Out,
    });
    self.box_PlayDialog_v6_159 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1114737341");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_427 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_427;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_427");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1153431440");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_113 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1158667810");
    l0:SetConnections({
    });
    self.box_MultipleOR_281 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_281;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_281");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1159209130");
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
        [0] = self.f_box_MultipleOR_281_Out,
    });
    self.box_OnceOnly_v3_419 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_419;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_419");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1177479296");
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
                [0] = self.f_box_OnceOnly_v3_419_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_105 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1196127418");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_105_Loaded,
    });
    self.box_Music_Quest_v2_67 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1197547860");
    l0:SetConnections({
    });
    self.box_Delay_v5_158 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1204914154");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_158_TimeElapsed,
    });
    self.box_OnceOnly_v3_417 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_417;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_417");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1240371072");
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
                [0] = self.f_box_OnceOnly_v3_417_Out_0,
            },
            count = 2,
        },
    });
    self.box_CharacterLoadedIdListener_16 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1243874728");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_16_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_16_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_16_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_16_LoadedIdReceived,
    });
    self.box_Delay_v5_308 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_308;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_308");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1245649595");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_308_TimeElapsed,
    });
    self.box_SoundModifier_v2_47 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1259255889");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_47_Started,
    });
    self.box_UniversalInteractionModifier_v2_66 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1260082623");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_66_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_66_Enabled,
    });
    self.box_SoundModifier_v2_373 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_373;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_373");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1268412645");
    l0:SetConnections({
    });
    self.box_Delay_v5_271 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_271;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_271");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1273491569");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_271_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_142 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1277504502");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_142_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_142_Enabled,
    });
    self.box_Gate_v3_236 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1288775673");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_236_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_236_Out,
    });
    self.box_Gate_v3_390 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_390;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_390");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1293488818");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_390_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_390_Out,
    });
    self.box_MultipleOR_325 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_325;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_325");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1295094816");
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
        [0] = self.f_box_MultipleOR_325_Out,
    });
    self.box_SoundModifier_v2_39 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1299333542");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_396 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_396;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_396");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1314850420");
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
                [0] = self.f_box_OnceOnly_v3_396_Out_0,
            },
            count = 2,
        },
    });
    self.box_GunsForHireSystemModifier_336 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_336;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_336");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1315666797");
    l0:SetConnections({
    });
    self.box_MultipleOR_107 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1332492560");
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
        [0] = self.f_box_MultipleOR_107_Out,
    });
    self.box_Gate_v3_131 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1338950102");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_131_Out,
    });
    self.box_Delay_v5_118 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1347540243");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_118_TimeElapsed,
    });
    self.box_Switch_358 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_358;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_358");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1363237728");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_358_Output_0,
                [1] = self.f_box_Switch_358_Output_1,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_65 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1378266541");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_65_Enabled,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_65_OnOccupied,
    });
    self.box_Gate_v3_274 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_274;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_274");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1384871273");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_274_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_274_Out,
    });
    self.box_PlayDialog_v6_277 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_277");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1403064501");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_277_Finished,
    });
    self.box_Delay_v5_297 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_297;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_297");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1409095891");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_297_TimeElapsed,
    });
    self.box_Delay_v5_93 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1415286417");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_93_TimeElapsed,
    });
    self.box_EntityStatusListener_100 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1426554359");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_100_Loaded,
    });
    self.box_Delay_v5_92 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1436515869");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_92_TimeElapsed,
    });
    self.box_EntityStatusListener_63 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1436649489");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_63_Loaded,
    });
    self.box_ProximityTrigger_v2_3 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1454378655");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_3_Enabled,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_3_OnOccupied,
    });
    self.box_Gate_v3_426 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_426;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_426");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1473541528");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_426_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_426_Out,
    });
    self.box_LT02_050_B40_CamShake_185 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_050/LT02_050_B40.LT02_050_B40_CamShake.debug.lua");
    l0 = self.box_LT02_050_B40_CamShake_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_050_B40_CamShake_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1475497669");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LT02_050_B40_CamShake_185_Out,
    });
    self.box_MultipleOR_252 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_252;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_252");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1479318884");
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
        [0] = self.f_box_MultipleOR_252_Out,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1487835631");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_ProximityTrigger_v2_164 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1492209726");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_164_Enabled,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_164_OnOccupied,
    });
    self.box_MultipleOR_239 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1502634558");
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
        [0] = self.f_box_MultipleOR_239_Out,
    });
    self.box_PlayDialog_v6_276 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_276;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_276");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1505245059");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_276_Finished,
    });
    self.box_EntityStatusListener_293 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_293;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_293");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1517991849");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_293_Loaded,
    });
    self.box_ProximityTrigger_v2_244 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_244");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1524018800");
    l0:SetConnections({
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_244_Leave,
    });
    self.box_Music_Quest_v2_36 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1552455359");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_385 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_385;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_385");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1553225452");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_385_Loaded,
    });
    self.box_ProximityTrigger_v2_18 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1565079865");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_18_Enabled,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_18_OnOccupied,
    });
    self.box_EntityStatusListener_333 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_333;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_333");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1566614091");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_333_Loaded,
    });
    self.box_LT02_050_B40_CamShake_317 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_050/LT02_050_B40.LT02_050_B40_CamShake.debug.lua");
    l0 = self.box_LT02_050_B40_CamShake_317;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_050_B40_CamShake_317");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1567294603");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LT02_050_B40_CamShake_317_Out,
    });
    self.box_Gate_v3_169 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1574089789");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_169_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_169_Out,
    });
    self.box_Delay_v5_139 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1577160624");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_139_TimeElapsed,
    });
    self.box_Switch_2 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1579911480");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_2_Output_0,
                [1] = self.f_box_Switch_2_Output_1,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_412 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_412;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_412");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1597511502");
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
                [0] = self.f_box_OnceOnly_v3_412_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_209 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1604322031");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_295 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_295;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_295");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1615173240");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_295_Loaded,
    });
    self.box_Delay_v5_303 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_303;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_303");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1632797189");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_303_TimeElapsed,
    });
    self.box_SoundModifier_v2_374 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_374;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_374");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1645354890");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_72 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1648172582");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_72_Enabled,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_72_OnOccupied,
    });
    self.box_SoundModifier_v2_270 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_270;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_270");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1661869205");
    l0:SetConnections({
    });
    self.box_Gate_v3_326 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_326;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_326");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1664222142");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_326_Out,
    });
    self.box_Switch_288 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_288;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_288");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1670739770");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_288_Output_0,
                [1] = self.f_box_Switch_288_Output_1,
                [2] = self.f_box_Switch_288_Output_2,
                [3] = self.f_box_Switch_288_Output_3,
            },
            count = 4,
        },
    });
    self.box_PlayDialog_v6_143 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1676414873");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_104 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1679596068");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_104_Finished,
    });
    self.box_SoundModifier_v2_384 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_384;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_384");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1695104486");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_378 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_378;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_378");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1701324068");
    l0:SetConnections({
    });
    self.box_SpawnAI_79 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1711988871");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_411 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_411;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_411");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1713763753");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_411_Enabled,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_411_OnOccupied,
    });
    self.box_HealthListener_v6_23 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1727130271");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_23_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_23_Enabled,
    });
    self.box_ProximityTrigger_v2_238 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1735163251");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_238_Enabled,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_238_OnOccupied,
    });
    self.box_IndexList_v2_397 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_397;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_397");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1754891937");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 9,
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
                [0] = self.f_box_IndexList_v2_397_Output_0,
                [1] = self.f_box_IndexList_v2_397_Output_1,
                [2] = self.f_box_IndexList_v2_397_Output_2,
                [3] = self.f_box_IndexList_v2_397_Output_3,
                [4] = self.f_box_IndexList_v2_397_Output_4,
                [5] = self.f_box_IndexList_v2_397_Output_5,
                [6] = self.f_box_IndexList_v2_397_Output_6,
                [7] = self.f_box_IndexList_v2_397_Output_7,
                [8] = self.f_box_IndexList_v2_397_Output_8,
            },
            count = 9,
        },
    });
    self.box_PlayDialog_v6_246 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_246;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_246");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1814071352");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_246_Finished,
    });
    self.box_OnceOnly_v3_253 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_253;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_253");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1815500231");
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
                [0] = self.f_box_OnceOnly_v3_253_Out_0,
                [1] = self.f_box_OnceOnly_v3_253_Out_1,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_70 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1838743833");
    l0:SetConnections({
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_70_Leave,
    });
    self.box_Delay_v5_149 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1840598016");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_149_TimeElapsed,
    });
    self.box_SpawnAI_108 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1852319705");
    l0:SetConnections({
    });
    self.box_SpawnAI_81 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1868442521");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_157 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1887050336");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_157_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_157_Enabled,
    });
    self.box_OnceOnly_v3_421 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_421;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_421");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1917027398");
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
                [0] = self.f_box_OnceOnly_v3_421_Out_0,
            },
            count = 2,
        },
    });
    self.box_NavLinkModifier_334 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_334;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_334");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1925933611");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_50 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1938339584");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_50_Loaded,
    });
    self.box_Delay_v5_75 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1945458607");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_75_TimeElapsed,
    });
    self.box_EntityStatusListener_56 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1976392945");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_56_Loaded,
    });
    self.box_Delay_v5_322 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_322;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_322");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1978704028");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_322_TimeElapsed,
    });
    self.box_PlayDialog_v6_220 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1982999401");
    l0:SetConnections({
    });
    self.box_SpawnAI_97 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2023955692");
    l0:SetConnections({
    });
    self.box_Gate_v3_361 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_361;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_361");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2031846086");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_361_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_361_Out,
    });
    self.box_Delay_v5_319 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_319;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_319");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2038326664");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_319_TimeElapsed,
    });
    self.box_PlayDialog_v6_135 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2139549345");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1085234039", "1085234039", "LT02_050_B40_main", "In", "box_OutputOrder_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|203222589", "203222589", "LT02_050_B40_main", "OnLeaveZone", "box_OutputOrder_v2_22.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_304_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_050_B40_CamShake_68();
    l0 = self.box_LT02_050_B40_CamShake_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|333950144", "333950144", "LT02_050_B40_main", "box_Simple_Node_304.Out", "box_LT02_050_B40_CamShake_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_371_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_050_B40_CamShake_160();
    l0 = self.box_LT02_050_B40_CamShake_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|322419740", "322419740", "LT02_050_B40_main", "box_Simple_Node_371.Out", "box_LT02_050_B40_CamShake_160.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_243_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_239;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|198216829", "198216829", "LT02_050_B40_main", "box_Simple_Node_243.Out", "box_MultipleOR_239.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_389_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_400;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|723186958", "723186958", "LT02_050_B40_main", "box_Simple_Node_389.Out", "box_MultipleOR_400.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_Gate_v3_326();
    l0 = self.box_Gate_v3_326;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2122689709", "2122689709", "LT02_050_B40_main", "box_Simple_Node_389.Out", "box_Gate_v3_326.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_337_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_216();
    l0 = self.box_BaseMissionBlock_v2_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|269332133", "269332133", "LT02_050_B40_main", "box_Simple_Node_337.Out", "box_BaseMissionBlock_v2_216.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_341_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_338();
    l0 = self.box_BaseMissionBlock_v2_338;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1314450840", "1314450840", "LT02_050_B40_main", "box_Simple_Node_341.Out", "box_BaseMissionBlock_v2_338.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_305_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_050_B40_CamShake_185();
    l0 = self.box_LT02_050_B40_CamShake_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2042466187", "2042466187", "LT02_050_B40_main", "box_Simple_Node_305.Out", "box_LT02_050_B40_CamShake_185.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_328_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_050_B40_CamShake_317();
    l0 = self.box_LT02_050_B40_CamShake_317;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|409330768", "409330768", "LT02_050_B40_main", "box_Simple_Node_328.Out", "box_LT02_050_B40_CamShake_317.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_59_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_050_B40_CamShake_317();
    l0 = self.box_LT02_050_B40_CamShake_317;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1817440911", "1817440911", "LT02_050_B40_main", "box_Simple_Node_59.Out", "box_LT02_050_B40_CamShake_317.StopListening", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopListening
    l0:Exec(1, params);
    params = self:OnEnter_box_LT02_050_B40_CamShake_68();
    l0 = self.box_LT02_050_B40_CamShake_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|985859257", "985859257", "LT02_050_B40_main", "box_Simple_Node_59.Out", "box_LT02_050_B40_CamShake_68.StopListening", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopListening
    l0:Exec(1, params);
    params = self:OnEnter_box_LT02_050_B40_CamShake_313();
    l0 = self.box_LT02_050_B40_CamShake_313;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1504381606", "1504381606", "LT02_050_B40_main", "box_Simple_Node_59.Out", "box_LT02_050_B40_CamShake_313.StopListening", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopListening
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_184();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2051370671", "2051370671", "LT02_050_B40_main", "box_Simple_Node_59.Out", "box_OutputOrder_v2_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_LT02_050_B40_CamShake_185();
    l0 = self.box_LT02_050_B40_CamShake_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|162356129", "162356129", "LT02_050_B40_main", "box_Simple_Node_59.Out", "box_LT02_050_B40_CamShake_185.StopListening", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopListening
    l0:Exec(1, params);
    params = self:OnEnter_box_Delay_v5_158();
    l0 = self.box_Delay_v5_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|312035954", "312035954", "LT02_050_B40_main", "box_Simple_Node_59.Out", "box_Delay_v5_158.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Gate_v3_154();
    l0 = self.box_Gate_v3_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1918198641", "1918198641", "LT02_050_B40_main", "box_Simple_Node_59.Out", "box_Gate_v3_154.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_LT02_050_B40_CamShake_187();
    l0 = self.box_LT02_050_B40_CamShake_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|744069795", "744069795", "LT02_050_B40_main", "box_Simple_Node_59.Out", "box_LT02_050_B40_CamShake_187.StopListening", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopListening
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_388_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_326();
    l0 = self.box_Gate_v3_326;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1981988611", "1981988611", "LT02_050_B40_main", "box_Simple_Node_388.Out", "box_Gate_v3_326.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_HealthListener_v6_23();
    l0 = self.box_HealthListener_v6_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1426156920", "1426156920", "LT02_050_B40_main", "box_Simple_Node_388.Out", "box_HealthListener_v6_23.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_430_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_426();
    l0 = self.box_Gate_v3_426;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1934184910", "1934184910", "LT02_050_B40_main", "box_Simple_Node_430.Out", "box_Gate_v3_426.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_406_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_405();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|114364599", "114364599", "LT02_050_B40_main", "box_Simple_Node_406.Out", "box_IntegerArithmetics_v2_405.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_407_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_425();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|838286652", "838286652", "LT02_050_B40_main", "box_Simple_Node_407.Out", "box_Compare_Integers_425.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_167_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_148();
    l0 = self.box_Delay_v5_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1262123520", "1262123520", "LT02_050_B40_main", "box_Simple_Node_167.Out", "box_Delay_v5_148.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_89_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_268();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|79452361", "79452361", "LT02_050_B40_main", "box_OutputOrder_v2_89.Out", "box_CameraShakeAndRumble_V2_268.SendEvent", clone:GetLuaBox(), l0:GetLuaBox());
    -- SendEvent
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_337();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|30891443", "30891443", "LT02_050_B40_main", "box_OutputOrder_v2_89.Out", "box_Simple_Node_337.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_115_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_110();
    l0 = self.box_EntityStatusListener_115;
    l1 = self.box_SpawnAI_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1428443880", "1428443880", "LT02_050_B40_main", "box_EntityStatusListener_115.Loaded", "box_SpawnAI_110.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_155_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_280();
    l0 = self.box_PlayDialog_v6_155;
    l1 = self.box_Delay_v5_280;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|336976239", "336976239", "LT02_050_B40_main", "box_PlayDialog_v6_155.Finished", "box_Delay_v5_280.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_380_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_300();
    l0 = self.box_Delay_v5_380;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|311959073", "311959073", "LT02_050_B40_main", "box_Delay_v5_380.TimeElapsed", "box_ParticleSystem_v3_300.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_292_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_290();
    l0 = self.box_EntityStatusListener_292;
    l1 = self.box_Delay_v5_290;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1405966820", "1405966820", "LT02_050_B40_main", "box_EntityStatusListener_292.Loaded", "box_Delay_v5_290.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_101_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_103();
    l0 = self.box_EntityStatusListener_101;
    l1 = self.box_SpawnAI_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1947115451", "1947115451", "LT02_050_B40_main", "box_EntityStatusListener_101.Loaded", "box_SpawnAI_103.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_184_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_177();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|439044811", "439044811", "LT02_050_B40_main", "box_OutputOrder_v2_184.Out", "box_OutputOrder_v2_177.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_184_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_236();
    l0 = self.box_Gate_v3_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1431699881", "1431699881", "LT02_050_B40_main", "box_OutputOrder_v2_184.Out", "box_Gate_v3_236.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_359_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_137();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1999119230", "1999119230", "LT02_050_B40_main", "box_OutputOrder_v2_359.Out", "box_DynamicLightModifier_137.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_359_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_161();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|505583399", "505583399", "LT02_050_B40_main", "box_OutputOrder_v2_359.Out", "box_DynamicLightModifier_161.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_433_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_309();
    l0 = self.box_Gate_v3_433;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|889603560", "889603560", "LT02_050_B40_main", "box_Gate_v3_433.Out", "box_ActivityObjectiveMarkerModifier_v3_309.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT02_050_B40_CamShake_160_Out()
    local l0, l1;
    l0 = self.box_LT02_050_B40_CamShake_160;
    l1 = self.box_MultipleOR_357;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1566828781", "1566828781", "LT02_050_B40_main", "box_LT02_050_B40_CamShake_160.Out", "box_MultipleOR_357.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SoundModifier_v2_372_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_373();
    l0 = self.box_SoundModifier_v2_372;
    l1 = self.box_SoundModifier_v2_373;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1497171744", "1497171744", "LT02_050_B40_main", "box_SoundModifier_v2_372.Started", "box_SoundModifier_v2_373.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_300_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_301();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|754849237", "754849237", "LT02_050_B40_main", "box_ParticleSystem_v3_300.Started", "box_ParticleSystem_v3_301.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_256_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_254();
    l0 = self.box_Delay_v5_254;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1640026574", "1640026574", "LT02_050_B40_main", "box_Simple_Node_256.Out", "box_Delay_v5_254.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_299_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_296();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1752746427", "1752746427", "LT02_050_B40_main", "box_ParticleSystem_v3_299.Started", "box_ParticleSystem_v3_296.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_119_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_117();
    l0 = self.box_MultipleOR_119;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1978414804", "1978414804", "LT02_050_B40_main", "box_MultipleOR_119.Out", "box_RandomFloat_v2_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_399_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_407();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|15483264", "15483264", "LT02_050_B40_main", "box_OutputOrder_v2_399.Out", "box_Simple_Node_407.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_399_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|567507439", "567507439", "LT02_050_B40_main", "box_OutputOrder_v2_399.Out", "box_OutputOrder_v2_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_286_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_285();
    l0 = self.box_EntityStatusListener_286;
    l1 = self.box_Delay_v5_285;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1711368568", "1711368568", "LT02_050_B40_main", "box_EntityStatusListener_286.Loaded", "box_Delay_v5_285.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_211_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_322();
    l0 = self.box_Delay_v5_322;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|103971397", "103971397", "LT02_050_B40_main", "box_OutputOrder_v2_211.Out", "box_Delay_v5_322.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_211_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_376();
    l0 = self.box_SoundModifier_v2_376;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|379192268", "379192268", "LT02_050_B40_main", "box_OutputOrder_v2_211.Out", "box_SoundModifier_v2_376.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Switch_128_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_113();
    l0 = self.box_Switch_128;
    l1 = self.box_PlayDialog_v6_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1341384756", "1341384756", "LT02_050_B40_main", "box_Switch_128.Output", "box_PlayDialog_v6_113.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_128_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_135();
    l0 = self.box_Switch_128;
    l1 = self.box_PlayDialog_v6_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1741334925", "1741334925", "LT02_050_B40_main", "box_Switch_128.Output", "box_PlayDialog_v6_135.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_128_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_138();
    l0 = self.box_Switch_128;
    l1 = self.box_PlayDialog_v6_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|766228193", "766228193", "LT02_050_B40_main", "box_Switch_128.Output", "box_PlayDialog_v6_138.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_128_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_143();
    l0 = self.box_Switch_128;
    l1 = self.box_PlayDialog_v6_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1885002828", "1885002828", "LT02_050_B40_main", "box_Switch_128.Output", "box_PlayDialog_v6_143.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_329_Output_0()
    local l0, l1;
    l0 = self.box_Switch_329;
    l1 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|805884633", "805884633", "LT02_050_B40_main", "box_Switch_329.Output", "box_MultipleOR_291.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_329_Output_1()
    local l0, l1;
    l0 = self.box_Switch_329;
    l1 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1316164546", "1316164546", "LT02_050_B40_main", "box_Switch_329.Output", "box_MultipleOR_291.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_329_Output_2()
    local l0, l1;
    l0 = self.box_Switch_329;
    l1 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|936428923", "936428923", "LT02_050_B40_main", "box_Switch_329.Output", "box_MultipleOR_291.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Switch_329_Output_3()
    local l0, l1;
    l0 = self.box_Switch_329;
    l1 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|76844050", "76844050", "LT02_050_B40_main", "box_Switch_329.Output", "box_MultipleOR_291.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Switch_329_Output_4()
    local l0, l1;
    l0 = self.box_Switch_329;
    l1 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|175058859", "175058859", "LT02_050_B40_main", "box_Switch_329.Output", "box_MultipleOR_291.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Switch_329_Output_5()
    local l0, l1;
    l0 = self.box_Switch_329;
    l1 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1650229387", "1650229387", "LT02_050_B40_main", "box_Switch_329.Output", "box_MultipleOR_291.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_Switch_329_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_331();
    l0 = self.box_Switch_329;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1024627874", "1024627874", "LT02_050_B40_main", "box_Switch_329.Output", "box_Simple_Node_331.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_387_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_401();
    l0 = self.box_IndexList_v2_387;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1054928404", "1054928404", "LT02_050_B40_main", "box_IndexList_v2_387.Output", "box_ActivityObjectiveMarkerModifier_v3_401.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_387_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_73();
    l0 = self.box_IndexList_v2_387;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1394299478", "1394299478", "LT02_050_B40_main", "box_IndexList_v2_387.Output", "box_ActivityObjectiveMarkerModifier_v3_73.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_387_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33();
    l0 = self.box_IndexList_v2_387;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2042414873", "2042414873", "LT02_050_B40_main", "box_IndexList_v2_387.Output", "box_ActivityObjectiveMarkerModifier_v3_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_387_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_24();
    l0 = self.box_IndexList_v2_387;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|217458603", "217458603", "LT02_050_B40_main", "box_IndexList_v2_387.Output", "box_ActivityObjectiveMarkerModifier_v3_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_387_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_410();
    l0 = self.box_IndexList_v2_387;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|134680003", "134680003", "LT02_050_B40_main", "box_IndexList_v2_387.Output", "box_ActivityObjectiveMarkerModifier_v3_410.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_387_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_144();
    l0 = self.box_IndexList_v2_387;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|248128301", "248128301", "LT02_050_B40_main", "box_IndexList_v2_387.Output", "box_ActivityObjectiveMarkerModifier_v3_144.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_387_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_223();
    l0 = self.box_IndexList_v2_387;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2036226587", "2036226587", "LT02_050_B40_main", "box_IndexList_v2_387.Output", "box_ActivityObjectiveMarkerModifier_v3_223.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_387_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_202();
    l0 = self.box_IndexList_v2_387;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1358087677", "1358087677", "LT02_050_B40_main", "box_IndexList_v2_387.Output", "box_ActivityObjectiveMarkerModifier_v3_202.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_387_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_426();
    l0 = self.box_IndexList_v2_387;
    l1 = self.box_Gate_v3_426;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2022657754", "2022657754", "LT02_050_B40_main", "box_IndexList_v2_387.Output", "box_Gate_v3_426.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_CameraShakeAndRumble_V2_268_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_269();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|6723110", "6723110", "LT02_050_B40_main", "box_CameraShakeAndRumble_V2_268.Out", "box_OutputOrder_v2_269.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_226_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_232();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|987773553", "987773553", "LT02_050_B40_main", "box_OutputOrder_v2_226.Out", "box_Simple_Node_232.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_226_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_168();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|719862007", "719862007", "LT02_050_B40_main", "box_OutputOrder_v2_226.Out", "box_DynamicLightModifier_168.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_226_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_237();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|766870362", "766870362", "LT02_050_B40_main", "box_OutputOrder_v2_226.Out", "box_DynamicLightModifier_237.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_226_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_233();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|78762389", "78762389", "LT02_050_B40_main", "box_OutputOrder_v2_226.Out", "box_DynamicLightModifier_233.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_226_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_152();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|612579067", "612579067", "LT02_050_B40_main", "box_OutputOrder_v2_226.Out", "box_DynamicLightModifier_152.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_7_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_7;
    l1 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1560325630", "1560325630", "LT02_050_B40_main", "box_MultipleOR_7.Out", "box_ActivityInitialized_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_36();
    l0 = self.box_Music_Quest_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|790226083", "790226083", "LT02_050_B40_main", "box_OutputOrder_v2_32.Out", "box_Music_Quest_v2_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_11();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|333024566", "333024566", "LT02_050_B40_main", "box_OutputOrder_v2_32.Out", "box_GetPlayerGroup_v2_11.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_88();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2020655821", "2020655821", "LT02_050_B40_main", "box_OutputOrder_v2_32.Out", "box_SoundShapeModifier_88.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_357_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_362();
    l0 = self.box_MultipleOR_357;
    l1 = self.box_Switch_362;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1049822571", "1049822571", "LT02_050_B40_main", "box_MultipleOR_357.Out", "box_Switch_362.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_174_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_122();
    l0 = self.box_PlayDialog_v6_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2127275259", "2127275259", "LT02_050_B40_main", "box_OutputOrder_v2_174.Out", "box_PlayDialog_v6_122.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_174_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_167();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1120786933", "1120786933", "LT02_050_B40_main", "box_OutputOrder_v2_174.Out", "box_Simple_Node_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LT02_050_B40_CamShake_68_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_193();
    l0 = self.box_LT02_050_B40_CamShake_68;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1689293008", "1689293008", "LT02_050_B40_main", "box_LT02_050_B40_CamShake_68.Out", "box_OutputOrder_v2_193.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_201_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_406();
    l0 = self.box_ProximityTrigger_v2_201;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|762121668", "762121668", "LT02_050_B40_main", "box_ProximityTrigger_v2_201.Enabled", "box_Simple_Node_406.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_201_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_201;
    l1 = self.box_OnceOnly_v3_423;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1909260035", "1909260035", "LT02_050_B40_main", "box_ProximityTrigger_v2_201.OnOccupied", "box_OnceOnly_v3_423.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_206_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_379();
    l0 = self.box_Delay_v5_379;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1221982266", "1221982266", "LT02_050_B40_main", "box_OutputOrder_v2_206.Out", "box_Delay_v5_379.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_206_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_380();
    l0 = self.box_Delay_v5_380;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|767628028", "767628028", "LT02_050_B40_main", "box_OutputOrder_v2_206.Out", "box_Delay_v5_380.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_206_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_372();
    l0 = self.box_SoundModifier_v2_372;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|896569744", "896569744", "LT02_050_B40_main", "box_OutputOrder_v2_206.Out", "box_SoundModifier_v2_372.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_183_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_406();
    l0 = self.box_ProximityTrigger_v2_183;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|486842884", "486842884", "LT02_050_B40_main", "box_ProximityTrigger_v2_183.Enabled", "box_Simple_Node_406.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_183_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_183;
    l1 = self.box_OnceOnly_v3_415;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|549603028", "549603028", "LT02_050_B40_main", "box_ProximityTrigger_v2_183.OnOccupied", "box_OnceOnly_v3_415.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_154_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_148();
    l0 = self.box_Gate_v3_154;
    l1 = self.box_Delay_v5_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|428703901", "428703901", "LT02_050_B40_main", "box_Gate_v3_154.Closed", "box_Delay_v5_148.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_154_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_128();
    l0 = self.box_Gate_v3_154;
    l1 = self.box_Switch_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|653372334", "653372334", "LT02_050_B40_main", "box_Gate_v3_154.Out", "box_Switch_128.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_436_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_66();
    l0 = self.box_MultipleOR_436;
    l1 = self.box_UniversalInteractionModifier_v2_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1197995567", "1197995567", "LT02_050_B40_main", "box_MultipleOR_436.Out", "box_UniversalInteractionModifier_v2_66.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PhoneCallExclusivityModifier_195_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = self.box_PhoneCallExclusivityModifier_195;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1807817576", "1807817576", "LT02_050_B40_main", "box_PhoneCallExclusivityModifier_195.Enabled", "box_OutputOrder_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_422_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_407();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|18458632", "18458632", "LT02_050_B40_main", "box_OutputOrder_v2_422.Out", "box_Simple_Node_407.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_422_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_310();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|372387616", "372387616", "LT02_050_B40_main", "box_OutputOrder_v2_422.Out", "box_Simple_Node_310.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_284_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_284_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_248();
    l0 = self.box_Delay_v5_248;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|461079948", "461079948", "LT02_050_B40_main", "box_RandomFloat_v2_284.Out", "box_Delay_v5_248.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_280_LoopingEnded()
    local l0, l1;
    l0 = self.box_Delay_v5_280;
    l1 = self.box_MultipleOR_281;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|455286347", "455286347", "LT02_050_B40_main", "box_Delay_v5_280.LoopingEnded", "box_MultipleOR_281.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_280_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_280;
    l1 = self.box_MultipleOR_281;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2116459383", "2116459383", "LT02_050_B40_main", "box_Delay_v5_280.TimeElapsed", "box_MultipleOR_281.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_13_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_404();
    l0 = self.box_OnceOnly_v3_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|188565693", "188565693", "LT02_050_B40_main", "box_OnceOnly_v3_13.Out", "box_OutputOrder_v2_404.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_402_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_397();
    l0 = self.box_MultipleOR_402;
    l1 = self.box_IndexList_v2_397;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|775741784", "775741784", "LT02_050_B40_main", "box_MultipleOR_402.Out", "box_IndexList_v2_397.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_298_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_206();
    l0 = self.box_Delay_v5_298;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|199349757", "199349757", "LT02_050_B40_main", "box_Delay_v5_298.TimeElapsed", "box_OutputOrder_v2_206.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_227_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_166();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|871219428", "871219428", "LT02_050_B40_main", "box_OutputOrder_v2_227.Out", "box_Simple_Node_166.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_227_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_125();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|322738482", "322738482", "LT02_050_B40_main", "box_OutputOrder_v2_227.Out", "box_DynamicLightModifier_125.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_227_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_133();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|654299827", "654299827", "LT02_050_B40_main", "box_OutputOrder_v2_227.Out", "box_DynamicLightModifier_133.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_227_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_191();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1967908537", "1967908537", "LT02_050_B40_main", "box_OutputOrder_v2_227.Out", "box_DynamicLightModifier_191.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_227_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_222();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1415020558", "1415020558", "LT02_050_B40_main", "box_OutputOrder_v2_227.Out", "box_DynamicLightModifier_222.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_227_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_124();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|621653544", "621653544", "LT02_050_B40_main", "box_OutputOrder_v2_227.Out", "box_DynamicLightModifier_124.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_227_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_208();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1038209933", "1038209933", "LT02_050_B40_main", "box_OutputOrder_v2_227.Out", "box_DynamicLightModifier_208.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_227_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_130();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1819234717", "1819234717", "LT02_050_B40_main", "box_OutputOrder_v2_227.Out", "box_DynamicLightModifier_130.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_227_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_173();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1034980320", "1034980320", "LT02_050_B40_main", "box_OutputOrder_v2_227.Out", "box_DynamicLightModifier_173.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_227_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_153();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1900296234", "1900296234", "LT02_050_B40_main", "box_OutputOrder_v2_227.Out", "box_DynamicLightModifier_153.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_224();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|525825487", "525825487", "LT02_050_B40_main", "box_OutputOrder_v2_30.Out", "box_Simple_Node_224.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_167();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|687858693", "687858693", "LT02_050_B40_main", "box_OutputOrder_v2_30.Out", "box_Simple_Node_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_134_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_170();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1324303625", "1324303625", "LT02_050_B40_main", "box_ParticleSystem_v3_134.Started", "box_ParticleSystem_v3_170.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_84_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_85();
    l0 = self.box_EntityStatusListener_84;
    l1 = self.box_SpawnAI_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|541851069", "541851069", "LT02_050_B40_main", "box_EntityStatusListener_84.Loaded", "box_SpawnAI_85.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_423_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_422();
    l0 = self.box_OnceOnly_v3_423;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|202154273", "202154273", "LT02_050_B40_main", "box_OnceOnly_v3_423.Out", "box_OutputOrder_v2_422.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_290_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_288();
    l0 = self.box_Delay_v5_290;
    l1 = self.box_Switch_288;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|536575462", "536575462", "LT02_050_B40_main", "box_Delay_v5_290.TimeElapsed", "box_Switch_288.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_51_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_42();
    l0 = self.box_EntityStatusListener_51;
    l1 = self.box_SoundModifier_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|729706215", "729706215", "LT02_050_B40_main", "box_EntityStatusListener_51.Loaded", "box_SoundModifier_v2_42.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Simple_Node_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1531688132", "1531688132", "LT02_050_B40_main", "box_Simple_Node_31.Out", "box_Simple_Node_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_428_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_424();
    l0 = self.box_MultipleOR_428;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1041097133", "1041097133", "LT02_050_B40_main", "box_MultipleOR_428.Out", "box_ActivityObjectiveMarkerModifier_v3_424.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_126_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_205();
    l0 = self.box_UniversalInteractionModifier_v2_126;
    l1 = self.box_NavLinkModifier_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|779353781", "779353781", "LT02_050_B40_main", "box_UniversalInteractionModifier_v2_126.Disabled", "box_NavLinkModifier_205.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_126_Enabled()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_126();
    l0 = self.box_UniversalInteractionModifier_v2_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|246639085", "246639085", "LT02_050_B40_main", "box_UniversalInteractionModifier_v2_126.Enabled", "box_UniversalInteractionModifier_v2_126.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_408_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_409();
    l0 = self.box_OnceOnly_v3_408;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1302145600", "1302145600", "LT02_050_B40_main", "box_OnceOnly_v3_408.Out", "box_OutputOrder_v2_409.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_282_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_286();
    l0 = self.box_EntityStatusListener_286;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|691806621", "691806621", "LT02_050_B40_main", "box_Simple_Node_282.Out", "box_EntityStatusListener_286.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_52_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_41();
    l0 = self.box_EntityStatusListener_52;
    l1 = self.box_SoundModifier_v2_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|648848031", "648848031", "LT02_050_B40_main", "box_EntityStatusListener_52.Loaded", "box_SoundModifier_v2_41.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|389374512", "389374512", "LT02_050_B40_main", "box_OutputOrder_v2_60.Out", "box_PhoneCallExclusivityModifier_195.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_64();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2014658628", "2014658628", "LT02_050_B40_main", "box_OutputOrder_v2_60.Out", "box_FastTravelModifier_v2_64.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_386();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|257967286", "257967286", "LT02_050_B40_main", "box_OutputOrder_v2_60.Out", "box_ActivityForceAndLockTracking_386.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_363_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_366();
    l0 = self.box_Delay_v5_363;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1596516591", "1596516591", "LT02_050_B40_main", "box_Delay_v5_363.TimeElapsed", "box_OutputOrder_v2_366.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_324_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_327();
    l0 = self.box_UniversalInteractionListener_324;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1160728559", "1160728559", "LT02_050_B40_main", "box_UniversalInteractionListener_324.Interacted", "box_OutputOrder_v2_327.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_151_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_238();
    l0 = self.box_ProximityTrigger_v2_238;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1267498327", "1267498327", "LT02_050_B40_main", "box_OutputOrder_v2_151.Out", "box_ProximityTrigger_v2_238.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_151_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_371();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1895759720", "1895759720", "LT02_050_B40_main", "box_OutputOrder_v2_151.Out", "box_Simple_Node_371.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_193_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_212();
    l0 = self.box_SoundModifier_v2_212;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1992877611", "1992877611", "LT02_050_B40_main", "box_OutputOrder_v2_193.Out", "box_SoundModifier_v2_212.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_193_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_75();
    l0 = self.box_Delay_v5_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|400335981", "400335981", "LT02_050_B40_main", "box_OutputOrder_v2_193.Out", "box_Delay_v5_75.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_148_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_154();
    l0 = self.box_Delay_v5_148;
    l1 = self.box_Gate_v3_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|994795371", "994795371", "LT02_050_B40_main", "box_Delay_v5_148.TimeElapsed", "box_Gate_v3_154.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SoundPointModifier_382_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_323();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|648986862", "648986862", "LT02_050_B40_main", "box_SoundPointModifier_382.Started", "box_ParticleSystem_v3_323.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_267_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_259();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1201440351", "1201440351", "LT02_050_B40_main", "box_OutputOrder_v2_267.Out", "box_DynamicLightModifier_259.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_267_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_260();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|776070745", "776070745", "LT02_050_B40_main", "box_OutputOrder_v2_267.Out", "box_DynamicLightModifier_260.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_267_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_279();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1349660772", "1349660772", "LT02_050_B40_main", "box_OutputOrder_v2_267.Out", "box_DynamicLightModifier_279.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_254_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_254;
    l1 = self.box_OnceOnly_v3_253;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1371896636", "1371896636", "LT02_050_B40_main", "box_Delay_v5_254.TimeElapsed", "box_OnceOnly_v3_253.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SoundPointModifier_381_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_318();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1621955490", "1621955490", "LT02_050_B40_main", "box_SoundPointModifier_381.Started", "box_ParticleSystem_v3_318.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_19();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|42759165", "42759165", "LT02_050_B40_main", "box_OutputOrder_v2_28.Out", "box_Simple_Node_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_111();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1803393658", "1803393658", "LT02_050_B40_main", "box_OutputOrder_v2_28.Out", "box_Simple_Node_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_287();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1860806057", "1860806057", "LT02_050_B40_main", "box_OutputOrder_v2_28.Out", "box_Simple_Node_287.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_167();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1381076602", "1381076602", "LT02_050_B40_main", "box_OutputOrder_v2_28.Out", "box_Simple_Node_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_53_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_29();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|540868438", "540868438", "LT02_050_B40_main", "box_TaggingModifier_v3_53.Tagged", "box_SetContextualStrategy_29.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_218_Done()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_225();
    l0 = self.box_PositionModifier_v2_218;
    l1 = self.box_NavLinkModifier_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|882670290", "882670290", "LT02_050_B40_main", "box_PositionModifier_v2_218.Done", "box_NavLinkModifier_225.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_262_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_245();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1198724776", "1198724776", "LT02_050_B40_main", "box_OutputOrder_v2_262.Out", "box_DynamicLightModifier_245.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_262_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_250();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|738081394", "738081394", "LT02_050_B40_main", "box_OutputOrder_v2_262.Out", "box_DynamicLightModifier_250.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_262_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_251();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|661139384", "661139384", "LT02_050_B40_main", "box_OutputOrder_v2_262.Out", "box_DynamicLightModifier_251.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_262_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_257();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|928478332", "928478332", "LT02_050_B40_main", "box_OutputOrder_v2_262.Out", "box_DynamicLightModifier_257.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_255_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_244();
    l0 = self.box_ProximityTrigger_v2_244;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|126276197", "126276197", "LT02_050_B40_main", "box_Simple_Node_255.Out", "box_ProximityTrigger_v2_244.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_414_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_407();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|253359391", "253359391", "LT02_050_B40_main", "box_OutputOrder_v2_414.Out", "box_Simple_Node_407.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_414_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_342();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|321634919", "321634919", "LT02_050_B40_main", "box_OutputOrder_v2_414.Out", "box_OutputOrder_v2_342.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_94_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_93();
    l0 = self.box_PlayDialog_v6_94;
    l1 = self.box_Delay_v5_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|367841118", "367841118", "LT02_050_B40_main", "box_PlayDialog_v6_94.Finished", "box_Delay_v5_93.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CameraShakeAndRumble_V2_116_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_104();
    l0 = self.box_SoundModifier_v2_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|524457430", "524457430", "LT02_050_B40_main", "box_CameraShakeAndRumble_V2_116.Out", "box_SoundModifier_v2_104.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_90_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_114();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|727822045", "727822045", "LT02_050_B40_main", "box_Simple_Node_90.Out", "box_OutputOrder_v2_114.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_224_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_163();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|864783443", "864783443", "LT02_050_B40_main", "box_Simple_Node_224.Out", "box_OutputOrder_v2_163.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_398_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_387();
    l0 = self.box_IndexList_v2_387;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1342275009", "1342275009", "LT02_050_B40_main", "box_Compare_Boolean_398.A_is_False", "box_IndexList_v2_387.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_398_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_402;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|907540417", "907540417", "LT02_050_B40_main", "box_Compare_Boolean_398.A_is_True", "box_MultipleOR_402.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_362_Output_0()
    local l0, l1;
    l0 = self.box_Switch_362;
    l1 = self.box_MultipleOR_360;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1654418832", "1654418832", "LT02_050_B40_main", "box_Switch_362.Output", "box_MultipleOR_360.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_362_Output_1()
    local l0, l1;
    l0 = self.box_Switch_362;
    l1 = self.box_MultipleOR_360;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1612633729", "1612633729", "LT02_050_B40_main", "box_Switch_362.Output", "box_MultipleOR_360.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_362_Output_2()
    local l0, l1;
    l0 = self.box_Switch_362;
    l1 = self.box_MultipleOR_360;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|264647498", "264647498", "LT02_050_B40_main", "box_Switch_362.Output", "box_MultipleOR_360.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Switch_362_Output_3()
    local l0, l1;
    l0 = self.box_Switch_362;
    l1 = self.box_MultipleOR_360;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1958829295", "1958829295", "LT02_050_B40_main", "box_Switch_362.Output", "box_MultipleOR_360.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Switch_362_Output_4()
    local l0, l1;
    l0 = self.box_Switch_362;
    l1 = self.box_MultipleOR_360;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1547875367", "1547875367", "LT02_050_B40_main", "box_Switch_362.Output", "box_MultipleOR_360.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Switch_362_Output_5()
    local l0, l1;
    l0 = self.box_Switch_362;
    l1 = self.box_MultipleOR_360;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1505870976", "1505870976", "LT02_050_B40_main", "box_Switch_362.Output", "box_MultipleOR_360.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_Switch_362_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_365();
    l0 = self.box_Switch_362;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|903693352", "903693352", "LT02_050_B40_main", "box_Switch_362.Output", "box_Simple_Node_365.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_321_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_320();
    l0 = self.box_Delay_v5_321;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|815460439", "815460439", "LT02_050_B40_main", "box_Delay_v5_321.TimeElapsed", "box_ParticleSystem_v3_320.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_188_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_239;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|415946434", "415946434", "LT02_050_B40_main", "box_Simple_Node_188.Out", "box_MultipleOR_239.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_78_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_79();
    l0 = self.box_EntityStatusListener_78;
    l1 = self.box_SpawnAI_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|533104001", "533104001", "LT02_050_B40_main", "box_EntityStatusListener_78.Loaded", "box_SpawnAI_79.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_306_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_297();
    l0 = self.box_Delay_v5_297;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|956334432", "956334432", "LT02_050_B40_main", "box_ParticleSystem_v3_306.Started", "box_Delay_v5_297.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_StimsEmitter_v2_204_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_196();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|141066597", "141066597", "LT02_050_B40_main", "box_StimsEmitter_v2_204.Enabled", "box_StimsEmitter_v2_196.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_172_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_383();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1502532425", "1502532425", "LT02_050_B40_main", "box_ParticleSystem_v3_172.Started", "box_SoundPointModifier_383.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_343_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_204();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1344141438", "1344141438", "LT02_050_B40_main", "box_ParticleSystem_v3_343.Started", "box_StimsEmitter_v2_204.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_54_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_392();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1554287039", "1554287039", "LT02_050_B40_main", "box_Simple_Node_54.Out", "box_SetBoolean_v2_392.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_379_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_217();
    l0 = self.box_Delay_v5_379;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1826293551", "1826293551", "LT02_050_B40_main", "box_Delay_v5_379.TimeElapsed", "box_ParticleSystem_v3_217.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_112_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_70();
    l0 = self.box_ProximityTrigger_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|733762996", "733762996", "LT02_050_B40_main", "box_Simple_Node_112.Out", "box_ProximityTrigger_v2_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_391_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_66();
    l0 = self.box_UniversalInteractionModifier_v2_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|615822311", "615822311", "LT02_050_B40_main", "box_Compare_Boolean_391.A_is_False", "box_UniversalInteractionModifier_v2_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_391_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_436;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2071726609", "2071726609", "LT02_050_B40_main", "box_Compare_Boolean_391.A_is_True", "box_MultipleOR_436.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_37_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_35();
    l0 = self.box_PlayDialog_v6_37;
    l1 = self.box_PlayDialog_v6_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1263147919", "1263147919", "LT02_050_B40_main", "box_PlayDialog_v6_37.Started", "box_PlayDialog_v6_35.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_27_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_199();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1479403069", "1479403069", "LT02_050_B40_main", "box_ParticleSystem_v3_27.Started", "box_ParticleSystem_v3_199.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_35_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_57();
    l0 = self.box_PlayDialog_v6_35;
    l1 = self.box_PlayDialog_v6_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1527361683", "1527361683", "LT02_050_B40_main", "box_PlayDialog_v6_35.Started", "box_PlayDialog_v6_57.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_248_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_289();
    l0 = self.box_Delay_v5_248;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2124677895", "2124677895", "LT02_050_B40_main", "box_Delay_v5_248.TimeElapsed", "box_OutputOrder_v2_289.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_266_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_261();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1790386600", "1790386600", "LT02_050_B40_main", "box_OutputOrder_v2_266.Out", "box_DynamicLightModifier_261.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_266_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_264();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|139001000", "139001000", "LT02_050_B40_main", "box_OutputOrder_v2_266.Out", "box_DynamicLightModifier_264.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_266_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_265();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1599989662", "1599989662", "LT02_050_B40_main", "box_OutputOrder_v2_266.Out", "box_DynamicLightModifier_265.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_266_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_263();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|712041057", "712041057", "LT02_050_B40_main", "box_OutputOrder_v2_266.Out", "box_DynamicLightModifier_263.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_266_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_271();
    l0 = self.box_Delay_v5_271;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|278037081", "278037081", "LT02_050_B40_main", "box_OutputOrder_v2_266.Out", "box_Delay_v5_271.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_404_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_407();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1460835911", "1460835911", "LT02_050_B40_main", "box_OutputOrder_v2_404.Out", "box_Simple_Node_407.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_404_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_335();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|903818080", "903818080", "LT02_050_B40_main", "box_OutputOrder_v2_404.Out", "box_OutputOrder_v2_335.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_403();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1775498794", "1775498794", "LT02_050_B40_main", "box_AddActivityObjective_v2_9.Out", "box_SetInteger_v2_403.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_339_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_338();
    l0 = self.box_BaseMissionBlock_v2_338;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|334046708", "334046708", "LT02_050_B40_main", "box_Simple_Node_339.Out", "box_BaseMissionBlock_v2_338.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_310_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_109();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|324634874", "324634874", "LT02_050_B40_main", "box_Simple_Node_310.Out", "box_OutputOrder_v2_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_360_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_356();
    l0 = self.box_MultipleOR_360;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|138180373", "138180373", "LT02_050_B40_main", "box_MultipleOR_360.Out", "box_RandomFloat_v2_356.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_420_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_407();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1427925697", "1427925697", "LT02_050_B40_main", "box_OutputOrder_v2_420.Out", "box_Simple_Node_407.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_420_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_201();
    l0 = self.box_ProximityTrigger_v2_201;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1671075809", "1671075809", "LT02_050_B40_main", "box_OutputOrder_v2_420.Out", "box_ProximityTrigger_v2_201.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_314_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_050_B40_CamShake_187();
    l0 = self.box_LT02_050_B40_CamShake_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1611547390", "1611547390", "LT02_050_B40_main", "box_Simple_Node_314.Out", "box_LT02_050_B40_CamShake_187.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_332_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_329();
    l0 = self.box_MultipleOR_332;
    l1 = self.box_Switch_329;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|932206469", "932206469", "LT02_050_B40_main", "box_MultipleOR_332.Out", "box_Switch_329.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Simple_Node_365_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_364();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1142709116", "1142709116", "LT02_050_B40_main", "box_Simple_Node_365.Out", "box_Simple_Node_364.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_72();
    l0 = self.box_ProximityTrigger_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1203307640", "1203307640", "LT02_050_B40_main", "box_OutputOrder_v2_34.Out", "box_ProximityTrigger_v2_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_282();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|189675894", "189675894", "LT02_050_B40_main", "box_OutputOrder_v2_34.Out", "box_Simple_Node_282.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_304();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|753227036", "753227036", "LT02_050_B40_main", "box_OutputOrder_v2_34.Out", "box_Simple_Node_304.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_174();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|605375696", "605375696", "LT02_050_B40_main", "box_OutputOrder_v2_34.Out", "box_OutputOrder_v2_174.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_327_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_388();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1545431009", "1545431009", "LT02_050_B40_main", "box_OutputOrder_v2_327.Out", "box_Simple_Node_388.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_327_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_395();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1540180527", "1540180527", "LT02_050_B40_main", "box_OutputOrder_v2_327.Out", "box_ActivityObjectiveMarkerModifier_v3_395.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_327_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_436;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|910406376", "910406376", "LT02_050_B40_main", "box_OutputOrder_v2_327.Out", "box_MultipleOR_436.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_327_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_435();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|455004684", "455004684", "LT02_050_B40_main", "box_OutputOrder_v2_327.Out", "box_Simple_Node_435.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_120_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_120_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_116();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|386168072", "386168072", "LT02_050_B40_main", "box_RandomFloat_v2_120.Out", "box_CameraShakeAndRumble_V2_116.SendEvent", clone:GetLuaBox(), l0:GetLuaBox());
    -- SendEvent
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_434_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|214240599", "214240599", "LT02_050_B40_main", "box_Simple_Node_434.Out", "box_OutputOrder_v2_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_403_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_403_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_3();
    l0 = self.box_ProximityTrigger_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|318475881", "318475881", "LT02_050_B40_main", "box_SetInteger_v2_403.Out", "box_ProximityTrigger_v2_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_LT02_050_B40_CamShake_187_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_211();
    l0 = self.box_LT02_050_B40_CamShake_187;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|467458223", "467458223", "LT02_050_B40_main", "box_LT02_050_B40_CamShake_187.Out", "box_OutputOrder_v2_211.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_413_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_407();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1155150701", "1155150701", "LT02_050_B40_main", "box_OutputOrder_v2_413.Out", "box_Simple_Node_407.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_413_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|265502355", "265502355", "LT02_050_B40_main", "box_OutputOrder_v2_413.Out", "box_OutputOrder_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_394_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_394_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|893515713", "893515713", "LT02_050_B40_main", "box_SetBoolean_v2_394.Out", "box_MultipleOR_107.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_80_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_81();
    l0 = self.box_EntityStatusListener_80;
    l1 = self.box_SpawnAI_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|427986861", "427986861", "LT02_050_B40_main", "box_EntityStatusListener_80.Loaded", "box_SpawnAI_81.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_294_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_78();
    l0 = self.box_EntityStatusListener_294;
    l1 = self.box_EntityStatusListener_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|117701681", "117701681", "LT02_050_B40_main", "box_EntityStatusListener_294.Loaded", "box_EntityStatusListener_78.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_186_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_157();
    l0 = self.box_UniversalInteractionModifier_v2_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1493841504", "1493841504", "LT02_050_B40_main", "box_Simple_Node_186.Out", "box_UniversalInteractionModifier_v2_157.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_275_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_84();
    l0 = self.box_EntityStatusListener_275;
    l1 = self.box_EntityStatusListener_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|723071219", "723071219", "LT02_050_B40_main", "box_EntityStatusListener_275.Loaded", "box_EntityStatusListener_84.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_176_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_182();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1143580769", "1143580769", "LT02_050_B40_main", "box_Simple_Node_176.Out", "box_SoundPointModifier_182.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_340_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_431();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2002356314", "2002356314", "LT02_050_B40_main", "box_Simple_Node_340.Out", "box_Simple_Node_431.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_291_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_284();
    l0 = self.box_MultipleOR_291;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1561963432", "1561963432", "LT02_050_B40_main", "box_MultipleOR_291.Out", "box_RandomFloat_v2_284.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_165_Done()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_162();
    l0 = self.box_PositionModifier_v2_165;
    l1 = self.box_NavLinkModifier_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1351089227", "1351089227", "LT02_050_B40_main", "box_PositionModifier_v2_165.Done", "box_NavLinkModifier_162.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_109_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_324();
    l0 = self.box_UniversalInteractionListener_324;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1334187593", "1334187593", "LT02_050_B40_main", "box_OutputOrder_v2_109.Out", "box_UniversalInteractionListener_324.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_109_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_390();
    l0 = self.box_Gate_v3_390;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|157627241", "157627241", "LT02_050_B40_main", "box_OutputOrder_v2_109.Out", "box_Gate_v3_390.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_231();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|418804909", "418804909", "LT02_050_B40_main", "box_SetContextualStrategy_29.Out", "box_OutputOrder_v2_231.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_415_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_414();
    l0 = self.box_OnceOnly_v3_415;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1325656867", "1325656867", "LT02_050_B40_main", "box_OnceOnly_v3_415.Out", "box_OutputOrder_v2_414.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_400_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_398();
    l0 = self.box_MultipleOR_400;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|407835092", "407835092", "LT02_050_B40_main", "box_MultipleOR_400.Out", "box_Compare_Boolean_398.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_178_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_131();
    l0 = self.box_Gate_v3_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1476203709", "1476203709", "LT02_050_B40_main", "box_OutputOrder_v2_178.Out", "box_Gate_v3_131.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_96_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_86();
    l0 = self.box_EntityStatusListener_96;
    l1 = self.box_SpawnAI_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|104982430", "104982430", "LT02_050_B40_main", "box_EntityStatusListener_96.Loaded", "box_SpawnAI_86.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_285_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_283();
    l0 = self.box_Delay_v5_285;
    l1 = self.box_Switch_283;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|649795549", "649795549", "LT02_050_B40_main", "box_Delay_v5_285.TimeElapsed", "box_Switch_283.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_278_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_278;
    l1 = self.box_MultipleOR_281;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|971937376", "971937376", "LT02_050_B40_main", "box_EntityStatusListener_278.Loaded", "box_MultipleOR_281.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_234_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_192();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1481373907", "1481373907", "LT02_050_B40_main", "box_OutputOrder_v2_234.Out", "box_ParticleSystem_v3_192.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_234_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_175();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1809601048", "1809601048", "LT02_050_B40_main", "box_OutputOrder_v2_234.Out", "box_ParticleSystem_v3_175.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_234_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_180();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1860167434", "1860167434", "LT02_050_B40_main", "box_OutputOrder_v2_234.Out", "box_ParticleSystem_v3_180.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_234_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_190();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2069647313", "2069647313", "LT02_050_B40_main", "box_OutputOrder_v2_234.Out", "box_ParticleSystem_v3_190.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_234_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_136();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2028434001", "2028434001", "LT02_050_B40_main", "box_OutputOrder_v2_234.Out", "box_ParticleSystem_v3_136.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_234_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_194();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|990567125", "990567125", "LT02_050_B40_main", "box_OutputOrder_v2_234.Out", "box_ParticleSystem_v3_194.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Revive_Target_v2_91_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_393();
    l0 = self.box_Brick_Revive_Target_v2_91;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1103325248", "1103325248", "LT02_050_B40_main", "box_Brick_Revive_Target_v2_91.Started", "box_SetBoolean_v2_393.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Revive_Target_v2_91_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_394();
    l0 = self.box_Brick_Revive_Target_v2_91;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1692396414", "1692396414", "LT02_050_B40_main", "box_Brick_Revive_Target_v2_91.Success", "box_SetBoolean_v2_394.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_18();
    l0 = self.box_ProximityTrigger_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1370362387", "1370362387", "LT02_050_B40_main", "box_Simple_Node_62.Out", "box_ProximityTrigger_v2_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_102_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_97();
    l0 = self.box_EntityStatusListener_102;
    l1 = self.box_SpawnAI_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1163004461", "1163004461", "LT02_050_B40_main", "box_EntityStatusListener_102.Loaded", "box_SpawnAI_97.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_82_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_83();
    l0 = self.box_EntityStatusListener_82;
    l1 = self.box_SpawnAI_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|547080441", "547080441", "LT02_050_B40_main", "box_EntityStatusListener_82.Loaded", "box_SpawnAI_83.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_217_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_247();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|247696298", "247696298", "LT02_050_B40_main", "box_ParticleSystem_v3_217.Started", "box_ParticleSystem_v3_247.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_316_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_311();
    l0 = self.box_Delay_v5_311;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1042479937", "1042479937", "LT02_050_B40_main", "box_ParticleSystem_v3_316.Started", "box_Delay_v5_311.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_289_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_274();
    l0 = self.box_Gate_v3_274;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1858189839", "1858189839", "LT02_050_B40_main", "box_OutputOrder_v2_289.Out", "box_Gate_v3_274.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_289_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_332;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2043345087", "2043345087", "LT02_050_B40_main", "box_OutputOrder_v2_289.Out", "box_MultipleOR_332.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_LockTimeOfDay_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_LockTimeOfDay_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|63448058", "63448058", "LT02_050_B40_main", "box_LockTimeOfDay_40.Out", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_416_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_407();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|22303221", "22303221", "LT02_050_B40_main", "box_OutputOrder_v2_416.Out", "box_Simple_Node_407.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_416_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_151();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1908600592", "1908600592", "LT02_050_B40_main", "box_OutputOrder_v2_416.Out", "box_OutputOrder_v2_151.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_354_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_355();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1145916321", "1145916321", "LT02_050_B40_main", "box_OutputOrder_v2_354.Out", "box_Simple_Node_355.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_354_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_350();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2123663286", "2123663286", "LT02_050_B40_main", "box_OutputOrder_v2_354.Out", "box_DynamicLightModifier_350.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_354_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_353();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1322655120", "1322655120", "LT02_050_B40_main", "box_OutputOrder_v2_354.Out", "box_DynamicLightModifier_353.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_354_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_214();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1574753949", "1574753949", "LT02_050_B40_main", "box_OutputOrder_v2_354.Out", "box_DynamicLightModifier_214.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_354_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_347();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|922655376", "922655376", "LT02_050_B40_main", "box_OutputOrder_v2_354.Out", "box_DynamicLightModifier_347.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_354_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_352();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1446058902", "1446058902", "LT02_050_B40_main", "box_OutputOrder_v2_354.Out", "box_DynamicLightModifier_352.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_354_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_351();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|23432401", "23432401", "LT02_050_B40_main", "box_OutputOrder_v2_354.Out", "box_DynamicLightModifier_351.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_354_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_215();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|973082897", "973082897", "LT02_050_B40_main", "box_OutputOrder_v2_354.Out", "box_DynamicLightModifier_215.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_354_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_349();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1612848847", "1612848847", "LT02_050_B40_main", "box_OutputOrder_v2_354.Out", "box_DynamicLightModifier_349.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_354_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_345();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2079524909", "2079524909", "LT02_050_B40_main", "box_OutputOrder_v2_354.Out", "box_DynamicLightModifier_345.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_354_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_346();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1700797964", "1700797964", "LT02_050_B40_main", "box_OutputOrder_v2_354.Out", "box_DynamicLightModifier_346.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_354_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_348();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|154718106", "154718106", "LT02_050_B40_main", "box_OutputOrder_v2_354.Out", "box_DynamicLightModifier_348.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_141_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_123();
    l0 = self.box_Gate_v3_141;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2029728518", "2029728518", "LT02_050_B40_main", "box_Gate_v3_141.Closed", "box_OutputOrder_v2_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_141_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_276();
    l0 = self.box_Gate_v3_141;
    l1 = self.box_PlayDialog_v6_276;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|300260601", "300260601", "LT02_050_B40_main", "box_Gate_v3_141.Out", "box_PlayDialog_v6_276.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_334();
    l0 = self.box_NavLinkModifier_334;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|36379004", "36379004", "LT02_050_B40_main", "box_OutputOrder_v2_76.Out", "box_NavLinkModifier_334.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_427();
    l0 = self.box_SoundModifier_v2_427;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1183517371", "1183517371", "LT02_050_B40_main", "box_OutputOrder_v2_76.Out", "box_SoundModifier_v2_427.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_433();
    l0 = self.box_Gate_v3_433;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1947150456", "1947150456", "LT02_050_B40_main", "box_OutputOrder_v2_76.Out", "box_Gate_v3_433.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_340();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1799299116", "1799299116", "LT02_050_B40_main", "box_OutputOrder_v2_76.Out", "box_Simple_Node_340.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_47();
    l0 = self.box_SoundModifier_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1968517652", "1968517652", "LT02_050_B40_main", "box_OutputOrder_v2_46.Out", "box_SoundModifier_v2_47.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_50();
    l0 = self.box_EntityStatusListener_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|360468640", "360468640", "LT02_050_B40_main", "box_OutputOrder_v2_46.Out", "box_EntityStatusListener_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_52();
    l0 = self.box_EntityStatusListener_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1149144183", "1149144183", "LT02_050_B40_main", "box_OutputOrder_v2_46.Out", "box_EntityStatusListener_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_51();
    l0 = self.box_EntityStatusListener_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|359410387", "359410387", "LT02_050_B40_main", "box_OutputOrder_v2_46.Out", "box_EntityStatusListener_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_272();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|825756618", "825756618", "LT02_050_B40_main", "box_OutputOrder_v2_46.Out", "box_DynamicLightModifier_272.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_111_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_90();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1561110117", "1561110117", "LT02_050_B40_main", "box_Simple_Node_111.Out", "box_Simple_Node_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_311_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundPointModifier_381();
    l0 = self.box_Delay_v5_311;
    l1 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2027464187", "2027464187", "LT02_050_B40_main", "box_Delay_v5_311.TimeElapsed", "box_SoundPointModifier_381.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_269_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_332;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|656440514", "656440514", "LT02_050_B40_main", "box_OutputOrder_v2_269.Out", "box_MultipleOR_332.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_269_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_270();
    l0 = self.box_SoundModifier_v2_270;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1189645255", "1189645255", "LT02_050_B40_main", "box_OutputOrder_v2_269.Out", "box_SoundModifier_v2_270.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_367_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_137();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1847084453", "1847084453", "LT02_050_B40_main", "box_OutputOrder_v2_367.Out", "box_DynamicLightModifier_137.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_367_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_161();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|127914707", "127914707", "LT02_050_B40_main", "box_OutputOrder_v2_367.Out", "box_DynamicLightModifier_161.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|980746273", "980746273", "LT02_050_B40_main", "box_OutputOrder_v2_71.Out", "box_Simple_Node_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_341();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1998861407", "1998861407", "LT02_050_B40_main", "box_OutputOrder_v2_71.Out", "box_Simple_Node_341.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_305();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|111625775", "111625775", "LT02_050_B40_main", "box_OutputOrder_v2_71.Out", "box_Simple_Node_305.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_283_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_189();
    l0 = self.box_Switch_283;
    l1 = self.box_PlayDialog_v6_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|325374232", "325374232", "LT02_050_B40_main", "box_Switch_283.Output", "box_PlayDialog_v6_189.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_283_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_159();
    l0 = self.box_Switch_283;
    l1 = self.box_PlayDialog_v6_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1830975423", "1830975423", "LT02_050_B40_main", "box_Switch_283.Output", "box_PlayDialog_v6_159.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_283_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_285();
    l0 = self.box_Switch_283;
    l1 = self.box_Delay_v5_285;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|7831121", "7831121", "LT02_050_B40_main", "box_Switch_283.Output", "box_Delay_v5_285.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_ActivityInitialized_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|10943427", "10943427", "LT02_050_B40_main", "box_ActivityInitialized_6.Out", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_249_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_266();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|679493888", "679493888", "LT02_050_B40_main", "box_Simple_Node_249.Out", "box_OutputOrder_v2_266.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_20();
    l0 = self.box_Music_Quest_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|558208937", "558208937", "LT02_050_B40_main", "box_OutputOrder_v2_145.Out", "box_Music_Quest_v2_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_145_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_406();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1828718771", "1828718771", "LT02_050_B40_main", "box_OutputOrder_v2_145.Out", "box_Simple_Node_406.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_219_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_142();
    l0 = self.box_UniversalInteractionModifier_v2_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|651345993", "651345993", "LT02_050_B40_main", "box_Simple_Node_219.Out", "box_UniversalInteractionModifier_v2_142.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_229_Done()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_179();
    l0 = self.box_PositionModifier_v2_229;
    l1 = self.box_NavLinkModifier_179;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|279314508", "279314508", "LT02_050_B40_main", "box_PositionModifier_v2_229.Done", "box_NavLinkModifier_179.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_59();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1321531589", "1321531589", "LT02_050_B40_main", "box_OutputOrder_v2_58.Out", "box_Simple_Node_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|403152321", "403152321", "LT02_050_B40_main", "box_OutputOrder_v2_58.Out", "box_ActivityEnd_10.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LT02_050_B40_CamShake_313_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_377();
    l0 = self.box_LT02_050_B40_CamShake_313;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1327575161", "1327575161", "LT02_050_B40_main", "box_LT02_050_B40_CamShake_313.Out", "box_OutputOrder_v2_377.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_170_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_308();
    l0 = self.box_Delay_v5_308;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|944815375", "944815375", "LT02_050_B40_main", "box_ParticleSystem_v3_170.Started", "box_Delay_v5_308.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_231_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1391583286", "1391583286", "LT02_050_B40_main", "box_OutputOrder_v2_231.Out", "box_AddActivityObjective_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_231_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_112();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1834172328", "1834172328", "LT02_050_B40_main", "box_OutputOrder_v2_231.Out", "box_Simple_Node_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_231_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_255();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|791281450", "791281450", "LT02_050_B40_main", "box_OutputOrder_v2_231.Out", "box_Simple_Node_255.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_231_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_256();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1266106698", "1266106698", "LT02_050_B40_main", "box_OutputOrder_v2_231.Out", "box_Simple_Node_256.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_392_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_392_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_16();
    l0 = self.box_CharacterLoadedIdListener_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|36570913", "36570913", "LT02_050_B40_main", "box_SetBoolean_v2_392.Out", "box_CharacterLoadedIdListener_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_203_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_218();
    l0 = self.box_PositionModifier_v2_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|376784370", "376784370", "LT02_050_B40_main", "box_Simple_Node_203.Out", "box_PositionModifier_v2_218.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_281_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_155();
    l0 = self.box_MultipleOR_281;
    l1 = self.box_PlayDialog_v6_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1583387668", "1583387668", "LT02_050_B40_main", "box_MultipleOR_281.Out", "box_PlayDialog_v6_155.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_419_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_418();
    l0 = self.box_OnceOnly_v3_419;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1351620657", "1351620657", "LT02_050_B40_main", "box_OnceOnly_v3_419.Out", "box_OutputOrder_v2_418.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_69_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_134();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1912583801", "1912583801", "LT02_050_B40_main", "box_ParticleSystem_v3_69.Started", "box_ParticleSystem_v3_134.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_344_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_050_B40_CamShake_313();
    l0 = self.box_LT02_050_B40_CamShake_313;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|109862373", "109862373", "LT02_050_B40_main", "box_Simple_Node_344.Out", "box_LT02_050_B40_CamShake_313.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_377_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_306();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|200651340", "200651340", "LT02_050_B40_main", "box_OutputOrder_v2_377.Out", "box_ParticleSystem_v3_306.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_377_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_378();
    l0 = self.box_SoundModifier_v2_378;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1457852188", "1457852188", "LT02_050_B40_main", "box_OutputOrder_v2_377.Out", "box_SoundModifier_v2_378.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_105_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_106();
    l0 = self.box_EntityStatusListener_105;
    l1 = self.box_SpawnAI_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1616483999", "1616483999", "LT02_050_B40_main", "box_EntityStatusListener_105.Loaded", "box_SpawnAI_106.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_158_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_236();
    l0 = self.box_Delay_v5_158;
    l1 = self.box_Gate_v3_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|323360834", "323360834", "LT02_050_B40_main", "box_Delay_v5_158.TimeElapsed", "box_Gate_v3_236.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_67();
    l0 = self.box_Music_Quest_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1167261938", "1167261938", "LT02_050_B40_main", "box_OutputOrder_v2_22.Out", "box_Music_Quest_v2_67.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|739754147", "739754147", "LT02_050_B40_main", "box_OutputOrder_v2_22.Out", "box_ActivityRetry_8.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_417_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_416();
    l0 = self.box_OnceOnly_v3_417;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1534543791", "1534543791", "LT02_050_B40_main", "box_OnceOnly_v3_417.Out", "box_OutputOrder_v2_416.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_16_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_16_LoadedIdReceived();
    params = self:OnEnter_box_HealthListener_v6_23();
    l0 = self.box_CharacterLoadedIdListener_16;
    l1 = self.box_HealthListener_v6_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1516251524", "1516251524", "LT02_050_B40_main", "box_CharacterLoadedIdListener_16.LoadedIdReceived", "box_HealthListener_v6_23.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_308_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_146();
    l0 = self.box_Delay_v5_308;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2091953742", "2091953742", "LT02_050_B40_main", "box_Delay_v5_308.TimeElapsed", "box_ParticleSystem_v3_146.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_435_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_434();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|600008902", "600008902", "LT02_050_B40_main", "box_Simple_Node_435.Out", "box_Simple_Node_434.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_47_Started()
    local params, l0, l1;
    params = self:OnEnter_box_LockTimeOfDay_40();
    l0 = self.box_SoundModifier_v2_47;
    l1 = self.box_LockTimeOfDay_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1196404559", "1196404559", "LT02_050_B40_main", "box_SoundModifier_v2_47.Started", "box_LockTimeOfDay_40.Lock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lock
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_66_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_309();
    l0 = self.box_UniversalInteractionModifier_v2_66;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1620553748", "1620553748", "LT02_050_B40_main", "box_UniversalInteractionModifier_v2_66.Disabled", "box_ActivityObjectiveMarkerModifier_v3_309.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_66_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_433();
    l0 = self.box_UniversalInteractionModifier_v2_66;
    l1 = self.box_Gate_v3_433;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1094182364", "1094182364", "LT02_050_B40_main", "box_UniversalInteractionModifier_v2_66.Enabled", "box_Gate_v3_433.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SoundPointModifier_182_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_385();
    l0 = self.box_EntityStatusListener_385;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1842360926", "1842360926", "LT02_050_B40_main", "box_SoundPointModifier_182.Stopped", "box_EntityStatusListener_385.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_271_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_267();
    l0 = self.box_Delay_v5_271;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|383756460", "383756460", "LT02_050_B40_main", "box_Delay_v5_271.TimeElapsed", "box_OutputOrder_v2_267.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_142_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_129();
    l0 = self.box_UniversalInteractionModifier_v2_142;
    l1 = self.box_NavLinkModifier_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|653400268", "653400268", "LT02_050_B40_main", "box_UniversalInteractionModifier_v2_142.Disabled", "box_NavLinkModifier_129.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_142_Enabled()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_142();
    l0 = self.box_UniversalInteractionModifier_v2_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1744920529", "1744920529", "LT02_050_B40_main", "box_UniversalInteractionModifier_v2_142.Enabled", "box_UniversalInteractionModifier_v2_142.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_146_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_172();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|183126765", "183126765", "LT02_050_B40_main", "box_ParticleSystem_v3_146.Started", "box_ParticleSystem_v3_172.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_236_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_98();
    l0 = self.box_Gate_v3_236;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|862980305", "862980305", "LT02_050_B40_main", "box_Gate_v3_236.Closed", "box_OutputOrder_v2_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_236_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_277();
    l0 = self.box_Gate_v3_236;
    l1 = self.box_PlayDialog_v6_277;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1379140670", "1379140670", "LT02_050_B40_main", "box_Gate_v3_236.Out", "box_PlayDialog_v6_277.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_DynamicLightModifier_259_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_278();
    l0 = self.box_EntityStatusListener_278;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1933107907", "1933107907", "LT02_050_B40_main", "box_DynamicLightModifier_259.Enabled", "box_EntityStatusListener_278.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_390_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_390;
    l1 = self.box_MultipleOR_325;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|844668489", "844668489", "LT02_050_B40_main", "box_Gate_v3_390.Opened", "box_MultipleOR_325.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_390_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_390;
    l1 = self.box_MultipleOR_325;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|756451171", "756451171", "LT02_050_B40_main", "box_Gate_v3_390.Out", "box_MultipleOR_325.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_325_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_391();
    l0 = self.box_MultipleOR_325;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1348927677", "1348927677", "LT02_050_B40_main", "box_MultipleOR_325.Out", "box_Compare_Boolean_391.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_330_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_274();
    l0 = self.box_Gate_v3_274;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1639161906", "1639161906", "LT02_050_B40_main", "box_Simple_Node_330.Out", "box_Gate_v3_274.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_396_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_399();
    l0 = self.box_OnceOnly_v3_396;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1661990413", "1661990413", "LT02_050_B40_main", "box_OnceOnly_v3_396.Out", "box_OutputOrder_v2_399.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_107_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_389();
    l0 = self.box_MultipleOR_107;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|185978979", "185978979", "LT02_050_B40_main", "box_MultipleOR_107.Out", "box_Simple_Node_389.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_131_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_243();
    l0 = self.box_Gate_v3_131;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|548859206", "548859206", "LT02_050_B40_main", "box_Gate_v3_131.Out", "box_Simple_Node_243.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_99_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_63();
    l0 = self.box_EntityStatusListener_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1097266538", "1097266538", "LT02_050_B40_main", "box_OutputOrder_v2_99.Out", "box_EntityStatusListener_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_96();
    l0 = self.box_EntityStatusListener_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|315283108", "315283108", "LT02_050_B40_main", "box_OutputOrder_v2_99.Out", "box_EntityStatusListener_96.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_99_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_102();
    l0 = self.box_EntityStatusListener_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|448619859", "448619859", "LT02_050_B40_main", "box_OutputOrder_v2_99.Out", "box_EntityStatusListener_102.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_99_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_105();
    l0 = self.box_EntityStatusListener_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1446906447", "1446906447", "LT02_050_B40_main", "box_OutputOrder_v2_99.Out", "box_EntityStatusListener_105.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_99_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_101();
    l0 = self.box_EntityStatusListener_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|698173219", "698173219", "LT02_050_B40_main", "box_OutputOrder_v2_99.Out", "box_EntityStatusListener_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_118_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_120();
    l0 = self.box_Delay_v5_118;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|438945730", "438945730", "LT02_050_B40_main", "box_Delay_v5_118.TimeElapsed", "box_RandomFloat_v2_120.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_318_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_312();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1979730904", "1979730904", "LT02_050_B40_main", "box_ParticleSystem_v3_318.Started", "box_ParticleSystem_v3_312.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_261_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_121();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1542132772", "1542132772", "LT02_050_B40_main", "box_DynamicLightModifier_261.Disabled", "box_Simple_Node_121.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_358_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_359();
    l0 = self.box_Switch_358;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1931783787", "1931783787", "LT02_050_B40_main", "box_Switch_358.Output", "box_OutputOrder_v2_359.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_358_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_367();
    l0 = self.box_Switch_358;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1519292314", "1519292314", "LT02_050_B40_main", "box_Switch_358.Output", "box_OutputOrder_v2_367.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_65_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_406();
    l0 = self.box_ProximityTrigger_v2_65;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1478457338", "1478457338", "LT02_050_B40_main", "box_ProximityTrigger_v2_65.Enabled", "box_Simple_Node_406.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_65_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_65;
    l1 = self.box_OnceOnly_v3_408;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|840540631", "840540631", "LT02_050_B40_main", "box_ProximityTrigger_v2_65.OnOccupied", "box_OnceOnly_v3_408.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_274_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_249();
    l0 = self.box_Gate_v3_274;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1695546809", "1695546809", "LT02_050_B40_main", "box_Gate_v3_274.Closed", "box_Simple_Node_249.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_274_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_2();
    l0 = self.box_Gate_v3_274;
    l1 = self.box_Switch_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|898390922", "898390922", "LT02_050_B40_main", "box_Gate_v3_274.Out", "box_Switch_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_177_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_198();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|144695365", "144695365", "LT02_050_B40_main", "box_OutputOrder_v2_177.Out", "box_OutputOrder_v2_198.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_177_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_141();
    l0 = self.box_Gate_v3_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1037893740", "1037893740", "LT02_050_B40_main", "box_OutputOrder_v2_177.Out", "box_Gate_v3_141.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_364_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_361();
    l0 = self.box_Gate_v3_361;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1240597040", "1240597040", "LT02_050_B40_main", "box_Simple_Node_364.Out", "box_Gate_v3_361.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_247_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_303();
    l0 = self.box_Delay_v5_303;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1191601341", "1191601341", "LT02_050_B40_main", "box_ParticleSystem_v3_247.Started", "box_Delay_v5_303.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_156_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_132();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|389469321", "389469321", "LT02_050_B40_main", "box_Simple_Node_156.Out", "box_OutputOrder_v2_132.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_277_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_139();
    l0 = self.box_PlayDialog_v6_277;
    l1 = self.box_Delay_v5_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1351835191", "1351835191", "LT02_050_B40_main", "box_PlayDialog_v6_277.Finished", "box_Delay_v5_139.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EndActivityObjective_v2_55_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1809672284", "1809672284", "LT02_050_B40_main", "box_EndActivityObjective_v2_55.Out", "box_OutputOrder_v2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_297_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_343();
    l0 = self.box_Delay_v5_297;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1332944871", "1332944871", "LT02_050_B40_main", "box_Delay_v5_297.TimeElapsed", "box_ParticleSystem_v3_343.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_93_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_37();
    l0 = self.box_Delay_v5_93;
    l1 = self.box_PlayDialog_v6_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|910450512", "910450512", "LT02_050_B40_main", "box_Delay_v5_93.TimeElapsed", "box_PlayDialog_v6_37.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_114_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_115();
    l0 = self.box_EntityStatusListener_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1656479979", "1656479979", "LT02_050_B40_main", "box_OutputOrder_v2_114.Out", "box_EntityStatusListener_115.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_114_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_100();
    l0 = self.box_EntityStatusListener_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1613934381", "1613934381", "LT02_050_B40_main", "box_OutputOrder_v2_114.Out", "box_EntityStatusListener_100.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_100_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_108();
    l0 = self.box_EntityStatusListener_100;
    l1 = self.box_SpawnAI_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|263971753", "263971753", "LT02_050_B40_main", "box_EntityStatusListener_100.Loaded", "box_SpawnAI_108.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_92_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_94();
    l0 = self.box_Delay_v5_92;
    l1 = self.box_PlayDialog_v6_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1788400688", "1788400688", "LT02_050_B40_main", "box_Delay_v5_92.TimeElapsed", "box_PlayDialog_v6_94.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_63_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_87();
    l0 = self.box_EntityStatusListener_63;
    l1 = self.box_SpawnAI_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1373670861", "1373670861", "LT02_050_B40_main", "box_EntityStatusListener_63.Loaded", "box_SpawnAI_87.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_54();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|912202741", "912202741", "LT02_050_B40_main", "box_OutputOrder_v2_25.Out", "box_Simple_Node_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|457592039", "457592039", "LT02_050_B40_main", "box_OutputOrder_v2_25.Out", "box_Simple_Node_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_3_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_406();
    l0 = self.box_ProximityTrigger_v2_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2082603222", "2082603222", "LT02_050_B40_main", "box_ProximityTrigger_v2_3.Enabled", "box_Simple_Node_406.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_3_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_3;
    l1 = self.box_OnceOnly_v3_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|406485372", "406485372", "LT02_050_B40_main", "box_ProximityTrigger_v2_3.OnOccupied", "box_OnceOnly_v3_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_DynamicLightModifier_272_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_273();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|152385246", "152385246", "LT02_050_B40_main", "box_DynamicLightModifier_272.Disabled", "box_DynamicLightModifier_273.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_425_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_430();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1752471684", "1752471684", "LT02_050_B40_main", "box_Compare_Integers_425.A_eq_B", "box_Simple_Node_430.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_425_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_402;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1365578124", "1365578124", "LT02_050_B40_main", "box_Compare_Integers_425.A_lt_B", "box_MultipleOR_402.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_287_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_292();
    l0 = self.box_EntityStatusListener_292;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1938368300", "1938368300", "LT02_050_B40_main", "box_Simple_Node_287.Out", "box_EntityStatusListener_292.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_315_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_319();
    l0 = self.box_Delay_v5_319;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|163995235", "163995235", "LT02_050_B40_main", "box_OutputOrder_v2_315.Out", "box_Delay_v5_319.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_315_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_314();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1073883460", "1073883460", "LT02_050_B40_main", "box_OutputOrder_v2_315.Out", "box_Simple_Node_314.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_315_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_344();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1204427750", "1204427750", "LT02_050_B40_main", "box_OutputOrder_v2_315.Out", "box_Simple_Node_344.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_315_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_375();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1904046348", "1904046348", "LT02_050_B40_main", "box_OutputOrder_v2_315.Out", "box_Simple_Node_375.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_315_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_176();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1975746668", "1975746668", "LT02_050_B40_main", "box_OutputOrder_v2_315.Out", "box_Simple_Node_176.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_426_Closed()
    local l0, l1;
    l0 = self.box_Gate_v3_426;
    l1 = self.box_MultipleOR_428;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1636874012", "1636874012", "LT02_050_B40_main", "box_Gate_v3_426.Closed", "box_MultipleOR_428.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_426_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_424();
    l0 = self.box_Gate_v3_426;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1968046796", "1968046796", "LT02_050_B40_main", "box_Gate_v3_426.Out", "box_ActivityObjectiveMarkerModifier_v3_424.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT02_050_B40_CamShake_185_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_298();
    l0 = self.box_LT02_050_B40_CamShake_185;
    l1 = self.box_Delay_v5_298;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1619027470", "1619027470", "LT02_050_B40_main", "box_LT02_050_B40_CamShake_185.Out", "box_Delay_v5_298.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_252_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_89();
    l0 = self.box_MultipleOR_252;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1088232745", "1088232745", "LT02_050_B40_main", "box_MultipleOR_252.Out", "box_OutputOrder_v2_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_62();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|320658771", "320658771", "LT02_050_B40_main", "box_OutputOrder_v2_61.Out", "box_Simple_Node_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_31();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1020750795", "1020750795", "LT02_050_B40_main", "box_OutputOrder_v2_61.Out", "box_Simple_Node_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_167();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1715141443", "1715141443", "LT02_050_B40_main", "box_OutputOrder_v2_61.Out", "box_Simple_Node_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_95_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1880993092", "1880993092", "LT02_050_B40_main", "box_Simple_Node_95.Out", "box_OutputOrder_v2_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|96717664", "96717664", "LT02_050_B40_main", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1509024545", "1509024545", "LT02_050_B40_main", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_164_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_406();
    l0 = self.box_ProximityTrigger_v2_164;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|168136449", "168136449", "LT02_050_B40_main", "box_ProximityTrigger_v2_164.Enabled", "box_Simple_Node_406.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_164_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_164;
    l1 = self.box_OnceOnly_v3_421;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1959224203", "1959224203", "LT02_050_B40_main", "box_ProximityTrigger_v2_164.OnOccupied", "box_OnceOnly_v3_421.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_239_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_158();
    l0 = self.box_MultipleOR_239;
    l1 = self.box_Delay_v5_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|634461939", "634461939", "LT02_050_B40_main", "box_MultipleOR_239.Out", "box_Delay_v5_158.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_276_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_149();
    l0 = self.box_PlayDialog_v6_276;
    l1 = self.box_Delay_v5_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1181118273", "1181118273", "LT02_050_B40_main", "box_PlayDialog_v6_276.Finished", "box_Delay_v5_149.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Simple_Node_121_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|485102577", "485102577", "LT02_050_B40_main", "box_Simple_Node_121.Out", "box_MultipleOR_119.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_293_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_80();
    l0 = self.box_EntityStatusListener_293;
    l1 = self.box_EntityStatusListener_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|740378269", "740378269", "LT02_050_B40_main", "box_EntityStatusListener_293.Loaded", "box_EntityStatusListener_80.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_147_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_246();
    l0 = self.box_PlayDialog_v6_246;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|984104554", "984104554", "LT02_050_B40_main", "box_OutputOrder_v2_147.Out", "box_PlayDialog_v6_246.CancelQueued", clone:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_147_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_246();
    l0 = self.box_PlayDialog_v6_246;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|187267284", "187267284", "LT02_050_B40_main", "box_OutputOrder_v2_147.Out", "box_PlayDialog_v6_246.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_244_Leave()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_244;
    l1 = self.box_OnceOnly_v3_253;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|599519465", "599519465", "LT02_050_B40_main", "box_ProximityTrigger_v2_244.Leave", "box_OnceOnly_v3_253.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_323_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_321();
    l0 = self.box_Delay_v5_321;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|338884791", "338884791", "LT02_050_B40_main", "box_ParticleSystem_v3_323.Started", "box_Delay_v5_321.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_385_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_384();
    l0 = self.box_EntityStatusListener_385;
    l1 = self.box_SoundModifier_v2_384;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|23176703", "23176703", "LT02_050_B40_main", "box_EntityStatusListener_385.Loaded", "box_SoundModifier_v2_384.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Simple_Node_331_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_330();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1974285000", "1974285000", "LT02_050_B40_main", "box_Simple_Node_331.Out", "box_Simple_Node_330.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_18_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_406();
    l0 = self.box_ProximityTrigger_v2_18;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1486724811", "1486724811", "LT02_050_B40_main", "box_ProximityTrigger_v2_18.Enabled", "box_Simple_Node_406.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_18_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_18;
    l1 = self.box_OnceOnly_v3_412;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|366891923", "366891923", "LT02_050_B40_main", "box_ProximityTrigger_v2_18.OnOccupied", "box_OnceOnly_v3_412.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_333_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_56();
    l0 = self.box_EntityStatusListener_333;
    l1 = self.box_EntityStatusListener_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1279011022", "1279011022", "LT02_050_B40_main", "box_EntityStatusListener_333.Loaded", "box_EntityStatusListener_56.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_LT02_050_B40_CamShake_317_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_315();
    l0 = self.box_LT02_050_B40_CamShake_317;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1726234870", "1726234870", "LT02_050_B40_main", "box_LT02_050_B40_CamShake_317.Out", "box_OutputOrder_v2_315.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_169_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_147();
    l0 = self.box_Gate_v3_169;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1151570496", "1151570496", "LT02_050_B40_main", "box_Gate_v3_169.Closed", "box_OutputOrder_v2_147.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_169_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_246();
    l0 = self.box_Gate_v3_169;
    l1 = self.box_PlayDialog_v6_246;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|164998348", "164998348", "LT02_050_B40_main", "box_Gate_v3_169.Out", "box_PlayDialog_v6_246.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_139_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_141();
    l0 = self.box_Delay_v5_139;
    l1 = self.box_Gate_v3_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1789003218", "1789003218", "LT02_050_B40_main", "box_Delay_v5_139.TimeElapsed", "box_Gate_v3_141.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Switch_2_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_258();
    l0 = self.box_Switch_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|304078066", "304078066", "LT02_050_B40_main", "box_Switch_2.Output", "box_OutputOrder_v2_258.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_2_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_262();
    l0 = self.box_Switch_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1884554336", "1884554336", "LT02_050_B40_main", "box_Switch_2.Output", "box_OutputOrder_v2_262.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_356_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_356_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_363();
    l0 = self.box_Delay_v5_363;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|442914206", "442914206", "LT02_050_B40_main", "box_RandomFloat_v2_356.Out", "box_Delay_v5_363.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_163_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_183();
    l0 = self.box_ProximityTrigger_v2_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1927617000", "1927617000", "LT02_050_B40_main", "box_OutputOrder_v2_163.Out", "box_ProximityTrigger_v2_183.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_163_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_188();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|924355489", "924355489", "LT02_050_B40_main", "box_OutputOrder_v2_163.Out", "box_Simple_Node_188.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_156();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|458001010", "458001010", "LT02_050_B40_main", "box_OutputOrder_v2_163.Out", "box_Simple_Node_156.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_200();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|567904442", "567904442", "LT02_050_B40_main", "box_OutputOrder_v2_163.Out", "box_Simple_Node_200.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_207();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|966796358", "966796358", "LT02_050_B40_main", "box_OutputOrder_v2_163.Out", "box_Simple_Node_207.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_412_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_413();
    l0 = self.box_OnceOnly_v3_412;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1632988135", "1632988135", "LT02_050_B40_main", "box_OnceOnly_v3_412.Out", "box_OutputOrder_v2_413.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_294();
    l0 = self.box_EntityStatusListener_294;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1066015769", "1066015769", "LT02_050_B40_main", "box_OutputOrder_v2_77.Out", "box_EntityStatusListener_294.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_295();
    l0 = self.box_EntityStatusListener_295;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1981269853", "1981269853", "LT02_050_B40_main", "box_OutputOrder_v2_77.Out", "box_EntityStatusListener_295.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_275();
    l0 = self.box_EntityStatusListener_275;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1407171543", "1407171543", "LT02_050_B40_main", "box_OutputOrder_v2_77.Out", "box_EntityStatusListener_275.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_333();
    l0 = self.box_EntityStatusListener_333;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|387041652", "387041652", "LT02_050_B40_main", "box_OutputOrder_v2_77.Out", "box_EntityStatusListener_333.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_293();
    l0 = self.box_EntityStatusListener_293;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|531767808", "531767808", "LT02_050_B40_main", "box_OutputOrder_v2_77.Out", "box_EntityStatusListener_293.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_232_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_227();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|263127434", "263127434", "LT02_050_B40_main", "box_Simple_Node_232.Out", "box_OutputOrder_v2_227.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_276();
    l0 = self.box_PlayDialog_v6_276;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1426126169", "1426126169", "LT02_050_B40_main", "box_OutputOrder_v2_123.Out", "box_PlayDialog_v6_276.CancelQueued", clone:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_123_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_276();
    l0 = self.box_PlayDialog_v6_276;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1980880960", "1980880960", "LT02_050_B40_main", "box_OutputOrder_v2_123.Out", "box_PlayDialog_v6_276.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_295_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_82();
    l0 = self.box_EntityStatusListener_295;
    l1 = self.box_EntityStatusListener_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|159189026", "159189026", "LT02_050_B40_main", "box_EntityStatusListener_295.Loaded", "box_EntityStatusListener_82.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_140_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_126();
    l0 = self.box_UniversalInteractionModifier_v2_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2046399752", "2046399752", "LT02_050_B40_main", "box_Simple_Node_140.Out", "box_UniversalInteractionModifier_v2_126.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_303_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_27();
    l0 = self.box_Delay_v5_303;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1652857052", "1652857052", "LT02_050_B40_main", "box_Delay_v5_303.TimeElapsed", "box_ParticleSystem_v3_27.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_207_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_230();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|119640913", "119640913", "LT02_050_B40_main", "box_Simple_Node_207.Out", "box_OutputOrder_v2_230.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_72_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_406();
    l0 = self.box_ProximityTrigger_v2_72;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|150467908", "150467908", "LT02_050_B40_main", "box_ProximityTrigger_v2_72.Enabled", "box_Simple_Node_406.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_72_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_72;
    l1 = self.box_OnceOnly_v3_396;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|519987414", "519987414", "LT02_050_B40_main", "box_ProximityTrigger_v2_72.OnOccupied", "box_OnceOnly_v3_396.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_335_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1115258867", "1115258867", "LT02_050_B40_main", "box_OutputOrder_v2_335.Out", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_335_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_216();
    l0 = self.box_BaseMissionBlock_v2_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1031281466", "1031281466", "LT02_050_B40_main", "box_OutputOrder_v2_335.Out", "box_BaseMissionBlock_v2_216.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_307_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_164();
    l0 = self.box_ProximityTrigger_v2_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1953191523", "1953191523", "LT02_050_B40_main", "box_OutputOrder_v2_307.Out", "box_ProximityTrigger_v2_164.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_307_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_328();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1036643752", "1036643752", "LT02_050_B40_main", "box_OutputOrder_v2_307.Out", "box_Simple_Node_328.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_326_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_390();
    l0 = self.box_Gate_v3_326;
    l1 = self.box_Gate_v3_390;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1934069776", "1934069776", "LT02_050_B40_main", "box_Gate_v3_326.Out", "box_Gate_v3_390.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Switch_288_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_209();
    l0 = self.box_Switch_288;
    l1 = self.box_PlayDialog_v6_209;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1285230046", "1285230046", "LT02_050_B40_main", "box_Switch_288.Output", "box_PlayDialog_v6_209.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_288_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_221();
    l0 = self.box_Switch_288;
    l1 = self.box_PlayDialog_v6_221;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1062503627", "1062503627", "LT02_050_B40_main", "box_Switch_288.Output", "box_PlayDialog_v6_221.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_288_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_220();
    l0 = self.box_Switch_288;
    l1 = self.box_PlayDialog_v6_220;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1019958029", "1019958029", "LT02_050_B40_main", "box_Switch_288.Output", "box_PlayDialog_v6_220.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_288_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_290();
    l0 = self.box_Switch_288;
    l1 = self.box_Delay_v5_290;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|160318452", "160318452", "LT02_050_B40_main", "box_Switch_288.Output", "box_Delay_v5_290.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_SoundModifier_v2_104_Finished()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_104;
    l1 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|32418682", "32418682", "LT02_050_B40_main", "box_SoundModifier_v2_104.Finished", "box_MultipleOR_119.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_258_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_245();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1717421138", "1717421138", "LT02_050_B40_main", "box_OutputOrder_v2_258.Out", "box_DynamicLightModifier_245.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_258_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_250();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1494694719", "1494694719", "LT02_050_B40_main", "box_OutputOrder_v2_258.Out", "box_DynamicLightModifier_250.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_258_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_251();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1955338101", "1955338101", "LT02_050_B40_main", "box_OutputOrder_v2_258.Out", "box_DynamicLightModifier_251.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_258_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_257();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1015686034", "1015686034", "LT02_050_B40_main", "box_OutputOrder_v2_258.Out", "box_DynamicLightModifier_257.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|384455811", "384455811", "LT02_050_B40_main", "box_Simple_Node_74.Out", "box_OutputOrder_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_429_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_428;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2107421313", "2107421313", "LT02_050_B40_main", "box_Simple_Node_429.Out", "box_MultipleOR_428.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_411_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_145();
    l0 = self.box_ProximityTrigger_v2_411;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|445472592", "445472592", "LT02_050_B40_main", "box_ProximityTrigger_v2_411.Enabled", "box_OutputOrder_v2_145.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_411_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_411;
    l1 = self.box_OnceOnly_v3_417;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|351513627", "351513627", "LT02_050_B40_main", "box_ProximityTrigger_v2_411.OnOccupied", "box_OnceOnly_v3_417.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_98_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_277();
    l0 = self.box_PlayDialog_v6_277;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1181652799", "1181652799", "LT02_050_B40_main", "box_OutputOrder_v2_98.Out", "box_PlayDialog_v6_277.CancelQueued", clone:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_98_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_277();
    l0 = self.box_PlayDialog_v6_277;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1746660707", "1746660707", "LT02_050_B40_main", "box_OutputOrder_v2_98.Out", "box_PlayDialog_v6_277.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_RandomFloat_v2_117_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_117_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_118();
    l0 = self.box_Delay_v5_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|338153884", "338153884", "LT02_050_B40_main", "box_RandomFloat_v2_117.Out", "box_Delay_v5_118.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_369_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_368();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1183661935", "1183661935", "LT02_050_B40_main", "box_OutputOrder_v2_369.Out", "box_DynamicLightModifier_368.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_369_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_370();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1325638731", "1325638731", "LT02_050_B40_main", "box_OutputOrder_v2_369.Out", "box_DynamicLightModifier_370.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_23_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Revive_Target_v2_91();
    l0 = self.box_HealthListener_v6_23;
    l1 = self.box_Brick_Revive_Target_v2_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1378369632", "1378369632", "LT02_050_B40_main", "box_HealthListener_v6_23.Downed", "box_Brick_Revive_Target_v2_91.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_23_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_53();
    l0 = self.box_HealthListener_v6_23;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|981544647", "981544647", "LT02_050_B40_main", "box_HealthListener_v6_23.Enabled", "box_TaggingModifier_v3_53.TagEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- TagEntity
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_238_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_406();
    l0 = self.box_ProximityTrigger_v2_238;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1284587689", "1284587689", "LT02_050_B40_main", "box_ProximityTrigger_v2_238.Enabled", "box_Simple_Node_406.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_238_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_238;
    l1 = self.box_OnceOnly_v3_419;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|277151476", "277151476", "LT02_050_B40_main", "box_ProximityTrigger_v2_238.OnOccupied", "box_OnceOnly_v3_419.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_397_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_401();
    l0 = self.box_IndexList_v2_397;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1529753652", "1529753652", "LT02_050_B40_main", "box_IndexList_v2_397.Output", "box_ActivityObjectiveMarkerModifier_v3_401.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_397_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_73();
    l0 = self.box_IndexList_v2_397;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2087885396", "2087885396", "LT02_050_B40_main", "box_IndexList_v2_397.Output", "box_ActivityObjectiveMarkerModifier_v3_73.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_397_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33();
    l0 = self.box_IndexList_v2_397;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1028945980", "1028945980", "LT02_050_B40_main", "box_IndexList_v2_397.Output", "box_ActivityObjectiveMarkerModifier_v3_33.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_397_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_24();
    l0 = self.box_IndexList_v2_397;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1469902712", "1469902712", "LT02_050_B40_main", "box_IndexList_v2_397.Output", "box_ActivityObjectiveMarkerModifier_v3_24.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_397_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_410();
    l0 = self.box_IndexList_v2_397;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|99225338", "99225338", "LT02_050_B40_main", "box_IndexList_v2_397.Output", "box_ActivityObjectiveMarkerModifier_v3_410.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_397_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_144();
    l0 = self.box_IndexList_v2_397;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1402357601", "1402357601", "LT02_050_B40_main", "box_IndexList_v2_397.Output", "box_ActivityObjectiveMarkerModifier_v3_144.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_397_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_223();
    l0 = self.box_IndexList_v2_397;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1028790374", "1028790374", "LT02_050_B40_main", "box_IndexList_v2_397.Output", "box_ActivityObjectiveMarkerModifier_v3_223.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_397_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_202();
    l0 = self.box_IndexList_v2_397;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|343560531", "343560531", "LT02_050_B40_main", "box_IndexList_v2_397.Output", "box_ActivityObjectiveMarkerModifier_v3_202.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_397_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_429();
    l0 = self.box_IndexList_v2_397;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|134085807", "134085807", "LT02_050_B40_main", "box_IndexList_v2_397.Output", "box_Simple_Node_429.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_342_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_411();
    l0 = self.box_ProximityTrigger_v2_411;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1362926388", "1362926388", "LT02_050_B40_main", "box_OutputOrder_v2_342.Out", "box_ProximityTrigger_v2_411.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_342_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_339();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1418832302", "1418832302", "LT02_050_B40_main", "box_OutputOrder_v2_342.Out", "box_Simple_Node_339.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_246_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_131();
    l0 = self.box_PlayDialog_v6_246;
    l1 = self.box_Gate_v3_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|334122487", "334122487", "LT02_050_B40_main", "box_PlayDialog_v6_246.Finished", "box_Gate_v3_131.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_253_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_253;
    l1 = self.box_MultipleOR_252;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|521519202", "521519202", "LT02_050_B40_main", "box_OnceOnly_v3_253.Out", "box_MultipleOR_252.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_253_Out_1()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_253;
    l1 = self.box_MultipleOR_252;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1014380467", "1014380467", "LT02_050_B40_main", "box_OnceOnly_v3_253.Out", "box_MultipleOR_252.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_375_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_374();
    l0 = self.box_SoundModifier_v2_374;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|147051521", "147051521", "LT02_050_B40_main", "box_Simple_Node_375.Out", "box_SoundModifier_v2_374.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_235_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_165();
    l0 = self.box_PositionModifier_v2_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1604430528", "1604430528", "LT02_050_B40_main", "box_Simple_Node_235.Out", "box_PositionModifier_v2_165.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_432_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_55();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|970522118", "970522118", "LT02_050_B40_main", "box_Simple_Node_432.Out", "box_EndActivityObjective_v2_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_70_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_92();
    l0 = self.box_ProximityTrigger_v2_70;
    l1 = self.box_Delay_v5_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1259242544", "1259242544", "LT02_050_B40_main", "box_ProximityTrigger_v2_70.Leave", "box_Delay_v5_92.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_149_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_169();
    l0 = self.box_Delay_v5_149;
    l1 = self.box_Gate_v3_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|163738400", "163738400", "LT02_050_B40_main", "box_Delay_v5_149.TimeElapsed", "box_Gate_v3_169.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_393_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_393_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|793848915", "793848915", "LT02_050_B40_main", "box_SetBoolean_v2_393.Out", "box_MultipleOR_107.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_200_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_226();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2113251223", "2113251223", "LT02_050_B40_main", "box_Simple_Node_200.Out", "box_OutputOrder_v2_226.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_228_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_229();
    l0 = self.box_PositionModifier_v2_229;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1283574612", "1283574612", "LT02_050_B40_main", "box_Simple_Node_228.Out", "box_PositionModifier_v2_229.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_198_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_178();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1159530189", "1159530189", "LT02_050_B40_main", "box_OutputOrder_v2_198.Out", "box_OutputOrder_v2_178.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_198_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_169();
    l0 = self.box_Gate_v3_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|458138589", "458138589", "LT02_050_B40_main", "box_OutputOrder_v2_198.Out", "box_Gate_v3_169.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_166_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_354();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1527501187", "1527501187", "LT02_050_B40_main", "box_Simple_Node_166.Out", "box_OutputOrder_v2_354.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_132_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_234();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|979955079", "979955079", "LT02_050_B40_main", "box_OutputOrder_v2_132.Out", "box_OutputOrder_v2_234.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_132_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_240();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|621314882", "621314882", "LT02_050_B40_main", "box_OutputOrder_v2_132.Out", "box_ParticleSystem_v3_240.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_132_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_150();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1229809604", "1229809604", "LT02_050_B40_main", "box_OutputOrder_v2_132.Out", "box_ParticleSystem_v3_150.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_132_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_127();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|641529428", "641529428", "LT02_050_B40_main", "box_OutputOrder_v2_132.Out", "box_ParticleSystem_v3_127.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_132_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_210();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1686743701", "1686743701", "LT02_050_B40_main", "box_OutputOrder_v2_132.Out", "box_ParticleSystem_v3_210.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_132_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_241();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|993157783", "993157783", "LT02_050_B40_main", "box_OutputOrder_v2_132.Out", "box_ParticleSystem_v3_241.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_132_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_171();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|172993324", "172993324", "LT02_050_B40_main", "box_OutputOrder_v2_132.Out", "box_ParticleSystem_v3_171.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_431_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_432();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1769413778", "1769413778", "LT02_050_B40_main", "box_Simple_Node_431.Out", "box_Simple_Node_432.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_157_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_197();
    l0 = self.box_UniversalInteractionModifier_v2_157;
    l1 = self.box_NavLinkModifier_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|5217869", "5217869", "LT02_050_B40_main", "box_UniversalInteractionModifier_v2_157.Disabled", "box_NavLinkModifier_197.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_157_Enabled()
    local params, l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_157();
    l0 = self.box_UniversalInteractionModifier_v2_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|739516171", "739516171", "LT02_050_B40_main", "box_UniversalInteractionModifier_v2_157.Enabled", "box_UniversalInteractionModifier_v2_157.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_421_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_420();
    l0 = self.box_OnceOnly_v3_421;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2072429654", "2072429654", "LT02_050_B40_main", "box_OnceOnly_v3_421.Out", "box_OutputOrder_v2_420.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_296_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_302();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1249475660", "1249475660", "LT02_050_B40_main", "box_ParticleSystem_v3_296.Started", "box_ParticleSystem_v3_302.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_50_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_39();
    l0 = self.box_EntityStatusListener_50;
    l1 = self.box_SoundModifier_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1901559403", "1901559403", "LT02_050_B40_main", "box_EntityStatusListener_50.Loaded", "box_SoundModifier_v2_39.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_418_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_407();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|788105294", "788105294", "LT02_050_B40_main", "box_OutputOrder_v2_418.Out", "box_Simple_Node_407.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_418_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_307();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|47334124", "47334124", "LT02_050_B40_main", "box_OutputOrder_v2_418.Out", "box_OutputOrder_v2_307.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_75_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_69();
    l0 = self.box_Delay_v5_75;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|578501317", "578501317", "LT02_050_B40_main", "box_Delay_v5_75.TimeElapsed", "box_ParticleSystem_v3_69.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|179792223", "179792223", "LT02_050_B40_main", "box_OutputOrder_v2_1.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_336();
    l0 = self.box_GunsForHireSystemModifier_336;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|573629300", "573629300", "LT02_050_B40_main", "box_OutputOrder_v2_1.Out", "box_GunsForHireSystemModifier_336.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1834222595", "1834222595", "LT02_050_B40_main", "box_OutputOrder_v2_1.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_230_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_235();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1429765382", "1429765382", "LT02_050_B40_main", "box_OutputOrder_v2_230.Out", "box_Simple_Node_235.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_230_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_203();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1871723841", "1871723841", "LT02_050_B40_main", "box_OutputOrder_v2_230.Out", "box_Simple_Node_203.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_230_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_228();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1688463725", "1688463725", "LT02_050_B40_main", "box_OutputOrder_v2_230.Out", "box_Simple_Node_228.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_230_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_140();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|174390057", "174390057", "LT02_050_B40_main", "box_OutputOrder_v2_230.Out", "box_Simple_Node_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_230_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_219();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|499455502", "499455502", "LT02_050_B40_main", "box_OutputOrder_v2_230.Out", "box_Simple_Node_219.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_230_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_186();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1059764496", "1059764496", "LT02_050_B40_main", "box_OutputOrder_v2_230.Out", "box_Simple_Node_186.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_56_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_12();
    l0 = self.box_EntityStatusListener_56;
    l1 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|972922481", "972922481", "LT02_050_B40_main", "box_EntityStatusListener_56.Loaded", "box_SpawnAI_12.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_322_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundPointModifier_382();
    l0 = self.box_Delay_v5_322;
    l1 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|705714326", "705714326", "LT02_050_B40_main", "box_Delay_v5_322.TimeElapsed", "box_SoundPointModifier_382.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_409_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_407();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|16539219", "16539219", "LT02_050_B40_main", "box_OutputOrder_v2_409.Out", "box_Simple_Node_407.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_409_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1083481596", "1083481596", "LT02_050_B40_main", "box_OutputOrder_v2_409.Out", "box_OutputOrder_v2_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_11_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1284483548", "1284483548", "LT02_050_B40_main", "box_GetPlayerGroup_v2_11.Out", "box_OutputOrder_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_361_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_369();
    l0 = self.box_Gate_v3_361;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|554959980", "554959980", "LT02_050_B40_main", "box_Gate_v3_361.Closed", "box_OutputOrder_v2_369.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_361_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_358();
    l0 = self.box_Gate_v3_361;
    l1 = self.box_Switch_358;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|399466352", "399466352", "LT02_050_B40_main", "box_Gate_v3_361.Out", "box_Switch_358.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_319_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_316();
    l0 = self.box_Delay_v5_319;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|743953210", "743953210", "LT02_050_B40_main", "box_Delay_v5_319.TimeElapsed", "box_ParticleSystem_v3_316.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_65();
    l0 = self.box_ProximityTrigger_v2_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|757565941", "757565941", "LT02_050_B40_main", "box_Simple_Node_19.Out", "box_ProximityTrigger_v2_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_301_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_299();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|51571336", "51571336", "LT02_050_B40_main", "box_ParticleSystem_v3_301.Started", "box_ParticleSystem_v3_299.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|126671580", "126671580", "LT02_050_B40_main", "box_Simple_Node_38.Out", "box_OutputOrder_v2_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_405_Out()
    local l0;
    self:OnExit_box_IntegerArithmetics_v2_405_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_400;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1575353261", "1575353261", "LT02_050_B40_main", "box_IntegerArithmetics_v2_405.Out", "box_MultipleOR_400.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_366_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_361();
    l0 = self.box_Gate_v3_361;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1479251768", "1479251768", "LT02_050_B40_main", "box_OutputOrder_v2_366.Out", "box_Gate_v3_361.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_366_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_357;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1802943967", "1802943967", "LT02_050_B40_main", "box_OutputOrder_v2_366.Out", "box_MultipleOR_357.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_304()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_304");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|@Jump_FiltrationScreenShake");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_304_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_371()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_371");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|@Jump_FlickerExitLight");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_371_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_243()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_243");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|@Jump_Halls1_LoopingVO");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_243_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_389()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_389");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|@Jump_PrattStatus");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_389_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|@Jump_Precache_VFX_2ndLayer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_337_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_341()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_341");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|@Jump_Precache_VFX_3rdLayer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_341_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_305()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_305");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|@Jump_ResRmLow_ScreenShake");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_305_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_328()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_328");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|@Jump_Staircase_ScreenShake");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_328_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|@Jump_StopListeners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_59_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_388()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_388");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|@Jump_StopPrattListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_388_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_430()
    local params, l0;
    DrawTextToScreen("Comment: Trigger 9 Used: Force Disable Waypoint 9", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Jump_Trigger9Used', Class: 'Simple Node')-- Comment: Trigger 9 Used: Force Disable Waypoint 9");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_430");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|@Jump_Trigger9Used");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_430_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_406()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_406");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|@Jump_TriggerEnabled");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_406_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_407()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_407");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|@Jump_TriggerUsed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_407_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|@Jump_VO_Trigger_Pratt");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_167_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2837660");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2102628850172186368",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|4369542");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102127973269253058",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|11668215");
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
                [0] = self.f_box_OutputOrder_v2_89_Out_0,
                [1] = self.f_box_OutputOrder_v2_89_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_115()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103955909416867036",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_179()
    local params;
    params = {
        -- Entity,
        [0] = "2101383195982314465",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_155()
    local params;
    params = {
        -- Group,
        [0] = "2104705848250062831",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4206728942",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_380()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.82,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_292()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104706026216478779",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_312()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_312");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|47639521");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102129560421156569",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_101()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103957009056422958",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|51803004");
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
                [0] = self.f_box_OutputOrder_v2_184_Out_0,
                [1] = self.f_box_OutputOrder_v2_184_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_359()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_359");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|56029301");
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
                [0] = self.f_box_OutputOrder_v2_359_Out_0,
                [1] = self.f_box_OutputOrder_v2_359_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_433()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_LT02_050_B40_CamShake_160()
    local params;
    params = {
        -- e_ProxyTrigger,
        [0] = "2105061403070048747",
        -- gp_Players,
        [1] = self.Player_Group,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_372()
    local params;
    params = {
        -- Pawns,
        [0] = "2103279694269989114",
        -- SoundId,
        [1] = "2735559691",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_346()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_346");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|66563614");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2101716283209827988",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_83()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103609877266978393",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_300()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_300");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|72303041");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_300_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103098814280783509",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_256");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|73732170");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_256_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_299()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_299");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|77783322");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_299_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2102116042764469826",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_263()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_263");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|86714656");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104159791986273375",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_399()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_399");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|92422366");
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
                [0] = self.f_box_OutputOrder_v2_399_Out_0,
                [1] = self.f_box_OutputOrder_v2_399_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_216()
    local params;
    DrawTextToScreen("Comment: 2nd VFX Layer Activation", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'BaseMissionBlock_v2')-- Comment: 2nd VFX Layer Activation");
    params = {
        -- missionBlockId,
        [0] = "27160256312328121",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_286()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104705952400922645",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|105029650");
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
                [0] = self.f_box_OutputOrder_v2_211_Out_0,
                [1] = self.f_box_OutputOrder_v2_211_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_128()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|109558351");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2104270517195248938",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT02_050_B30C_GetOutt",
            id = "688816",
        },
    };
    return params;
end;

function export:OnEnter_box_Switch_329()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_387()
    local params;
    DrawTextToScreen("Comment: Enable Waypoint", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'IndexList_v2')-- Comment: Enable Waypoint");
    params = {
        -- Index,
        [0] = self.i_WaypointIndex,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_348()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_348");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|117389237");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104645036976142935",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_268()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_268");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|127142529");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CameraShakeAndRumble_V2_268_Out,
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 1,
        -- pawns,
        [2] = self.Player_Group,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_42()
    local params;
    params = {
        -- Pawns,
        [0] = "2103966016701733298",
        -- SoundId,
        [1] = "3820782692",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|129482056");
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
                [0] = self.f_box_OutputOrder_v2_226_Out_0,
                [1] = self.f_box_OutputOrder_v2_226_Out_1,
                [2] = self.f_box_OutputOrder_v2_226_Out_2,
                [3] = self.f_box_OutputOrder_v2_226_Out_3,
                [4] = self.f_box_OutputOrder_v2_226_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_20()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 4,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2123435015",
        -- StopEvent,
        [7] = "3491282602",
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

function export:OnEnter_box_SoundModifier_v2_41()
    local params;
    params = {
        -- Pawns,
        [0] = "2103966015445539248",
        -- SoundId,
        [1] = "3820782692",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|157076757");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
                [2] = self.f_box_OutputOrder_v2_32_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_86()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101343678214714604",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|167063366");
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
                [0] = self.f_box_OutputOrder_v2_174_Out_0,
                [1] = self.f_box_OutputOrder_v2_174_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT02_050_B40_CamShake_68()
    local params;
    params = {
        -- e_ProxyTrigger,
        [0] = "2104757352671498410",
        -- gp_Players,
        [1] = self.Player_Group,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_201()
    local params;
    DrawTextToScreen("Comment: Trigger Index 9", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityTrigger_v2')-- Comment: Trigger Index 9");
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104273861456434679",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|170994401");
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
                [0] = self.f_box_OutputOrder_v2_206_Out_0,
                [1] = self.f_box_OutputOrder_v2_206_Out_1,
                [2] = self.f_box_OutputOrder_v2_206_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|177635226");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102127960669563836",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_183()
    local params;
    DrawTextToScreen("Comment: Trigger Index 5", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityTrigger_v2')-- Comment: Trigger Index 5");
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101576844275894463",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_154()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_212()
    local params;
    params = {
        -- Pawns,
        [0] = "2103261244684250436",
        -- SoundId,
        [1] = "3965725859",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|204574156");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2103954201737455958",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_12()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103609875207575042",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_106()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103957002075003874",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_422()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_422");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|213276958");
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
                [0] = self.f_box_OutputOrder_v2_422_Out_0,
                [1] = self.f_box_OutputOrder_v2_422_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_284()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_284");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|220522752");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_284_Out,
    });
    params = {
        -- Max,
        [0] = 0.2,
        -- Min,
        [1] = 0.05,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_280()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- nbLoop,
        [1] = 4,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_298()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_338()
    local params;
    params = {
        -- missionBlockId,
        [0] = "45174654822084521",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|250898807");
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
                [0] = self.f_box_OutputOrder_v2_227_Out_0,
                [1] = self.f_box_OutputOrder_v2_227_Out_1,
                [2] = self.f_box_OutputOrder_v2_227_Out_2,
                [3] = self.f_box_OutputOrder_v2_227_Out_3,
                [4] = self.f_box_OutputOrder_v2_227_Out_4,
                [5] = self.f_box_OutputOrder_v2_227_Out_5,
                [6] = self.f_box_OutputOrder_v2_227_Out_6,
                [7] = self.f_box_OutputOrder_v2_227_Out_7,
                [8] = self.f_box_OutputOrder_v2_227_Out_8,
                [9] = self.f_box_OutputOrder_v2_227_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|253920784");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|255165521");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_134_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104659394162595192",
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
        [2] = "2104771987059512614",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_290()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 10,
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
        [2] = "2103966016701733298",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|266022840");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_31_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_126()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = "2102889478866621076",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_282()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_282");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|291065462");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_282_Out,
    });
    params = {
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
        [2] = "2103966015445539248",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|304841626");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
                [2] = self.f_box_OutputOrder_v2_60_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|312093678");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102129563497678557",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|312205462");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2103484978777054128",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_225()
    local params;
    params = {
        -- Entity,
        [0] = "2101343820611339984",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_363()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_324()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2102889478866621076",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|334825802");
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
                [0] = self.f_box_OutputOrder_v2_151_Out_0,
                [1] = self.f_box_OutputOrder_v2_151_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|344330749");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102129567180277473",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|347791954");
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

function export:OnEnter_box_Delay_v5_148()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_233()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|356791931");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2101536061583802253",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_382()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_382");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|362758884");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_SoundPointModifier_382_Started,
    });
    params = {
        -- soundPoint,
        [0] = "2105117895609559788",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_267()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_267");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|363128277");
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
                [0] = self.f_box_OutputOrder_v2_267_Out_0,
                [1] = self.f_box_OutputOrder_v2_267_Out_1,
                [2] = self.f_box_OutputOrder_v2_267_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|364732718");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2102324152777052405",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_254()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|368146023");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2101536061583802253",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_381()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_381");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|370045907");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_SoundPointModifier_381_Started,
    });
    params = {
        -- soundPoint,
        [0] = "2105117875185396458",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_85()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104771987059512614",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|374240185");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
                [2] = self.f_box_OutputOrder_v2_28_Out_2,
                [3] = self.f_box_OutputOrder_v2_28_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|382401891");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_53_Tagged,
    });
    params = {
        -- Entity,
        [0] = self.e_Pratt,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_218()
    local params;
    params = {
        -- blendTime,
        [1] = 0.1,
        -- endTarget,
        [4] = "2101343377564896997",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101190791857703995",
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_262()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_262");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|395904964");
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
                [0] = self.f_box_OutputOrder_v2_262_Out_0,
                [1] = self.f_box_OutputOrder_v2_262_Out_1,
                [2] = self.f_box_OutputOrder_v2_262_Out_2,
                [3] = self.f_box_OutputOrder_v2_262_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_255()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_255");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|401764331");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_255_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_221()
    local params;
    params = {
        -- Group,
        [0] = "2104706026216478779",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2602558439",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_103()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103957009056422958",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_414()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_414");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|430716148");
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
                [0] = self.f_box_OutputOrder_v2_414_Out_0,
                [1] = self.f_box_OutputOrder_v2_414_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_94()
    local params;
    params = {
        -- Group,
        [0] = self.e_Pratt,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1841512287",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|459379626");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CameraShakeAndRumble_V2_116_Out,
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = self._sld_Result_box_RandomFloat_v2_120,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_386()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_386");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|476727956");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_138()
    local params;
    params = {
        -- Group,
        [0] = self.e_Pratt,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "928151078",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|484881080");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_90_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_251()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_251");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|485437197");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2101729702268913498",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|486273987");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_224_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_398()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_398");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|491661001");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_398_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_398_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_PrattDowned,
    };
    return params;
end;

function export:OnEnter_box_Switch_362()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_321()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|507510407");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_188_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_78()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101384902824961532",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_306()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_306");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|514932585");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_306_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2105033377517172673",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|517944299");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_204_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2105060713465648348",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|535556909");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_172_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2102127087323203070",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_343()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_343");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|535713673");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_343_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2105033124044896187",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|535900056");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_54_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_379()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.73,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|544424311");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_112_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_391()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_391");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|546779653");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_391_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_391_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_PrattDowned,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_37()
    local params;
    params = {
        -- Group,
        [0] = self.e_Pratt,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1486568226",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_353()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_353");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|572548088");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104920275098302640",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|594945148");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_27_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2102127227637339586",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_35()
    local params;
    params = {
        -- Group,
        [0] = self.e_Pratt,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4225027819",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_347()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_347");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|605490472");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104644912193501779",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_248()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_122()
    local params;
    params = {
        -- Group,
        [0] = self.e_Pratt,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1523996765",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_376()
    local params;
    params = {
        -- Pawns,
        [0] = "2104811957832932529",
        -- SoundId,
        [1] = "3928580550",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_266()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_266");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|615416436");
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
                [0] = self.f_box_OutputOrder_v2_266_Out_0,
                [1] = self.f_box_OutputOrder_v2_266_Out_1,
                [2] = self.f_box_OutputOrder_v2_266_Out_2,
                [3] = self.f_box_OutputOrder_v2_266_Out_3,
                [4] = self.f_box_OutputOrder_v2_266_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_404()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_404");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|622523837");
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
                [0] = self.f_box_OutputOrder_v2_404_Out_0,
                [1] = self.f_box_OutputOrder_v2_404_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|631857072");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_9_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT02_050_B30C_GetOutt",
            id = "688816",
        },
        -- TargetGroup,
        [2] = self.Player_Group,
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_339()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_339");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|633811083");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_339_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|636230411");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2102323594764751082",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_310()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_310");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|649978423");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_310_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_250()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_250");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|652429902");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2103195181789501209",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_265()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_265");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|655706204");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2101729702268913498",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_420()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_420");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|660245056");
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
                [0] = self.f_box_OutputOrder_v2_420_Out_0,
                [1] = self.f_box_OutputOrder_v2_420_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_314()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_314");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|661896894");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_314_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_365()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_365");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|665101531");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_365_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|666292916");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2102628868394340100",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_87()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103956953590946528",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_189()
    local params;
    params = {
        -- Group,
        [0] = "2104705952400922645",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2602558439",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|699321800");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
                [2] = self.f_box_OutputOrder_v2_34_Out_2,
                [3] = self.f_box_OutputOrder_v2_34_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_327()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_327");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|707118935");
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
                [0] = self.f_box_OutputOrder_v2_327_Out_0,
                [1] = self.f_box_OutputOrder_v2_327_Out_1,
                [2] = self.f_box_OutputOrder_v2_327_Out_2,
                [3] = self.f_box_OutputOrder_v2_327_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_129()
    local params;
    params = {
        -- Entity,
        [0] = "2102988433484981934",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|734912233");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_120_Out,
    });
    params = {
        -- Max,
        [0] = 0.8,
        -- Min,
        [1] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_434()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_434");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|741827562");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_434_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_403()
    local params, l0;
    DrawTextToScreen("Comment: Waypoint Index Start At 0, +1 on Each Trigger Enable", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetInteger_v2')-- Comment: Waypoint Index Start At 0, +1 on Each Trigger Enable");
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_403");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|747373539");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_403_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_LT02_050_B40_CamShake_187()
    local params;
    params = {
        -- e_ProxyTrigger,
        [0] = "2104758118989714074",
        -- gp_Players,
        [1] = self.Player_Group,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_413()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_413");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|754494815");
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
                [0] = self.f_box_OutputOrder_v2_413_Out_0,
                [1] = self.f_box_OutputOrder_v2_413_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_394()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_394");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|777503985");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_394_Out,
    });
    params = {
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
        [2] = "2103609851820135512",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_294()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103955545372250820",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_110()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103955909416867036",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|813366321");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102129553615898323",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|815235211");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_186_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|818068407");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2102130486387164729",
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
        [2] = "2104772478520809090",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|820839873");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_176_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_205()
    local params;
    params = {
        -- Entity,
        [0] = "2102889525092045799",
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|841994329");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_241()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_241");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|845298504");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102129906709179324",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|851648596");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2104273718623606064",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT02_050_B30C_GetOutt",
            id = "688816",
        },
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_340()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_340");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|852235109");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_340_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_165()
    local params;
    params = {
        -- blendTime,
        [1] = 0.1,
        -- endTarget,
        [4] = "2101343412945948394",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101190870500904002",
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|885876834");
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
                [0] = self.f_box_OutputOrder_v2_109_Out_0,
                [1] = self.f_box_OutputOrder_v2_109_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_383()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_383");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|894037703");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2105118009417810022",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|896518536");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104644874667063883",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|902802509");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_29_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103310812775998270",
        -- Group,
        [1] = self.e_Pratt,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|917697892");
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
                [0] = self.f_box_OutputOrder_v2_178_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_96()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101343678214714604",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_285()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|927964243");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "LT02_050_B40 script is running.",
        -- useTimeTag,
        [9] = true,
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
        [2] = "2104705848250062831",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_197()
    local params;
    params = {
        -- Entity,
        [0] = "2101771032078600686",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|945649838");
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
                [0] = self.f_box_OutputOrder_v2_234_Out_0,
                [1] = self.f_box_OutputOrder_v2_234_Out_1,
                [2] = self.f_box_OutputOrder_v2_234_Out_2,
                [3] = self.f_box_OutputOrder_v2_234_Out_3,
                [4] = self.f_box_OutputOrder_v2_234_Out_4,
                [5] = self.f_box_OutputOrder_v2_234_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Revive_Target_v2_91()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsCharacterPersistent,
        [1] = true,
        -- bMultipleTargets,
        [2] = false,
        -- bObjectiveProgress,
        [3] = false,
        -- e_Target,
        [4] = self.e_Pratt,
        -- o_TargetName,
        [5] = {
            section = "IGE_Wheel",
            item = "WHEEL_TARGET",
            id = "372756",
        },
        -- opt_Objective,
        [7] = {
            section = "Objectives",
            item = "LT02_050_B30D_RevivePratt",
            id = "782475",
        },
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|963738944");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2103177429743851016",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|975360761");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_62_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_102()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103956823366195729",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_82()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103609877266978393",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_217()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|992545103");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_217_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104659130131158388",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_316()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_316");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|994605813");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_316_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2102127967044905920",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_57()
    local params;
    params = {
        -- Group,
        [0] = self.e_Pratt,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "15889115",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_289()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_289");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|997863551");
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
                [0] = self.f_box_OutputOrder_v2_289_Out_0,
                [1] = self.f_box_OutputOrder_v2_289_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LockTimeOfDay_40()
    local params;
    params = {
        -- Hour,
        [0] = 0,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_416()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_416");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1012379994");
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
                [0] = self.f_box_OutputOrder_v2_416_Out_0,
                [1] = self.f_box_OutputOrder_v2_416_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_354()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_354");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1017488537");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 12,
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
                [0] = self.f_box_OutputOrder_v2_354_Out_0,
                [1] = self.f_box_OutputOrder_v2_354_Out_1,
                [2] = self.f_box_OutputOrder_v2_354_Out_2,
                [3] = self.f_box_OutputOrder_v2_354_Out_3,
                [4] = self.f_box_OutputOrder_v2_354_Out_4,
                [5] = self.f_box_OutputOrder_v2_354_Out_5,
                [6] = self.f_box_OutputOrder_v2_354_Out_6,
                [7] = self.f_box_OutputOrder_v2_354_Out_7,
                [8] = self.f_box_OutputOrder_v2_354_Out_8,
                [9] = self.f_box_OutputOrder_v2_354_Out_9,
                [10] = self.f_box_OutputOrder_v2_354_Out_10,
                [11] = self.f_box_OutputOrder_v2_354_Out_11,
            },
            count = 12,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_162()
    local params;
    params = {
        -- Entity,
        [0] = "2101343826581931732",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_141()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1029114534");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
                [2] = self.f_box_OutputOrder_v2_76_Out_2,
                [3] = self.f_box_OutputOrder_v2_76_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1030401815");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
                [2] = self.f_box_OutputOrder_v2_46_Out_2,
                [3] = self.f_box_OutputOrder_v2_46_Out_3,
                [4] = self.f_box_OutputOrder_v2_46_Out_4,
            },
            count = 5,
        },
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1032808192");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_111_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_311()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_269()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_269");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1041327561");
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
                [0] = self.f_box_OutputOrder_v2_269_Out_0,
                [1] = self.f_box_OutputOrder_v2_269_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_367()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_367");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1042728684");
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
                [0] = self.f_box_OutputOrder_v2_367_Out_0,
                [1] = self.f_box_OutputOrder_v2_367_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1056402278");
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
                [0] = self.f_box_OutputOrder_v2_71_Out_0,
                [1] = self.f_box_OutputOrder_v2_71_Out_1,
                [2] = self.f_box_OutputOrder_v2_71_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_283()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1072477958");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102127954975796154",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_249()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_249");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1082761162");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_249_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1096852582");
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

function export:OnEnter_box_Simple_Node_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1097086973");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_219_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_229()
    local params;
    params = {
        -- blendTime,
        [1] = 0.1,
        -- endTarget,
        [4] = "2101383151575120825",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101383140315511736",
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_424()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_424");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1099980508");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2104273845864109555",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT02_050_B30C_GetOutt",
            id = "688816",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1103672607");
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT02_050_B40_CamShake_313()
    local params;
    params = {
        -- e_ProxyTrigger,
        [0] = "2105060646423893188",
        -- gp_Players,
        [1] = self.Player_Group,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_159()
    local params;
    params = {
        -- Group,
        [0] = "2104705952400922645",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4206728942",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1114750394");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_170_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104659225136338294",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_349()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_349");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1122623396");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104920279919655092",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1128878149");
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
                [0] = self.f_box_OutputOrder_v2_231_Out_0,
                [1] = self.f_box_OutputOrder_v2_231_Out_1,
                [2] = self.f_box_OutputOrder_v2_231_Out_2,
                [3] = self.f_box_OutputOrder_v2_231_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_279()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_279");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1143985453");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104767827979302902",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_392()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_392");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1150371121");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_392_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1151406855");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102129928687332288",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_427()
    local params;
    params = {
        -- Pawns,
        [0] = "2103291214175427580",
        -- SoundId,
        [1] = "937376037",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1157924026");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_203_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_113()
    local params;
    params = {
        -- Group,
        [0] = self.e_Pratt,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "74376852",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1167928475");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2102628831031480056",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1172823905");
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

function export:OnEnter_box_ParticleSystem_v3_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1184148917");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_69_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2102126877643654828",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_344()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_344");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1190739949");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_344_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_377()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_377");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1192855778");
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
                [0] = self.f_box_OutputOrder_v2_377_Out_0,
                [1] = self.f_box_OutputOrder_v2_377_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_105()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103957002075003874",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_67()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 0,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2123435015",
        -- StopEvent,
        [7] = "3491282602",
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

function export:OnEnter_box_Delay_v5_158()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1229601132");
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

function export:OnEnter_box_DynamicLightModifier_350()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_350");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1240012633");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2102131027513198333",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_16()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015218968043365",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_308()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.3,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_435()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_435");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1246349767");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_435_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_273()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_273");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1257864512");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104647018015128487",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_47()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1038783366",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_66()
    local params;
    params = {
        -- usableEntity,
        [4] = "2102889478866621076",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_373()
    local params;
    params = {
        -- Pawns,
        [0] = "2103279737752338684",
        -- SoundId,
        [1] = "3484999458",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1271217563");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_SoundPointModifier_182_Stopped,
    });
    params = {
        -- soundPoint,
        [0] = "2104920806715838921",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_271()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_142()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = "2102431597304234531",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1286667748");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_146_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2102127086710834684",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_236()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_264()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_264");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1291272141");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2103195181789501209",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_259()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_259");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1293034210");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_259_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2104647018015128487",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_390()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_330()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_330");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1298006132");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_330_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_39()
    local params;
    params = {
        -- Pawns,
        [0] = "2103965995319171502",
        -- SoundId,
        [1] = "3820782692",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_336()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_131()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_368()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_368");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1341367224");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2101536061583802253",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1341987035");
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
                [0] = self.f_box_OutputOrder_v2_99_Out_0,
                [1] = self.f_box_OutputOrder_v2_99_Out_1,
                [2] = self.f_box_OutputOrder_v2_99_Out_2,
                [3] = self.f_box_OutputOrder_v2_99_Out_3,
                [4] = self.f_box_OutputOrder_v2_99_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_318()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_318");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1349910808");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_318_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2102129565586441951",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_261()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_261");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1359835568");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_261_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2104647182566063069",
    };
    return params;
end;

function export:OnEnter_box_Switch_358()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_302()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_302");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1369023642");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102116049351624260",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_65()
    local params;
    DrawTextToScreen("Comment: Trigger Index 3", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityTrigger_v2')-- Comment: Trigger Index 3");
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101367603053214206",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_274()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1385422435");
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
                [0] = self.f_box_OutputOrder_v2_177_Out_0,
                [1] = self.f_box_OutputOrder_v2_177_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_364()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_364");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1386009645");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_364_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_247()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_247");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1388713388");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_247_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2102127234023167428",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1392825599");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_156_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_277()
    local params;
    params = {
        -- Group,
        [0] = "2103512538183387925",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2602558439",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1405173150");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_55_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT02_050_B30C_GetOutt",
            id = "688816",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1407413511");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102129922498636734",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_297()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.54,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_245");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1411922749");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104647182566063069",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_93()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1426227643");
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

function export:OnEnter_box_EntityStatusListener_100()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103955911639848182",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_92()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
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
        [2] = "2103956953590946528",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1449026835");
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

function export:OnEnter_box_ProximityTrigger_v2_3()
    local params;
    DrawTextToScreen("Comment: Trigger Index 1", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityTrigger_v2')-- Comment: Trigger Index 1");
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102709737796677623",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_272()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_272");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1462746209");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_272_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2104647018015128487",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_425()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_425");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1466254505");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_425_A_eq_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_425_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.i_WaypointIndex,
        -- B,
        [1] = 9,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_287()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_287");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1466344954");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_287_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_315()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_315");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1473166808");
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
                [0] = self.f_box_OutputOrder_v2_315_Out_0,
                [1] = self.f_box_OutputOrder_v2_315_Out_1,
                [2] = self.f_box_OutputOrder_v2_315_Out_2,
                [3] = self.f_box_OutputOrder_v2_315_Out_3,
                [4] = self.f_box_OutputOrder_v2_315_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_426()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_LT02_050_B40_CamShake_185()
    local params;
    params = {
        -- e_ProxyTrigger,
        [0] = "2104270438946313436",
        -- gp_Players,
        [1] = self.Player_Group,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1475564674");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2103069113336222941",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1480328558");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
                [2] = self.f_box_OutputOrder_v2_61_Out_2,
            },
            count = 3,
        },
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1484788427");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_95_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_164()
    local params;
    DrawTextToScreen("Comment: Trigger Index 8", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityTrigger_v2')-- Comment: Trigger Index 8");
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101329939606293359",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_276()
    local params;
    params = {
        -- Group,
        [0] = "2103512548134374167",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "127619059",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1506174595");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_121_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_293()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104771773582037133",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1518401085");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102129561832539867",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1522748199");
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

function export:OnEnter_box_ProximityTrigger_v2_244()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104705542229438091",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_323()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_323");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1524146224");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_323_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2102127976702290884",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_36()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 3,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2123435015",
        -- StopEvent,
        [7] = "3491282602",
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

function export:OnEnter_box_EntityStatusListener_385()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2105119105748096865",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_331()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_331");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1564079938");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_331_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_18()
    local params;
    DrawTextToScreen("Comment: Trigger Index 4", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityTrigger_v2')-- Comment: Trigger Index 4");
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102544337263938758",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_333()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104771764058869897",
    };
    return params;
end;

function export:OnEnter_box_LT02_050_B40_CamShake_317()
    local params;
    params = {
        -- e_ProxyTrigger,
        [0] = "2104758111339303574",
        -- gp_Players,
        [1] = self.Player_Group,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_169()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_260()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_260");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1575346014");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104647018015128487",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_139()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Switch_2()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_356()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_356");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1593383532");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_356_Out,
    });
    params = {
        -- Max,
        [0] = 0.2,
        -- Min,
        [1] = 0.05,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1594789775");
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
                [0] = self.f_box_OutputOrder_v2_163_Out_0,
                [1] = self.f_box_OutputOrder_v2_163_Out_1,
                [2] = self.f_box_OutputOrder_v2_163_Out_2,
                [3] = self.f_box_OutputOrder_v2_163_Out_3,
                [4] = self.f_box_OutputOrder_v2_163_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1597972150");
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
                [0] = self.f_box_OutputOrder_v2_77_Out_0,
                [1] = self.f_box_OutputOrder_v2_77_Out_1,
                [2] = self.f_box_OutputOrder_v2_77_Out_2,
                [3] = self.f_box_OutputOrder_v2_77_Out_3,
                [4] = self.f_box_OutputOrder_v2_77_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_232()
    local params, l0;
    DrawTextToScreen("Comment: Turn Off Normal Entrance Stair Case Lights", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Turn Off Normal Entrance Stair Case Lights");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1600242693");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_232_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_209()
    local params;
    params = {
        -- Group,
        [0] = "2104706026216478779",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "631286123",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1613397923");
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
                [0] = self.f_box_OutputOrder_v2_123_Out_0,
                [1] = self.f_box_OutputOrder_v2_123_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_295()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104772456708331103",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1618608501");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_140_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1620420562");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2105060707658634456",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1626429120");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2103484997500427188",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_257()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_257");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1629482820");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104159791986273375",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_303()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1641873321");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_207_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_374()
    local params;
    params = {
        -- Pawns,
        [0] = "2103263555288592701",
        -- SoundId,
        [1] = "3412380687",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_72()
    local params;
    DrawTextToScreen("Comment: Trigger Index 2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityTrigger_v2')-- Comment: Trigger Index 2");
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101576666129123511",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_335()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_335");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1653902512");
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
                [0] = self.f_box_OutputOrder_v2_335_Out_0,
                [1] = self.f_box_OutputOrder_v2_335_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_307()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_307");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1661300725");
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
                [0] = self.f_box_OutputOrder_v2_307_Out_0,
                [1] = self.f_box_OutputOrder_v2_307_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_270()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "3555743869",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_326()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Switch_288()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_143()
    local params;
    params = {
        -- Group,
        [0] = self.e_Pratt,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2258571098",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_104()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "3555743869",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_258()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_258");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1686149910");
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
                [0] = self.f_box_OutputOrder_v2_258_Out_0,
                [1] = self.f_box_OutputOrder_v2_258_Out_1,
                [2] = self.f_box_OutputOrder_v2_258_Out_2,
                [3] = self.f_box_OutputOrder_v2_258_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1692775474");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2103486181778938901",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_384()
    local params;
    params = {
        -- Pawns,
        [0] = "#07AC23FC",
        -- SoundId,
        [1] = "3820782692",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_345()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_345");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1701170562");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2102131034750469889",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_378()
    local params;
    params = {
        -- Pawns,
        [0] = "2105033124040701881",
        -- SoundId,
        [1] = "2213701168",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1710605034");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_74_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_429()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_429");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1711654581");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_429_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_79()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101384902824961532",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_411()
    local params;
    DrawTextToScreen("Comment: Trigger Index 6", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityTrigger_v2')-- Comment: Trigger Index 6");
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104273718621508908",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1717608754");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2101576887049406659",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT02_050_B30C_GetOutt",
            id = "688816",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1720296444");
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

function export:OnEnter_box_RandomFloat_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1721448615");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_117_Out,
    });
    params = {
        -- Max,
        [0] = 20,
        -- Min,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_369()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_369");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1722305580");
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
                [0] = self.f_box_OutputOrder_v2_369_Out_0,
                [1] = self.f_box_OutputOrder_v2_369_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_23()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.e_Pratt,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_238()
    local params;
    DrawTextToScreen("Comment: Trigger Index 7", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ProximityTrigger_v2')-- Comment: Trigger Index 7");
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104273736386483512",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_397()
    local params;
    DrawTextToScreen("Comment: Disable Waypoint", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'IndexList_v2')-- Comment: Disable Waypoint");
    params = {
        -- Index,
        [0] = self.i_WaypointIndex,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_237()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1768640761");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2101535035174698888",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_370()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_370");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1771261765");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2103486181778938901",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1782418535");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_320()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_320");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1793490918");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104646676581995350",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_342()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_342");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1800849809");
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
                [0] = self.f_box_OutputOrder_v2_342_Out_0,
                [1] = self.f_box_OutputOrder_v2_342_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_246()
    local params;
    params = {
        -- Group,
        [0] = "2103512554316778265",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4206728942",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_375()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_375");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1820768173");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_375_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1823120812");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_235_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_432()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_432");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1826141242");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_432_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_410()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_410");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1832794638");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2103025700651946796",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT02_050_B30C_GetOutt",
            id = "688816",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_70()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Player_Group,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104936048336326523",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_149()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_393()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_393");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1847429648");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_393_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1849156110");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_200_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1850994209");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_228_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_108()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103955911639848182",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1853767905");
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_395()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_395");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1859338926");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2099922007899518478",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT02_050_B30C_GetOutt",
            id = "688816",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_81()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103609851820135512",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_166()
    local params, l0;
    DrawTextToScreen("Comment: Turn On Red Emergency Lights", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Turn On Red Emergency Lights");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1878381438");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_166_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1881576542");
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
                [0] = self.f_box_OutputOrder_v2_132_Out_0,
                [1] = self.f_box_OutputOrder_v2_132_Out_1,
                [2] = self.f_box_OutputOrder_v2_132_Out_2,
                [3] = self.f_box_OutputOrder_v2_132_Out_3,
                [4] = self.f_box_OutputOrder_v2_132_Out_4,
                [5] = self.f_box_OutputOrder_v2_132_Out_5,
                [6] = self.f_box_OutputOrder_v2_132_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_431()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_431");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1883926959");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_431_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_157()
    local params;
    params = {
        -- disableOnUse,
        [0] = true,
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = "2101190791232752698",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1887980334");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2104273736384386356",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT02_050_B30C_GetOutt",
            id = "688816",
        },
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1907952764");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102127249661629894",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_334()
    local params;
    params = {
        -- Entity,
        [0] = "2102889525092045799",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_296()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_296");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1931176774");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_296_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2102116085443610198",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_50()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103965995319171502",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_309()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_309");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1939861648");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2099922007899518478",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT02_050_B30C_GetOutt",
            id = "688816",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_418()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_418");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1944218384");
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
                [0] = self.f_box_OutputOrder_v2_418_Out_0,
                [1] = self.f_box_OutputOrder_v2_418_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_75()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.8,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1949950962");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1955539464");
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
                [1] = self.f_box_OutputOrder_v2_230_Out_1,
                [2] = self.f_box_OutputOrder_v2_230_Out_2,
                [3] = self.f_box_OutputOrder_v2_230_Out_3,
                [4] = self.f_box_OutputOrder_v2_230_Out_4,
                [5] = self.f_box_OutputOrder_v2_230_Out_5,
                [6] = self.f_box_OutputOrder_v2_230_Out_6,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_56()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103609875207575042",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_322()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.63,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_220()
    local params;
    params = {
        -- Group,
        [0] = "2104706026216478779",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4206728942",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_352()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_352");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|1995004789");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2102682617343136299",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_409()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_409");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2002130537");
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
                [0] = self.f_box_OutputOrder_v2_409_Out_0,
                [1] = self.f_box_OutputOrder_v2_409_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_351()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_351");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2011894181");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104644052623325754",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2012922603");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102129556631602901",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2013525468");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_97()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103956823366195729",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_361()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_319()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.81,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2067392119");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_19_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2083399110");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2104270547111122292",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT02_050_B30C_GetOutt",
            id = "688816",
        },
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_301()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_301");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2093239367");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_301_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103098788515174035",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2100101578");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2102628816710029042",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2101587654");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102129558258992855",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2104077826");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2102628798867459822",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_401()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_401");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2108382926");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2103317800371112668",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT02_050_B30C_GetOutt",
            id = "688816",
        },
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2109285393");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_38_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2111858875");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2104270392223863989",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT02_050_B30C_GetOutt",
            id = "688816",
        },
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_405()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_405");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2114527263");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_405_Out,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.i_WaypointIndex,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_366()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_366");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2134588366");
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
                [0] = self.f_box_OutputOrder_v2_366_Out_0,
                [1] = self.f_box_OutputOrder_v2_366_Out_1,
            },
            count = 2,
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
        [0] = self.e_Pratt,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2775559492",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_355()
    local params, l0;
    DrawTextToScreen("Comment: Turn Off Bunks Lights", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Turn Off Bunks Lights");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_355");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_050\\LT02_050_B40.domino|@LT02_050_B40_main|2146261601");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_284_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_248;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_120_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self._sld_Result_box_RandomFloat_v2_120 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_403_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_WaypointIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_394_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_PrattDowned = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_392_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_PrattDowned = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_16_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_16;
    self.e_Pratt = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_356_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_363;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_117_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_118;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_393_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_PrattDowned = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Player_Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_405_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.i_WaypointIndex = l0:GetDataOutValue(0);
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
