LUACη -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b20.domino
-- User graph: INTRO_010_B20
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MoonModifier.lua");
        cboxRes:RegisterBox("Domino/System/MovementListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/PickupState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputPriorityModifier_v4.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/SendUiEvent.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StanceModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideDisabledLogicId.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_AlarmFail.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_FrMove_NpcDiags.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_NpcMovement.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_PlayerAbility.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_WorldLimits.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1366924925.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1883664923.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2516075458.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1084691075.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2890171475.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3527005044.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3067263794.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1345451623.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1887062765.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2679510033.bnk]], "CSoundResource");
        cboxRes:LoadResource([[903128641.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2117096674.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2248944541.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3782244024.bnk]], "CSoundResource");
        cboxRes:LoadResource([[994844518.bnk]], "CSoundResource");
        cboxRes:LoadResource([[954250625.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3974352130.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2892310692.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2154961323.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4153503074.bnk]], "CSoundResource");
        cboxRes:LoadResource([[852901073.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4227780351.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.INTRO_010_B20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "FadeIn",
            },
            [1] = {
                name = "FadeOut",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FadedIn",
                delayed = false,
            },
            [1] = {
                name = "FadedOut",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "HUD",
                type = "string",
            },
            [1] = {
                name = "PostFX",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua")] = {
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
                name = "KeepGodMode",
                type = "bool",
            },
            [2] = {
                name = "KeepHUDMode",
                type = "bool",
            },
            [3] = {
                name = "KeepWeaponHolstered",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "BasicSetup",
            },
            [1] = {
                name = "HolsterWeapon",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Holstered",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Enable_Blackbars",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")] = {
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
                name = "ActivityAbortAndFastTravelEnabled",
                type = "bool",
            },
            [1] = {
                name = "SleepingCampEnabled",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/CHEAT_SetEnvironmentTimeScale.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetTimeScale",
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
                name = "timeScale",
                type = "float",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")] = {
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
                name = "FromGroup",
                type = "group",
            },
            [1] = {
                name = "ToGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/IsEntityLoaded_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/MoonModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ResetMoonDirection",
            },
            [1] = {
                name = "ResetMoonHDRMultiplier",
            },
            [2] = {
                name = "ResetMoonSize",
            },
            [3] = {
                name = "SetMoonDirection",
            },
            [4] = {
                name = "SetMoonHDRMultiplier",
            },
            [5] = {
                name = "SetMoonSize",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "OnResetMoonDirection",
                delayed = false,
            },
            [1] = {
                name = "OnResetMoonHDRMultiplier",
                delayed = false,
            },
            [2] = {
                name = "OnResetMoonSize",
                delayed = false,
            },
            [3] = {
                name = "OnSetMoonDirection",
                delayed = false,
            },
            [4] = {
                name = "OnSetMoonHDRMultiplier",
                delayed = false,
            },
            [5] = {
                name = "OnSetMoonSize",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "Azimuth",
                type = "float",
            },
            [1] = {
                name = "Elevation",
                type = "float",
            },
            [2] = {
                name = "HDRMultiplier",
                type = "float",
            },
            [3] = {
                name = "ResetAfterBeat",
                type = "bool",
            },
            [4] = {
                name = "Size",
                type = "float",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MovementListener_v2.lua")] = {
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
                name = "Idle",
                delayed = true,
            },
            [3] = {
                name = "Moving",
                delayed = true,
            },
            [4] = {
                name = "pitch_Changed",
                delayed = true,
            },
            [5] = {
                name = "roll_Changed",
                delayed = true,
            },
            [6] = {
                name = "x_Changed",
                delayed = true,
            },
            [7] = {
                name = "y_Changed",
                delayed = true,
            },
            [8] = {
                name = "yaw_Changed",
                delayed = true,
            },
            [9] = {
                name = "z_Changed",
                delayed = true,
            },
        },
        controlOutCount = 10,
        dataIn = {
            [0] = {
                name = "angleThreshold",
                type = "float",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "entityGroup",
                type = "group",
            },
            [3] = {
                name = "movingThreshold",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "instigator",
                type = "entity",
            },
            [1] = {
                name = "isMoving",
                type = "bool",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/PickupState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsNotPickable",
            },
            [1] = {
                name = "SetAsPickable",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetAsNotPickable",
                delayed = false,
            },
            [1] = {
                name = "OnSetAsPickable",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pickup",
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
    metadataTable[GetPathID("Domino/System/Player/InputPriorityModifier_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Release",
            },
            [1] = {
                name = "Set",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnRelease",
                delayed = false,
            },
            [1] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "InputPriority",
                type = "string",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayerSpeedModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ApplySpeedFactor",
            },
            [1] = {
                name = "ForceWalk",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "ApplySpeedFactorOut",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "ForceWalkOut",
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
                name = "blendTime",
                type = "float",
            },
            [1] = {
                name = "factor",
                type = "float",
            },
            [2] = {
                name = "Players",
                type = "group",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/RequestTutorial_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "OnDisplayed",
                delayed = true,
            },
            [1] = {
                name = "OnHidden",
                delayed = true,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "RequestFailure",
                delayed = false,
            },
            [4] = {
                name = "RequestSuccess",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bypassPreconditions",
                type = "bool",
            },
            [1] = {
                name = "tutorialdb",
                type = "database",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SendUiEvent.lua")] = {
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
                name = "param",
                type = "string",
                dynamicType = 1,
            },
            [1] = {
                name = "playerName",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/SetTimeOfDay.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "IncrementTimeOfDay",
            },
            [1] = {
                name = "SetTimeOfDay",
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
    metadataTable[GetPathID("Domino/System/StanceModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetStance",
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
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "stance",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/TeleportPawns.lua")] = {
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
            [0] = {
                name = "ClientDestinationEntity",
                type = "entity",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "LoadingScreen",
                type = "bool",
            },
            [3] = {
                name = "LoadSynch",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "UseBlackScreen",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "AreaMessage",
            },
            [1] = {
                name = "Cinematic",
            },
            [2] = {
                name = "Compass",
            },
            [3] = {
                name = "DetectionMeter",
            },
            [4] = {
                name = "EnergyGauge",
            },
            [5] = {
                name = "Health",
            },
            [6] = {
                name = "HelmetMask",
            },
            [7] = {
                name = "Hiring",
            },
            [8] = {
                name = "HudActivityStatus",
            },
            [9] = {
                name = "HudAutodriveStatus",
            },
            [10] = {
                name = "HudChallenge",
            },
            [11] = {
                name = "HudDiscovery",
            },
            [12] = {
                name = "HudGunsForHire",
            },
            [13] = {
                name = "HudHint",
            },
            [14] = {
                name = "HudLocationDiscovery",
            },
            [15] = {
                name = "HudNewCharacterDiscovery",
            },
            [16] = {
                name = "HudNotifGFH",
            },
            [17] = {
                name = "HudNotificationsQueue",
            },
            [18] = {
                name = "HudNotificationsQueueCenterMessage",
            },
            [19] = {
                name = "HudNotificationsQueueDiscovery",
            },
            [20] = {
                name = "HudNotificationsQueueGMS",
            },
            [21] = {
                name = "HudNotificationsQueuePlayerPoints",
            },
            [22] = {
                name = "HudNotificationsQueueWarning",
            },
            [23] = {
                name = "HudObjective",
            },
            [24] = {
                name = "HudObjectiveRewards",
            },
            [25] = {
                name = "HudOpenWorld",
            },
            [26] = {
                name = "HudOutpostSuccess",
            },
            [27] = {
                name = "HudPerkPoints",
            },
            [28] = {
                name = "HudSurvivalInstinct",
            },
            [29] = {
                name = "Interaction",
            },
            [30] = {
                name = "Looting",
            },
            [31] = {
                name = "MissionGiver",
            },
            [32] = {
                name = "ObjectiveProgress",
            },
            [33] = {
                name = "ObjectiveTracked",
            },
            [34] = {
                name = "PlayerBuffs",
            },
            [35] = {
                name = "RepairBar",
            },
            [36] = {
                name = "Reputation",
            },
            [37] = {
                name = "Reticle",
            },
            [38] = {
                name = "Tag",
            },
            [39] = {
                name = "TopCenterTimer",
            },
            [40] = {
                name = "Tutorial",
            },
        },
        controlInCount = 41,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "disableUI",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/OverrideMenuAccessibility.lua")] = {
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
                name = "ActivityLogMenuEnabled",
                type = "bool",
            },
            [1] = {
                name = "AvatarCreationMenuEnabled",
                type = "bool",
            },
            [2] = {
                name = "AvatarCustomizationMenuEnabled",
                type = "bool",
            },
            [3] = {
                name = "ChallengeMenuEnabled",
                type = "bool",
            },
            [4] = {
                name = "LootMenuEnabled",
                type = "bool",
            },
            [5] = {
                name = "OnlineMenuEnabled",
                type = "bool",
            },
            [6] = {
                name = "PerksMenuEnabled",
                type = "bool",
            },
            [7] = {
                name = "ResistanceMenuEnabled",
                type = "bool",
            },
            [8] = {
                name = "SquadMenuEnabled",
                type = "bool",
            },
            [9] = {
                name = "WorldmapMenuEnabled",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/VisibilityModifier.lua")] = {
        stateless = false,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_AlarmFail.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable_NPCAlarm",
            },
            [1] = {
                name = "Fail_NPCAlarm",
            },
            [2] = {
                name = "Fail_WorldLimits",
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
                name = "near_static_meshes",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_FrMove_NpcDiags.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable_Diags",
            },
            [1] = {
                name = "Disable_Team_Callouts",
            },
            [2] = {
                name = "Enable_Diag_NpcFire",
            },
            [3] = {
                name = "Enable_Team_Callouts",
            },
            [4] = {
                name = "In",
            },
            [5] = {
                name = "Start_Diags_NpcFence",
            },
            [6] = {
                name = "Stop_Diags_NpcFence",
            },
        },
        controlInCount = 7,
        controlOut = {
            [0] = {
                name = "Diag_NpcFence_Over",
                delayed = false,
            },
            [1] = {
                name = "Diag_NpcFence_Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Deputy",
                type = "entity",
            },
            [1] = {
                name = "Marshal",
                type = "entity",
            },
            [2] = {
                name = "Sherrif",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_NpcMovement.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Combat_Started",
            },
            [1] = {
                name = "Disable_Fence_SyncSTP",
            },
            [2] = {
                name = "Enable_FollowBehavior",
            },
            [3] = {
                name = "End_Flamer_BurnSTP",
            },
            [4] = {
                name = "Gates_Closed",
            },
            [5] = {
                name = "In",
            },
            [6] = {
                name = "Move_Npc_ToChurch",
            },
            [7] = {
                name = "Move_Npc_ToGate_1",
            },
            [8] = {
                name = "Move_Npc_ToGate_2",
            },
            [9] = {
                name = "Start_Flamer_BurnSTP",
            },
        },
        controlInCount = 10,
        controlOut = {
            [0] = {
                name = "Enable_Obj_Marker",
                delayed = false,
            },
            [1] = {
                name = "End_Diags_Npc_Fence",
                delayed = false,
            },
            [2] = {
                name = "Start_Diags_Npc_Fence",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "deputy",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_PlayerAbility.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable_Abilities",
            },
            [1] = {
                name = "Enable_Abilities_Fight",
            },
            [2] = {
                name = "Restore_CompleteAbilities",
            },
            [3] = {
                name = "Restore_CompleteInventory",
            },
            [4] = {
                name = "Start_Inventory",
            },
        },
        controlInCount = 5,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_WorldLimits.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable_WLimit",
            },
            [1] = {
                name = "Enable_1st_WLimit",
            },
            [2] = {
                name = "Enable_Other_WLimits",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Move_cultists_2_gate",
                delayed = false,
            },
            [1] = {
                name = "Move_cultists_2_gate_2",
                delayed = false,
            },
            [2] = {
                name = "Start_alarm_2_far",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "near_static_meshes",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "INTRO_010_B20";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20";
    self.Players = nil;
    self.deputee = nil;
    self.marshal = nil;
    self.sherrif = nil;
    self.player = nil;
    self.MetaSequenceID = 0;
    self.sheriff = nil;
    self.MetaSequenceID2 = 0;
    self.player_speed = 0.35;
    self.blessed_entity = nil;
    self.hint = 0;
    self.gate_closed = false;
    self.act_reloaded = false;
    self.short_fail_time = false;
    self.box_ProximityTrigger_v2_681 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_681;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_681");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|40449184");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_681_Enter,
    });
    self.box_OnceOnly_v3_69 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|81254795");
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
                [0] = self.f_box_OnceOnly_v3_69_Out_0,
            },
            count = 1,
        },
    });
    self.box_MovementListener_v2_607 = cbox:CreateBox("Domino/System/MovementListener_v2.lua");
    l0 = self.box_MovementListener_v2_607;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MovementListener_v2_607");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|86476471");
    l0:SetConnections({
        -- Idle,
        [2] = self.f_box_MovementListener_v2_607_Idle,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|89025024");
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
        [0] = self.f_box_MultipleOR_43_Out,
    });
    self.box_NarrativeSceneSetup_23 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|91446351");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_23_Out,
    });
    self.box_OnceOnly_v3_646 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_646;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_646");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|118510885");
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
                [0] = self.f_box_OnceOnly_v3_646_Out_0,
            },
            count = 1,
        },
    });
    self.box_EntityStatusListener_341 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_341;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_341");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|121743470");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_341_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_341_Loaded,
    });
    self.box_EntityStatusListener_340 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_340;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_340");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|123414843");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_340_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_340_Loaded,
    });
    self.box_SoundModifier_v2_155 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|136585809");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_465 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_465;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_465");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|139402490");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_465_Loaded,
    });
    self.box_PositionModifier_v2_661 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_661;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_661");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|145712194");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_661_StartOut,
    });
    self.box_EntityStatusListener_731 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_731;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_731");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|147307221");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_731_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_731_Loaded,
    });
    self.box_SoundModifier_v2_66 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|149177031");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_267 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_267;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_267");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|202416119");
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
    self.box_RemoveEntity_v2_439 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_439;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_439");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|214364698");
    l0:SetConnections({
    });
    self.box_SpawnAI_234 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|223667938");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_652 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_652;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_652");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|227058831");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_652_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_652_StartOut,
    });
    self.box_PlayDialog_v6_841 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_841;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_841");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|229944335");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_841_Finished,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|253485018");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_MultipleOR_640 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_640;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_640");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|257188689");
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
        [0] = self.f_box_MultipleOR_640_Out,
    });
    self.box_PlayDialog_v6_336 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_336;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_336");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|263509244");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_336_Finished,
    });
    self.box_Delay_v5_85 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|276436915");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_85_TimeElapsed,
    });
    self.box_EntityStatusListener_634 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_634;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_634");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|307324173");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_634_Loaded,
    });
    self.box_SpawnAI_231 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|321901021");
    l0:SetConnections({
    });
    self.box_Delay_v5_50 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|345389718");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_50_TimeElapsed,
    });
    self.box_Intro_010_B20_AlarmFail_24 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_AlarmFail.debug.lua");
    l0 = self.box_Intro_010_B20_AlarmFail_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Intro_010_B20_AlarmFail_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|348887765");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Intro_010_B20_AlarmFail_24_Out,
    });
    self.box_OnceOnly_v3_844 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_844;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_844");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|353646720");
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
                [0] = self.f_box_OnceOnly_v3_844_Out_0,
            },
            count = 1,
        },
    });
    self.box_EntityStatusListener_49 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|360996014");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_49_Loaded,
    });
    self.box_NarrativeFade_109 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|371847191");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_109_FadedOut,
    });
    self.box_SoundModifier_v2_448 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_448;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_448");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|398516475");
    l0:SetConnections({
    });
    self.box_SpawnAI_239 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|400623578");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_559 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_559;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_559");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|413694579");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_559_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_559_Loaded,
    });
    self.box_Music_Quest_v2_67 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|416924505");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_575 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_575;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_575");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|439214149");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_575_SomeoneNear,
    });
    self.box_OnceOnly_v3_40 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|458268678");
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
                [0] = self.f_box_OnceOnly_v3_40_Out_0,
            },
            count = 1,
        },
    });
    self.box_SoundModifier_v2_118 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|480934633");
    l0:SetConnections({
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|488609031");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_OnceOnly_v3_687 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_687;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_687");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|491212796");
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
                [0] = self.f_box_OnceOnly_v3_687_Out_0,
            },
            count = 1,
        },
    });
    self.box_EntityStatusListener_297 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_297;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_297");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|495989252");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_297_Loaded,
    });
    self.box_SoundModifier_v2_449 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_449;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_449");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|506968708");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_449_Started,
    });
    self.box_PlayDialog_v6_836 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_836;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_836");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|544845117");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_836_Finished,
    });
    self.box_PlayDialog_v6_358 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_358;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_358");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|556528027");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_761 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_761;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_761");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|566765964");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_761_Out,
    });
    self.box_Delay_v5_802 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_802;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_802");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|585341330");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_802_TimeElapsed,
    });
    self.box_Intro_010_B20_FrMove_NpcDiags_11 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_FrMove_NpcDiags.debug.lua");
    l0 = self.box_Intro_010_B20_FrMove_NpcDiags_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Intro_010_B20_FrMove_NpcDiags_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|597700037");
    l0:SetConnections({
        -- Diag_NpcFence_Over,
        [0] = self.f_box_Intro_010_B20_FrMove_NpcDiags_11_Diag_NpcFence_Over,
        -- Diag_NpcFence_Started,
        [1] = self.f_box_Intro_010_B20_FrMove_NpcDiags_11_Diag_NpcFence_Started,
    });
    self.box_ProximityRadiusListener_v3_600 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_600;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_600");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|620201831");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_600_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_600_Disabled,
    });
    self.box_EntityStatusListener_129 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|628864071");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_129_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_129_Loaded,
    });
    self.box_EntityStatusListener_613 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_613;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_613");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|646737778");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_613_Loaded,
    });
    self.box_OverrideMenuAccessibility_590 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_590;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_590");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|650822695");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_590_Out,
    });
    self.box_ProximityRadiusListener_v3_641 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_641;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_641");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|662589396");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_641_AllFar,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_641_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_641_SomeoneNear,
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|672254752");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_SoundModifier_v2_453 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_453;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_453");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|672698928");
    l0:SetConnections({
    });
    self.box_Delay_v5_255 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_255");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|679486884");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_255_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_255_TimeElapsed,
    });
    self.box_MultipleOR_608 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_608;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_608");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|681504934");
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
        [0] = self.f_box_MultipleOR_608_Out,
    });
    self.box_MultipleAND_v2_356 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_356;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_356");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|697428720");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 8,
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
        [0] = self.f_box_MultipleAND_v2_356_Out,
    });
    self.box_ProximityTrigger_v2_68 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|701786900");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_68_OnOccupied,
    });
    self.box_RemoveEntity_v2_235 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_235;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|737164050");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_235_Out,
    });
    self.box_PlayDialog_v6_258 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_258");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|745473325");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_258_Finished,
    });
    self.box_TeleportPawns_120 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|793732489");
    l0:SetConnections({
    });
    self.box_SendUiEvent_54 = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self.box_SendUiEvent_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SendUiEvent_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|800574306");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
        },
        dataIn = {
            [0] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_70 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|834640521");
    l0:SetConnections({
    });
    self.box_Delay_v5_610 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_610;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_610");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|836078712");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_610_TimeElapsed,
    });
    self.box_Delay_v5_147 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|857836154");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_147_TimeElapsed,
    });
    self.box_TeleportPawns_122 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|862299584");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|887112113");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_RemoveEntity_v2_203 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|890619066");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_203_Out,
    });
    self.box_PlayerSpeedModifier_v3_42 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|900133819");
    l0:SetConnections({
    });
    self.box_MultipleOR_843 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_843;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_843");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|907797747");
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
        [0] = self.f_box_MultipleOR_843_Out,
    });
    self.box_PlayDialog_v6_257 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_257");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|913464367");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_257_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_257_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_257_StartedPriorityFailed,
    });
    self.box_MoonModifier_52 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|921049019");
    l0:SetConnections({
        -- OnSetMoonSize,
        [5] = self.f_box_MoonModifier_52_OnSetMoonSize,
    });
    self.box_PlayDialog_v6_840 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_840;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_840");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|957486368");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_840_Finished,
    });
    self.box_PlayerSpeedModifier_v3_174 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|960401943");
    l0:SetConnections({
    });
    self.box_BaseMissionBlock_v2_32 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|960464687");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_BaseMissionBlock_v2_32_Disabled,
    });
    self.box_MultipleAND_v2_65 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|976638383");
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
        [0] = self.f_box_MultipleAND_v2_65_Out,
    });
    self.box_EntityStatusListener_560 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_560;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_560");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|978753083");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_560_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_560_Loaded,
    });
    self.box_ProximityRadiusListener_v3_46 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|979568044");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_46_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_46_SomeoneNear,
    });
    self.box_MultipleOR_824 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_824;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_824");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|987154925");
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
        [0] = self.f_box_MultipleOR_824_Out,
    });
    self.box_Intro_010_B20_WorldLimits_12 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_WorldLimits.debug.lua");
    l0 = self.box_Intro_010_B20_WorldLimits_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Intro_010_B20_WorldLimits_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|989997664");
    l0:SetConnections({
        -- Move_cultists_2_gate,
        [0] = self.f_box_Intro_010_B20_WorldLimits_12_Move_cultists_2_gate,
        -- Move_cultists_2_gate_2,
        [1] = self.f_box_Intro_010_B20_WorldLimits_12_Move_cultists_2_gate_2,
        -- Start_alarm_2_far,
        [2] = self.f_box_Intro_010_B20_WorldLimits_12_Start_alarm_2_far,
    });
    self.box_PlayDialog_v6_201 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|999917216");
    l0:SetConnections({
    });
    self.box_InputPriorityModifier_v4_33 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1000765079");
    l0:SetConnections({
        -- OnSet,
        [1] = self.f_box_InputPriorityModifier_v4_33_OnSet,
    });
    self.box_EntityStatusListener_342 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_342;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_342");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1003007707");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_342_Loaded,
    });
    self.box_RemoveEntity_v2_101 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1003580825");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_101_Out,
    });
    self.box_Gate_v3_419 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_419;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_419");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1031540473");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_419_Out,
    });
    self.box_SpawnAI_723 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_723;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_723");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1039306265");
    l0:SetConnections({
    });
    self.box_Switch_334 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_334;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_334");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1041931129");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
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
                [0] = self.f_box_Switch_334_Output_0,
                [1] = self.f_box_Switch_334_Output_1,
                [2] = self.f_box_Switch_334_Output_2,
            },
            count = 3,
        },
    });
    self.box_EntityStatusListener_742 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_742;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_742");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1053478456");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_742_Loaded,
    });
    self.box_OnceOnly_v3_9 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1088634638");
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
                [0] = self.f_box_OnceOnly_v3_9_Out_0,
            },
            count = 1,
        },
    });
    self.box_VisibilityModifier_186 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1126042439");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_186_Disabled,
    });
    self.box_ProximityRadiusListener_v3_88 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1151470375");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_88_SomeoneNear,
    });
    self.box_RequestTutorial_v3_602 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_602;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_602");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1174976712");
    l0:SetConnections({
        -- OnDisplayed,
        [0] = self.f_box_RequestTutorial_v3_602_OnDisplayed,
        -- RequestFailure,
        [3] = self.f_box_RequestTutorial_v3_602_RequestFailure,
    });
    self.box_Intro_010_B20_PlayerAbility_480 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_PlayerAbility.debug.lua");
    l0 = self.box_Intro_010_B20_PlayerAbility_480;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Intro_010_B20_PlayerAbility_480");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1195006671");
    l0:SetConnections({
    });
    self.box_SpawnAI_236 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1210043014");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_619 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_619;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_619");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1214797024");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_619_Out,
    });
    self.box_OnceOnly_v3_21 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1214805369");
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
                [0] = self.f_box_OnceOnly_v3_21_Out_0,
            },
            count = 1,
        },
    });
    self.box_EntityStatusListener_437 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_437;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_437");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1215699268");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_437_Loaded,
    });
    self.box_SoundModifier_v2_682 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_682;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_682");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1227268500");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_759 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_759;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_759");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1237060171");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_759_Out,
    });
    self.box_EntityStatusListener_238 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1265534216");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_238_Loaded,
    });
    self.box_HealthListener_v6_60 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1277407916");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_60_Damaged,
    });
    self.box_ProximityRadiusListener_v3_38 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1285683594");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_38_AllFar,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_38_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_38_SomeoneNear,
    });
    self.box_InputPriorityModifier_v4_20 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1309335265");
    l0:SetConnections({
        -- OnRelease,
        [0] = self.f_box_InputPriorityModifier_v4_20_OnRelease,
    });
    self.box_Delay_v5_443 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_443;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_443");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1310959654");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_443_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_443_TimeElapsed,
    });
    self.box_EntityStatusListener_628 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_628;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_628");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1315440924");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_628_Loaded,
    });
    self.box_SoundModifier_v2_620 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_620;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_620");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1324916354");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_436 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_436;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_436");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1325400015");
    l0:SetConnections({
    });
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1348832539");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_36_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_MultipleOR_642 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_642;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_642");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1359741411");
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
        [0] = self.f_box_MultipleOR_642_Out,
    });
    self.box_EntityStatusListener_627 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_627;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_627");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1362900342");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_627_Loaded,
    });
    self.box_BaseMissionBlock_v2_31 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1369423342");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_BaseMissionBlock_v2_31_Enabled,
    });
    self.box_ProximityTrigger_v2_451 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_451;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_451");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1371621072");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_451_Enter,
    });
    self.box_Delay_v5_62 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1380190336");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_62_TimeElapsed,
    });
    self.box_Delay_v5_832 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_832;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_832");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1413701150");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_832_TimeElapsed,
    });
    self.box_NarrativeFade_117 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1435842513");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_117_FadedOut,
    });
    self.box_PlayDialog_v6_260 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_260");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1462685768");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_260_Finished,
    });
    self.box_Intro_010_B20_PlayerAbility_26 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_PlayerAbility.debug.lua");
    l0 = self.box_Intro_010_B20_PlayerAbility_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Intro_010_B20_PlayerAbility_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1465515958");
    l0:SetConnections({
    });
    self.box_MoonModifier_51 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1478127128");
    l0:SetConnections({
        -- OnResetMoonDirection,
        [0] = self.f_box_MoonModifier_51_OnResetMoonDirection,
        -- OnResetMoonHDRMultiplier,
        [1] = self.f_box_MoonModifier_51_OnResetMoonHDRMultiplier,
        -- OnResetMoonSize,
        [2] = self.f_box_MoonModifier_51_OnResetMoonSize,
    });
    self.box_Delay_v5_751 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_751;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_751");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1529257112");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_751_TimeElapsed,
    });
    self.box_SendUiEvent_55 = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self.box_SendUiEvent_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SendUiEvent_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1532166227");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
        },
        dataIn = {
            [0] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SendUiEvent_55_Out,
    });
    self.box_Intro_010_B20_NpcMovement_19 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B20.Intro_010_B20_NpcMovement.debug.lua");
    l0 = self.box_Intro_010_B20_NpcMovement_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Intro_010_B20_NpcMovement_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1544425008");
    l0:SetConnections({
        -- Enable_Obj_Marker,
        [0] = self.f_box_Intro_010_B20_NpcMovement_19_Enable_Obj_Marker,
        -- End_Diags_Npc_Fence,
        [1] = self.f_box_Intro_010_B20_NpcMovement_19_End_Diags_Npc_Fence,
        -- Start_Diags_Npc_Fence,
        [2] = self.f_box_Intro_010_B20_NpcMovement_19_Start_Diags_Npc_Fence,
    });
    self.box_PlayDialog_v6_839 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_839;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_839");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1577256508");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_839_Finished,
    });
    self.box_NarrativeFade_107 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1579450538");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_107_FadedIn,
    });
    self.box_RemoveEntity_v2_102 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1587746527");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_102_Out,
    });
    self.box_PlayDialog_v6_164 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1647802838");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_164_Finished,
    });
    self.box_Delay_v5_423 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_423;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_423");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1649043942");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_423_TimeElapsed,
    });
    self.box_EntityStatusListener_724 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_724;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_724");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1665416341");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_724_Loaded,
    });
    self.box_PositionModifier_v2_635 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_635;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_635");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1681281332");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_240 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1688305288");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_240_Loaded,
    });
    self.box_OnceOnly_v3_37 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1725550239");
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
                [0] = self.f_box_OnceOnly_v3_37_Out_0,
            },
            count = 1,
        },
    });
    self.box_LookAtTrigger_v2_657 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_657;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_657");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1726083474");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_657_EnterFOV,
    });
    self.box_Delay_v5_645 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_645;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_645");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1744388339");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_645_TimeElapsed,
    });
    self.box_InputPriorityModifier_v4_110 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1776540814");
    l0:SetConnections({
        -- OnSet,
        [1] = self.f_box_InputPriorityModifier_v4_110_OnSet,
    });
    self.box_TeleportPawns_175 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1779591564");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_626 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_626;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_626");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1779653222");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_626_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_626_Loaded,
    });
    self.box_BaseMissionBlock_v2_30 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1779708166");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_743 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_743;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_743");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1782419889");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_71 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1792285186");
    l0:SetConnections({
    });
    self.box_NarrativeSceneCleanUp_22 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1804193937");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_22_Out,
    });
    self.box_PlayDialog_v6_256 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_256;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_256");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1822299970");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_256_Finished,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_256_Started,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1868025673");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_PositionModifier_v2_633 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_633;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_633");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1874762595");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_311 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_311;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_311");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1889233126");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_311_Finished,
    });
    self.box_RemoveEntity_v2_758 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_758;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_758");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1907228906");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_758_Out,
    });
    self.box_EntityStatusListener_230 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1913538657");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_230_Loaded,
    });
    self.box_EntityStatusListener_208 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1918173277");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_208_Loaded,
    });
    self.box_PlayDialog_v6_310 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_310;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_310");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1928607343");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_310_Finished,
    });
    self.box_ProximityRadiusListener_v3_316 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_316;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_316");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1935803010");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_316_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_316_SomeoneNear,
    });
    self.box_ProximityTrigger_v2_582 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_582;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_582");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1951224836");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_582_Enter,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_162 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2006194781");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_162_Out,
    });
    self.box_MultipleOR_335 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_335;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_335");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2028213081");
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
        [0] = self.f_box_MultipleOR_335_Out,
    });
    self.box_MultipleOR_28 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2038984901");
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
        [0] = self.f_box_MultipleOR_28_Out,
    });
    self.box_SpawnAI_612 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_612;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_612");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2054761579");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_561 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_561;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_561");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2064264131");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_561_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_561_Loaded,
    });
    self.box_SoundModifier_v2_450 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_450;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_450");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2073437109");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_450_Started,
    });
    self.box_EntityStatusListener_233 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2073699988");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_233_Loaded,
    });
    self.box_SoundModifier_v2_454 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_454;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_454");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2095119912");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|406565754", "406565754", "INTRO_010_B20", "In", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_578_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1936844978", "1936844978", "INTRO_010_B20", "box_Simple_Node_578.Out", "box_OutputOrder_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2097449033", "2097449033", "INTRO_010_B20", "box_Simple_Node_578.Out", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_Intro_010_B20_NpcMovement_19();
    l0 = self.box_Intro_010_B20_NpcMovement_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|695201622", "695201622", "INTRO_010_B20", "box_Simple_Node_578.Out", "box_Intro_010_B20_NpcMovement_19.Combat_Started", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat_Started
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_641();
    l0 = self.box_ProximityRadiusListener_v3_641;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|655316022", "655316022", "INTRO_010_B20", "box_Simple_Node_578.Out", "box_ProximityRadiusListener_v3_641.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_485_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_FrMove_NpcDiags_11();
    l0 = self.box_Intro_010_B20_FrMove_NpcDiags_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|660132544", "660132544", "INTRO_010_B20", "box_Simple_Node_485.Out", "box_Intro_010_B20_FrMove_NpcDiags_11.Disable_Diags", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable_Diags
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_804_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_FrMove_NpcDiags_11();
    l0 = self.box_Intro_010_B20_FrMove_NpcDiags_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|400388868", "400388868", "INTRO_010_B20", "box_Simple_Node_804.Out", "box_Intro_010_B20_FrMove_NpcDiags_11.Disable_Team_Callouts", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable_Team_Callouts
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_377_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_AlarmFail_24();
    l0 = self.box_Intro_010_B20_AlarmFail_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2031238914", "2031238914", "INTRO_010_B20", "box_Simple_Node_377.Out", "box_Intro_010_B20_AlarmFail_24.Disable_NPCAlarm", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable_NPCAlarm
    l0:Exec(0, params);
    l0 = self.box_Intro_010_B20_WorldLimits_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1165475490", "1165475490", "INTRO_010_B20", "box_Simple_Node_377.Out", "box_Intro_010_B20_WorldLimits_12.Disable_WLimit", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable_WLimit
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_757_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_FrMove_NpcDiags_11();
    l0 = self.box_Intro_010_B20_FrMove_NpcDiags_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|968969636", "968969636", "INTRO_010_B20", "box_Simple_Node_757.Out", "box_Intro_010_B20_FrMove_NpcDiags_11.Enable_Team_Callouts", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable_Team_Callouts
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_650_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_NpcMovement_19();
    l0 = self.box_Intro_010_B20_NpcMovement_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|375287395", "375287395", "INTRO_010_B20", "box_Simple_Node_650.Out", "box_Intro_010_B20_NpcMovement_19.Disable_Fence_SyncSTP", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable_Fence_SyncSTP
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_690_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_FrMove_NpcDiags_11();
    l0 = self.box_Intro_010_B20_FrMove_NpcDiags_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1429621607", "1429621607", "INTRO_010_B20", "box_Simple_Node_690.Out", "box_Intro_010_B20_FrMove_NpcDiags_11.Stop_Diags_NpcFence", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop_Diags_NpcFence
    l0:Exec(6, params);
