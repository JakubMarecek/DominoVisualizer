LUAC�A -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_210/mis_210_intro.domino
-- User graph: MIS_210_INTRO
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/FloatArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetDistance.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MovementListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_INTRO.CompoundAiSpawning.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_INTRO.CompoundDialogs.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_INTRO.Follow_JUDGE.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_INTRO.LeavingPathTrackingAndWarning.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1469470615.bnk]], "CSoundResource");
        cboxRes:LoadResource([[451671650.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_INTRO.MIS_210_INTRO.debug.lua")] = {
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
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [10] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 11,
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
    metadataTable[GetPathID("Domino/System/FloatArithmetics_v2.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
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
    metadataTable[GetPathID("Domino/System/GetDistance.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Distance2D",
            },
            [1] = {
                name = "Distance3D",
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
                name = "Entity1",
                type = "entity",
            },
            [1] = {
                name = "Entity2",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Distance",
                type = "float",
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
            [1] = {
                name = "immediateDespawn",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_INTRO.CompoundAiSpawning.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_INTRO.CompoundDialogs.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_INTRO.Follow_JUDGE.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "DisableAndCompleteOBJ",
            },
            [2] = {
                name = "Enable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Detected",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = false,
            },
            [3] = {
                name = "Target_KilledDestroyed",
                delayed = false,
            },
            [4] = {
                name = "Target_TooFar",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "fDistanceFail",
                type = "float",
            },
            [3] = {
                name = "fDistanceSuccess",
                type = "float",
            },
            [4] = {
                name = "fDistanceWarning",
                type = "float",
            },
            [5] = {
                name = "FollowTarget",
                type = "entity",
            },
            [6] = {
                name = "IsPersistentCharacter",
                type = "bool",
            },
            [7] = {
                name = "oObjective",
                type = "oasis",
            },
            [8] = {
                name = "opt_Detection_Group",
                type = "group",
            },
            [9] = {
                name = "opt_Target_MobileMarker",
                type = "entity",
            },
            [10] = {
                name = "oWarningMsg",
                type = "oasis",
            },
        },
        dataInCount = 11,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_INTRO.LeavingPathTrackingAndWarning.debug.lua")] = {
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
                name = "OutZoneFail",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "CoopFailRequiresAllPlayer",
                type = "bool",
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
    self._name = "MIS_210_INTRO";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO";
    self.ePlayer = nil;
    self.gPlayers = nil;
    self.MetaSequenceID = 0;
    self.eUNI115 = nil;
    self.fDistanceToJudge = 0;
    self.fDistanceWarning = 0;
    self.fDistanceFail = 0;
    self.e_PlayerGroup = nil;
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|65271827");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_OnceOnly_v3_67 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|88013252");
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
                [0] = self.f_box_OnceOnly_v3_67_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_71 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|114547129");
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
        [0] = self.f_box_MultipleOR_71_Out,
    });
    self.box_MultipleOR_55 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|244441651");
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
        [0] = self.f_box_MultipleOR_55_Out,
    });
    self.box_Gate_v3_68 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|396082459");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_68_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_68_Out,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|546517157");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_PostFx_v3_22 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|626996900");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_46 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|668129914");
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
                [0] = self.f_box_OnceOnly_v3_46_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_77 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|680200091");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_77_TimeElapsed,
    });
    self.box_Music_Quest_v2_30 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|709169107");
    l0:SetConnections({
    });
    self.box_NarrativeFade_21 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|767693393");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_21_FadedOut,
    });
    self.box_OnceOnly_v3_43 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|791811319");
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
                [0] = self.f_box_OnceOnly_v3_43_Out_0,
            },
            count = 2,
        },
    });
    self.box_Music_Quest_v2_31 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|836233188");
    l0:SetConnections({
    });
    self.box_Delay_v5_70 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|841356134");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_70_TimeElapsed,
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1023034200");
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
        [0] = self.f_box_MultipleOR_48_Out,
    });
    self.box_NoWeaponMode_v3_5 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1096126799");
    l0:SetConnections({
        -- OnEnter,
        [0] = self.f_box_NoWeaponMode_v3_5_OnEnter,
    });
    self.box_Delay_v5_33 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1109010363");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_33_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_33_TimeElapsed,
    });
    self.box_NarrativeSceneSetup_23 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1110441792");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_23_Holstered,
    });
    self.box_NarrativeFade_52 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1197175043");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_52_FadedIn,
    });
    self.box_Gate_v3_73 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1198037302");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_73_Out,
    });
    self.box_OnceOnly_v3_50 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1198773161");
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
                [0] = self.f_box_OnceOnly_v3_50_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_74 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1224941016");
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
                [0] = self.f_box_OnceOnly_v3_74_Out_0,
            },
            count = 2,
        },
    });
    self.box_GunsForHireSystemModifier_54 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1278607865");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_54_Disabled,
    });
    self.box_OnceOnly_v3_69 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1321154553");
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
                [0] = self.f_box_OnceOnly_v3_69_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_53 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1550197575");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_53_TimeElapsed,
    });
    self.box_CharacterLoadedIdListener_v2_14 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1557809714");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_14_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_14_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_14_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_14_LoadedIdReceived,
    });
    self.box_LeavingPathTrackingAndWarning_66 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_INTRO.LeavingPathTrackingAndWarning.debug.lua");
    l0 = self.box_LeavingPathTrackingAndWarning_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LeavingPathTrackingAndWarning_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1590224457");
    l0:SetConnections({
        -- OutZoneFail,
        [0] = self.f_box_LeavingPathTrackingAndWarning_66_OutZoneFail,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1618823005");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_ProximityTrigger_v3_41 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1665280608");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_41_Disabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_41_Enter,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_41_OnOccupied,
    });
    self.box_OnceOnly_v3_38 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1688891770");
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
                [0] = self.f_box_OnceOnly_v3_38_Out_0,
            },
            count = 2,
        },
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1743151090");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_Delay_v5_25 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1765624013");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_25_TimeElapsed,
    });
    self.box_CharacterLoadedIdListener_v2_40 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1801018653");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_40_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_40_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_40_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_40_LoadedIdReceived,
    });
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1829628620");
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
        [0] = self.f_box_MultipleOR_42_Out,
    });
    self.box_NarrativeSceneCleanUp_V2_51 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1857472025");
    l0:SetConnections({
    });
    self.box_Brick_Interact_With_Object_V6_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1892060208");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_26_Success,
    });
    self.box_MovementListener_v2_60 = cbox:CreateBox("Domino/System/MovementListener_v2.lua");
    l0 = self.box_MovementListener_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MovementListener_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1914199654");
    l0:SetConnections({
        -- Moving,
        [3] = self.f_box_MovementListener_v2_60_Moving,
    });
    self.box_CompoundDialogs_27 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_INTRO.CompoundDialogs.debug.lua");
    l0 = self.box_CompoundDialogs_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CompoundDialogs_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1949590391");
    l0:SetConnections({
    });
    self.box_Follow_JUDGE_17 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_INTRO.Follow_JUDGE.debug.lua");
    l0 = self.box_Follow_JUDGE_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Follow_JUDGE_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|2028265020");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Follow_JUDGE_17_Started,
        -- Success,
        [2] = self.f_box_Follow_JUDGE_17_Success,
        -- Target_TooFar,
        [4] = self.f_box_Follow_JUDGE_17_Target_TooFar,
    });
    self.box_OnceOnly_v3_49 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|2095543404");
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
                [0] = self.f_box_OnceOnly_v3_49_Out_0,
            },
            count = 2,
        },
    });
    self.box_CompoundAiSpawning_28 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_INTRO.CompoundAiSpawning.debug.lua");
    l0 = self.box_CompoundAiSpawning_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CompoundAiSpawning_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|2128680813");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|900042401", "900042401", "MIS_210_INTRO", "In", "box_OutputOrder_v2_9.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_72_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LeavingPathTrackingAndWarning_66();
    l0 = self.box_LeavingPathTrackingAndWarning_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|2102657191", "2102657191", "MIS_210_INTRO", "box_Simple_Node_72.Out", "box_LeavingPathTrackingAndWarning_66.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1014969579", "1014969579", "MIS_210_INTRO", "box_Simple_Node_72.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1352836573", "1352836573", "MIS_210_INTRO", "box_Simple_Node_44.Out", "box_MultipleOR_37.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_75_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|125892552", "125892552", "MIS_210_INTRO", "box_Simple_Node_75.Out", "box_Delay_v5_33.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_35();
    l0 = self.box_ActivityInitialized_6;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1046113429", "1046113429", "MIS_210_INTRO", "box_ActivityInitialized_6.Out", "box_ActivityForceAndLockTracking_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_67_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_68();
    l0 = self.box_OnceOnly_v3_67;
    l1 = self.box_Gate_v3_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|797966505", "797966505", "MIS_210_INTRO", "box_OnceOnly_v3_67.Out", "box_Gate_v3_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_FloatArithmetics_v2_18_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_18_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_19();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1555510505", "1555510505", "MIS_210_INTRO", "box_FloatArithmetics_v2_18.Out", "box_FloatArithmetics_v2_19.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_71_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_70();
    l0 = self.box_MultipleOR_71;
    l1 = self.box_Delay_v5_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|996255499", "996255499", "MIS_210_INTRO", "box_MultipleOR_71.Out", "box_Delay_v5_70.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_55_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_55;
    l1 = self.box_OnceOnly_v3_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1060212436", "1060212436", "MIS_210_INTRO", "box_MultipleOR_55.Out", "box_OnceOnly_v3_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_65();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|2050393135", "2050393135", "MIS_210_INTRO", "box_OutputOrder_v2_34.Out", "box_UseContextualActionModifier_v3_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|2136946065", "2136946065", "MIS_210_INTRO", "box_OutputOrder_v2_34.Out", "box_OutputOrder_v2_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_68_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_72();
    l0 = self.box_Gate_v3_68;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|404305480", "404305480", "MIS_210_INTRO", "box_Gate_v3_68.Closed", "box_Simple_Node_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_68_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_Gate_v3_68;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|117805367", "117805367", "MIS_210_INTRO", "box_Gate_v3_68.Out", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_35_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_54();
    l0 = self.box_GunsForHireSystemModifier_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1458346646", "1458346646", "MIS_210_INTRO", "box_ActivityForceAndLockTracking_35.Enabled", "box_GunsForHireSystemModifier_54.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_10_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_11();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|141582732", "141582732", "MIS_210_INTRO", "box_GetLocalPlayer_v2_10.Out", "box_GetPlayerGroup_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_20();
    l0 = self.box_MultipleOR_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|780141704", "780141704", "MIS_210_INTRO", "box_MultipleOR_2.Out", "box_ActivityMiscInfoModifier_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_76_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_13();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|581019347", "581019347", "MIS_210_INTRO", "box_ActivityForceAndLockTracking_76.Disabled", "box_ActivityEnd_13.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CompoundDialogs_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|2015248236", "2015248236", "MIS_210_INTRO", "box_OutputOrder_v2_29.Out", "box_CompoundDialogs_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_26();
    l0 = self.box_Brick_Interact_With_Object_V6_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1095768277", "1095768277", "MIS_210_INTRO", "box_OutputOrder_v2_29.Out", "box_Brick_Interact_With_Object_V6_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_46_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_41();
    l0 = self.box_OnceOnly_v3_46;
    l1 = self.box_ProximityTrigger_v3_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1716903219", "1716903219", "MIS_210_INTRO", "box_OnceOnly_v3_46.Out", "box_ProximityTrigger_v3_41.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_56_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneSetup_23();
    l0 = self.box_NarrativeSceneSetup_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1999456689", "1999456689", "MIS_210_INTRO", "box_EndActivityObjective_v2_56.Out", "box_NarrativeSceneSetup_23.HolsterWeapon", clone:GetLuaBox(), l0:GetLuaBox());
    -- HolsterWeapon
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_77_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_52();
    l0 = self.box_Delay_v5_77;
    l1 = self.box_NarrativeFade_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1418674390", "1418674390", "MIS_210_INTRO", "box_Delay_v5_77.TimeElapsed", "box_NarrativeFade_52.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_68();
    l0 = self.box_Gate_v3_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1100055521", "1100055521", "MIS_210_INTRO", "box_OutputOrder_v2_64.Out", "box_Gate_v3_68.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_64_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_56();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|35565572", "35565572", "MIS_210_INTRO", "box_OutputOrder_v2_64.Out", "box_EndActivityObjective_v2_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_21_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_25();
    l0 = self.box_NarrativeFade_21;
    l1 = self.box_Delay_v5_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1491866584", "1491866584", "MIS_210_INTRO", "box_NarrativeFade_21.FadedOut", "box_Delay_v5_25.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_AddActivityObjective_v2_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_61();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1067418042", "1067418042", "MIS_210_INTRO", "box_AddActivityObjective_v2_62.Out", "box_ActivityObjectiveMarkerModifier_v3_61.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_43_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_44();
    l0 = self.box_OnceOnly_v3_43;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1253008615", "1253008615", "MIS_210_INTRO", "box_OnceOnly_v3_43.Out", "box_Simple_Node_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_70_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_70;
    l1 = self.box_OnceOnly_v3_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1024876361", "1024876361", "MIS_210_INTRO", "box_Delay_v5_70.TimeElapsed", "box_OnceOnly_v3_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1140169532", "1140169532", "MIS_210_INTRO", "box_OutputOrder_v2_45.Out", "box_OutputOrder_v2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CompoundAiSpawning_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1870885530", "1870885530", "MIS_210_INTRO", "box_OutputOrder_v2_45.Out", "box_CompoundAiSpawning_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_48_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_48;
    l1 = self.box_OnceOnly_v3_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|936876915", "936876915", "MIS_210_INTRO", "box_MultipleOR_48.Out", "box_OnceOnly_v3_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_11_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NoWeaponMode_v3_5();
    l0 = self.box_NoWeaponMode_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|986301394", "986301394", "MIS_210_INTRO", "box_GetPlayerGroup_v2_11.Out", "box_NoWeaponMode_v3_5.On", clone:GetLuaBox(), l0:GetLuaBox());
    -- On
    l0:Exec(1, params);
end;

function export:f_box_NoWeaponMode_v3_5_OnEnter()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_14();
    l0 = self.box_NoWeaponMode_v3_5;
    l1 = self.box_CharacterLoadedIdListener_v2_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1870283200", "1870283200", "MIS_210_INTRO", "box_NoWeaponMode_v3_5.OnEnter", "box_CharacterLoadedIdListener_v2_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_33_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = self.box_Delay_v5_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1417437226", "1417437226", "MIS_210_INTRO", "box_Delay_v5_33.Stopped", "box_OutputOrder_v2_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_33_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_Delay_v5_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|155617989", "155617989", "MIS_210_INTRO", "box_Delay_v5_33.TimeElapsed", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_23_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_21();
    l0 = self.box_NarrativeSceneSetup_23;
    l1 = self.box_NarrativeFade_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|2120892690", "2120892690", "MIS_210_INTRO", "box_NarrativeSceneSetup_23.Holstered", "box_NarrativeFade_21.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|658716129", "658716129", "MIS_210_INTRO", "box_OutputOrder_v2_36.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1059100692", "1059100692", "MIS_210_INTRO", "box_OutputOrder_v2_36.Out", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_31();
    l0 = self.box_Music_Quest_v2_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1960820564", "1960820564", "MIS_210_INTRO", "box_OutputOrder_v2_32.Out", "box_Music_Quest_v2_31.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_24();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|2073003826", "2073003826", "MIS_210_INTRO", "box_OutputOrder_v2_32.Out", "box_ActivityRetry_v2_24.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_52_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_53();
    l0 = self.box_NarrativeFade_52;
    l1 = self.box_Delay_v5_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1259855123", "1259855123", "MIS_210_INTRO", "box_NarrativeFade_52.FadedIn", "box_Delay_v5_53.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_73_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_73;
    l1 = self.box_OnceOnly_v3_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|481031892", "481031892", "MIS_210_INTRO", "box_Gate_v3_73.Out", "box_OnceOnly_v3_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_50_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_50;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|47936308", "47936308", "MIS_210_INTRO", "box_OnceOnly_v3_50.Out", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_74_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Follow_JUDGE_17();
    l0 = self.box_OnceOnly_v3_74;
    l1 = self.box_Follow_JUDGE_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1773432147", "1773432147", "MIS_210_INTRO", "box_OnceOnly_v3_74.Out", "box_Follow_JUDGE_17.DisableAndCompleteOBJ", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableAndCompleteOBJ
    l1:Exec(1, params);