end;

function export:f_box_Simple_Node_576_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_NpcMovement_19();
    l0 = self.box_Intro_010_B20_NpcMovement_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2001244736", "2001244736", "INTRO_010_B20", "box_Simple_Node_576.Out", "box_Intro_010_B20_NpcMovement_19.Move_Npc_ToChurch", clone:GetLuaBox(), l0:GetLuaBox());
    -- Move_Npc_ToChurch
    l0:Exec(6, params);
    l0 = self.box_Intro_010_B20_WorldLimits_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|408480784", "408480784", "INTRO_010_B20", "box_Simple_Node_576.Out", "box_Intro_010_B20_WorldLimits_12.Enable_Other_WLimits", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable_Other_WLimits
    l0:Exec(2, {
    });
end;

function export:f_box_Simple_Node_762_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_NpcMovement_19();
    l0 = self.box_Intro_010_B20_NpcMovement_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2130681198", "2130681198", "INTRO_010_B20", "box_Simple_Node_762.Out", "box_Intro_010_B20_NpcMovement_19.Move_Npc_ToGate_1", clone:GetLuaBox(), l0:GetLuaBox());
    -- Move_Npc_ToGate_1
    l0:Exec(7, params);
end;

function export:f_box_Simple_Node_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_NpcMovement_19();
    l0 = self.box_Intro_010_B20_NpcMovement_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|133570586", "133570586", "INTRO_010_B20", "box_Simple_Node_27.Out", "box_Intro_010_B20_NpcMovement_19.Move_Npc_ToGate_2", clone:GetLuaBox(), l0:GetLuaBox());
    -- Move_Npc_ToGate_2
    l0:Exec(8, params);
end;

function export:f_box_Simple_Node_145_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_FrMove_NpcDiags_11();
    l0 = self.box_Intro_010_B20_FrMove_NpcDiags_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2111260703", "2111260703", "INTRO_010_B20", "box_Simple_Node_145.Out", "box_Intro_010_B20_FrMove_NpcDiags_11.Start_Diags_NpcFence", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_Diags_NpcFence
    l0:Exec(5, params);
end;

function export:f_box_Simple_Node_577_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_AlarmFail_24();
    l0 = self.box_Intro_010_B20_AlarmFail_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1182848289", "1182848289", "INTRO_010_B20", "box_Simple_Node_577.Out", "box_Intro_010_B20_AlarmFail_24.Fail_NPCAlarm", clone:GetLuaBox(), l0:GetLuaBox());
    -- Fail_NPCAlarm
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_624_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_AlarmFail_24();
    l0 = self.box_Intro_010_B20_AlarmFail_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|974471849", "974471849", "INTRO_010_B20", "box_Simple_Node_624.Out", "box_Intro_010_B20_AlarmFail_24.Fail_WorldLimits", clone:GetLuaBox(), l0:GetLuaBox());
    -- Fail_WorldLimits
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_684_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_683();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|332323707", "332323707", "INTRO_010_B20", "box_Simple_Node_684.Out", "box_OutputOrder_v2_683.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_452();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|123837730", "123837730", "INTRO_010_B20", "box_Simple_Node_684.Out", "box_OutputOrder_v2_452.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_763_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_NpcMovement_19();
    l0 = self.box_Intro_010_B20_NpcMovement_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1711966916", "1711966916", "INTRO_010_B20", "box_Simple_Node_763.Out", "box_Intro_010_B20_NpcMovement_19.Start_Flamer_BurnSTP", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_Flamer_BurnSTP
    l0:Exec(9, params);
    l0 = self.box_Intro_010_B20_WorldLimits_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|56393245", "56393245", "INTRO_010_B20", "box_Simple_Node_763.Out", "box_Intro_010_B20_WorldLimits_12.Enable_1st_WLimit", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable_1st_WLimit
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_764_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_FrMove_NpcDiags_11();
    l0 = self.box_Intro_010_B20_FrMove_NpcDiags_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|172567127", "172567127", "INTRO_010_B20", "box_Simple_Node_764.Out", "box_Intro_010_B20_FrMove_NpcDiags_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(4, params);
    params = self:OnEnter_box_OutputOrder_v2_783();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1901156967", "1901156967", "INTRO_010_B20", "box_Simple_Node_764.Out", "box_OutputOrder_v2_783.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ProximityRadiusListener_v3_641();
    l0 = self.box_ProximityRadiusListener_v3_641;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2085858802", "2085858802", "INTRO_010_B20", "box_Simple_Node_764.Out", "box_ProximityRadiusListener_v3_641.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_651_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_267();
    l0 = self.box_PlaySequence_v8_267;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|513310053", "513310053", "INTRO_010_B20", "box_Simple_Node_651.Out", "box_PlaySequence_v8_267.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
    params = self:OnEnter_box_SoundModifier_v2_118();
    l0 = self.box_SoundModifier_v2_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1821558304", "1821558304", "INTRO_010_B20", "box_Simple_Node_651.Out", "box_SoundModifier_v2_118.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_376_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_FrMove_NpcDiags_11();
    l0 = self.box_Intro_010_B20_FrMove_NpcDiags_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|404492543", "404492543", "INTRO_010_B20", "box_Simple_Node_376.Out", "box_Intro_010_B20_FrMove_NpcDiags_11.Enable_Diag_NpcFire", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable_Diag_NpcFire
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_350_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_350_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_356();
    l0 = self.box_MultipleAND_v2_356;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|770187293", "770187293", "INTRO_010_B20", "box_SetEntity_v2_350.Out", "box_MultipleAND_v2_356.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_ProximityTrigger_v2_681_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_450();
    l0 = self.box_ProximityTrigger_v2_681;
    l1 = self.box_SoundModifier_v2_450;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|933337847", "933337847", "INTRO_010_B20", "box_ProximityTrigger_v2_681.Enter", "box_SoundModifier_v2_450.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_69_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_661();
    l0 = self.box_OnceOnly_v3_69;
    l1 = self.box_PositionModifier_v2_661;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1662235404", "1662235404", "INTRO_010_B20", "box_OnceOnly_v3_69.Out", "box_PositionModifier_v2_661.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MovementListener_v2_607_Idle()
    local l0, l1;
    l0 = self.box_MovementListener_v2_607;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1238899362", "1238899362", "INTRO_010_B20", "box_MovementListener_v2_607.Idle", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_42();
    l0 = self.box_MultipleOR_43;
    l1 = self.box_PlayerSpeedModifier_v3_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|88402315", "88402315", "INTRO_010_B20", "box_MultipleOR_43.Out", "box_PlayerSpeedModifier_v3_42.ApplySpeedFactor", l0:GetLuaBox(), l1:GetLuaBox());
    -- ApplySpeedFactor
    l1:Exec(0, params);
end;

function export:f_box_NarrativeSceneSetup_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_NarrativeSceneSetup_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1531897550", "1531897550", "INTRO_010_B20", "box_NarrativeSceneSetup_23.Out", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|647122984", "647122984", "INTRO_010_B20", "box_OutputOrder_v2_4.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_440();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1537040763", "1537040763", "INTRO_010_B20", "box_OutputOrder_v2_4.Out", "box_SetBoolean_v2_440.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_156();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|369526066", "369526066", "INTRO_010_B20", "box_OutputOrder_v2_4.Out", "box_SetTimeOfDay_156.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_118();
    l0 = self.box_SoundModifier_v2_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|460751026", "460751026", "INTRO_010_B20", "box_OutputOrder_v2_4.Out", "box_SoundModifier_v2_118.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneCleanUp_22();
    l0 = self.box_NarrativeSceneCleanUp_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|668616591", "668616591", "INTRO_010_B20", "box_OutputOrder_v2_4.Out", "box_NarrativeSceneCleanUp_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_684();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1361923618", "1361923618", "INTRO_010_B20", "box_OutputOrder_v2_4.Out", "box_Simple_Node_684.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_646_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_88();
    l0 = self.box_OnceOnly_v3_646;
    l1 = self.box_ProximityRadiusListener_v3_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|585137372", "585137372", "INTRO_010_B20", "box_OnceOnly_v3_646.Out", "box_ProximityRadiusListener_v3_88.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_341_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_342();
    l0 = self.box_EntityStatusListener_341;
    l1 = self.box_EntityStatusListener_342;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1333752495", "1333752495", "INTRO_010_B20", "box_EntityStatusListener_341.Enabled", "box_EntityStatusListener_342.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_341_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_349();
    l0 = self.box_EntityStatusListener_341;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1340386240", "1340386240", "INTRO_010_B20", "box_EntityStatusListener_341.Loaded", "box_SetEntity_v2_349.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_349_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_349_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_356();
    l0 = self.box_MultipleAND_v2_356;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2016598722", "2016598722", "INTRO_010_B20", "box_SetEntity_v2_349.Out", "box_MultipleAND_v2_356.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_EntityStatusListener_340_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_341();
    l0 = self.box_EntityStatusListener_340;
    l1 = self.box_EntityStatusListener_341;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1467253856", "1467253856", "INTRO_010_B20", "box_EntityStatusListener_340.Enabled", "box_EntityStatusListener_341.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_340_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_348();
    l0 = self.box_EntityStatusListener_340;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|92244106", "92244106", "INTRO_010_B20", "box_EntityStatusListener_340.Loaded", "box_SetEntity_v2_348.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_15_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_18();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2111034350", "2111034350", "INTRO_010_B20", "box_UseContextualActionModifier_v3_15.Disabled", "box_UseContextualActionModifier_v3_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_465_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_356();
    l0 = self.box_EntityStatusListener_465;
    l1 = self.box_MultipleAND_v2_356;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1541952172", "1541952172", "INTRO_010_B20", "box_EntityStatusListener_465.Loaded", "box_MultipleAND_v2_356.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 7);
end;