end;

function export:f_box_GunsForHireSystemModifier_54_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_GunsForHireSystemModifier_54;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1565472231", "1565472231", "MIS_210_INTRO", "box_GunsForHireSystemModifier_54.Disabled", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1586224620", "1586224620", "MIS_210_INTRO", "box_OutputOrder_v2_9.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|192955193", "192955193", "MIS_210_INTRO", "box_OutputOrder_v2_9.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_69_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_LeavingPathTrackingAndWarning_66();
    l0 = self.box_OnceOnly_v3_69;
    l1 = self.box_LeavingPathTrackingAndWarning_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|44984913", "44984913", "MIS_210_INTRO", "box_OnceOnly_v3_69.Out", "box_LeavingPathTrackingAndWarning_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_16();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1493112805", "1493112805", "MIS_210_INTRO", "box_OutputOrder_v2_8.Out", "box_Print_v2_16.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_15();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1706295559", "1706295559", "MIS_210_INTRO", "box_OutputOrder_v2_8.Out", "box_Print_v2_15.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|2081175293", "2081175293", "MIS_210_INTRO", "box_OutputOrder_v2_8.Out", "box_Print_v2_7.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Follow_JUDGE_17();
    l0 = self.box_Follow_JUDGE_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|853749906", "853749906", "MIS_210_INTRO", "box_OutputOrder_v2_8.Out", "box_Follow_JUDGE_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_8_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_22();
    l0 = self.box_PostFx_v3_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1093532993", "1093532993", "MIS_210_INTRO", "box_OutputOrder_v2_8.Out", "box_PostFx_v3_22.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_30();
    l0 = self.box_Music_Quest_v2_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1421722155", "1421722155", "MIS_210_INTRO", "box_OutputOrder_v2_8.Out", "box_Music_Quest_v2_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_77();
    l0 = self.box_Delay_v5_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1861506383", "1861506383", "MIS_210_INTRO", "box_OutputOrder_v2_8.Out", "box_Delay_v5_77.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetDistance_3_Out()
    local params, l0;
    self:OnExit_box_GetDistance_3_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_18();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1955846475", "1955846475", "MIS_210_INTRO", "box_GetDistance_3.Out", "box_FloatArithmetics_v2_18.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityMiscInfoModifier_v2_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|770591612", "770591612", "MIS_210_INTRO", "box_ActivityMiscInfoModifier_v2_20.Out", "box_GetLocalPlayer_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_53_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_51();
    l0 = self.box_Delay_v5_53;
    l1 = self.box_NarrativeSceneCleanUp_V2_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1456789080", "1456789080", "MIS_210_INTRO", "box_Delay_v5_53.TimeElapsed", "box_NarrativeSceneCleanUp_V2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_14_LoadedIdReceived()
    local l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_14_LoadedIdReceived();
    l0 = self.box_CharacterLoadedIdListener_v2_14;
    l1 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1373633383", "1373633383", "MIS_210_INTRO", "box_CharacterLoadedIdListener_v2_14.LoadedIdReceived", "box_ActivityInitialized_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_LeavingPathTrackingAndWarning_66_OutZoneFail()
    local l0, l1;
    l0 = self.box_LeavingPathTrackingAndWarning_66;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1163416904", "1163416904", "MIS_210_INTRO", "box_LeavingPathTrackingAndWarning_66.OutZoneFail", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = self.box_MultipleOR_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|417126026", "417126026", "MIS_210_INTRO", "box_MultipleOR_37.Out", "box_OutputOrder_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|317326466", "317326466", "MIS_210_INTRO", "box_OutputOrder_v2_39.Out", "box_Delay_v5_33.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_40();
    l0 = self.box_CharacterLoadedIdListener_v2_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1541040932", "1541040932", "MIS_210_INTRO", "box_OutputOrder_v2_39.Out", "box_CharacterLoadedIdListener_v2_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_41_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_41;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1334975195", "1334975195", "MIS_210_INTRO", "box_ProximityTrigger_v3_41.Disabled", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v3_41_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_41;
    l1 = self.box_OnceOnly_v3_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|718405029", "718405029", "MIS_210_INTRO", "box_ProximityTrigger_v3_41.Enter", "box_OnceOnly_v3_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_41_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_41;
    l1 = self.box_OnceOnly_v3_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|517088539", "517088539", "MIS_210_INTRO", "box_ProximityTrigger_v3_41.OnOccupied", "box_OnceOnly_v3_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_38_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_62();
    l0 = self.box_OnceOnly_v3_38;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1229642867", "1229642867", "MIS_210_INTRO", "box_OnceOnly_v3_38.Out", "box_AddActivityObjective_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|738500983", "738500983", "MIS_210_INTRO", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1711194073", "1711194073", "MIS_210_INTRO", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetDistance_3();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1899748718", "1899748718", "MIS_210_INTRO", "box_OutputOrder_v2_58.Out", "box_GetDistance_3.Distance2D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Distance2D
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MovementListener_v2_60();
    l0 = self.box_MovementListener_v2_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|504259583", "504259583", "MIS_210_INTRO", "box_OutputOrder_v2_58.Out", "box_MovementListener_v2_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|63998860", "63998860", "MIS_210_INTRO", "box_OutputOrder_v2_58.Out", "box_OnceOnly_v3_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_25_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_47();
    l0 = self.box_Delay_v5_25;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|586350260", "586350260", "MIS_210_INTRO", "box_Delay_v5_25.TimeElapsed", "box_UseContextualActionModifier_v3_47.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_57_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_59();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1701419879", "1701419879", "MIS_210_INTRO", "box_UseContextualActionModifier_v3_57.Disabled", "box_UseContextualActionModifier_v3_59.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_40_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_40_LoadedIdReceived();
    params = self:OnEnter_box_ProximityTrigger_v3_41();
    l0 = self.box_CharacterLoadedIdListener_v2_40;
    l1 = self.box_ProximityTrigger_v3_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1618985982", "1618985982", "MIS_210_INTRO", "box_CharacterLoadedIdListener_v2_40.LoadedIdReceived", "box_ProximityTrigger_v3_41.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_73();
    l0 = self.box_Gate_v3_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1461623113", "1461623113", "MIS_210_INTRO", "box_OutputOrder_v2_78.Out", "box_Gate_v3_73.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|2131651613", "2131651613", "MIS_210_INTRO", "box_OutputOrder_v2_78.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_73();
    l0 = self.box_MultipleOR_42;
    l1 = self.box_Gate_v3_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|495045645", "495045645", "MIS_210_INTRO", "box_MultipleOR_42.Out", "box_Gate_v3_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_47_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_76();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|250752142", "250752142", "MIS_210_INTRO", "box_UseContextualActionModifier_v3_47.Disabled", "box_ActivityForceAndLockTracking_76.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V6_26_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = self.box_Brick_Interact_With_Object_V6_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1534297813", "1534297813", "MIS_210_INTRO", "box_Brick_Interact_With_Object_V6_26.Success", "box_OutputOrder_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MovementListener_v2_60_Moving()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_MovementListener_v2_60;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|875674919", "875674919", "MIS_210_INTRO", "box_MovementListener_v2_60.Moving", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_65_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_57();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1237513840", "1237513840", "MIS_210_INTRO", "box_UseContextualActionModifier_v3_65.Enabled", "box_UseContextualActionModifier_v3_57.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_75();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|648535275", "648535275", "MIS_210_INTRO", "box_OutputOrder_v2_63.Out", "box_Simple_Node_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1649006182", "1649006182", "MIS_210_INTRO", "box_OutputOrder_v2_63.Out", "box_OnceOnly_v3_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Follow_JUDGE_17_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_Follow_JUDGE_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|284551130", "284551130", "MIS_210_INTRO", "box_Follow_JUDGE_17.Started", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Follow_JUDGE_17_Success()
    local l0, l1;
    l0 = self.box_Follow_JUDGE_17;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1970194896", "1970194896", "MIS_210_INTRO", "box_Follow_JUDGE_17.Success", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Follow_JUDGE_17_Target_TooFar()
    local l0, l1;
    l0 = self.box_Follow_JUDGE_17;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1910658885", "1910658885", "MIS_210_INTRO", "box_Follow_JUDGE_17.Target_TooFar", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_FloatArithmetics_v2_19_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_19_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|661555438", "661555438", "MIS_210_INTRO", "box_FloatArithmetics_v2_19.Out", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_49_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_49;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|38442218", "38442218", "MIS_210_INTRO", "box_OnceOnly_v3_49.Out", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|@DisableFailAreaCheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_72_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|@SkipToChurchObj");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|@StopSafeFailTimer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_75_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|92653212");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_18_Out,
    });
    params = {
        -- A,
        [0] = self.fDistanceToJudge,
        -- B,
        [1] = 35,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|322065525");
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

function export:OnEnter_box_Gate_v3_68()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|430169476");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2108684246689261009",
        -- Entity,
        [2] = self.eUNI115,
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|483812512");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_35_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|486391882");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|503795601");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|594678470");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityForceAndLockTracking_76_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_22()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|638292517");
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