function export:f_box_PositionModifier_v2_661_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_70();
    l0 = self.box_PositionModifier_v2_661;
    l1 = self.box_SoundModifier_v2_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2060325531", "2060325531", "INTRO_010_B20", "box_PositionModifier_v2_661.StartOut", "box_SoundModifier_v2_70.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_731_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_465();
    l0 = self.box_EntityStatusListener_731;
    l1 = self.box_EntityStatusListener_465;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1607818311", "1607818311", "INTRO_010_B20", "box_EntityStatusListener_731.Enabled", "box_EntityStatusListener_465.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_731_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_356();
    l0 = self.box_EntityStatusListener_731;
    l1 = self.box_MultipleAND_v2_356;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|679964142", "679964142", "INTRO_010_B20", "box_EntityStatusListener_731.Loaded", "box_MultipleAND_v2_356.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 6);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_17();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|217865188", "217865188", "INTRO_010_B20", "box_OutputOrder_v2_45.Out", "box_UseContextualActionModifier_v3_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|803356406", "803356406", "INTRO_010_B20", "box_OutputOrder_v2_45.Out", "box_UseContextualActionModifier_v3_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_15();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1724257369", "1724257369", "INTRO_010_B20", "box_OutputOrder_v2_45.Out", "box_UseContextualActionModifier_v3_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_424();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|204760963", "204760963", "INTRO_010_B20", "box_OutputOrder_v2_45.Out", "box_OutputOrder_v2_424.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_722_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_723();
    l0 = self.box_SpawnAI_723;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1286051838", "1286051838", "INTRO_010_B20", "box_IsEntityLoaded_v3_722.False", "box_SpawnAI_723.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_506_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InputPriorityModifier_v4_33();
    l0 = self.box_InputPriorityModifier_v4_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1449965851", "1449965851", "INTRO_010_B20", "box_OutputOrder_v2_506.Out", "box_InputPriorityModifier_v4_33.Set", clone:GetLuaBox(), l0:GetLuaBox());
    -- Set
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_506_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_834();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1627827437", "1627827437", "INTRO_010_B20", "box_OutputOrder_v2_506.Out", "box_MissionBlockLayer_834.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_506_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_626();
    l0 = self.box_EntityStatusListener_626;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2094633678", "2094633678", "INTRO_010_B20", "box_OutputOrder_v2_506.Out", "box_EntityStatusListener_626.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_506_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_129();
    l0 = self.box_EntityStatusListener_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|634280412", "634280412", "INTRO_010_B20", "box_OutputOrder_v2_506.Out", "box_EntityStatusListener_129.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_652_Done()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_155();
    l0 = self.box_PositionModifier_v2_652;
    l1 = self.box_SoundModifier_v2_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1218005250", "1218005250", "INTRO_010_B20", "box_PositionModifier_v2_652.Done", "box_SoundModifier_v2_155.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_652_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_PositionModifier_v2_652;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2041986129", "2041986129", "INTRO_010_B20", "box_PositionModifier_v2_652.StartOut", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_298_OnSetAsUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PickupState_v2_458();
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|771282914", "771282914", "INTRO_010_B20", "box_VehicleModifier_v2_298.OnSetAsUnusable", "box_PickupState_v2_458.SetAsNotPickable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsNotPickable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_841_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_840();
    l0 = self.box_PlayDialog_v6_841;
    l1 = self.box_PlayDialog_v6_840;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|627674014", "627674014", "INTRO_010_B20", "box_PlayDialog_v6_841.Finished", "box_PlayDialog_v6_840.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_65();
    l0 = self.box_MultipleAND_v2_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|907559508", "907559508", "INTRO_010_B20", "box_Simple_Node_63.Out", "box_MultipleAND_v2_65.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1347277869", "1347277869", "INTRO_010_B20", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|793786448", "793786448", "INTRO_010_B20", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_142_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1828721652", "1828721652", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.Compass", clone:GetLuaBox(), l0:GetLuaBox());
    -- Compass
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1839435904", "1839435904", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.Tag", clone:GetLuaBox(), l0:GetLuaBox());
    -- Tag
    l0:Exec(38, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|797271836", "797271836", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.Health", clone:GetLuaBox(), l0:GetLuaBox());
    -- Health
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|570758559", "570758559", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.Reticle", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reticle
    l0:Exec(37, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1104186622", "1104186622", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.MissionGiver", clone:GetLuaBox(), l0:GetLuaBox());
    -- MissionGiver
    l0:Exec(31, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|454263456", "454263456", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.HudLocationDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudLocationDiscovery
    l0:Exec(14, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|529540668", "529540668", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.HudNewCharacterDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNewCharacterDiscovery
    l0:Exec(15, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1353500553", "1353500553", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.HudDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudDiscovery
    l0:Exec(11, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1695585586", "1695585586", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.HudOpenWorld", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudOpenWorld
    l0:Exec(25, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1050879086", "1050879086", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.Interaction", clone:GetLuaBox(), l0:GetLuaBox());
    -- Interaction
    l0:Exec(29, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|293813515", "293813515", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.DetectionMeter", clone:GetLuaBox(), l0:GetLuaBox());
    -- DetectionMeter
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|357518712", "357518712", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.HudAutodriveStatus", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudAutodriveStatus
    l0:Exec(9, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2059756558", "2059756558", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.EnergyGauge", clone:GetLuaBox(), l0:GetLuaBox());
    -- EnergyGauge
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|491895390", "491895390", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.HelmetMask", clone:GetLuaBox(), l0:GetLuaBox());
    -- HelmetMask
    l0:Exec(6, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1258149171", "1258149171", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.Hiring", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hiring
    l0:Exec(7, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|226586694", "226586694", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.HudGunsForHire", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudGunsForHire
    l0:Exec(12, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|453775413", "453775413", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.HudNotifGFH", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNotifGFH
    l0:Exec(16, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1318789844", "1318789844", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.Reputation", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reputation
    l0:Exec(36, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|896432952", "896432952", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.Looting", clone:GetLuaBox(), l0:GetLuaBox());
    -- Looting
    l0:Exec(30, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1542345833", "1542345833", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.HudChallenge", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudChallenge
    l0:Exec(10, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|855890740", "855890740", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.HudPerkPoints", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudPerkPoints
    l0:Exec(27, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_154();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2055191534", "2055191534", "INTRO_010_B20", "box_OutputOrder_v2_142.Out", "box_OverrideDisabledLogicId_154.HudOutpostSuccess", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudOutpostSuccess
    l0:Exec(26, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_640_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideDisabledLogicId_639();
    l0 = self.box_MultipleOR_640;
    l1 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|228530085", "228530085", "INTRO_010_B20", "box_MultipleOR_640.Out", "box_OverrideDisabledLogicId_639.DetectionMeter", l0:GetLuaBox(), l1:GetLuaBox());
    -- DetectionMeter
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_156_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_162();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|963656387", "963656387", "INTRO_010_B20", "box_SetTimeOfDay_156.Out", "box_CHEAT_SetEnvironmentTimeScale_162.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_336_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_336;
    l1 = self.box_MultipleOR_335;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1359172379", "1359172379", "INTRO_010_B20", "box_PlayDialog_v6_336.Finished", "box_MultipleOR_335.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_85_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Intro_010_B20_NpcMovement_19();
    l0 = self.box_Delay_v5_85;
    l1 = self.box_Intro_010_B20_NpcMovement_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|435668190", "435668190", "INTRO_010_B20", "box_Delay_v5_85.TimeElapsed", "box_Intro_010_B20_NpcMovement_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(5, params);
end;

function export:f_box_OutputOrder_v2_683_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_448();
    l0 = self.box_SoundModifier_v2_448;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|107550951", "107550951", "INTRO_010_B20", "box_OutputOrder_v2_683.Out", "box_SoundModifier_v2_448.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_683_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_454();
    l0 = self.box_SoundModifier_v2_454;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1551766787", "1551766787", "INTRO_010_B20", "box_OutputOrder_v2_683.Out", "box_SoundModifier_v2_454.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_683_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_682();
    l0 = self.box_SoundModifier_v2_682;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|872789377", "872789377", "INTRO_010_B20", "box_OutputOrder_v2_683.Out", "box_SoundModifier_v2_682.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_683_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_453();
    l0 = self.box_SoundModifier_v2_453;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1799874430", "1799874430", "INTRO_010_B20", "box_OutputOrder_v2_683.Out", "box_SoundModifier_v2_453.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_683_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_620();
    l0 = self.box_SoundModifier_v2_620;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|488433204", "488433204", "INTRO_010_B20", "box_OutputOrder_v2_683.Out", "box_SoundModifier_v2_620.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_634_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_633();
    l0 = self.box_EntityStatusListener_634;
    l1 = self.box_PositionModifier_v2_633;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1407523903", "1407523903", "INTRO_010_B20", "box_EntityStatusListener_634.Loaded", "box_PositionModifier_v2_633.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_GroupAddToGroup_v2_301_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_298();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1571118966", "1571118966", "INTRO_010_B20", "box_GroupAddToGroup_v2_301.Out", "box_VehicleModifier_v2_298.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(6, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_578();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|220545405", "220545405", "INTRO_010_B20", "box_OutputOrder_v2_47.Out", "box_Simple_Node_578.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_168();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|590909082", "590909082", "INTRO_010_B20", "box_OutputOrder_v2_47.Out", "box_HealthModifier_v2_168.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_443();
    l0 = self.box_Delay_v5_443;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2112373009", "2112373009", "INTRO_010_B20", "box_OutputOrder_v2_47.Out", "box_Delay_v5_443.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_47_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_693();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2017500065", "2017500065", "INTRO_010_B20", "box_OutputOrder_v2_47.Out", "box_Compare_Boolean_693.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_824;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|680395563", "680395563", "INTRO_010_B20", "box_OutputOrder_v2_47.Out", "box_MultipleOR_824.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_50_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_107();
    l0 = self.box_Delay_v5_50;
    l1 = self.box_NarrativeFade_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|861148397", "861148397", "INTRO_010_B20", "box_Delay_v5_50.TimeElapsed", "box_NarrativeFade_107.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_Intro_010_B20_AlarmFail_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = self.box_Intro_010_B20_AlarmFail_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2038200150", "2038200150", "INTRO_010_B20", "box_Intro_010_B20_AlarmFail_24.Out", "box_OutputOrder_v2_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_844_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_323();
    l0 = self.box_OnceOnly_v3_844;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|148578866", "148578866", "INTRO_010_B20", "box_OnceOnly_v3_844.Out", "box_OutputOrder_v2_323.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_49_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_802();
    l0 = self.box_EntityStatusListener_49;
    l1 = self.box_Delay_v5_802;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|260369037", "260369037", "INTRO_010_B20", "box_EntityStatusListener_49.Loaded", "box_Delay_v5_802.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_NarrativeFade_109_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_23();
    l0 = self.box_NarrativeFade_109;
    l1 = self.box_NarrativeSceneSetup_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|131433988", "131433988", "INTRO_010_B20", "box_NarrativeFade_109.FadedOut", "box_NarrativeSceneSetup_23.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_600();
    l0 = self.box_ProximityRadiusListener_v3_600;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|78379243", "78379243", "INTRO_010_B20", "box_OutputOrder_v2_104.Out", "box_ProximityRadiusListener_v3_600.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_104_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_115();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|807839695", "807839695", "INTRO_010_B20", "box_OutputOrder_v2_104.Out", "box_AddActivityObjective_v2_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_104_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_423();
    l0 = self.box_Delay_v5_423;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|971263374", "971263374", "INTRO_010_B20", "box_OutputOrder_v2_104.Out", "box_Delay_v5_423.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_559_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_560();
    l0 = self.box_EntityStatusListener_559;
    l1 = self.box_EntityStatusListener_560;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|179035581", "179035581", "INTRO_010_B20", "box_EntityStatusListener_559.Enabled", "box_EntityStatusListener_560.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_559_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_356();
    l0 = self.box_EntityStatusListener_559;
    l1 = self.box_MultipleAND_v2_356;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1288508439", "1288508439", "INTRO_010_B20", "box_EntityStatusListener_559.Loaded", "box_MultipleAND_v2_356.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 3);
end;

function export:f_box_GetPlayerGroup_v2_7_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_39();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|250589337", "250589337", "INTRO_010_B20", "box_GetPlayerGroup_v2_7.Out", "box_GetLocalPlayer_v2_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_575_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_575;
    l1 = self.box_OnceOnly_v3_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1617959878", "1617959878", "INTRO_010_B20", "box_ProximityRadiusListener_v3_575.SomeoneNear", "box_OnceOnly_v3_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_693_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_68();
    l0 = self.box_ProximityTrigger_v2_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|4808535", "4808535", "INTRO_010_B20", "box_Compare_Boolean_693.A_is_True", "box_ProximityTrigger_v2_68.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_40_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_38();
    l0 = self.box_OnceOnly_v3_40;
    l1 = self.box_ProximityRadiusListener_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|664696725", "664696725", "INTRO_010_B20", "box_OnceOnly_v3_40.Out", "box_ProximityRadiusListener_v3_38.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_575();
    l0 = self.box_MultipleOR_8;
    l1 = self.box_ProximityRadiusListener_v3_575;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1956846107", "1956846107", "INTRO_010_B20", "box_MultipleOR_8.Out", "box_ProximityRadiusListener_v3_575.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_687_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_757();
    l0 = self.box_OnceOnly_v3_687;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|346268952", "346268952", "INTRO_010_B20", "box_OnceOnly_v3_687.Out", "box_Simple_Node_757.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_297_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_301();
    l0 = self.box_EntityStatusListener_297;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|530317546", "530317546", "INTRO_010_B20", "box_EntityStatusListener_297.Loaded", "box_GroupAddToGroup_v2_301.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_449_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_451();
    l0 = self.box_SoundModifier_v2_449;
    l1 = self.box_ProximityTrigger_v2_451;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1364413597", "1364413597", "INTRO_010_B20", "box_SoundModifier_v2_449.Started", "box_ProximityTrigger_v2_451.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_836_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_832();
    l0 = self.box_PlayDialog_v6_836;
    l1 = self.box_Delay_v5_832;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1794100385", "1794100385", "INTRO_010_B20", "box_PlayDialog_v6_836.Finished", "box_Delay_v5_832.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_761_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_235();
    l0 = self.box_RemoveEntity_v2_761;
    l1 = self.box_RemoveEntity_v2_235;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|677212252", "677212252", "INTRO_010_B20", "box_RemoveEntity_v2_761.Out", "box_RemoveEntity_v2_235.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_802_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_20();
    l0 = self.box_Delay_v5_802;
    l1 = self.box_InputPriorityModifier_v4_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|399226433", "399226433", "INTRO_010_B20", "box_Delay_v5_802.TimeElapsed", "box_InputPriorityModifier_v4_20.Release", l0:GetLuaBox(), l1:GetLuaBox());
    -- Release
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_NpcMovement_19();
    l0 = self.box_Intro_010_B20_NpcMovement_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|186560788", "186560788", "INTRO_010_B20", "box_OutputOrder_v2_35.Out", "box_Intro_010_B20_NpcMovement_19.Gates_Closed", clone:GetLuaBox(), l0:GetLuaBox());
    -- Gates_Closed
    l0:Exec(4, params);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_761();
    l0 = self.box_RemoveEntity_v2_761;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|831650186", "831650186", "INTRO_010_B20", "box_OutputOrder_v2_35.Out", "box_RemoveEntity_v2_761.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_35_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_447();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1631358786", "1631358786", "INTRO_010_B20", "box_OutputOrder_v2_35.Out", "box_SetBoolean_v2_447.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Intro_010_B20_FrMove_NpcDiags_11_Diag_NpcFence_Over()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_650();
    l0 = self.box_Intro_010_B20_FrMove_NpcDiags_11;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2015839021", "2015839021", "INTRO_010_B20", "box_Intro_010_B20_FrMove_NpcDiags_11.Diag_NpcFence_Over", "box_Simple_Node_650.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Intro_010_B20_FrMove_NpcDiags_11_Diag_NpcFence_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_675();
    l0 = self.box_Intro_010_B20_FrMove_NpcDiags_11;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1109574688", "1109574688", "INTRO_010_B20", "box_Intro_010_B20_FrMove_NpcDiags_11.Diag_NpcFence_Started", "box_Simple_Node_675.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_339_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1949465277", "1949465277", "INTRO_010_B20", "box_OutputOrder_v2_339.Out", "box_OutputOrder_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_339_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_340();
    l0 = self.box_EntityStatusListener_340;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1549129307", "1549129307", "INTRO_010_B20", "box_OutputOrder_v2_339.Out", "box_EntityStatusListener_340.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_339_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_559();
    l0 = self.box_EntityStatusListener_559;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1643615443", "1643615443", "INTRO_010_B20", "box_OutputOrder_v2_339.Out", "box_EntityStatusListener_559.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_339_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_238();
    l0 = self.box_EntityStatusListener_238;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|788697690", "788697690", "INTRO_010_B20", "box_OutputOrder_v2_339.Out", "box_EntityStatusListener_238.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_339_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_240();
    l0 = self.box_EntityStatusListener_240;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1275974099", "1275974099", "INTRO_010_B20", "box_OutputOrder_v2_339.Out", "box_EntityStatusListener_240.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_339_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_233();
    l0 = self.box_EntityStatusListener_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1822104322", "1822104322", "INTRO_010_B20", "box_OutputOrder_v2_339.Out", "box_EntityStatusListener_233.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_339_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_230();
    l0 = self.box_EntityStatusListener_230;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1668494529", "1668494529", "INTRO_010_B20", "box_OutputOrder_v2_339.Out", "box_EntityStatusListener_230.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_339_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_613();
    l0 = self.box_EntityStatusListener_613;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|959563750", "959563750", "INTRO_010_B20", "box_OutputOrder_v2_339.Out", "box_EntityStatusListener_613.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_339_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_724();
    l0 = self.box_EntityStatusListener_724;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1009614597", "1009614597", "INTRO_010_B20", "box_OutputOrder_v2_339.Out", "box_EntityStatusListener_724.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_323_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_335;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|304732069", "304732069", "INTRO_010_B20", "box_OutputOrder_v2_323.Out", "box_MultipleOR_335.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_600_AllNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_600();
    l0 = self.box_ProximityRadiusListener_v3_600;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|154732858", "154732858", "INTRO_010_B20", "box_ProximityRadiusListener_v3_600.AllNear", "box_ProximityRadiusListener_v3_600.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_600_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_600;
    l1 = self.box_OnceOnly_v3_646;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1579913325", "1579913325", "INTRO_010_B20", "box_ProximityRadiusListener_v3_600.Disabled", "box_OnceOnly_v3_646.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_129_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_437();
    l0 = self.box_EntityStatusListener_129;
    l1 = self.box_EntityStatusListener_437;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1340161303", "1340161303", "INTRO_010_B20", "box_EntityStatusListener_129.Enabled", "box_EntityStatusListener_437.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_129_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_130();
    l0 = self.box_EntityStatusListener_129;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|473503600", "473503600", "INTRO_010_B20", "box_EntityStatusListener_129.Loaded", "box_StimsEmitter_v2_130.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_49();
    l0 = self.box_EntityStatusListener_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1089355134", "1089355134", "INTRO_010_B20", "box_OutputOrder_v2_57.Out", "box_EntityStatusListener_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1855281556", "1855281556", "INTRO_010_B20", "box_OutputOrder_v2_57.Out", "box_Delay_v5_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_57_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_763();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|425088323", "425088323", "INTRO_010_B20", "box_OutputOrder_v2_57.Out", "box_Simple_Node_763.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_613_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_612();
    l0 = self.box_EntityStatusListener_613;
    l1 = self.box_SpawnAI_612;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1012556615", "1012556615", "INTRO_010_B20", "box_EntityStatusListener_613.Loaded", "box_SpawnAI_612.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OverrideMenuAccessibility_590_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_146();
    l0 = self.box_OverrideMenuAccessibility_590;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1897007391", "1897007391", "INTRO_010_B20", "box_OverrideMenuAccessibility_590.Out", "box_ActivityMiscInfoModifier_v2_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_641_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_641;
    l1 = self.box_MultipleOR_640;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1863841679", "1863841679", "INTRO_010_B20", "box_ProximityRadiusListener_v3_641.AllFar", "box_MultipleOR_640.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_641_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_641;
    l1 = self.box_MultipleOR_642;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2060754011", "2060754011", "INTRO_010_B20", "box_ProximityRadiusListener_v3_641.Disabled", "box_MultipleOR_642.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_641_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_641;
    l1 = self.box_MultipleOR_642;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|605222905", "605222905", "INTRO_010_B20", "box_ProximityRadiusListener_v3_641.SomeoneNear", "box_MultipleOR_642.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_264_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_147();
    l0 = self.box_Delay_v5_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1609830666", "1609830666", "INTRO_010_B20", "box_Simple_Node_264.Out", "box_Delay_v5_147.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = self.box_Delay_v5_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1060443037", "1060443037", "INTRO_010_B20", "box_Delay_v5_10.TimeElapsed", "box_OutputOrder_v2_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_255_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_419();
    l0 = self.box_Delay_v5_255;
    l1 = self.box_Gate_v3_419;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|159019488", "159019488", "INTRO_010_B20", "box_Delay_v5_255.Stopped", "box_Gate_v3_419.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_255_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_316();
    l0 = self.box_Delay_v5_255;
    l1 = self.box_ProximityRadiusListener_v3_316;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1780732363", "1780732363", "INTRO_010_B20", "box_Delay_v5_255.TimeElapsed", "box_ProximityRadiusListener_v3_316.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_608_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_608;
    l1 = self.box_OnceOnly_v3_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|140089349", "140089349", "INTRO_010_B20", "box_MultipleOR_608.Out", "box_OnceOnly_v3_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_760_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_31();
    l0 = self.box_BaseMissionBlock_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1168137835", "1168137835", "INTRO_010_B20", "box_MissionBlockLayer_760.Activated", "box_BaseMissionBlock_v2_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
end;

function export:f_box_MultipleAND_v2_356_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_263();
    l0 = self.box_MultipleAND_v2_356;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1023757640", "1023757640", "INTRO_010_B20", "box_MultipleAND_v2_356.Out", "box_OutputOrder_v2_263.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_68_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_68;
    l1 = self.box_OnceOnly_v3_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|87761627", "87761627", "INTRO_010_B20", "box_ProximityTrigger_v2_68.OnOccupied", "box_OnceOnly_v3_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_2();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1904595316", "1904595316", "INTRO_010_B20", "box_OutputOrder_v2_53.Out", "box_OverrideDisabledLogicId_2.HudHint", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudHint
    l0:Exec(13, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Intro_010_B20_PlayerAbility_480;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2061387755", "2061387755", "INTRO_010_B20", "box_OutputOrder_v2_53.Out", "box_Intro_010_B20_PlayerAbility_480.Enable_Abilities_Fight", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable_Abilities_Fight
    l0:Exec(1, {
    });
end;

function export:f_box_StanceModifier_v2_113_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StanceModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_112();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1250070746", "1250070746", "INTRO_010_B20", "box_StanceModifier_v2_113.Out", "box_OutputOrder_v2_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_108_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_72();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|786316443", "786316443", "INTRO_010_B20", "box_OutputOrder_v2_108.Out", "box_SetContextualStrategy_72.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_108_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_485();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|894001259", "894001259", "INTRO_010_B20", "box_OutputOrder_v2_108.Out", "box_Simple_Node_485.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_108_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_116();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1893842200", "1893842200", "INTRO_010_B20", "box_OutputOrder_v2_108.Out", "box_ActivityObjectiveMarkerModifier_v3_116.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_108_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InputPriorityModifier_v4_110();
    l0 = self.box_InputPriorityModifier_v4_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1170056802", "1170056802", "INTRO_010_B20", "box_OutputOrder_v2_108.Out", "box_InputPriorityModifier_v4_110.Set", clone:GetLuaBox(), l0:GetLuaBox());
    -- Set
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_108_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_38();
    l0 = self.box_ProximityRadiusListener_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1337790035", "1337790035", "INTRO_010_B20", "box_OutputOrder_v2_108.Out", "box_ProximityRadiusListener_v3_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_108_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_377();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|896131260", "896131260", "INTRO_010_B20", "box_OutputOrder_v2_108.Out", "box_Simple_Node_377.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_108_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_66();
    l0 = self.box_SoundModifier_v2_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1692541374", "1692541374", "INTRO_010_B20", "box_OutputOrder_v2_108.Out", "box_SoundModifier_v2_66.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_108_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_109();
    l0 = self.box_NarrativeFade_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|26113955", "26113955", "INTRO_010_B20", "box_OutputOrder_v2_108.Out", "box_NarrativeFade_109.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_235_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_760();
    l0 = self.box_RemoveEntity_v2_235;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1794424295", "1794424295", "INTRO_010_B20", "box_RemoveEntity_v2_235.Out", "box_MissionBlockLayer_760.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_258_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_310();
    l0 = self.box_PlayDialog_v6_258;
    l1 = self.box_PlayDialog_v6_310;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|885135696", "885135696", "INTRO_010_B20", "box_PlayDialog_v6_258.Finished", "box_PlayDialog_v6_310.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_372_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_46();
    l0 = self.box_ProximityRadiusListener_v3_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|11101819", "11101819", "INTRO_010_B20", "box_OutputOrder_v2_372.Out", "box_ProximityRadiusListener_v3_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_372_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_576();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2103339594", "2103339594", "INTRO_010_B20", "box_OutputOrder_v2_372.Out", "box_Simple_Node_576.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OverrideEnvironment_v3_318_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoonModifier_52();
    l0 = self.box_MoonModifier_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1918773454", "1918773454", "INTRO_010_B20", "box_OverrideEnvironment_v3_318.Enabled", "box_MoonModifier_52.SetMoonSize", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetMoonSize
    l0:Exec(5, params);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Intro_010_B20_PlayerAbility_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|783929161", "783929161", "INTRO_010_B20", "box_OutputOrder_v2_29.Out", "box_Intro_010_B20_PlayerAbility_26.Restore_CompleteInventory", clone:GetLuaBox(), l0:GetLuaBox());
    -- Restore_CompleteInventory
    l0:Exec(3, {
    });
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_651();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1667970181", "1667970181", "INTRO_010_B20", "box_OutputOrder_v2_29.Out", "box_Simple_Node_651.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1365417562", "1365417562", "INTRO_010_B20", "box_OutputOrder_v2_29.Out", "box_Delay_v5_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetLocalPlayer_v2_39_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_39_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StanceModifier_v2_113();
    l0 = Boxes[GetPathID("Domino/System/StanceModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1788546278", "1788546278", "INTRO_010_B20", "box_GetLocalPlayer_v2_39.Out", "box_StanceModifier_v2_113.SetStance", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetStance
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_610_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MovementListener_v2_607();
    l0 = self.box_Delay_v5_610;
    l1 = self.box_MovementListener_v2_607;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1887125278", "1887125278", "INTRO_010_B20", "box_Delay_v5_610.TimeElapsed", "box_MovementListener_v2_607.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_147_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_257();
    l0 = self.box_Delay_v5_147;
    l1 = self.box_PlayDialog_v6_257;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|343462498", "343462498", "INTRO_010_B20", "box_Delay_v5_147.TimeElapsed", "box_PlayDialog_v6_257.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_590();
    l0 = self.box_ActivityInitialized_6;
    l1 = self.box_OverrideMenuAccessibility_590;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|38705554", "38705554", "INTRO_010_B20", "box_ActivityInitialized_6.Out", "box_OverrideMenuAccessibility_590.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_203_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_32();
    l0 = self.box_RemoveEntity_v2_203;
    l1 = self.box_BaseMissionBlock_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|895842593", "895842593", "INTRO_010_B20", "box_RemoveEntity_v2_203.Out", "box_BaseMissionBlock_v2_32.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_843_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_843;
    l1 = self.box_OnceOnly_v3_844;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|357476251", "357476251", "INTRO_010_B20", "box_MultipleOR_843.Out", "box_OnceOnly_v3_844.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_257_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_257;
    l1 = self.box_MultipleOR_843;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1977994104", "1977994104", "INTRO_010_B20", "box_PlayDialog_v6_257.Finished", "box_MultipleOR_843.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_257_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_257;
    l1 = self.box_MultipleOR_843;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|492401506", "492401506", "INTRO_010_B20", "box_PlayDialog_v6_257.FinishedInterrupted", "box_MultipleOR_843.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_257_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_257;
    l1 = self.box_MultipleOR_843;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|402156035", "402156035", "INTRO_010_B20", "box_PlayDialog_v6_257.StartedPriorityFailed", "box_MultipleOR_843.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MoonModifier_52_OnSetMoonSize()
    local params, l0;
    params = self:OnEnter_box_MoonModifier_52();
    l0 = self.box_MoonModifier_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1840988669", "1840988669", "INTRO_010_B20", "box_MoonModifier_52.OnSetMoonSize", "box_MoonModifier_52.SetMoonDirection", l0:GetLuaBox(), l0:GetLuaBox());
    -- SetMoonDirection
    l0:Exec(3, params);
end;

function export:f_box_PlayDialog_v6_840_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_757();
    l0 = self.box_PlayDialog_v6_840;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|711736293", "711736293", "INTRO_010_B20", "box_PlayDialog_v6_840.Finished", "box_Simple_Node_757.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BaseMissionBlock_v2_32_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MoonModifier_51();
    l0 = self.box_BaseMissionBlock_v2_32;
    l1 = self.box_MoonModifier_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|117659795", "117659795", "INTRO_010_B20", "box_BaseMissionBlock_v2_32.Disabled", "box_MoonModifier_51.ResetMoonSize", l0:GetLuaBox(), l1:GetLuaBox());
    -- ResetMoonSize
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_575();
    l0 = self.box_ProximityRadiusListener_v3_575;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|321258946", "321258946", "INTRO_010_B20", "box_OutputOrder_v2_48.Out", "box_ProximityRadiusListener_v3_575.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_582();
    l0 = self.box_ProximityTrigger_v2_582;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1796786902", "1796786902", "INTRO_010_B20", "box_OutputOrder_v2_48.Out", "box_ProximityTrigger_v2_582.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_48_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_376();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1413308371", "1413308371", "INTRO_010_B20", "box_OutputOrder_v2_48.Out", "box_Simple_Node_376.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_65_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_65;
    l1 = self.box_OnceOnly_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|468479745", "468479745", "INTRO_010_B20", "box_MultipleAND_v2_65.Out", "box_OnceOnly_v3_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_560_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_561();
    l0 = self.box_EntityStatusListener_560;
    l1 = self.box_EntityStatusListener_561;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|138546115", "138546115", "INTRO_010_B20", "box_EntityStatusListener_560.Enabled", "box_EntityStatusListener_561.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_560_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_356();
    l0 = self.box_EntityStatusListener_560;
    l1 = self.box_MultipleAND_v2_356;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|234728992", "234728992", "INTRO_010_B20", "box_EntityStatusListener_560.Loaded", "box_MultipleAND_v2_356.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 4);
end;

function export:f_box_ProximityRadiusListener_v3_46_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_657();
    l0 = self.box_ProximityRadiusListener_v3_46;
    l1 = self.box_LookAtTrigger_v2_657;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|157168225", "157168225", "INTRO_010_B20", "box_ProximityRadiusListener_v3_46.Disabled", "box_LookAtTrigger_v2_657.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_46_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_46();
    l0 = self.box_ProximityRadiusListener_v3_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|894519962", "894519962", "INTRO_010_B20", "box_ProximityRadiusListener_v3_46.SomeoneNear", "box_ProximityRadiusListener_v3_46.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_824_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_758();
    l0 = self.box_MultipleOR_824;
    l1 = self.box_RemoveEntity_v2_758;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|248967543", "248967543", "INTRO_010_B20", "box_MultipleOR_824.Out", "box_RemoveEntity_v2_758.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Intro_010_B20_WorldLimits_12_Move_cultists_2_gate()
    local params, l0, l1;
    self:OnExit_box_Intro_010_B20_WorldLimits_12_Move_cultists_2_gate();
    params = self:OnEnter_box_Simple_Node_762();
    l0 = self.box_Intro_010_B20_WorldLimits_12;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|922122957", "922122957", "INTRO_010_B20", "box_Intro_010_B20_WorldLimits_12.Move_cultists_2_gate", "box_Simple_Node_762.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Intro_010_B20_WorldLimits_12_Move_cultists_2_gate_2()
    local params, l0, l1;
    self:OnExit_box_Intro_010_B20_WorldLimits_12_Move_cultists_2_gate_2();
    params = self:OnEnter_box_Simple_Node_27();
    l0 = self.box_Intro_010_B20_WorldLimits_12;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1693105649", "1693105649", "INTRO_010_B20", "box_Intro_010_B20_WorldLimits_12.Move_cultists_2_gate_2", "box_Simple_Node_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Intro_010_B20_WorldLimits_12_Start_alarm_2_far()
    local params, l0, l1;
    self:OnExit_box_Intro_010_B20_WorldLimits_12_Start_alarm_2_far();
    params = self:OnEnter_box_Simple_Node_624();
    l0 = self.box_Intro_010_B20_WorldLimits_12;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1091484172", "1091484172", "INTRO_010_B20", "box_Intro_010_B20_WorldLimits_12.Start_alarm_2_far", "box_Simple_Node_624.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_356();
    l0 = self.box_MultipleAND_v2_356;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|809742564", "809742564", "INTRO_010_B20", "box_OutputOrder_v2_61.Out", "box_MultipleAND_v2_356.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_60();
    l0 = self.box_HealthListener_v6_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1250993916", "1250993916", "INTRO_010_B20", "box_OutputOrder_v2_61.Out", "box_HealthListener_v6_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_InputPriorityModifier_v4_33_OnSet()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_339();
    l0 = self.box_InputPriorityModifier_v4_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1061599574", "1061599574", "INTRO_010_B20", "box_InputPriorityModifier_v4_33.OnSet", "box_OutputOrder_v2_339.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_342_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_350();
    l0 = self.box_EntityStatusListener_342;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1937488054", "1937488054", "INTRO_010_B20", "box_EntityStatusListener_342.Loaded", "box_SetEntity_v2_350.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_101_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_102();
    l0 = self.box_RemoveEntity_v2_101;
    l1 = self.box_RemoveEntity_v2_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|796282026", "796282026", "INTRO_010_B20", "box_RemoveEntity_v2_101.Out", "box_RemoveEntity_v2_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_241_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_236();
    l0 = self.box_SpawnAI_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|702821883", "702821883", "INTRO_010_B20", "box_IsEntityLoaded_v3_241.False", "box_SpawnAI_236.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_419_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_255();
    l0 = self.box_Gate_v3_419;
    l1 = self.box_Delay_v5_255;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1997340616", "1997340616", "INTRO_010_B20", "box_Gate_v3_419.Out", "box_Delay_v5_255.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Switch_334_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_260();
    l0 = self.box_Switch_334;
    l1 = self.box_PlayDialog_v6_260;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|443332321", "443332321", "INTRO_010_B20", "box_Switch_334.Output", "box_PlayDialog_v6_260.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_334_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_336();
    l0 = self.box_Switch_334;
    l1 = self.box_PlayDialog_v6_336;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|574265777", "574265777", "INTRO_010_B20", "box_Switch_334.Output", "box_PlayDialog_v6_336.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_334_Output_2()
    local l0, l1;
    l0 = self.box_Switch_334;
    l1 = self.box_OnceOnly_v3_687;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1299143029", "1299143029", "INTRO_010_B20", "box_Switch_334.Output", "box_OnceOnly_v3_687.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_742_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_743();
    l0 = self.box_EntityStatusListener_742;
    l1 = self.box_RemoveEntity_v2_743;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1274375020", "1274375020", "INTRO_010_B20", "box_EntityStatusListener_742.Loaded", "box_RemoveEntity_v2_743.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_9_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_13();
    l0 = self.box_OnceOnly_v3_9;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1437181207", "1437181207", "INTRO_010_B20", "box_OnceOnly_v3_9.Out", "box_UseContextualActionModifier_v3_13.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_186_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_106();
    l0 = self.box_VisibilityModifier_186;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|139239768", "139239768", "INTRO_010_B20", "box_VisibilityModifier_186.Disabled", "box_OutputOrder_v2_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_41_Out()
    local l0;
    self:OnExit_box_SetFloat_v2_41_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|320909307", "320909307", "INTRO_010_B20", "box_SetFloat_v2_41.Out", "box_MultipleOR_43.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_88_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_65();
    l0 = self.box_ProximityRadiusListener_v3_88;
    l1 = self.box_MultipleAND_v2_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|811747856", "811747856", "INTRO_010_B20", "box_ProximityRadiusListener_v3_88.SomeoneNear", "box_MultipleAND_v2_65.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_RequestTutorial_v3_602_OnDisplayed()
    local l0, l1;
    l0 = self.box_RequestTutorial_v3_602;
    l1 = self.box_MultipleOR_608;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1075081391", "1075081391", "INTRO_010_B20", "box_RequestTutorial_v3_602.OnDisplayed", "box_MultipleOR_608.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestTutorial_v3_602_RequestFailure()
    local l0, l1;
    l0 = self.box_RequestTutorial_v3_602;
    l1 = self.box_MultipleOR_608;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|164506720", "164506720", "INTRO_010_B20", "box_RequestTutorial_v3_602.RequestFailure", "box_MultipleOR_608.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_263_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_63();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1388295445", "1388295445", "INTRO_010_B20", "box_OutputOrder_v2_263.Out", "box_Simple_Node_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_263_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_264();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|684439488", "684439488", "INTRO_010_B20", "box_OutputOrder_v2_263.Out", "box_Simple_Node_264.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_112_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_50();
    l0 = self.box_Delay_v5_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|767117025", "767117025", "INTRO_010_B20", "box_OutputOrder_v2_112.Out", "box_Delay_v5_50.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_112_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Intro_010_B20_PlayerAbility_480;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1511853376", "1511853376", "INTRO_010_B20", "box_OutputOrder_v2_112.Out", "box_Intro_010_B20_PlayerAbility_480.Start_Inventory", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_Inventory
    l0:Exec(4, {
    });
end;

function export:f_box_OutputOrder_v2_112_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Intro_010_B20_PlayerAbility_480;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1469812117", "1469812117", "INTRO_010_B20", "box_OutputOrder_v2_112.Out", "box_Intro_010_B20_PlayerAbility_480.Disable_Abilities", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable_Abilities
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_112_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_85();
    l0 = self.box_Delay_v5_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1540001869", "1540001869", "INTRO_010_B20", "box_OutputOrder_v2_112.Out", "box_Delay_v5_85.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_112_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_67();
    l0 = self.box_Music_Quest_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1211736727", "1211736727", "INTRO_010_B20", "box_OutputOrder_v2_112.Out", "box_Music_Quest_v2_67.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_112_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SendUiEvent_54();
    l0 = self.box_SendUiEvent_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2033191365", "2033191365", "INTRO_010_B20", "box_OutputOrder_v2_112.Out", "box_SendUiEvent_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_112_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_297();
    l0 = self.box_EntityStatusListener_297;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1639609663", "1639609663", "INTRO_010_B20", "box_OutputOrder_v2_112.Out", "box_EntityStatusListener_297.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_112_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_742();
    l0 = self.box_EntityStatusListener_742;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|302123933", "302123933", "INTRO_010_B20", "box_OutputOrder_v2_112.Out", "box_EntityStatusListener_742.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_112_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_577();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|972877772", "972877772", "INTRO_010_B20", "box_OutputOrder_v2_112.Out", "box_Simple_Node_577.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_619_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_436();
    l0 = self.box_RemoveEntity_v2_619;
    l1 = self.box_RemoveEntity_v2_436;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|541141059", "541141059", "INTRO_010_B20", "box_RemoveEntity_v2_619.Out", "box_RemoveEntity_v2_436.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_21_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_610();
    l0 = self.box_OnceOnly_v3_21;
    l1 = self.box_Delay_v5_610;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|746685253", "746685253", "INTRO_010_B20", "box_OnceOnly_v3_21.Out", "box_Delay_v5_610.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_437_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_439();
    l0 = self.box_EntityStatusListener_437;
    l1 = self.box_RemoveEntity_v2_439;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1001309536", "1001309536", "INTRO_010_B20", "box_EntityStatusListener_437.Loaded", "box_RemoveEntity_v2_439.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_759_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_101();
    l0 = self.box_RemoveEntity_v2_759;
    l1 = self.box_RemoveEntity_v2_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1408891222", "1408891222", "INTRO_010_B20", "box_RemoveEntity_v2_759.Out", "box_RemoveEntity_v2_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_238_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_241();
    l0 = self.box_EntityStatusListener_238;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|976747425", "976747425", "INTRO_010_B20", "box_EntityStatusListener_238.Loaded", "box_IsEntityLoaded_v3_241.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_60_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_64();
    l0 = self.box_HealthListener_v6_60;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1955268764", "1955268764", "INTRO_010_B20", "box_HealthListener_v6_60.Damaged", "box_Print_v2_64.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_38_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_SetFloat_v2_41();
    l0 = self.box_ProximityRadiusListener_v3_38;
    l1 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1983817152", "1983817152", "INTRO_010_B20", "box_ProximityRadiusListener_v3_38.AllFar", "box_SetFloat_v2_41.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_38_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_645();
    l0 = self.box_ProximityRadiusListener_v3_38;
    l1 = self.box_Delay_v5_645;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1105245266", "1105245266", "INTRO_010_B20", "box_ProximityRadiusListener_v3_38.Enabled", "box_Delay_v5_645.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_38_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SetFloat_v2_44();
    l0 = self.box_ProximityRadiusListener_v3_38;
    l1 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1058435302", "1058435302", "INTRO_010_B20", "box_ProximityRadiusListener_v3_38.SomeoneNear", "box_SetFloat_v2_44.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InputPriorityModifier_v4_20_OnRelease()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_174();
    l0 = self.box_InputPriorityModifier_v4_20;
    l1 = self.box_PlayerSpeedModifier_v3_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1451082176", "1451082176", "INTRO_010_B20", "box_InputPriorityModifier_v4_20.OnRelease", "box_PlayerSpeedModifier_v3_174.ApplySpeedFactor", l0:GetLuaBox(), l1:GetLuaBox());
    -- ApplySpeedFactor
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_443_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_201();
    l0 = self.box_Delay_v5_443;
    l1 = self.box_PlayDialog_v6_201;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1303097906", "1303097906", "INTRO_010_B20", "box_Delay_v5_443.Started", "box_PlayDialog_v6_201.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_443_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_358();
    l0 = self.box_Delay_v5_443;
    l1 = self.box_PlayDialog_v6_358;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|810012645", "810012645", "INTRO_010_B20", "box_Delay_v5_443.TimeElapsed", "box_PlayDialog_v6_358.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_628_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_635();
    l0 = self.box_EntityStatusListener_628;
    l1 = self.box_PositionModifier_v2_635;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1503335555", "1503335555", "INTRO_010_B20", "box_EntityStatusListener_628.Loaded", "box_PositionModifier_v2_635.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_18_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_18();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1130644859", "1130644859", "INTRO_010_B20", "box_UseContextualActionModifier_v3_18.Enabled", "box_UseContextualActionModifier_v3_18.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_36_Started()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_71();
    l0 = self.box_Delay_v5_36;
    l1 = self.box_RemoveEntity_v2_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|31179820", "31179820", "INTRO_010_B20", "box_Delay_v5_36.Started", "box_RemoveEntity_v2_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_186();
    l0 = self.box_Delay_v5_36;
    l1 = self.box_VisibilityModifier_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1981507556", "1981507556", "INTRO_010_B20", "box_Delay_v5_36.TimeElapsed", "box_VisibilityModifier_186.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_642_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideDisabledLogicId_643();
    l0 = self.box_MultipleOR_642;
    l1 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|60248801", "60248801", "INTRO_010_B20", "box_MultipleOR_642.Out", "box_OverrideDisabledLogicId_643.DetectionMeter", l0:GetLuaBox(), l1:GetLuaBox());
    -- DetectionMeter
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_627_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_628();
    l0 = self.box_EntityStatusListener_627;
    l1 = self.box_EntityStatusListener_628;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1840070816", "1840070816", "INTRO_010_B20", "box_EntityStatusListener_627.Loaded", "box_EntityStatusListener_628.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_BaseMissionBlock_v2_31_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_30();
    l0 = self.box_BaseMissionBlock_v2_31;
    l1 = self.box_BaseMissionBlock_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|875846990", "875846990", "INTRO_010_B20", "box_BaseMissionBlock_v2_31.Enabled", "box_BaseMissionBlock_v2_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v2_451_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_449();
    l0 = self.box_ProximityTrigger_v2_451;
    l1 = self.box_SoundModifier_v2_449;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|550325593", "550325593", "INTRO_010_B20", "box_ProximityTrigger_v2_451.Enter", "box_SoundModifier_v2_449.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_62_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_836();
    l0 = self.box_Delay_v5_62;
    l1 = self.box_PlayDialog_v6_836;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|77613916", "77613916", "INTRO_010_B20", "box_Delay_v5_62.TimeElapsed", "box_PlayDialog_v6_836.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_832_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_258();
    l0 = self.box_Delay_v5_832;
    l1 = self.box_PlayDialog_v6_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1381322094", "1381322094", "INTRO_010_B20", "box_Delay_v5_832.TimeElapsed", "box_PlayDialog_v6_258.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_NarrativeFade_117_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_142();
    l0 = self.box_NarrativeFade_117;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1498473440", "1498473440", "INTRO_010_B20", "box_NarrativeFade_117.FadedOut", "box_OutputOrder_v2_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_440_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_440_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|507671825", "507671825", "INTRO_010_B20", "box_SetBoolean_v2_440.Out", "box_ActivityAcknowledgeGate_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_UseContextualActionModifier_v3_14_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_16();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1927659382", "1927659382", "INTRO_010_B20", "box_UseContextualActionModifier_v3_14.Disabled", "box_UseContextualActionModifier_v3_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_13_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|882919261", "882919261", "INTRO_010_B20", "box_UseContextualActionModifier_v3_13.Disabled", "box_OutputOrder_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_260_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_260;
    l1 = self.box_MultipleOR_335;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|567481687", "567481687", "INTRO_010_B20", "box_PlayDialog_v6_260.Finished", "box_MultipleOR_335.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_16_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_16();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|943155417", "943155417", "INTRO_010_B20", "box_UseContextualActionModifier_v3_16.Enabled", "box_UseContextualActionModifier_v3_16.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_424_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|795319571", "795319571", "INTRO_010_B20", "box_OutputOrder_v2_424.Out", "box_OutputOrder_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_424_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_255();
    l0 = self.box_Delay_v5_255;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1024677370", "1024677370", "INTRO_010_B20", "box_OutputOrder_v2_424.Out", "box_Delay_v5_255.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_424_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_256();
    l0 = self.box_PlayDialog_v6_256;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1124053452", "1124053452", "INTRO_010_B20", "box_OutputOrder_v2_424.Out", "box_PlayDialog_v6_256.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_424_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_764();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2146382815", "2146382815", "INTRO_010_B20", "box_OutputOrder_v2_424.Out", "box_Simple_Node_764.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MoonModifier_51_OnResetMoonDirection()
    local params, l0;
    params = self:OnEnter_box_MoonModifier_51();
    l0 = self.box_MoonModifier_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1387816143", "1387816143", "INTRO_010_B20", "box_MoonModifier_51.OnResetMoonDirection", "box_MoonModifier_51.ResetMoonHDRMultiplier", l0:GetLuaBox(), l0:GetLuaBox());
    -- ResetMoonHDRMultiplier
    l0:Exec(1, params);
end;

function export:f_box_MoonModifier_51_OnResetMoonHDRMultiplier()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_34();
    l0 = self.box_MoonModifier_51;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2081352486", "2081352486", "INTRO_010_B20", "box_MoonModifier_51.OnResetMoonHDRMultiplier", "box_OverrideEnvironment_v3_34.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MoonModifier_51_OnResetMoonSize()
    local params, l0;
    params = self:OnEnter_box_MoonModifier_51();
    l0 = self.box_MoonModifier_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|134244818", "134244818", "INTRO_010_B20", "box_MoonModifier_51.OnResetMoonSize", "box_MoonModifier_51.ResetMoonDirection", l0:GetLuaBox(), l0:GetLuaBox());
    -- ResetMoonDirection
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_106_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_120();
    l0 = self.box_TeleportPawns_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|422028557", "422028557", "INTRO_010_B20", "box_OutputOrder_v2_106.Out", "box_TeleportPawns_120.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_106_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_122();
    l0 = self.box_TeleportPawns_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|414579476", "414579476", "INTRO_010_B20", "box_OutputOrder_v2_106.Out", "box_TeleportPawns_122.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_106_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_175();
    l0 = self.box_TeleportPawns_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|730832928", "730832928", "INTRO_010_B20", "box_OutputOrder_v2_106.Out", "box_TeleportPawns_175.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_106_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_203();
    l0 = self.box_RemoveEntity_v2_203;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|81061906", "81061906", "INTRO_010_B20", "box_OutputOrder_v2_106.Out", "box_RemoveEntity_v2_203.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_751_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_751;
    l1 = self.box_MultipleOR_824;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1988752356", "1988752356", "INTRO_010_B20", "box_Delay_v5_751.TimeElapsed", "box_MultipleOR_824.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SendUiEvent_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_78();
    l0 = self.box_SendUiEvent_55;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|623001057", "623001057", "INTRO_010_B20", "box_SendUiEvent_55.Out", "box_ActivityEnd_78.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Intro_010_B20_NpcMovement_19_Enable_Obj_Marker()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_116();
    l0 = self.box_Intro_010_B20_NpcMovement_19;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1674548890", "1674548890", "INTRO_010_B20", "box_Intro_010_B20_NpcMovement_19.Enable_Obj_Marker", "box_ActivityObjectiveMarkerModifier_v3_116.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Intro_010_B20_NpcMovement_19_End_Diags_Npc_Fence()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_690();
    l0 = self.box_Intro_010_B20_NpcMovement_19;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1931266532", "1931266532", "INTRO_010_B20", "box_Intro_010_B20_NpcMovement_19.End_Diags_Npc_Fence", "box_Simple_Node_690.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Intro_010_B20_NpcMovement_19_Start_Diags_Npc_Fence()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_145();
    l0 = self.box_Intro_010_B20_NpcMovement_19;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|614717375", "614717375", "INTRO_010_B20", "box_Intro_010_B20_NpcMovement_19.Start_Diags_Npc_Fence", "box_Simple_Node_145.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_44_Out()
    local l0;
    self:OnExit_box_SetFloat_v2_44_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1951303190", "1951303190", "INTRO_010_B20", "box_SetFloat_v2_44.Out", "box_MultipleOR_43.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_17_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_17();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1548742643", "1548742643", "INTRO_010_B20", "box_UseContextualActionModifier_v3_17.Enabled", "box_UseContextualActionModifier_v3_17.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_839_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_841();
    l0 = self.box_PlayDialog_v6_839;
    l1 = self.box_PlayDialog_v6_841;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1543104926", "1543104926", "INTRO_010_B20", "box_PlayDialog_v6_839.Finished", "box_PlayDialog_v6_841.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_NarrativeFade_107_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = self.box_NarrativeFade_107;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|689192701", "689192701", "INTRO_010_B20", "box_NarrativeFade_107.FadedIn", "box_OutputOrder_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_102_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_619();
    l0 = self.box_RemoveEntity_v2_102;
    l1 = self.box_RemoveEntity_v2_619;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1463266330", "1463266330", "INTRO_010_B20", "box_RemoveEntity_v2_102.Out", "box_RemoveEntity_v2_619.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_452_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_681();
    l0 = self.box_ProximityTrigger_v2_681;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|501027169", "501027169", "INTRO_010_B20", "box_OutputOrder_v2_452.Out", "box_ProximityTrigger_v2_681.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_452_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_451();
    l0 = self.box_ProximityTrigger_v2_451;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1091330514", "1091330514", "INTRO_010_B20", "box_OutputOrder_v2_452.Out", "box_ProximityTrigger_v2_451.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_164_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_62();
    l0 = self.box_PlayDialog_v6_164;
    l1 = self.box_Delay_v5_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1969873550", "1969873550", "INTRO_010_B20", "box_PlayDialog_v6_164.Finished", "box_Delay_v5_62.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_423_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_423;
    l1 = self.box_OnceOnly_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1450122075", "1450122075", "INTRO_010_B20", "box_Delay_v5_423.TimeElapsed", "box_OnceOnly_v3_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_724_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_722();
    l0 = self.box_EntityStatusListener_724;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|398564081", "398564081", "INTRO_010_B20", "box_EntityStatusListener_724.Loaded", "box_IsEntityLoaded_v3_722.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_240_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_239();
    l0 = self.box_EntityStatusListener_240;
    l1 = self.box_SpawnAI_239;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|884036145", "884036145", "INTRO_010_B20", "box_EntityStatusListener_240.Loaded", "box_SpawnAI_239.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_447_Out()
    self:OnExit_box_SetBoolean_v2_447_Out();
end;

function export:f_box_OverrideEnvironment_v3_34_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SendUiEvent_55();
    l0 = self.box_SendUiEvent_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1939095450", "1939095450", "INTRO_010_B20", "box_OverrideEnvironment_v3_34.Disabled", "box_SendUiEvent_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_37_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_108();
    l0 = self.box_OnceOnly_v3_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|346478014", "346478014", "INTRO_010_B20", "box_OnceOnly_v3_37.Out", "box_OutputOrder_v2_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_657_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_652();
    l0 = self.box_LookAtTrigger_v2_657;
    l1 = self.box_PositionModifier_v2_652;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1008000423", "1008000423", "INTRO_010_B20", "box_LookAtTrigger_v2_657.EnterFOV", "box_PositionModifier_v2_652.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_645_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_645;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|961697611", "961697611", "INTRO_010_B20", "box_Delay_v5_645.TimeElapsed", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_348_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_348_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|718594762", "718594762", "INTRO_010_B20", "box_SetEntity_v2_348.Out", "box_OutputOrder_v2_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InputPriorityModifier_v4_110_OnSet()
    local l0, l1;
    l0 = self.box_InputPriorityModifier_v4_110;
    l1 = self.box_Intro_010_B20_PlayerAbility_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|216334959", "216334959", "INTRO_010_B20", "box_InputPriorityModifier_v4_110.OnSet", "box_Intro_010_B20_PlayerAbility_26.Restore_CompleteAbilities", l0:GetLuaBox(), l1:GetLuaBox());
    -- Restore_CompleteAbilities
    l1:Exec(2, {
    });
end;

function export:f_box_EntityStatusListener_626_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_627();
    l0 = self.box_EntityStatusListener_626;
    l1 = self.box_EntityStatusListener_627;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2128740494", "2128740494", "INTRO_010_B20", "box_EntityStatusListener_626.Enabled", "box_EntityStatusListener_627.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_626_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_634();
    l0 = self.box_EntityStatusListener_626;
    l1 = self.box_EntityStatusListener_634;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1699646635", "1699646635", "INTRO_010_B20", "box_EntityStatusListener_626.Loaded", "box_EntityStatusListener_634.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_NarrativeSceneCleanUp_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_117();
    l0 = self.box_NarrativeSceneCleanUp_22;
    l1 = self.box_NarrativeFade_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2144123345", "2144123345", "INTRO_010_B20", "box_NarrativeSceneCleanUp_22.Out", "box_NarrativeFade_117.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_783_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_NpcMovement_19();
    l0 = self.box_Intro_010_B20_NpcMovement_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1512175038", "1512175038", "INTRO_010_B20", "box_OutputOrder_v2_783.Out", "box_Intro_010_B20_NpcMovement_19.End_Flamer_BurnSTP", clone:GetLuaBox(), l0:GetLuaBox());
    -- End_Flamer_BurnSTP
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_783_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Intro_010_B20_NpcMovement_19();
    l0 = self.box_Intro_010_B20_NpcMovement_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1472353604", "1472353604", "INTRO_010_B20", "box_OutputOrder_v2_783.Out", "box_Intro_010_B20_NpcMovement_19.Enable_FollowBehavior", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable_FollowBehavior
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_783_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_751();
    l0 = self.box_Delay_v5_751;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1324383726", "1324383726", "INTRO_010_B20", "box_OutputOrder_v2_783.Out", "box_Delay_v5_751.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_256_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_164();
    l0 = self.box_PlayDialog_v6_256;
    l1 = self.box_PlayDialog_v6_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1981278310", "1981278310", "INTRO_010_B20", "box_PlayDialog_v6_256.Finished", "box_PlayDialog_v6_164.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_256_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_804();
    l0 = self.box_PlayDialog_v6_256;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|755186521", "755186521", "INTRO_010_B20", "box_PlayDialog_v6_256.Started", "box_Simple_Node_804.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_506();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1043988089", "1043988089", "INTRO_010_B20", "box_MultipleOR_1.Out", "box_OutputOrder_v2_506.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_311_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_839();
    l0 = self.box_PlayDialog_v6_311;
    l1 = self.box_PlayDialog_v6_839;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2094198062", "2094198062", "INTRO_010_B20", "box_PlayDialog_v6_311.Finished", "box_PlayDialog_v6_839.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_758_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_759();
    l0 = self.box_RemoveEntity_v2_758;
    l1 = self.box_RemoveEntity_v2_759;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1674473871", "1674473871", "INTRO_010_B20", "box_RemoveEntity_v2_758.Out", "box_RemoveEntity_v2_759.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_230_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_231();
    l0 = self.box_EntityStatusListener_230;
    l1 = self.box_SpawnAI_231;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|272606250", "272606250", "INTRO_010_B20", "box_EntityStatusListener_230.Loaded", "box_SpawnAI_231.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_208_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_267();
    l0 = self.box_EntityStatusListener_208;
    l1 = self.box_PlaySequence_v8_267;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1173844463", "1173844463", "INTRO_010_B20", "box_EntityStatusListener_208.Loaded", "box_PlaySequence_v8_267.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_310_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_311();
    l0 = self.box_PlayDialog_v6_310;
    l1 = self.box_PlayDialog_v6_311;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|161728027", "161728027", "INTRO_010_B20", "box_PlayDialog_v6_310.Finished", "box_PlayDialog_v6_311.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1771103512", "1771103512", "INTRO_010_B20", "box_OutputOrder_v2_25.Out", "box_ActivityInitialized_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_208();
    l0 = self.box_EntityStatusListener_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|650847002", "650847002", "INTRO_010_B20", "box_OutputOrder_v2_25.Out", "box_EntityStatusListener_208.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_316_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_334();
    l0 = self.box_ProximityRadiusListener_v3_316;
    l1 = self.box_Switch_334;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|626453488", "626453488", "INTRO_010_B20", "box_ProximityRadiusListener_v3_316.Disabled", "box_Switch_334.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_316_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_316();
    l0 = self.box_ProximityRadiusListener_v3_316;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1642879452", "1642879452", "INTRO_010_B20", "box_ProximityRadiusListener_v3_316.SomeoneNear", "box_ProximityRadiusListener_v3_316.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_582_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_372();
    l0 = self.box_ProximityTrigger_v2_582;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|247314597", "247314597", "INTRO_010_B20", "box_ProximityTrigger_v2_582.Enter", "box_OutputOrder_v2_372.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityMiscInfoModifier_v2_146_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_7();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|870094808", "870094808", "INTRO_010_B20", "box_ActivityMiscInfoModifier_v2_146.Out", "box_GetPlayerGroup_v2_7.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_162_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_318();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_162;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1842700261", "1842700261", "INTRO_010_B20", "box_CHEAT_SetEnvironmentTimeScale_162.Out", "box_OverrideEnvironment_v3_318.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_335_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_419();
    l0 = self.box_MultipleOR_335;
    l1 = self.box_Gate_v3_419;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2004263436", "2004263436", "INTRO_010_B20", "box_MultipleOR_335.Out", "box_Gate_v3_419.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestTutorial_v3_602();
    l0 = self.box_MultipleOR_28;
    l1 = self.box_RequestTutorial_v3_602;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1682260427", "1682260427", "INTRO_010_B20", "box_MultipleOR_28.Out", "box_RequestTutorial_v3_602.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_561_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_731();
    l0 = self.box_EntityStatusListener_561;
    l1 = self.box_EntityStatusListener_731;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1531153373", "1531153373", "INTRO_010_B20", "box_EntityStatusListener_561.Enabled", "box_EntityStatusListener_731.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_561_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_356();
    l0 = self.box_EntityStatusListener_561;
    l1 = self.box_MultipleAND_v2_356;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2092038300", "2092038300", "INTRO_010_B20", "box_EntityStatusListener_561.Loaded", "box_MultipleAND_v2_356.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 5);
end;

function export:f_box_SoundModifier_v2_450_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_681();
    l0 = self.box_SoundModifier_v2_450;
    l1 = self.box_ProximityTrigger_v2_681;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1182696772", "1182696772", "INTRO_010_B20", "box_SoundModifier_v2_450.Started", "box_ProximityTrigger_v2_681.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_233_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_234();
    l0 = self.box_EntityStatusListener_233;
    l1 = self.box_SpawnAI_234;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1804648547", "1804648547", "INTRO_010_B20", "box_EntityStatusListener_233.Loaded", "box_SpawnAI_234.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_578()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_578");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@disable_church_entry");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_578_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_485()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_485");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@disable_cult_diags");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_485_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_804()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_804");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@disable_fr_callouts");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_804_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_377()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_377");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@disable_taskforce_distance");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_377_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_757()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_757");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@enable_fr_callouts");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_757_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_650()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_650");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@fence_diag_over");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_650_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_675()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_675");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@fence_diag_started");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_690()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_690");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@fence_diag_stop");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_690_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_576()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_576");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@move_cultists_to_curch");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_576_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_762()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_762");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@move_cultists_to_gate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_762_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@move_cultists_to_gate_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@play_diags_fence");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_145_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_577()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_577");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@start_alarm_conditions");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_577_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_624()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_624");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@start_alarm_tooFar");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_624_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_684()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_684");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@Start_Dog_Barks_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_684_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_763()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_763");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@start_flamer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_763_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_764()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_764");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@start_walk");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_764_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_651()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_651");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@stop_static_heli");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_651_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_376()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_376");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|@taskforce_distance");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_376_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_350()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_350");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2986869");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_350_Out,
    });
    params = {
        -- Entity,
        [0] = "2101634090257142164",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_681()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104756508760745409",
    };
    return params;
end;

function export:OnEnter_box_MovementListener_v2_607()
    local params;
    params = {
        -- angleThreshold,
        [0] = 0.1,
        -- autoDisable,
        [1] = true,
        -- entityGroup,
        [2] = "#ED455357",
        -- movingThreshold,
        [3] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_23()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|115266373");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
                [3] = self.f_box_OutputOrder_v2_4_Out_3,
                [4] = self.f_box_OutputOrder_v2_4_Out_4,
                [5] = self.f_box_OutputOrder_v2_4_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_639()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_639");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|119128889");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_341()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101634071978365247",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_349()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_349");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|122129858");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_349_Out,
    });
    params = {
        -- Entity,
        [0] = "2101634071978365247",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_340()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101634045120139528",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|126003750");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_15_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099834815518870972",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_155()
    local params;
    params = {
        -- Pawns,
        [0] = "2104756305429325776",
        -- SoundId,
        [1] = "2154961323",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_465()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101633267150105230",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_661()
    local params;
    params = {
        -- blendTime,
        [1] = 1.5,
        -- endTarget,
        [4] = "2104247398327969710",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104466620962345719",
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_731()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901691104073084",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_66()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "994844518",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|188240734");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
                [2] = self.f_box_OutputOrder_v2_45_Out_2,
                [3] = self.f_box_OutputOrder_v2_45_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_267()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2102058352235319092",
        -- SequenceFile,
        [4] = "sequences/zeta_main/cin_playgo_intro/cin_playgo_heli_waiting.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_722()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_722");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|209425729");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_722_False,
    });
    params = {
        -- entityId,
        [0] = "2104326064755984782",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|213624503");
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
        [8] = "INTRO_010_B20 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_439()
    local params;
    params = {
        -- Group,
        [0] = "2104662504452928313",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_234()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101648950091227043",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_506()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_506");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|224370247");
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
                [0] = self.f_box_OutputOrder_v2_506_Out_0,
                [1] = self.f_box_OutputOrder_v2_506_Out_1,
                [2] = self.f_box_OutputOrder_v2_506_Out_2,
                [3] = self.f_box_OutputOrder_v2_506_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_652()
    local params;
    params = {
        -- blendTime,
        [1] = 1.7,
        -- endTarget,
        [4] = "2104190430525539874",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104466620962345719",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_298()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_298");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|229065688");
    l0:SetConnections({
        -- OnSetAsUnusable,
        [6] = self.f_box_VehicleModifier_v2_298_OnSetAsUnusable,
    });
    params = {
        -- targets,
        [0] = "#1FCE69FA",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_841()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "903128641",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|233950460");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_63_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|247321361");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2100205644675035364",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT04_010_B20_FollowSherriff",
            id = "555479",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|255218933");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 32,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_142_Out_0,
                [1] = self.f_box_OutputOrder_v2_142_Out_1,
                [2] = self.f_box_OutputOrder_v2_142_Out_2,
                [3] = self.f_box_OutputOrder_v2_142_Out_3,
                [4] = self.f_box_OutputOrder_v2_142_Out_4,
                [6] = self.f_box_OutputOrder_v2_142_Out_6,
                [7] = self.f_box_OutputOrder_v2_142_Out_7,
                [8] = self.f_box_OutputOrder_v2_142_Out_8,
                [16] = self.f_box_OutputOrder_v2_142_Out_16,
                [17] = self.f_box_OutputOrder_v2_142_Out_17,
                [19] = self.f_box_OutputOrder_v2_142_Out_19,
                [20] = self.f_box_OutputOrder_v2_142_Out_20,
                [21] = self.f_box_OutputOrder_v2_142_Out_21,
                [22] = self.f_box_OutputOrder_v2_142_Out_22,
                [23] = self.f_box_OutputOrder_v2_142_Out_23,
                [24] = self.f_box_OutputOrder_v2_142_Out_24,
                [25] = self.f_box_OutputOrder_v2_142_Out_25,
                [26] = self.f_box_OutputOrder_v2_142_Out_26,
                [27] = self.f_box_OutputOrder_v2_142_Out_27,
                [28] = self.f_box_OutputOrder_v2_142_Out_28,
                [29] = self.f_box_OutputOrder_v2_142_Out_29,
                [30] = self.f_box_OutputOrder_v2_142_Out_30,
            },
            count = 32,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|263246799");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_156_Out,
    });
    params = {
        -- Hour,
        [0] = 2,
        -- Minute,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_336()
    local params;
    params = {
        -- Group,
        [0] = "2104727283209098204",
        -- RelevancyTime,
        [1] = 2,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1345451623",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_85()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_683()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_683");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|292945461");
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
                [0] = self.f_box_OutputOrder_v2_683_Out_0,
                [1] = self.f_box_OutputOrder_v2_683_Out_1,
                [2] = self.f_box_OutputOrder_v2_683_Out_2,
                [3] = self.f_box_OutputOrder_v2_683_Out_3,
                [4] = self.f_box_OutputOrder_v2_683_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_634()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104153164094651449",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_301()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_301");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|313526448");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_301_Out,
    });
    params = {
        -- FromGroup,
        [0] = "2099975551344196458",
        -- ToGroup,
        [1] = "#1FCE69FA",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_231()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099901698624460246",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|340033013");
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
                [0] = self.f_box_OutputOrder_v2_47_Out_0,
                [2] = self.f_box_OutputOrder_v2_47_Out_2,
                [3] = self.f_box_OutputOrder_v2_47_Out_3,
                [4] = self.f_box_OutputOrder_v2_47_Out_4,
                [5] = self.f_box_OutputOrder_v2_47_Out_5,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_50()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_Intro_010_B20_AlarmFail_24()
    local params;
    params = {
        -- near_static_meshes,
        [0] = self.short_fail_time,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_49()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101634045120139528",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_109()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|372253788");
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
                [0] = self.f_box_OutputOrder_v2_104_Out_0,
                [2] = self.f_box_OutputOrder_v2_104_Out_2,
                [4] = self.f_box_OutputOrder_v2_104_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_448()
    local params;
    params = {
        -- Pawns,
        [0] = "2104755764399749908",
        -- SoundId,
        [1] = "3782244024",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_239()
    local params;
    DrawTextToScreen("Comment: c2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: c2");
    params = {
        -- EntitySpawner,
        [0] = "2099901692098123144",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_559()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101633279336655548",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|414023359");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_7_Out,
    });
    params = {
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
        [2] = 3,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2892310692",
        -- StopEvent,
        [7] = "2248944541",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_575()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Players,
        -- id2,
        [3] = "2101480350550094649",
        -- nearZone,
        [4] = 4,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_693()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_693");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|447052411");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_693_A_is_True,
    });
    params = {
        -- A,
        [0] = self.gate_closed,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|449499460");
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
        [8] = "marshall dmg",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_118()
    local params;
    params = {
        -- Pawns,
        [0] = "2104439514792512735",
        -- SoundId,
        [1] = "1883664923",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|492896283");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_297()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099975551344196458",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_449()
    local params;
    params = {
        -- Pawns,
        [0] = "2104755793149606684",
        -- SoundId,
        [1] = "1366924925",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|529447195");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_836()
    local params;
    params = {
        -- Group,
        [0] = self.sherrif,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2890171475",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_358()
    local params;
    params = {
        -- Group,
        [0] = self.deputee,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2679510033",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_761()
    local params;
    params = {
        -- Group,
        [0] = "#C9E7C5EF",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_802()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|596979605");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
                [2] = self.f_box_OutputOrder_v2_35_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Intro_010_B20_FrMove_NpcDiags_11()
    local params;
    params = {
        -- Deputy,
        [0] = self.deputee,
        -- Marshal,
        [1] = self.marshal,
        -- Sherrif,
        [2] = self.sherrif,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_339()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_339");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|599565607");
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
                [0] = self.f_box_OutputOrder_v2_339_Out_0,
                [1] = self.f_box_OutputOrder_v2_339_Out_1,
                [2] = self.f_box_OutputOrder_v2_339_Out_2,
                [5] = self.f_box_OutputOrder_v2_339_Out_5,
                [6] = self.f_box_OutputOrder_v2_339_Out_6,
                [8] = self.f_box_OutputOrder_v2_339_Out_8,
                [9] = self.f_box_OutputOrder_v2_339_Out_9,
                [12] = self.f_box_OutputOrder_v2_339_Out_12,
                [13] = self.f_box_OutputOrder_v2_339_Out_13,
            },
            count = 15,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_323()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_323");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|611491431");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_600()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#C652DB56",
        -- id2,
        [3] = "2104427994295609600",
        -- nearZone,
        [4] = 3,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_129()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104284116288560697",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|639066371");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [1] = self.f_box_OutputOrder_v2_57_Out_1,
                [2] = self.f_box_OutputOrder_v2_57_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|643133504");
    l0:SetConnections({
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT04_010_B20_FollowSherriff",
            id = "555479",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_613()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901701294134772",
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_590()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = false,
        -- AvatarCustomizationMenuEnabled,
        [2] = false,
        -- ChallengeMenuEnabled,
        [3] = false,
        -- LootMenuEnabled,
        [4] = false,
        -- OnlineMenuEnabled,
        [5] = false,
        -- PerksMenuEnabled,
        [6] = false,
        -- ResistanceMenuEnabled,
        [7] = false,
        -- SquadMenuEnabled,
        [8] = false,
        -- WorldmapMenuEnabled,
        [9] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_641()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "#D2C95676",
        -- farZone,
        [2] = 5,
        -- id2,
        [3] = self.player,
        -- nearZone,
        [4] = 3,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_264()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_264");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|666889208");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_264_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_10()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_453()
    local params;
    params = {
        -- Pawns,
        [0] = "2104755786442914586",
        -- SoundId,
        [1] = "1084691075",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_255()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_760()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_760");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|692682852");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_760_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "36167385877830901",
        -- missionLayerId,
        [1] = "27160249576746968",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_356()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_68()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103595560641631917",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|714911351");
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StanceModifier_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StanceModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StanceModifier_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|715417562");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StanceModifier_v2_113_Out,
    });
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- stance,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|732076225");
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
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_108_Out_0,
                [1] = self.f_box_OutputOrder_v2_108_Out_1,
                [2] = self.f_box_OutputOrder_v2_108_Out_2,
                [3] = self.f_box_OutputOrder_v2_108_Out_3,
                [4] = self.f_box_OutputOrder_v2_108_Out_4,
                [6] = self.f_box_OutputOrder_v2_108_Out_6,
                [7] = self.f_box_OutputOrder_v2_108_Out_7,
                [8] = self.f_box_OutputOrder_v2_108_Out_8,
            },
            count = 9,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_235()
    local params;
    params = {
        -- Group,
        [0] = "2104152047602386382",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_258()
    local params;
    params = {
        -- Group,
        [0] = self.deputee,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4153503074",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_372()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_372");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|748827600");
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
                [0] = self.f_box_OutputOrder_v2_372_Out_0,
                [3] = self.f_box_OutputOrder_v2_372_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_318()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_318");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|748827948");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_318_Enabled,
    });
    params = {
        -- characterVisibility,
        [2] = "FCZ_Default:Special.PlaygoCompound_CharacterVisibility",
        -- fog,
        [6] = "FCZ_Default:Unique_Fogs.Playgo_Fog",
        -- lighting,
        [7] = "FCZ_Default:Special.Playgo_Church_Interior_Lighting",
        -- ratio,
        [9] = 1,
        -- sky,
        [11] = "FCZ_Default:Special.Playgo_Intro_Sky",
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|764486217");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
                [2] = self.f_box_OutputOrder_v2_29_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|766527222");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_39_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_120()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2100957290057175694",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.sherrif,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SendUiEvent_54()
    local params;
    params = {
        -- param,
        [0] = {
            connections = {
                [0] = "HideUIElement",
                [1] = "stealthindicator",
            },
            count = 2,
        },
        -- playerName,
        [1] = "GlobalPlayer",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_70()
    local params;
    params = {
        -- Pawns,
        [0] = "2104756305429325776",
        -- SoundId,
        [1] = "2154961323",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_610()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_147()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_122()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2100957290057175694",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.deputee,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_203()
    local params;
    params = {
        -- Group,
        [0] = "#B9FE6748",
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_42()
    local params;
    params = {
        -- blendTime,
        [0] = 3,
        -- factor,
        [1] = self.player_speed,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_257()
    local params;
    params = {
        -- Group,
        [0] = self.sherrif,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3974352130",
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_52()
    local params;
    params = {
        -- Azimuth,
        [0] = -80,
        -- Elevation,
        [1] = 20,
        -- HDRMultiplier,
        [2] = 1,
        -- ResetAfterBeat,
        [3] = true,
        -- Size,
        [4] = 8,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_840()
    local params;
    params = {
        -- Group,
        [0] = self.sherrif,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3527005044",
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_174()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_32()
    local params;
    params = {
        -- missionBlockId,
        [0] = "36167385877830901",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|973147353");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
                [2] = self.f_box_OutputOrder_v2_48_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_65()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_560()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901692102317458",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_46()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2101633267150105230",
        -- id2,
        [3] = "2103969384056755347",
        -- nearZone,
        [4] = 3,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|997014318");
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

function export:OnEnter_box_PlayDialog_v6_201()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1887062765",
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_33()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_342()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101634090257142164",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_101()
    local params;
    params = {
        -- Group,
        [0] = "2104288741437778308",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_241()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_241");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1017495608");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_241_False,
    });
    params = {
        -- entityId,
        [0] = "2099901723259705099",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_419()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_723()
    local params;
    DrawTextToScreen("Comment: flamer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: flamer");
    params = {
        -- EntitySpawner,
        [0] = "2104326064751790472",
    };
    return params;
end;

function export:OnEnter_box_Switch_334()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_742()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101146689476761929",
    };
    return params;
end;

function export:OnEnter_box_PickupState_v2_458()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupState_v2_458");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1089670935");
    l0:SetConnections({
    });
    params = {
        -- Pickup,
        [0] = "2103885314213823328",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_186()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#B9FE6748",
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1140362538");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_41_Out,
    });
    params = {
        -- Float,
        [0] = 0.4,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_88()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#C652DB56",
        -- id2,
        [3] = self.player,
        -- nearZone,
        [4] = 8,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_602()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015280959212862",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_263()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_263");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1202320633");
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
                [0] = self.f_box_OutputOrder_v2_263_Out_0,
                [2] = self.f_box_OutputOrder_v2_263_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1206768667");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 13,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_112_Out_0,
                [1] = self.f_box_OutputOrder_v2_112_Out_1,
                [2] = self.f_box_OutputOrder_v2_112_Out_2,
                [3] = self.f_box_OutputOrder_v2_112_Out_3,
                [5] = self.f_box_OutputOrder_v2_112_Out_5,
                [6] = self.f_box_OutputOrder_v2_112_Out_6,
                [7] = self.f_box_OutputOrder_v2_112_Out_7,
                [11] = self.f_box_OutputOrder_v2_112_Out_11,
                [12] = self.f_box_OutputOrder_v2_112_Out_12,
            },
            count = 13,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_236()
    local params;
    DrawTextToScreen("Comment: c1", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: c1");
    params = {
        -- EntitySpawner,
        [0] = "2099901723255510789",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_619()
    local params;
    params = {
        -- Group,
        [0] = "2104287574844549224",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_437()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104662504452928313",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_682()
    local params;
    params = {
        -- Pawns,
        [0] = "2104755776263338776",
        -- SoundId,
        [1] = "3782244024",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_759()
    local params;
    params = {
        -- Group,
        [0] = "2104287355266421968",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_238()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901723255510789",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_60()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.marshal,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_38()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "#C652DB56",
        -- farZone,
        [2] = 20,
        -- id2,
        [3] = self.player,
        -- nearZone,
        [4] = 10,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_20()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_443()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_628()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104153170860063803",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1324344762");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_18_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103318037745650720",
        -- Entity,
        [1] = self.marshal,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_620()
    local params;
    params = {
        -- Pawns,
        [0] = "2104755793149606684",
        -- SoundId,
        [1] = "1084691075",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_436()
    local params;
    params = {
        -- Group,
        [0] = "2104325745661724711",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_36()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_834()
    local params, l0;
    DrawTextToScreen("Comment: Load FOG VFX", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Load FOG VFX");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_834");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1349095581");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160248666979468",
        -- missionLayerId,
        [1] = "27160252736222033",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_627()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104149359592490514",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_31()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160242663982511",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_451()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104756525212903773",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_62()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_832()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_117()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_440()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_440");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1435948616");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_440_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1452186209");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_14_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099834819092417984",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1461660911");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_13_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2099834814742924728",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_260()
    local params;
    params = {
        -- Group,
        [0] = "2104727283209098204",
        -- RelevancyTime,
        [1] = 2,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "954250625",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1471859706");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_16_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103317718380854561",
        -- Entity,
        [1] = self.deputee,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_424()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_424");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1473837548");
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
                [0] = self.f_box_OutputOrder_v2_424_Out_0,
                [1] = self.f_box_OutputOrder_v2_424_Out_1,
                [2] = self.f_box_OutputOrder_v2_424_Out_2,
                [6] = self.f_box_OutputOrder_v2_424_Out_6,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_51()
    local params;
    params = {
        -- Azimuth,
        [0] = -80,
        -- Elevation,
        [1] = 20,
        -- HDRMultiplier,
        [2] = 1,
        -- ResetAfterBeat,
        [3] = true,
        -- Size,
        [4] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1479398022");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101647061846990973",
        -- Group,
        [1] = "#D2C95676",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1499315847");
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
                [0] = self.f_box_OutputOrder_v2_106_Out_0,
                [1] = self.f_box_OutputOrder_v2_106_Out_1,
                [2] = self.f_box_OutputOrder_v2_106_Out_2,
                [3] = self.f_box_OutputOrder_v2_106_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_751()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SendUiEvent_55()
    local params;
    params = {
        -- param,
        [0] = {
            connections = {
                [0] = "ShowUIElement",
                [1] = "stealthindicator",
            },
            count = 2,
        },
        -- playerName,
        [1] = "GlobalPlayer",
    };
    return params;
end;

function export:OnEnter_box_Intro_010_B20_NpcMovement_19()
    local params;
    params = {
        -- deputy,
        [0] = self.deputee,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1561792597");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_44_Out,
    });
    params = {
        -- Float,
        [0] = 0.33,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1564025450");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_17_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103318037422689308",
        -- Entity,
        [1] = self.sherrif,
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_643()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_643");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1575081459");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_839()
    local params;
    params = {
        -- Group,
        [0] = self.deputee,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3067263794",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_107()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_102()
    local params;
    params = {
        -- Group,
        [0] = "2104287111503955970",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_452()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_452");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1631585188");
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
                [0] = self.f_box_OutputOrder_v2_452_Out_0,
                [1] = self.f_box_OutputOrder_v2_452_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_164()
    local params;
    params = {
        -- Group,
        [0] = self.deputee,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2516075458",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_423()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_724()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104326064751790472",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_635()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2104153170860063803",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104149359592490514",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_240()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901692098123144",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_447()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_447");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1700830439");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_447_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1716238047");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_OverrideEnvironment_v3_34_Disabled,
    });
    params = {
        -- characterVisibility,
        [2] = "FCZ_Default:Special.PlaygoCompound_CharacterVisibility",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1717160451");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = "2099901723259705099",
        -- pawns,
        [2] = self.marshal,
        -- value,
        [3] = 20,
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_657()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2104203262474327043",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_645()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_348()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_348");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1759674442");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_348_Out,
    });
    params = {
        -- Entity,
        [0] = "2101634045120139528",
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_110()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_175()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2100957290057175694",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.marshal,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_626()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104149360246801940",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_30()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160254420110516",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_743()
    local params;
    DrawTextToScreen("Comment: remove OW animal exclusion so we can have dogs", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RemoveEntity_v2')-- Comment: remove OW animal exclusion so we can have dogs");
    params = {
        -- Group,
        [0] = "2101146689476761929",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_71()
    local params;
    params = {
        -- Group,
        [0] = "#D2C95676",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_22()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGodMode,
        [1] = false,
        -- KeepHUDMode,
        [2] = false,
        -- KeepWeaponHolstered,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_783()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_783");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1819845905");
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
                [0] = self.f_box_OutputOrder_v2_783_Out_0,
                [1] = self.f_box_OutputOrder_v2_783_Out_1,
                [2] = self.f_box_OutputOrder_v2_783_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_256()
    local params;
    params = {
        -- Group,
        [0] = self.sherrif,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4227780351",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1874729657");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_633()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2104153164094651449",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104149360246801940",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_311()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "852901073",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_758()
    local params;
    params = {
        -- Group,
        [0] = "2104366974235594286",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_230()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901698624460246",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_208()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102058352235319092",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_310()
    local params;
    params = {
        -- Group,
        [0] = self.sherrif,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2117096674",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1928737674");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_316()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2104727283209098204",
        -- id2,
        [3] = self.player,
        -- nearZone,
        [4] = 8,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_582()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103595560641631917",
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|1973510186");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_146_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_162()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_612()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099901701294134772",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_561()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099901697456346565",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_450()
    local params;
    params = {
        -- Pawns,
        [0] = "2104755786442914586",
        -- SoundId,
        [1] = "1366924925",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_233()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101648950091227043",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_454()
    local params;
    params = {
        -- Pawns,
        [0] = "2104755774459788054",
        -- SoundId,
        [1] = "3782244024",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B20.domino|@INTRO_010_B20|2117462041");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2104284116288560697",
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_350_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.deputee = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_349_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.sherrif = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_39_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Intro_010_B20_WorldLimits_12_Move_cultists_2_gate()
    local l0;
    l0 = self.box_Intro_010_B20_WorldLimits_12;
    self.short_fail_time = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Intro_010_B20_WorldLimits_12_Move_cultists_2_gate_2()
    local l0;
    l0 = self.box_Intro_010_B20_WorldLimits_12;
    self.short_fail_time = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Intro_010_B20_WorldLimits_12_Start_alarm_2_far()
    local l0;
    l0 = self.box_Intro_010_B20_WorldLimits_12;
    self.short_fail_time = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_41_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.player_speed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_440_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.gate_closed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.player_speed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_447_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.gate_closed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_348_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.marshal = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