function export:OnEnter_box_EndActivityObjective_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|668237265");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_56_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_210_INTRO_Enter",
            id = "1034243",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_77()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|680899484");
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
                [0] = self.f_box_OutputOrder_v2_64_Out_0,
                [1] = self.f_box_OutputOrder_v2_64_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_30()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 5,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1469470615",
        -- StopEvent,
        [7] = "451671650",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|756685408");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2109582162415063532",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_210_INTRO_Enter",
            id = "1034243",
        },
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_21()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|773760375");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_62_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_210_INTRO_Enter",
            id = "1034243",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_31()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 32,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1469470615",
        -- StopEvent,
        [7] = "451671650",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
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

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|844736241");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1068567242");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_5()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_33()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 65,
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

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1179808036");
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

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1190292636");
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

function export:OnEnter_box_NarrativeFade_52()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_73()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_54()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1303843293");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1334820830");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
                [3] = self.f_box_OutputOrder_v2_8_Out_3,
                [4] = self.f_box_OutputOrder_v2_8_Out_4,
                [5] = self.f_box_OutputOrder_v2_8_Out_5,
                [6] = self.f_box_OutputOrder_v2_8_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1337133004");
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
        [8] = "MIS_210_INTRO_Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_GetDistance_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1394162760");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_3_Out,
    });
    params = {
        -- Entity1,
        [0] = self.ePlayer,
        -- Entity2,
        [1] = self.eUNI115,
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1430671258");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_20_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1482563900");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_210_INTRO_FAIL",
            id = "1024618",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_53()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328871164501",
    };
    return params;
end;

function export:OnEnter_box_LeavingPathTrackingAndWarning_66()
    local params;
    params = {
        -- CoopFailRequiresAllPlayer,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1623856454");
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
                [0] = self.f_box_OutputOrder_v2_39_Out_0,
                [1] = self.f_box_OutputOrder_v2_39_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1657542338");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 5,
        -- float,
        [4] = self.fDistanceToJudge,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_41()
    local params, l0;
    l0 = self.box_CharacterLoadedIdListener_v2_40;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = l0:GetDataOutValue(0),
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109955146594146892",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1666621683");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 5,
        -- float,
        [4] = self.fDistanceFail,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1761981545");
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
                [2] = self.f_box_OutputOrder_v2_58_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_25()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1784731391");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_57_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109606494862329932",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_40()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328871164501",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1812995004");
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

function export:OnEnter_box_Print_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1835497261");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 5,
        -- float,
        [4] = self.fDistanceWarning,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_51()
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
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1873241140");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_47_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108684246689261009",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_26()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = true,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2109762843298567167",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_ENTER",
            id = "533265",
        },
    };
    return params;
end;

function export:OnEnter_box_MovementListener_v2_60()
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

function export:OnEnter_box_UseContextualActionModifier_v3_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|1917883588");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_65_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108684246689261009",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|2025490994");
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
                [0] = self.f_box_OutputOrder_v2_63_Out_0,
                [1] = self.f_box_OutputOrder_v2_63_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Follow_JUDGE_17()
    local params;
    params = {
        -- bRequiresObjective,
        [0] = true,
        -- Destination,
        [1] = "2109582210284655087",
        -- fDistanceFail,
        [2] = self.fDistanceFail,
        -- fDistanceSuccess,
        [3] = 12,
        -- fDistanceWarning,
        [4] = self.fDistanceWarning,
        -- FollowTarget,
        [5] = self.eUNI115,
        -- IsPersistentCharacter,
        [6] = false,
        -- oObjective,
        [7] = {
            section = "Objectives",
            item = "MIS_210_INTRO_OBJ_Follow",
            id = "1024606",
        },
        -- opt_Target_MobileMarker,
        [9] = "2108694685661798325",
        -- oWarningMsg,
        [10] = {
            section = "Objectives",
            item = "MIS_210_INTRO_WARNING",
            id = "1024617",
        },
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_INTRO.domino|@MIS_210_INTRO|2076476338");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_19_Out,
    });
    params = {
        -- A,
        [0] = self.fDistanceToJudge,
        -- B,
        [1] = 50,
    };
    return params;
end;

function export:OnExit_box_FloatArithmetics_v2_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.fDistanceWarning = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.ePlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self.fDistanceToJudge = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_14_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_14;
    self.eUNI115 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_40_LoadedIdReceived()
    local l0, l1;
    l0 = self.box_CharacterLoadedIdListener_v2_40;
    l1 = self.box_ProximityTrigger_v3_41;
    l1:GetLuaBox().colliderFilterId = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self.fDistanceFail = l0:GetDataOutValue(0);
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
