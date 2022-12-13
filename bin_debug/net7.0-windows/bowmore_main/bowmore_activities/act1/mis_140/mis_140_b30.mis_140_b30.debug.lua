LUAC[ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act1/mis_140/mis_140_b30.domino
-- User graph: mis_140_b30
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeGetVehiclesInTrigger.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeHideVehicles.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Escort_NPC_To_Position.Brick_Escort_NPC_To_Position_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Escort_Vehicles._Brick_Escort_PerVehicle.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/NpcDestinationCheckListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/SetVehicleAsLeashAnchor.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MovementListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayRandomDialog_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TaggingModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.Chase_Gameplay.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.DestinationReachable.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1528161475.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1660873889.bnk]], "CSoundResource");
        cboxRes:LoadResource([[930797807.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3333809696.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4141443082.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3523879888.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1647757919.bnk]], "CSoundResource");
        cboxRes:LoadResource([[73240767.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3434369752.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3996426836.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2932896562.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1982792409.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3698971670.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1734737661.bnk]], "CSoundResource");
        cboxRes:LoadResource([[462729459.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4025596061.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2934642293.bnk]], "CSoundResource");
        cboxRes:LoadResource([[698951700.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3654425411.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3632883579.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3607026267.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.mis_140_b30.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeGetVehiclesInTrigger.debug.lua")] = {
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
                name = "Trigger",
                type = "entity",
            },
            [1] = {
                name = "Vehicles",
                type = "list",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeHideVehicles.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Hide",
            },
            [1] = {
                name = "Remove",
            },
            [2] = {
                name = "Unhide",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Hidden",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
            [2] = {
                name = "Unhidden",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Vehicles",
                type = "list",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Escort_NPC_To_Position.Brick_Escort_NPC_To_Position_v3.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = true,
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
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [2] = {
                name = "eDestinationMarker",
                type = "entity",
            },
            [3] = {
                name = "eDestinationTrigger",
                type = "entity",
            },
            [4] = {
                name = "eNPCMobileMarker",
                type = "entity",
            },
            [5] = {
                name = "eNPCToEscort",
                type = "entity",
            },
            [6] = {
                name = "fWarnDistance",
                type = "float",
            },
            [7] = {
                name = "Objective",
                type = "oasis",
            },
            [8] = {
                name = "WarningMsg",
                type = "oasis",
            },
        },
        dataInCount = 9,
        dataOut = {
            [0] = {
                name = "FailReason",
                type = "oasis",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Escort_Vehicles._Brick_Escort_PerVehicle.debug.lua")] = {
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
                name = "DriverKilled",
                delayed = false,
            },
            [1] = {
                name = "VehicleLost",
                delayed = false,
            },
            [2] = {
                name = "VehicleRemovedFromGroup",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "e_Driver",
                type = "entity",
            },
            [1] = {
                name = "e_Vehicle",
                type = "entity",
            },
            [2] = {
                name = "opt_e_VehicleMarker",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua")] = {
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
                name = "FailingZoneEntered",
                delayed = true,
            },
            [1] = {
                name = "WarningZoneEntered",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bShowUI",
                type = "bool",
            },
            [1] = {
                name = "CoopFailRequiresAllPlayer",
                type = "bool",
            },
            [2] = {
                name = "FailingZoneTrigger",
                type = "entity",
            },
            [3] = {
                name = "WarningZoneTrigger",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "CurrentWarnedPlayer",
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
    metadataTable[GetPathID("Domino/System/AI/NpcDestinationCheckListener.lua")] = {
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
                name = "Reachable",
                delayed = true,
            },
            [3] = {
                name = "Unreachable",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Agent",
                type = "entity",
            },
            [1] = {
                name = "AutoDisable",
                type = "bool",
            },
            [2] = {
                name = "Destination",
                type = "entity",
            },
            [3] = {
                name = "DestinationToleranceDistance",
                type = "float",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/Coop/SetVehicleAsLeashAnchor.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ClearMissionVehicle",
            },
            [1] = {
                name = "SetMissionVehicle",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnMissionVehicleCleared",
                delayed = false,
            },
            [1] = {
                name = "OnMissionVehicleSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "targetVehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/PlayRandomDialog_v2.lua")] = {
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
                name = "AllDone",
                delayed = true,
            },
            [1] = {
                name = "PlayOut",
                delayed = false,
            },
            [2] = {
                name = "StopOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "maxTime",
                type = "float",
            },
            [2] = {
                name = "minTime",
                type = "float",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
                dynamicType = 1,
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
    metadataTable[GetPathID("Domino/System/VehicleDamageListener_v2.lua")] = {
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
                name = "BoxDisabled",
                delayed = false,
            },
            [1] = {
                name = "Broken",
                delayed = true,
            },
            [2] = {
                name = "Destroyed",
                delayed = true,
            },
            [3] = {
                name = "Disabled",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "MajorDamage",
                delayed = true,
            },
            [6] = {
                name = "MinorDamage",
                delayed = true,
            },
            [7] = {
                name = "Mint",
                delayed = true,
            },
            [8] = {
                name = "OnFire",
                delayed = true,
            },
            [9] = {
                name = "Perfect",
                delayed = true,
            },
            [10] = {
                name = "StateChange",
                delayed = true,
            },
        },
        controlOutCount = 11,
        dataIn = {
            [0] = {
                name = "Vehicle",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "StateID",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.Chase_Gameplay.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.DestinationReachable.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableDestinationCheck",
            },
            [1] = {
                name = "StartChecking",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Trigger_hit",
                delayed = false,
            },
            [1] = {
                name = "Unreachable",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Destination",
                type = "entity",
            },
            [1] = {
                name = "NPC",
                type = "entity",
            },
            [2] = {
                name = "TriggerID",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "mis_140_b30";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30";
    self.Player = nil;
    self.Rush_character = nil;
    self.PlayerID = nil;
    self.Vehicle_to_delete = {
    };
    self.GunForHireSystem = 0;
    self.box_NarrativeSceneCleanUp_V2_147 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|5809540");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_147_Out,
    });
    self.box_SpawnAI_220 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|6757079");
    l0:SetConnections({
    });
    self.box_DestinationReachable_171 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.DestinationReachable.debug.lua");
    l0 = self.box_DestinationReachable_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DestinationReachable_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|88224974");
    l0:SetConnections({
        -- Trigger_hit,
        [0] = self.f_box_DestinationReachable_171_Trigger_hit,
        -- Unreachable,
        [1] = self.f_box_DestinationReachable_171_Unreachable,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|179586435");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_29_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_PlayDialog_v6_65 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|179663129");
    l0:SetConnections({
    });
    self.box_Delay_v5_200 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|254253099");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_200_TimeElapsed,
    });
    self.box_Music_Quest_v2_152 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|270324804");
    l0:SetConnections({
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|338783839");
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
    self.box__Brick_Escort_PerVehicle_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Escort_Vehicles._Brick_Escort_PerVehicle.debug.lua");
    l0 = self.box__Brick_Escort_PerVehicle_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__Brick_Escort_PerVehicle_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|412941487");
    l0:SetConnections({
        -- DriverKilled,
        [0] = self.f_box__Brick_Escort_PerVehicle_9_DriverKilled,
        -- VehicleLost,
        [1] = self.f_box__Brick_Escort_PerVehicle_9_VehicleLost,
    });
    self.box_NavLinkModifier_90 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|413160016");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_90_Activated,
    });
    self.box_OnceOnly_v3_67 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|461841629");
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
    self.box_DestinationReachable_167 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.DestinationReachable.debug.lua");
    l0 = self.box_DestinationReachable_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DestinationReachable_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|490844577");
    l0:SetConnections({
        -- Trigger_hit,
        [0] = self.f_box_DestinationReachable_167_Trigger_hit,
        -- Unreachable,
        [1] = self.f_box_DestinationReachable_167_Unreachable,
    });
    self.box_DestinationReachable_164 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.DestinationReachable.debug.lua");
    l0 = self.box_DestinationReachable_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DestinationReachable_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|499731900");
    l0:SetConnections({
        -- Trigger_hit,
        [0] = self.f_box_DestinationReachable_164_Trigger_hit,
        -- Unreachable,
        [1] = self.f_box_DestinationReachable_164_Unreachable,
    });
    self.box_DestinationReachable_162 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.DestinationReachable.debug.lua");
    l0 = self.box_DestinationReachable_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DestinationReachable_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|514220375");
    l0:SetConnections({
        -- Trigger_hit,
        [0] = self.f_box_DestinationReachable_162_Trigger_hit,
        -- Unreachable,
        [1] = self.f_box_DestinationReachable_162_Unreachable,
    });
    self.box_Delay_v5_148 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|514932050");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_148_TimeElapsed,
    });
    self.box_VehicleDamageListener_v2_213 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|518552907");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_213_Destroyed,
    });
    self.box_Gate_v3_34 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|521268579");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_34_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_34_Out,
    });
    self.box_PlayDialog_v6_10 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|529052356");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_10_Finished,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_10_Stopped,
    });
    self.box_NarrativeFade_145 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|535984951");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_145_FadedIn,
    });
    self.box_DestinationReachable_166 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.DestinationReachable.debug.lua");
    l0 = self.box_DestinationReachable_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DestinationReachable_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|536874148");
    l0:SetConnections({
        -- Trigger_hit,
        [0] = self.f_box_DestinationReachable_166_Trigger_hit,
        -- Unreachable,
        [1] = self.f_box_DestinationReachable_166_Unreachable,
    });
    self.box_CoopActivePlayers_197 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|538956826");
    l0:SetConnections({
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_197_PlayerAdded,
    });
    self.box_PlayRandomDialog_v2_74 = cbox:CreateBox("Domino/System/PlayRandomDialog_v2.lua");
    l0 = self.box_PlayRandomDialog_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayRandomDialog_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|549353160");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
        },
        dataIn = {
            [3] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
    });
    self.box_MultipleOR_157 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|556949944");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 14,
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
        [0] = self.f_box_MultipleOR_157_Out,
    });
    self.box_Delay_v5_54 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|587630858");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_54_TimeElapsed,
    });
    self.box_DestinationReachable_163 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.DestinationReachable.debug.lua");
    l0 = self.box_DestinationReachable_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DestinationReachable_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|659415053");
    l0:SetConnections({
        -- Trigger_hit,
        [0] = self.f_box_DestinationReachable_163_Trigger_hit,
        -- Unreachable,
        [1] = self.f_box_DestinationReachable_163_Unreachable,
    });
    self.box_Delay_v5_38 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|698513279");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_38_TimeElapsed,
    });
    self.box_SpawnAI_221 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|700600066");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_221_Out,
    });
    self.box_ProximityTrigger_v3_204 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|708698554");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_204_Enter,
    });
    self.box_PositionModifier_v2_12 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|717330614");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_12_StartOut,
    });
    self.box_NavLinkModifier_91 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|719117564");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_15 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|721847828");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_15_Activated,
    });
    self.box_PositionModifier_v2_198 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|790406313");
    l0:SetConnections({
    });
    self.box_GunsForHireSystemModifier_107 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|860694731");
    l0:SetConnections({
    });
    self.box_DestinationReachable_165 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.DestinationReachable.debug.lua");
    l0 = self.box_DestinationReachable_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DestinationReachable_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|903056520");
    l0:SetConnections({
        -- Trigger_hit,
        [0] = self.f_box_DestinationReachable_165_Trigger_hit,
        -- Unreachable,
        [1] = self.f_box_DestinationReachable_165_Unreachable,
    });
    self.box_VehicleListener_v3_37 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|906434955");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_37_OnSit,
    });
    self.box_SetVehicleAsLeashAnchor_23 = cbox:CreateBox("Domino/System/Coop/SetVehicleAsLeashAnchor.lua");
    l0 = self.box_SetVehicleAsLeashAnchor_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetVehicleAsLeashAnchor_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|921361697");
    l0:SetConnections({
        -- OnMissionVehicleCleared,
        [0] = self.f_box_SetVehicleAsLeashAnchor_23_OnMissionVehicleCleared,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|932809871");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_Delay_v5_144 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|960089648");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_144_TimeElapsed,
    });
    self.box_MovementListener_v2_159 = cbox:CreateBox("Domino/System/MovementListener_v2.lua");
    l0 = self.box_MovementListener_v2_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MovementListener_v2_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|961528629");
    l0:SetConnections({
        -- Moving,
        [3] = self.f_box_MovementListener_v2_159_Moving,
    });
    self.box_PlayDialog_v6_206 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|963051815");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_196 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|987143103");
    l0:SetConnections({
    });
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|999317161");
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
        [0] = self.f_box_MultipleOR_106_Out,
    });
    self.box_OnceOnly_v3_44 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1020083657");
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
                [0] = self.f_box_OnceOnly_v3_44_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v3_73 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1025434961");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_73_Enter,
    });
    self.box_ExitZoneWarningListener_v3_109 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1051276329");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_109_FailingZoneEntered,
    });
    self.box_ProximityTrigger_v3_71 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1051878528");
    l0:SetConnections({
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_71_Leave,
    });
    self.box_NpcDestinationCheckListener_184 = cbox:CreateBox("Domino/System/AI/NpcDestinationCheckListener.lua");
    l0 = self.box_NpcDestinationCheckListener_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NpcDestinationCheckListener_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1070836386");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_NpcDestinationCheckListener_184_Enabled,
        -- Unreachable,
        [3] = self.f_box_NpcDestinationCheckListener_184_Unreachable,
    });
    self.box_MovementListener_v2_154 = cbox:CreateBox("Domino/System/MovementListener_v2.lua");
    l0 = self.box_MovementListener_v2_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MovementListener_v2_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1089970518");
    l0:SetConnections({
        -- Idle,
        [2] = self.f_box_MovementListener_v2_154_Idle,
        -- x_Changed,
        [6] = self.f_box_MovementListener_v2_154_x_Changed,
        -- y_Changed,
        [7] = self.f_box_MovementListener_v2_154_y_Changed,
        -- z_Changed,
        [9] = self.f_box_MovementListener_v2_154_z_Changed,
    });
    self.box_NarrativeHideVehicles_108 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeHideVehicles.debug.lua");
    l0 = self.box_NarrativeHideVehicles_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeHideVehicles_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1101589317");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_NarrativeHideVehicles_108_Removed,
    });
    self.box_VehicleListener_v3_5 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1122011135");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_5_Enabled,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_5_OnSit,
    });
    self.box_Gate_v3_35 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1126191895");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_35_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_35_Out,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1130012180");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_Delay_v5_25 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1148739225");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_25_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_25_TimeElapsed,
    });
    self.box_Chase_Gameplay_222 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.Chase_Gameplay.debug.lua");
    l0 = self.box_Chase_Gameplay_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Chase_Gameplay_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1152641708");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_51 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1156465427");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_51_Enabled,
    });
    self.box_Delay_v5_155 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1207496724");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_155_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_76 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1216259084");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_76_Enter,
    });
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1220598567");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_PlayDialog_v6_208 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1229456030");
    l0:SetConnections({
    });
    self.box_PlayRandomDialog_v2_72 = cbox:CreateBox("Domino/System/PlayRandomDialog_v2.lua");
    l0 = self.box_PlayRandomDialog_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayRandomDialog_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1241104405");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
        },
        dataIn = {
            [3] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_26 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1277772457");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_26_Finished,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_26_Stopped,
    });
    self.box_DestinationReachable_170 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.DestinationReachable.debug.lua");
    l0 = self.box_DestinationReachable_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DestinationReachable_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1284699226");
    l0:SetConnections({
        -- Trigger_hit,
        [0] = self.f_box_DestinationReachable_170_Trigger_hit,
        -- Unreachable,
        [1] = self.f_box_DestinationReachable_170_Unreachable,
    });
    self.box_PostFx_v3_146 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1286485834");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_209 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1293597421");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_53 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1293622782");
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
                [0] = self.f_box_OnceOnly_v3_53_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_30 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1301178827");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_30_Finished,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_30_Stopped,
    });
    self.box_Gate_v3_36 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1325707968");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_36_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_36_Out,
    });
    self.box_HealthListener_v6_207 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1332373021");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_207_Killed,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1335280528");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_VehicleDamageListener_v2_95 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1335822891");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_95_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_95_Destroyed,
    });
    self.box_MultipleOR_160 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1387685038");
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
        [0] = self.f_box_MultipleOR_160_Out,
    });
    self.box_Gate_v3_33 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1389101788");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_33_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_33_Out,
    });
    self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1405421973");
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
        [0] = self.f_box_MultipleOR_63_Out,
    });
    self.box_DestinationReachable_169 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.DestinationReachable.debug.lua");
    l0 = self.box_DestinationReachable_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DestinationReachable_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1415135777");
    l0:SetConnections({
        -- Trigger_hit,
        [0] = self.f_box_DestinationReachable_169_Trigger_hit,
        -- Unreachable,
        [1] = self.f_box_DestinationReachable_169_Unreachable,
    });
    self.box_ProximityTrigger_v3_211 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1424979832");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_211_Enter,
    });
    self.box_NarrativeHideVehicles_43 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeHideVehicles.debug.lua");
    l0 = self.box_NarrativeHideVehicles_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeHideVehicles_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1439347680");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_NarrativeHideVehicles_43_Removed,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1471550332");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_Music_Quest_v2_150 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1483633376");
    l0:SetConnections({
    });
    self.box_VehicleListener_v3_16 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1508068492");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_16_OnSit,
    });
    self.box_SetVehicleAsLeashAnchor_21 = cbox:CreateBox("Domino/System/Coop/SetVehicleAsLeashAnchor.lua");
    l0 = self.box_SetVehicleAsLeashAnchor_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetVehicleAsLeashAnchor_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1547896433");
    l0:SetConnections({
    });
    self.box_DestinationReachable_172 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.DestinationReachable.debug.lua");
    l0 = self.box_DestinationReachable_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DestinationReachable_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1558135315");
    l0:SetConnections({
        -- Unreachable,
        [1] = self.f_box_DestinationReachable_172_Unreachable,
    });
    self.box_MultipleOR_60 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1566530135");
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
        [0] = self.f_box_MultipleOR_60_Out,
    });
    self.box_NarrativeGetVehiclesInTrigger_217 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeGetVehiclesInTrigger.debug.lua");
    l0 = self.box_NarrativeGetVehiclesInTrigger_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeGetVehiclesInTrigger_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1578447266");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_NarrativeGetVehiclesInTrigger_217_Enabled,
    });
    self.box_ProximityTrigger_v3_68 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1580697783");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_68_Enter,
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1605142965");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_28_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_NarrativeSceneSetup_142 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1642164859");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_142_Holstered,
    });
    self.box_HealthListener_v6_104 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1698786063");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_104_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_104_Killed,
    });
    self.box_Brick_Escort_NPC_To_Position_v3_92 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Escort_NPC_To_Position.Brick_Escort_NPC_To_Position_v3.debug.lua");
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Escort_NPC_To_Position_v3_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1721867621");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Brick_Escort_NPC_To_Position_v3_92_Started,
        -- Success,
        [2] = self.f_box_Brick_Escort_NPC_To_Position_v3_92_Success,
    });
    self.box_Delay_v5_52 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1738403168");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_52_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_70 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1780677866");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_70_Enter,
    });
    self.box_EntityStatusListener_18 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1823734170");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_18_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_18_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_18_Unloaded,
    });
    self.box_SpawnAI_6 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1827180814");
    l0:SetConnections({
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1827649235");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_NarrativeFade_143 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1835636667");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_143_FadedOut,
    });
    self.box_VehicleListener_v3_210 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1847934857");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_210_OnSit,
    });
    self.box_PlayRandomDialog_v2_75 = cbox:CreateBox("Domino/System/PlayRandomDialog_v2.lua");
    l0 = self.box_PlayRandomDialog_v2_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayRandomDialog_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1880549991");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
        },
        dataIn = {
            [3] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_214 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1884066143");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_v2_64 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1912438274");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_64_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_64_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_64_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_64_LoadedIdReceived,
    });
    self.box_PlayDialog_v6_212 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1918572203");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_199 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1938335688");
    l0:SetConnections({
    });
    self.box_NarrativeGetVehiclesInTrigger_42 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeGetVehiclesInTrigger.debug.lua");
    l0 = self.box_NarrativeGetVehiclesInTrigger_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeGetVehiclesInTrigger_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1972558900");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_NarrativeGetVehiclesInTrigger_42_Enabled,
    });
    self.box_DestinationReachable_168 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.DestinationReachable.debug.lua");
    l0 = self.box_DestinationReachable_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DestinationReachable_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1989313849");
    l0:SetConnections({
        -- Trigger_hit,
        [0] = self.f_box_DestinationReachable_168_Trigger_hit,
        -- Unreachable,
        [1] = self.f_box_DestinationReachable_168_Unreachable,
    });
    self.box_ProximityTrigger_v3_202 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2042562302");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_202_Enter,
    });
    self.box_PlayRandomDialog_v2_69 = cbox:CreateBox("Domino/System/PlayRandomDialog_v2.lua");
    l0 = self.box_PlayRandomDialog_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayRandomDialog_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2061867627");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
        },
        dataIn = {
            [3] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
    });
    self.box_DestinationReachable_153 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B30.DestinationReachable.debug.lua");
    l0 = self.box_DestinationReachable_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DestinationReachable_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2073476380");
    l0:SetConnections({
        -- Trigger_hit,
        [0] = self.f_box_DestinationReachable_153_Trigger_hit,
        -- Unreachable,
        [1] = self.f_box_DestinationReachable_153_Unreachable,
    });
    self.box_PlayDialog_v6_203 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2135657217");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|86602761", "86602761", "mis_140_b30", "In", "box_ActivityAcknowledgeGate_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_205_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_201();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|199779398", "199779398", "mis_140_b30", "box_Simple_Node_205.Out", "box_OutputOrder_v2_201.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanUp_V2_147_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_149();
    l0 = self.box_NarrativeSceneCleanUp_V2_147;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|132422573", "132422573", "mis_140_b30", "box_NarrativeSceneCleanUp_V2_147.Out", "box_OutputOrder_v2_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_201_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_196();
    l0 = self.box_SoundModifier_v2_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|496086236", "496086236", "mis_140_b30", "box_OutputOrder_v2_201.Out", "box_SoundModifier_v2_196.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_201_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_200();
    l0 = self.box_Delay_v5_200;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|701060878", "701060878", "mis_140_b30", "box_OutputOrder_v2_201.Out", "box_Delay_v5_200.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_173_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MovementListener_v2_159();
    l0 = self.box_MovementListener_v2_159;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|500477799", "500477799", "mis_140_b30", "box_OutputOrder_v2_173.Out", "box_MovementListener_v2_159.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_173_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NpcDestinationCheckListener_184();
    l0 = self.box_NpcDestinationCheckListener_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1379998905", "1379998905", "mis_140_b30", "box_OutputOrder_v2_173.Out", "box_NpcDestinationCheckListener_184.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_DestinationReachable_171_Trigger_hit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_183();
    l0 = self.box_DestinationReachable_171;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2040364252", "2040364252", "mis_140_b30", "box_DestinationReachable_171.Trigger_hit", "box_OutputOrder_v2_183.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DestinationReachable_171_Unreachable()
    local l0, l1;
    l0 = self.box_DestinationReachable_171;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1175354352", "1175354352", "mis_140_b30", "box_DestinationReachable_171.Unreachable", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 11);
end;

function export:f_box_Delay_v5_29_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_26();
    l0 = self.box_Delay_v5_29;
    l1 = self.box_PlayDialog_v6_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|188833334", "188833334", "mis_140_b30", "box_Delay_v5_29.Stopped", "box_PlayDialog_v6_26.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_26();
    l0 = self.box_Delay_v5_29;
    l1 = self.box_PlayDialog_v6_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|734777262", "734777262", "mis_140_b30", "box_Delay_v5_29.TimeElapsed", "box_PlayDialog_v6_26.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_200_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_199();
    l0 = self.box_Delay_v5_200;
    l1 = self.box_SoundModifier_v2_199;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1472419334", "1472419334", "mis_140_b30", "box_Delay_v5_200.TimeElapsed", "box_SoundModifier_v2_199.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeGetVehiclesInTrigger_217();
    l0 = self.box_NarrativeGetVehiclesInTrigger_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|253712622", "253712622", "mis_140_b30", "box_OutputOrder_v2_11.Out", "box_NarrativeGetVehiclesInTrigger_217.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeGetVehiclesInTrigger_42();
    l0 = self.box_NarrativeGetVehiclesInTrigger_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1361898097", "1361898097", "mis_140_b30", "box_OutputOrder_v2_11.Out", "box_NarrativeGetVehiclesInTrigger_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_24();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1422673154", "1422673154", "mis_140_b30", "box_OutputOrder_v2_62.Out", "box_UseContextualActionModifier_v3_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Escort_NPC_To_Position_v3_92();
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1480670119", "1480670119", "mis_140_b30", "box_OutputOrder_v2_62.Out", "box_Brick_Escort_NPC_To_Position_v3_92.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_62_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_68();
    l0 = self.box_ProximityTrigger_v3_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|429580376", "429580376", "mis_140_b30", "box_OutputOrder_v2_62.Out", "box_ProximityTrigger_v3_68.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_70();
    l0 = self.box_ProximityTrigger_v3_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|136834767", "136834767", "mis_140_b30", "box_OutputOrder_v2_62.Out", "box_ProximityTrigger_v3_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_71();
    l0 = self.box_ProximityTrigger_v3_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1389496564", "1389496564", "mis_140_b30", "box_OutputOrder_v2_62.Out", "box_ProximityTrigger_v3_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_73();
    l0 = self.box_ProximityTrigger_v3_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|335717117", "335717117", "mis_140_b30", "box_OutputOrder_v2_62.Out", "box_ProximityTrigger_v3_73.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_76();
    l0 = self.box_ProximityTrigger_v3_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1429421317", "1429421317", "mis_140_b30", "box_OutputOrder_v2_62.Out", "box_ProximityTrigger_v3_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_202();
    l0 = self.box_ProximityTrigger_v3_202;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1792690455", "1792690455", "mis_140_b30", "box_OutputOrder_v2_62.Out", "box_ProximityTrigger_v3_202.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_204();
    l0 = self.box_ProximityTrigger_v3_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|708480345", "708480345", "mis_140_b30", "box_OutputOrder_v2_62.Out", "box_ProximityTrigger_v3_204.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_211();
    l0 = self.box_ProximityTrigger_v3_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1975442546", "1975442546", "mis_140_b30", "box_OutputOrder_v2_62.Out", "box_ProximityTrigger_v3_211.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_210();
    l0 = self.box_VehicleListener_v3_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|325637560", "325637560", "mis_140_b30", "box_OutputOrder_v2_62.Out", "box_VehicleListener_v3_210.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_213();
    l0 = self.box_VehicleDamageListener_v2_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1150187350", "1150187350", "mis_140_b30", "box_OutputOrder_v2_62.Out", "box_VehicleDamageListener_v2_213.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_207();
    l0 = self.box_HealthListener_v6_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|464196704", "464196704", "mis_140_b30", "box_OutputOrder_v2_62.Out", "box_HealthListener_v6_207.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_161();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1184156427", "1184156427", "mis_140_b30", "box_OutputOrder_v2_62.Out", "box_Simple_Node_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_45_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|148663368", "148663368", "mis_140_b30", "box_TaggingModifier_v3_45.Enabled", "box_ActivityEnd_4.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|834440191", "834440191", "mis_140_b30", "box_MultipleOR_3.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_TaggingModifier_v3_50_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_94();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|285549291", "285549291", "mis_140_b30", "box_TaggingModifier_v3_50.Enabled", "box_ActivityRetry_v2_94.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_5();
    l0 = self.box_VehicleListener_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|15202710", "15202710", "mis_140_b30", "box_OutputOrder_v2_19.Out", "box_VehicleListener_v3_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_16();
    l0 = self.box_VehicleListener_v3_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|785730638", "785730638", "mis_140_b30", "box_OutputOrder_v2_19.Out", "box_VehicleListener_v3_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_95();
    l0 = self.box_VehicleDamageListener_v2_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|209155534", "209155534", "mis_140_b30", "box_OutputOrder_v2_19.Out", "box_VehicleDamageListener_v2_95.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_104();
    l0 = self.box_HealthListener_v6_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|698945122", "698945122", "mis_140_b30", "box_OutputOrder_v2_19.Out", "box_HealthListener_v6_104.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2139698857", "2139698857", "mis_140_b30", "box_OutputOrder_v2_19.Out", "box_OnceOnly_v3_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_19_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_221();
    l0 = self.box_SpawnAI_221;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1197202452", "1197202452", "mis_140_b30", "box_OutputOrder_v2_19.Out", "box_SpawnAI_221.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__Brick_Escort_PerVehicle_9();
    l0 = self.box__Brick_Escort_PerVehicle_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1167986297", "1167986297", "mis_140_b30", "box_OutputOrder_v2_22.Out", "box__Brick_Escort_PerVehicle_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_150();
    l0 = self.box_Music_Quest_v2_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|541071377", "541071377", "mis_140_b30", "box_OutputOrder_v2_22.Out", "box_Music_Quest_v2_150.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Chase_Gameplay_222;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|459560129", "459560129", "mis_140_b30", "box_OutputOrder_v2_22.Out", "box_Chase_Gameplay_222.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_219_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_150();
    l0 = self.box_Music_Quest_v2_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1598739625", "1598739625", "mis_140_b30", "box_OutputOrder_v2_219.Out", "box_Music_Quest_v2_150.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_219_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_47();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1636723347", "1636723347", "mis_140_b30", "box_OutputOrder_v2_219.Out", "box_TaggingModifier_v3_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__Brick_Escort_PerVehicle_9_DriverKilled()
    local l0, l1;
    l0 = self.box__Brick_Escort_PerVehicle_9;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1292306787", "1292306787", "mis_140_b30", "box__Brick_Escort_PerVehicle_9.DriverKilled", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box__Brick_Escort_PerVehicle_9_VehicleLost()
    local l0, l1;
    l0 = self.box__Brick_Escort_PerVehicle_9;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|522967388", "522967388", "mis_140_b30", "box__Brick_Escort_PerVehicle_9.VehicleLost", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NavLinkModifier_90_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_91();
    l0 = self.box_NavLinkModifier_90;
    l1 = self.box_NavLinkModifier_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2132441925", "2132441925", "mis_140_b30", "box_NavLinkModifier_90.Activated", "box_NavLinkModifier_91.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_67_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_OnceOnly_v3_67;
    l1 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|495556883", "495556883", "mis_140_b30", "box_OnceOnly_v3_67.Out", "box_Delay_v5_17.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_VehicleModifier_v2_41_OnSetExitEnabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetVehicleAsLeashAnchor_23();
    l0 = self.box_SetVehicleAsLeashAnchor_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1363874505", "1363874505", "mis_140_b30", "box_VehicleModifier_v2_41.OnSetExitEnabled", "box_SetVehicleAsLeashAnchor_23.ClearMissionVehicle", clone:GetLuaBox(), l0:GetLuaBox());
    -- ClearMissionVehicle
    l0:Exec(0, params);
end;

function export:f_box_DestinationReachable_167_Trigger_hit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_179();
    l0 = self.box_DestinationReachable_167;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2136577412", "2136577412", "mis_140_b30", "box_DestinationReachable_167.Trigger_hit", "box_OutputOrder_v2_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DestinationReachable_167_Unreachable()
    local l0, l1;
    l0 = self.box_DestinationReachable_167;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1648162244", "1648162244", "mis_140_b30", "box_DestinationReachable_167.Unreachable", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_DestinationReachable_164_Trigger_hit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_176();
    l0 = self.box_DestinationReachable_164;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1657073104", "1657073104", "mis_140_b30", "box_DestinationReachable_164.Trigger_hit", "box_OutputOrder_v2_176.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DestinationReachable_164_Unreachable()
    local l0, l1;
    l0 = self.box_DestinationReachable_164;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1867981167", "1867981167", "mis_140_b30", "box_DestinationReachable_164.Unreachable", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_AddActivityObjective_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1479809812", "1479809812", "mis_140_b30", "box_AddActivityObjective_v2_8.Out", "box_PhoneCallExclusivityModifier_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_DestinationReachable_162_Trigger_hit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_175();
    l0 = self.box_DestinationReachable_162;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2141802102", "2141802102", "mis_140_b30", "box_DestinationReachable_162.Trigger_hit", "box_OutputOrder_v2_175.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DestinationReachable_162_Unreachable()
    local l0, l1;
    l0 = self.box_DestinationReachable_162;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|961548721", "961548721", "mis_140_b30", "box_DestinationReachable_162.Unreachable", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Delay_v5_148_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_147();
    l0 = self.box_Delay_v5_148;
    l1 = self.box_NarrativeSceneCleanUp_V2_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|571441826", "571441826", "mis_140_b30", "box_Delay_v5_148.TimeElapsed", "box_NarrativeSceneCleanUp_V2_147.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_VehicleDamageListener_v2_213_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_214();
    l0 = self.box_VehicleDamageListener_v2_213;
    l1 = self.box_PlayDialog_v6_214;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2093352111", "2093352111", "mis_140_b30", "box_VehicleDamageListener_v2_213.Destroyed", "box_PlayDialog_v6_214.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_34_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_Gate_v3_34;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|961399965", "961399965", "mis_140_b30", "box_Gate_v3_34.Closed", "box_Delay_v5_28.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_Gate_v3_34;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1664391622", "1664391622", "mis_140_b30", "box_Gate_v3_34.Out", "box_Delay_v5_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_10_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_34();
    l0 = self.box_PlayDialog_v6_10;
    l1 = self.box_Gate_v3_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|294358723", "294358723", "mis_140_b30", "box_PlayDialog_v6_10.Finished", "box_Gate_v3_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_10_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_34();
    l0 = self.box_PlayDialog_v6_10;
    l1 = self.box_Gate_v3_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|399248477", "399248477", "mis_140_b30", "box_PlayDialog_v6_10.Stopped", "box_Gate_v3_34.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_NarrativeFade_145_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_148();
    l0 = self.box_NarrativeFade_145;
    l1 = self.box_Delay_v5_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|867377298", "867377298", "mis_140_b30", "box_NarrativeFade_145.FadedIn", "box_Delay_v5_148.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DestinationReachable_166_Trigger_hit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_178();
    l0 = self.box_DestinationReachable_166;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1107607239", "1107607239", "mis_140_b30", "box_DestinationReachable_166.Trigger_hit", "box_OutputOrder_v2_178.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DestinationReachable_166_Unreachable()
    local l0, l1;
    l0 = self.box_DestinationReachable_166;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|97612298", "97612298", "mis_140_b30", "box_DestinationReachable_166.Unreachable", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_CoopActivePlayers_197_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_198();
    l0 = self.box_CoopActivePlayers_197;
    l1 = self.box_PositionModifier_v2_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|209312498", "209312498", "mis_140_b30", "box_CoopActivePlayers_197.PlayerAdded", "box_PositionModifier_v2_198.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_157_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_48();
    l0 = self.box_MultipleOR_157;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2115247081", "2115247081", "mis_140_b30", "box_MultipleOR_157.Out", "box_TaggingModifier_v3_48.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_46_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_111();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|969459746", "969459746", "mis_140_b30", "box_TaggingModifier_v3_46.Disabled", "box_OutputOrder_v2_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_54_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayRandomDialog_v2_74();
    l0 = self.box_Delay_v5_54;
    l1 = self.box_PlayRandomDialog_v2_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|688585050", "688585050", "mis_140_b30", "box_Delay_v5_54.TimeElapsed", "box_PlayRandomDialog_v2_74.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_176_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_165();
    l0 = self.box_DestinationReachable_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1805535651", "1805535651", "mis_140_b30", "box_OutputOrder_v2_176.Out", "box_DestinationReachable_165.StartChecking", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartChecking
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_176_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_162();
    l0 = self.box_DestinationReachable_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1100961525", "1100961525", "mis_140_b30", "box_OutputOrder_v2_176.Out", "box_DestinationReachable_162.DisableDestinationCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableDestinationCheck
    l0:Exec(0, params);
end;

function export:f_box_DestinationReachable_163_Trigger_hit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_185();
    l0 = self.box_DestinationReachable_163;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2094872571", "2094872571", "mis_140_b30", "box_DestinationReachable_163.Trigger_hit", "box_OutputOrder_v2_185.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DestinationReachable_163_Unreachable()
    local l0, l1;
    l0 = self.box_DestinationReachable_163;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1865409897", "1865409897", "mis_140_b30", "box_DestinationReachable_163.Unreachable", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_175_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_164();
    l0 = self.box_DestinationReachable_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1093465892", "1093465892", "mis_140_b30", "box_OutputOrder_v2_175.Out", "box_DestinationReachable_164.StartChecking", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartChecking
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_175_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_153();
    l0 = self.box_DestinationReachable_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|514218628", "514218628", "mis_140_b30", "box_OutputOrder_v2_175.Out", "box_DestinationReachable_153.DisableDestinationCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableDestinationCheck
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_177_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_166();
    l0 = self.box_DestinationReachable_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1096037162", "1096037162", "mis_140_b30", "box_OutputOrder_v2_177.Out", "box_DestinationReachable_166.StartChecking", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartChecking
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_177_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_164();
    l0 = self.box_DestinationReachable_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|888786646", "888786646", "mis_140_b30", "box_OutputOrder_v2_177.Out", "box_DestinationReachable_164.DisableDestinationCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableDestinationCheck
    l0:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_66_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_66_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1119907708", "1119907708", "mis_140_b30", "box_GetLocalPlayer_v2_66.Out", "box_AddActivityObjective_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_111_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|82592247", "82592247", "mis_140_b30", "box_OutputOrder_v2_111.Out", "box_OnceOnly_v3_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_111_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_109();
    l0 = self.box_ExitZoneWarningListener_v3_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|357674624", "357674624", "mis_140_b30", "box_OutputOrder_v2_111.Out", "box_ExitZoneWarningListener_v3_109.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_111_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_12();
    l0 = self.box_PositionModifier_v2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1002958805", "1002958805", "mis_140_b30", "box_OutputOrder_v2_111.Out", "box_PositionModifier_v2_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_111_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_205();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1758650799", "1758650799", "mis_140_b30", "box_OutputOrder_v2_111.Out", "box_Simple_Node_205.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_111_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_25();
    l0 = self.box_Delay_v5_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|907164511", "907164511", "mis_140_b30", "box_OutputOrder_v2_111.Out", "box_Delay_v5_25.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Delay_v5_38_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_39();
    l0 = self.box_Delay_v5_38;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2057558459", "2057558459", "mis_140_b30", "box_Delay_v5_38.TimeElapsed", "box_UseContextualActionModifier_v3_39.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_221_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_220();
    l0 = self.box_SpawnAI_221;
    l1 = self.box_SpawnAI_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1492519331", "1492519331", "mis_140_b30", "box_SpawnAI_221.Out", "box_SpawnAI_220.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_204_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_52();
    l0 = self.box_ProximityTrigger_v3_204;
    l1 = self.box_Delay_v5_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|138889143", "138889143", "mis_140_b30", "box_ProximityTrigger_v3_204.Enter", "box_Delay_v5_52.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_12_StartOut()
    local l0, l1;
    l0 = self.box_PositionModifier_v2_12;
    l1 = self.box_CoopActivePlayers_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1575890366", "1575890366", "mis_140_b30", "box_PositionModifier_v2_12.StartOut", "box_CoopActivePlayers_197.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_NavLinkModifier_15_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_90();
    l0 = self.box_NavLinkModifier_15;
    l1 = self.box_NavLinkModifier_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|64521133", "64521133", "mis_140_b30", "box_NavLinkModifier_15.Activated", "box_NavLinkModifier_90.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_183_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_172();
    l0 = self.box_DestinationReachable_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1150430432", "1150430432", "mis_140_b30", "box_OutputOrder_v2_183.Out", "box_DestinationReachable_172.StartChecking", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartChecking
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_183_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_170();
    l0 = self.box_DestinationReachable_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|752128364", "752128364", "mis_140_b30", "box_OutputOrder_v2_183.Out", "box_DestinationReachable_170.DisableDestinationCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableDestinationCheck
    l0:Exec(0, params);
end;

function export:f_box_DestinationReachable_165_Trigger_hit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_177();
    l0 = self.box_DestinationReachable_165;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2123020820", "2123020820", "mis_140_b30", "box_DestinationReachable_165.Trigger_hit", "box_OutputOrder_v2_177.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DestinationReachable_165_Unreachable()
    local l0, l1;
    l0 = self.box_DestinationReachable_165;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|275558075", "275558075", "mis_140_b30", "box_DestinationReachable_165.Unreachable", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_VehicleListener_v3_37_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_38();
    l0 = self.box_VehicleListener_v3_37;
    l1 = self.box_Delay_v5_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|533095809", "533095809", "mis_140_b30", "box_VehicleListener_v3_37.OnSit", "box_Delay_v5_38.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_TaggingModifier_v3_47_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1383734378", "1383734378", "mis_140_b30", "box_TaggingModifier_v3_47.Enabled", "box_ActivityRetry_v2_7.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetVehicleAsLeashAnchor_23_OnMissionVehicleCleared()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_45();
    l0 = self.box_SetVehicleAsLeashAnchor_23;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1008080128", "1008080128", "mis_140_b30", "box_SetVehicleAsLeashAnchor_23.OnMissionVehicleCleared", "box_TaggingModifier_v3_45.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_161_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_173();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|440505024", "440505024", "mis_140_b30", "box_Simple_Node_161.Out", "box_OutputOrder_v2_173.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_50();
    l0 = self.box_MultipleOR_20;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|845297622", "845297622", "mis_140_b30", "box_MultipleOR_20.Out", "box_TaggingModifier_v3_50.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_185_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_153();
    l0 = self.box_DestinationReachable_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|334388032", "334388032", "mis_140_b30", "box_OutputOrder_v2_185.Out", "box_DestinationReachable_153.StartChecking", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartChecking
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_185_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NpcDestinationCheckListener_184();
    l0 = self.box_NpcDestinationCheckListener_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|459550773", "459550773", "mis_140_b30", "box_OutputOrder_v2_185.Out", "box_NpcDestinationCheckListener_184.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_144_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_144;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1471328664", "1471328664", "mis_140_b30", "box_Delay_v5_144.TimeElapsed", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MovementListener_v2_159_Moving()
    local params, l0, l1;
    params = self:OnEnter_box_MovementListener_v2_154();
    l0 = self.box_MovementListener_v2_159;
    l1 = self.box_MovementListener_v2_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1692911995", "1692911995", "mis_140_b30", "box_MovementListener_v2_159.Moving", "box_MovementListener_v2_154.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_TaggingModifier_v3_48_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_156();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|305121572", "305121572", "mis_140_b30", "box_TaggingModifier_v3_48.Enabled", "box_ActivityRetry_v2_156.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_106_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_105();
    l0 = self.box_MultipleOR_106;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2034604510", "2034604510", "mis_140_b30", "box_MultipleOR_106.Out", "box_ActivityRetry_v2_105.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_44_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_109();
    l0 = self.box_OnceOnly_v3_44;
    l1 = self.box_ExitZoneWarningListener_v3_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1629082718", "1629082718", "mis_140_b30", "box_OnceOnly_v3_44.Out", "box_ExitZoneWarningListener_v3_109.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_73_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_54();
    l0 = self.box_ProximityTrigger_v3_73;
    l1 = self.box_Delay_v5_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1920310274", "1920310274", "mis_140_b30", "box_ProximityTrigger_v3_73.Enter", "box_Delay_v5_54.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_15();
    l0 = self.box_NavLinkModifier_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|391401662", "391401662", "mis_140_b30", "box_OutputOrder_v2_27.Out", "box_NavLinkModifier_15.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_25();
    l0 = self.box_Delay_v5_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1509605206", "1509605206", "mis_140_b30", "box_OutputOrder_v2_27.Out", "box_Delay_v5_25.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_27_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1941783495", "1941783495", "mis_140_b30", "box_OutputOrder_v2_27.Out", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_14();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|978561504", "978561504", "mis_140_b30", "box_OutputOrder_v2_27.Out", "box_VehicleSeatModifier_v2_14.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_181_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_170();
    l0 = self.box_DestinationReachable_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1461709457", "1461709457", "mis_140_b30", "box_OutputOrder_v2_181.Out", "box_DestinationReachable_170.StartChecking", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartChecking
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_181_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_168();
    l0 = self.box_DestinationReachable_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|346183648", "346183648", "mis_140_b30", "box_OutputOrder_v2_181.Out", "box_DestinationReachable_168.DisableDestinationCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableDestinationCheck
    l0:Exec(0, params);
end;

function export:f_box_ExitZoneWarningListener_v3_109_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_151();
    l0 = self.box_ExitZoneWarningListener_v3_109;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|874124210", "874124210", "mis_140_b30", "box_ExitZoneWarningListener_v3_109.FailingZoneEntered", "box_OutputOrder_v2_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_71_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_PlayRandomDialog_v2_72();
    l0 = self.box_ProximityTrigger_v3_71;
    l1 = self.box_PlayRandomDialog_v2_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1066921779", "1066921779", "mis_140_b30", "box_ProximityTrigger_v3_71.Leave", "box_PlayRandomDialog_v2_72.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_NpcDestinationCheckListener_184_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_DestinationReachable_163();
    l0 = self.box_NpcDestinationCheckListener_184;
    l1 = self.box_DestinationReachable_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1264160208", "1264160208", "mis_140_b30", "box_NpcDestinationCheckListener_184.Enabled", "box_DestinationReachable_163.StartChecking", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartChecking
    l1:Exec(1, params);
end;

function export:f_box_NpcDestinationCheckListener_184_Unreachable()
    local l0, l1;
    l0 = self.box_NpcDestinationCheckListener_184;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|842887665", "842887665", "mis_140_b30", "box_NpcDestinationCheckListener_184.Unreachable", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 13);
end;

function export:f_box_MovementListener_v2_154_Idle()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_155();
    l0 = self.box_MovementListener_v2_154;
    l1 = self.box_Delay_v5_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1764999212", "1764999212", "mis_140_b30", "box_MovementListener_v2_154.Idle", "box_Delay_v5_155.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MovementListener_v2_154_x_Changed()
    local l0, l1;
    l0 = self.box_MovementListener_v2_154;
    l1 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1806841075", "1806841075", "mis_140_b30", "box_MovementListener_v2_154.x_Changed", "box_MultipleOR_160.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MovementListener_v2_154_y_Changed()
    local l0, l1;
    l0 = self.box_MovementListener_v2_154;
    l1 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|177555698", "177555698", "mis_140_b30", "box_MovementListener_v2_154.y_Changed", "box_MultipleOR_160.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MovementListener_v2_154_z_Changed()
    local l0, l1;
    l0 = self.box_MovementListener_v2_154;
    l1 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|954515248", "954515248", "mis_140_b30", "box_MovementListener_v2_154.z_Changed", "box_MultipleOR_160.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_NarrativeHideVehicles_108_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeGetVehiclesInTrigger_217();
    l0 = self.box_NarrativeHideVehicles_108;
    l1 = self.box_NarrativeGetVehiclesInTrigger_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2102501911", "2102501911", "mis_140_b30", "box_NarrativeHideVehicles_108.Removed", "box_NarrativeGetVehiclesInTrigger_217.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_5_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_40();
    l0 = self.box_VehicleListener_v3_5;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|625438982", "625438982", "mis_140_b30", "box_VehicleListener_v3_5.Enabled", "box_VehicleModifier_v2_40.SetExitDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExitDisabled
    l1:Exec(15, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_5_OnSit()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_5;
    l1 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1916761596", "1916761596", "mis_140_b30", "box_VehicleListener_v3_5.OnSit", "box_MultipleOR_60.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_35_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_Gate_v3_35;
    l1 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|687642536", "687642536", "mis_140_b30", "box_Gate_v3_35.Closed", "box_Delay_v5_29.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_Gate_v3_35;
    l1 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|702527041", "702527041", "mis_140_b30", "box_Gate_v3_35.Out", "box_Delay_v5_29.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = self.box_Delay_v5_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|900699167", "900699167", "mis_140_b30", "box_Delay_v5_17.TimeElapsed", "box_OutputOrder_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_25_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_33();
    l0 = self.box_Delay_v5_25;
    l1 = self.box_Gate_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|258369532", "258369532", "mis_140_b30", "box_Delay_v5_25.Stopped", "box_Gate_v3_33.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_25_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_25;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|99321625", "99321625", "mis_140_b30", "box_Delay_v5_25.TimeElapsed", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PhoneCallExclusivityModifier_51_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_64();
    l0 = self.box_PhoneCallExclusivityModifier_51;
    l1 = self.box_CharacterLoadedIdListener_v2_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1360490317", "1360490317", "mis_140_b30", "box_PhoneCallExclusivityModifier_51.Enabled", "box_CharacterLoadedIdListener_v2_64.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_155_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_155;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1886346470", "1886346470", "mis_140_b30", "box_Delay_v5_155.TimeElapsed", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_76_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayRandomDialog_v2_75();
    l0 = self.box_ProximityTrigger_v3_76;
    l1 = self.box_PlayRandomDialog_v2_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1571754990", "1571754990", "mis_140_b30", "box_ProximityTrigger_v3_76.Enter", "box_PlayRandomDialog_v2_75.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_31;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|5174054", "5174054", "mis_140_b30", "box_Delay_v5_31.TimeElapsed", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_26_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_36();
    l0 = self.box_PlayDialog_v6_26;
    l1 = self.box_Gate_v3_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1051950539", "1051950539", "mis_140_b30", "box_PlayDialog_v6_26.Finished", "box_Gate_v3_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_26_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_36();
    l0 = self.box_PlayDialog_v6_26;
    l1 = self.box_Gate_v3_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|744152312", "744152312", "mis_140_b30", "box_PlayDialog_v6_26.Stopped", "box_Gate_v3_36.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_DestinationReachable_170_Trigger_hit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_182();
    l0 = self.box_DestinationReachable_170;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1542078662", "1542078662", "mis_140_b30", "box_DestinationReachable_170.Trigger_hit", "box_OutputOrder_v2_182.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DestinationReachable_170_Unreachable()
    local l0, l1;
    l0 = self.box_DestinationReachable_170;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1121415846", "1121415846", "mis_140_b30", "box_DestinationReachable_170.Unreachable", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 10);
end;

function export:f_box_OnceOnly_v3_53_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_206();
    l0 = self.box_OnceOnly_v3_53;
    l1 = self.box_PlayDialog_v6_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|108913244", "108913244", "mis_140_b30", "box_OnceOnly_v3_53.Out", "box_PlayDialog_v6_206.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_30_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_35();
    l0 = self.box_PlayDialog_v6_30;
    l1 = self.box_Gate_v3_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1606556330", "1606556330", "mis_140_b30", "box_PlayDialog_v6_30.Finished", "box_Gate_v3_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_30_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_35();
    l0 = self.box_PlayDialog_v6_30;
    l1 = self.box_Gate_v3_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1202778338", "1202778338", "mis_140_b30", "box_PlayDialog_v6_30.Stopped", "box_Gate_v3_35.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_36_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_Gate_v3_36;
    l1 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2144615874", "2144615874", "mis_140_b30", "box_Gate_v3_36.Closed", "box_Delay_v5_31.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_Gate_v3_36;
    l1 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1262730136", "1262730136", "mis_140_b30", "box_Gate_v3_36.Out", "box_Delay_v5_31.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_207_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_208();
    l0 = self.box_HealthListener_v6_207;
    l1 = self.box_PlayDialog_v6_208;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1381207763", "1381207763", "mis_140_b30", "box_HealthListener_v6_207.Killed", "box_PlayDialog_v6_208.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_13();
    l0 = self.box_ActivityInitialized_1;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1980623862", "1980623862", "mis_140_b30", "box_ActivityInitialized_1.Out", "box_GetPlayerGroup_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_95_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_95;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|26113913", "26113913", "mis_140_b30", "box_VehicleDamageListener_v2_95.Broken", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleDamageListener_v2_95_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_95;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1072802427", "1072802427", "mis_140_b30", "box_VehicleDamageListener_v2_95.Destroyed", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_13_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_66();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1457820452", "1457820452", "mis_140_b30", "box_GetPlayerGroup_v2_13.Out", "box_GetLocalPlayer_v2_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_151_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_152();
    l0 = self.box_Music_Quest_v2_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|741178552", "741178552", "mis_140_b30", "box_OutputOrder_v2_151.Out", "box_Music_Quest_v2_152.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_151_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_49();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|907652577", "907652577", "mis_140_b30", "box_OutputOrder_v2_151.Out", "box_TaggingModifier_v3_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_160_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_155();
    l0 = self.box_MultipleOR_160;
    l1 = self.box_Delay_v5_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|985323840", "985323840", "mis_140_b30", "box_MultipleOR_160.Out", "box_Delay_v5_155.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_33_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_Gate_v3_33;
    l1 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1621479611", "1621479611", "mis_140_b30", "box_Gate_v3_33.Closed", "box_PlayDialog_v6_10.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_Gate_v3_33;
    l1 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1794866949", "1794866949", "mis_140_b30", "box_Gate_v3_33.Out", "box_PlayDialog_v6_10.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_219();
    l0 = self.box_MultipleOR_63;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1571185544", "1571185544", "mis_140_b30", "box_MultipleOR_63.Out", "box_OutputOrder_v2_219.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_180_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_169();
    l0 = self.box_DestinationReachable_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1834017921", "1834017921", "mis_140_b30", "box_OutputOrder_v2_180.Out", "box_DestinationReachable_169.StartChecking", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartChecking
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_180_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_167();
    l0 = self.box_DestinationReachable_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1219916393", "1219916393", "mis_140_b30", "box_OutputOrder_v2_180.Out", "box_DestinationReachable_167.DisableDestinationCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableDestinationCheck
    l0:Exec(0, params);
end;

function export:f_box_DestinationReachable_169_Trigger_hit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_181();
    l0 = self.box_DestinationReachable_169;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1393023184", "1393023184", "mis_140_b30", "box_DestinationReachable_169.Trigger_hit", "box_OutputOrder_v2_181.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DestinationReachable_169_Unreachable()
    local l0, l1;
    l0 = self.box_DestinationReachable_169;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|453958616", "453958616", "mis_140_b30", "box_DestinationReachable_169.Unreachable", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_ProximityTrigger_v3_211_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_212();
    l0 = self.box_ProximityTrigger_v3_211;
    l1 = self.box_PlayDialog_v6_212;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|46222389", "46222389", "mis_140_b30", "box_ProximityTrigger_v3_211.Enter", "box_PlayDialog_v6_212.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_NarrativeHideVehicles_43_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeGetVehiclesInTrigger_42();
    l0 = self.box_NarrativeHideVehicles_43;
    l1 = self.box_NarrativeGetVehiclesInTrigger_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1522388099", "1522388099", "mis_140_b30", "box_NarrativeHideVehicles_43.Removed", "box_NarrativeGetVehiclesInTrigger_42.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1205464639", "1205464639", "mis_140_b30", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_142();
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_NarrativeSceneSetup_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1835507330", "1835507330", "mis_140_b30", "box_ActivityAcknowledgeGate_2.Reloaded", "box_NarrativeSceneSetup_142.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_16_OnSit()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_16;
    l1 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|593576270", "593576270", "mis_140_b30", "box_VehicleListener_v3_16.OnSit", "box_MultipleOR_60.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_182_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_171();
    l0 = self.box_DestinationReachable_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1941894933", "1941894933", "mis_140_b30", "box_OutputOrder_v2_182.Out", "box_DestinationReachable_171.StartChecking", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartChecking
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_169();
    l0 = self.box_DestinationReachable_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1831970459", "1831970459", "mis_140_b30", "box_OutputOrder_v2_182.Out", "box_DestinationReachable_169.DisableDestinationCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableDestinationCheck
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_174_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_162();
    l0 = self.box_DestinationReachable_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1620044177", "1620044177", "mis_140_b30", "box_OutputOrder_v2_174.Out", "box_DestinationReachable_162.StartChecking", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartChecking
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_174_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_163();
    l0 = self.box_DestinationReachable_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1775067359", "1775067359", "mis_140_b30", "box_OutputOrder_v2_174.Out", "box_DestinationReachable_163.DisableDestinationCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableDestinationCheck
    l0:Exec(0, params);
end;

function export:f_box_DestinationReachable_172_Unreachable()
    local l0, l1;
    l0 = self.box_DestinationReachable_172;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1716569267", "1716569267", "mis_140_b30", "box_DestinationReachable_172.Unreachable", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 12);
end;

function export:f_box_MultipleOR_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_46();
    l0 = self.box_MultipleOR_60;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|250299054", "250299054", "mis_140_b30", "box_MultipleOR_60.Out", "box_TaggingModifier_v3_46.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeGetVehiclesInTrigger_217_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeHideVehicles_108();
    l0 = self.box_NarrativeGetVehiclesInTrigger_217;
    l1 = self.box_NarrativeHideVehicles_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1813850738", "1813850738", "mis_140_b30", "box_NarrativeGetVehiclesInTrigger_217.Enabled", "box_NarrativeHideVehicles_108.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_68_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_ProximityTrigger_v3_68;
    l1 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1792033837", "1792033837", "mis_140_b30", "box_ProximityTrigger_v3_68.Enter", "box_PlayDialog_v6_65.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_28_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_30();
    l0 = self.box_Delay_v5_28;
    l1 = self.box_PlayDialog_v6_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|230499842", "230499842", "mis_140_b30", "box_Delay_v5_28.Stopped", "box_PlayDialog_v6_30.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_30();
    l0 = self.box_Delay_v5_28;
    l1 = self.box_PlayDialog_v6_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|287100179", "287100179", "mis_140_b30", "box_Delay_v5_28.TimeElapsed", "box_PlayDialog_v6_30.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_NarrativeSceneSetup_142_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_143();
    l0 = self.box_NarrativeSceneSetup_142;
    l1 = self.box_NarrativeFade_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1432768203", "1432768203", "mis_140_b30", "box_NarrativeSceneSetup_142.Holstered", "box_NarrativeFade_143.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_104_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_104;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1931125110", "1931125110", "mis_140_b30", "box_HealthListener_v6_104.Downed", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_104_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_104;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|727427392", "727427392", "mis_140_b30", "box_HealthListener_v6_104.Killed", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_92_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_92;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1138960431", "1138960431", "mis_140_b30", "box_Brick_Escort_NPC_To_Position_v3_92.Started", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_92_Success()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_41();
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_92;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1940071048", "1940071048", "mis_140_b30", "box_Brick_Escort_NPC_To_Position_v3_92.Success", "box_VehicleModifier_v2_41.SetExitEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExitEnabled
    l1:Exec(16, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_52_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_52;
    l1 = self.box_OnceOnly_v3_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|467207955", "467207955", "mis_140_b30", "box_Delay_v5_52.TimeElapsed", "box_OnceOnly_v3_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_149_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|780844122", "780844122", "mis_140_b30", "box_OutputOrder_v2_149.Out", "box_OutputOrder_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_146();
    l0 = self.box_PostFx_v3_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|911674505", "911674505", "mis_140_b30", "box_OutputOrder_v2_149.Out", "box_PostFx_v3_146.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_149_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1789003061", "1789003061", "mis_140_b30", "box_OutputOrder_v2_149.Out", "box_OutputOrder_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetVehicleAsLeashAnchor_21();
    l0 = self.box_SetVehicleAsLeashAnchor_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|686531280", "686531280", "mis_140_b30", "box_OutputOrder_v2_149.Out", "box_SetVehicleAsLeashAnchor_21.SetMissionVehicle", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetMissionVehicle
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_149_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_107();
    l0 = self.box_GunsForHireSystemModifier_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1588482588", "1588482588", "mis_140_b30", "box_OutputOrder_v2_149.Out", "box_GunsForHireSystemModifier_107.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_149_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_38();
    l0 = self.box_Delay_v5_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1514849915", "1514849915", "mis_140_b30", "box_OutputOrder_v2_149.Out", "box_Delay_v5_38.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_149_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_37();
    l0 = self.box_VehicleListener_v3_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1688276029", "1688276029", "mis_140_b30", "box_OutputOrder_v2_149.Out", "box_VehicleListener_v3_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_TaggingModifier_v3_49_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_110();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|167723425", "167723425", "mis_140_b30", "box_TaggingModifier_v3_49.Enabled", "box_ActivityRetry_v2_110.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_70_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayRandomDialog_v2_69();
    l0 = self.box_ProximityTrigger_v3_70;
    l1 = self.box_PlayRandomDialog_v2_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|666511392", "666511392", "mis_140_b30", "box_ProximityTrigger_v3_70.Enter", "box_PlayRandomDialog_v2_69.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_178_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_167();
    l0 = self.box_DestinationReachable_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|72688378", "72688378", "mis_140_b30", "box_OutputOrder_v2_178.Out", "box_DestinationReachable_167.StartChecking", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartChecking
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_178_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_165();
    l0 = self.box_DestinationReachable_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|707988465", "707988465", "mis_140_b30", "box_OutputOrder_v2_178.Out", "box_DestinationReachable_165.DisableDestinationCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableDestinationCheck
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_18_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_93();
    l0 = self.box_EntityStatusListener_18;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1371689699", "1371689699", "mis_140_b30", "box_EntityStatusListener_18.Enabled", "box_ActivityObjectiveMarkerModifier_v3_93.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_18_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_145();
    l0 = self.box_EntityStatusListener_18;
    l1 = self.box_NarrativeFade_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1971654081", "1971654081", "mis_140_b30", "box_EntityStatusListener_18.Loaded", "box_NarrativeFade_145.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_18_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_6();
    l0 = self.box_EntityStatusListener_18;
    l1 = self.box_SpawnAI_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|109004325", "109004325", "mis_140_b30", "box_EntityStatusListener_18.Unloaded", "box_SpawnAI_6.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_33();
    l0 = self.box_MultipleOR_32;
    l1 = self.box_Gate_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1277159877", "1277159877", "mis_140_b30", "box_MultipleOR_32.Out", "box_Gate_v3_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_NarrativeFade_143_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_144();
    l0 = self.box_NarrativeFade_143;
    l1 = self.box_Delay_v5_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|864277996", "864277996", "mis_140_b30", "box_NarrativeFade_143.FadedOut", "box_Delay_v5_144.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_VehicleListener_v3_210_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_209();
    l0 = self.box_VehicleListener_v3_210;
    l1 = self.box_PlayDialog_v6_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|536983004", "536983004", "mis_140_b30", "box_VehicleListener_v3_210.OnSit", "box_PlayDialog_v6_209.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_64_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_64_LoadedIdReceived();
    params = self:OnEnter_box_EntityStatusListener_18();
    l0 = self.box_CharacterLoadedIdListener_v2_64;
    l1 = self.box_EntityStatusListener_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1848774418", "1848774418", "mis_140_b30", "box_CharacterLoadedIdListener_v2_64.LoadedIdReceived", "box_EntityStatusListener_18.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_NarrativeGetVehiclesInTrigger_42_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeHideVehicles_43();
    l0 = self.box_NarrativeGetVehiclesInTrigger_42;
    l1 = self.box_NarrativeHideVehicles_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1266995973", "1266995973", "mis_140_b30", "box_NarrativeGetVehiclesInTrigger_42.Enabled", "box_NarrativeHideVehicles_43.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_179_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_168();
    l0 = self.box_DestinationReachable_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1016642420", "1016642420", "mis_140_b30", "box_OutputOrder_v2_179.Out", "box_DestinationReachable_168.StartChecking", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartChecking
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_179_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DestinationReachable_166();
    l0 = self.box_DestinationReachable_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|395687448", "395687448", "mis_140_b30", "box_OutputOrder_v2_179.Out", "box_DestinationReachable_166.DisableDestinationCheck", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableDestinationCheck
    l0:Exec(0, params);
end;

function export:f_box_DestinationReachable_168_Trigger_hit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_180();
    l0 = self.box_DestinationReachable_168;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1606354179", "1606354179", "mis_140_b30", "box_DestinationReachable_168.Trigger_hit", "box_OutputOrder_v2_180.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DestinationReachable_168_Unreachable()
    local l0, l1;
    l0 = self.box_DestinationReachable_168;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1432694871", "1432694871", "mis_140_b30", "box_DestinationReachable_168.Unreachable", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_ProximityTrigger_v3_202_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_203();
    l0 = self.box_ProximityTrigger_v3_202;
    l1 = self.box_PlayDialog_v6_203;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2109387425", "2109387425", "mis_140_b30", "box_ProximityTrigger_v3_202.Enter", "box_PlayDialog_v6_203.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_DestinationReachable_153_Trigger_hit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_174();
    l0 = self.box_DestinationReachable_153;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|342686986", "342686986", "mis_140_b30", "box_DestinationReachable_153.Trigger_hit", "box_OutputOrder_v2_174.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DestinationReachable_153_Unreachable()
    local l0, l1;
    l0 = self.box_DestinationReachable_153;
    l1 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1551104838", "1551104838", "mis_140_b30", "box_DestinationReachable_153.Unreachable", "box_MultipleOR_157.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:OnEnter_box_Simple_Node_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|@Start_Garage_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_205_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_147()
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

function export:OnEnter_box_SpawnAI_220()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109840164621658215",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|76930199");
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
                [0] = self.f_box_OutputOrder_v2_201_Out_0,
                [1] = self.f_box_OutputOrder_v2_201_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|81321762");
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
                [0] = self.f_box_OutputOrder_v2_173_Out_0,
                [1] = self.f_box_OutputOrder_v2_173_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DestinationReachable_171()
    local params;
    params = {
        -- Destination,
        [0] = "2109287078584918967",
        -- NPC,
        [1] = "2107354962689268705",
        -- TriggerID,
        [2] = "2109287063732888495",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_65()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1528161475",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|241451851");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_140_B30_Die_Fail",
            id = "1029005",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_200()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_152()
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
        [6] = "3698971670",
        -- StopEvent,
        [7] = "4025596061",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|328055385");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|330640357");
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
                [0] = self.f_box_OutputOrder_v2_62_Out_0,
                [1] = self.f_box_OutputOrder_v2_62_Out_1,
                [2] = self.f_box_OutputOrder_v2_62_Out_2,
                [3] = self.f_box_OutputOrder_v2_62_Out_3,
                [4] = self.f_box_OutputOrder_v2_62_Out_4,
                [5] = self.f_box_OutputOrder_v2_62_Out_5,
                [6] = self.f_box_OutputOrder_v2_62_Out_6,
                [7] = self.f_box_OutputOrder_v2_62_Out_7,
                [8] = self.f_box_OutputOrder_v2_62_Out_8,
                [9] = self.f_box_OutputOrder_v2_62_Out_9,
                [10] = self.f_box_OutputOrder_v2_62_Out_10,
                [11] = self.f_box_OutputOrder_v2_62_Out_11,
                [12] = self.f_box_OutputOrder_v2_62_Out_12,
                [14] = self.f_box_OutputOrder_v2_62_Out_14,
            },
            count = 15,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|335496470");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TaggingModifier_v3_45_Enabled,
    });
    params = {
        -- Entity,
        [0] = self.Rush_character,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|341811471");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TaggingModifier_v3_50_Enabled,
    });
    params = {
        -- Entity,
        [0] = self.Rush_character,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|366574601");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
                [3] = self.f_box_OutputOrder_v2_19_Out_3,
                [4] = self.f_box_OutputOrder_v2_19_Out_4,
                [5] = self.f_box_OutputOrder_v2_19_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|397458369");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
                [2] = self.f_box_OutputOrder_v2_22_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|409055660");
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
                [0] = self.f_box_OutputOrder_v2_219_Out_0,
                [1] = self.f_box_OutputOrder_v2_219_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__Brick_Escort_PerVehicle_9()
    local params;
    params = {
        -- e_Driver,
        [0] = self.Rush_character,
        -- e_Vehicle,
        [1] = "2107354962689268705",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_90()
    local params;
    params = {
        -- Entity,
        [0] = "2107724181415155032",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|480498733");
    l0:SetConnections({
        -- OnSetExitEnabled,
        [16] = self.f_box_VehicleModifier_v2_41_OnSetExitEnabled,
    });
    params = {
        -- targets,
        [0] = "2107354962689268705",
    };
    return params;
end;

function export:OnEnter_box_DestinationReachable_167()
    local params;
    params = {
        -- Destination,
        [0] = "2109287018686063515",
        -- NPC,
        [1] = "2107354962689268705",
        -- TriggerID,
        [2] = "2109287001241953167",
    };
    return params;
end;

function export:OnEnter_box_DestinationReachable_164()
    local params;
    params = {
        -- Destination,
        [0] = "2109286963545645940",
        -- NPC,
        [1] = "2107354962689268705",
        -- TriggerID,
        [2] = "2109286948137870184",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|507697212");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_8_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_140_B30_OBJ_2",
            id = "1023273",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_DestinationReachable_162()
    local params;
    params = {
        -- Destination,
        [0] = "2109286948142064492",
        -- NPC,
        [1] = "2107354962689268705",
        -- TriggerID,
        [2] = "2109286867464627029",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_148()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_213()
    local params;
    params = {
        -- Vehicle,
        [0] = "2108638840133524125",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_34()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_10()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3632883579",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_145()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_DestinationReachable_166()
    local params;
    params = {
        -- Destination,
        [0] = "2109287001244050323",
        -- NPC,
        [1] = "2107354962689268705",
        -- TriggerID,
        [2] = "2109286986975028103",
    };
    return params;
end;

function export:OnEnter_box_PlayRandomDialog_v2_74()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- maxTime,
        [1] = 5,
        -- minTime,
        [2] = 3,
        -- SoundId,
        [3] = {
            connections = {
                [0] = "2934642293",
                [1] = "1647757919",
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|558674353");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TaggingModifier_v3_46_Disabled,
    });
    params = {
        -- Entity,
        [0] = self.Rush_character,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_54()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|615851686");
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
                [0] = self.f_box_OutputOrder_v2_176_Out_0,
                [1] = self.f_box_OutputOrder_v2_176_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DestinationReachable_163()
    local params;
    params = {
        -- Destination,
        [0] = "2109286745127265086",
        -- NPC,
        [1] = "2107354962689268705",
        -- TriggerID,
        [2] = "2109286312736465072",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|674309855");
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

function export:OnEnter_box_OutputOrder_v2_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|676881125");
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

function export:OnEnter_box_GetLocalPlayer_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|677798434");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_66_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|689020038");
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
                [0] = self.f_box_OutputOrder_v2_111_Out_0,
                [1] = self.f_box_OutputOrder_v2_111_Out_1,
                [2] = self.f_box_OutputOrder_v2_111_Out_2,
                [3] = self.f_box_OutputOrder_v2_111_Out_3,
                [4] = self.f_box_OutputOrder_v2_111_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_38()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_221()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109840138646333505",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_204()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108819855187660155",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_12()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2107628068100126454",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107627904612447987",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_91()
    local params;
    params = {
        -- Entity,
        [0] = "2107724181979288924",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_15()
    local params;
    params = {
        -- Entity,
        [0] = "2107641807998297738",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|731274395");
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

function export:OnEnter_box_VehicleModifier_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|763707881");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2107354962689268705",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_198()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2107628068100126454",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107627904612447987",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_107()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_DestinationReachable_165()
    local params;
    params = {
        -- Destination,
        [0] = "2109286986977125259",
        -- NPC,
        [1] = "2107354962689268705",
        -- TriggerID,
        [2] = "2109286963543548784",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_37()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.Rush_character,
        -- vehicle,
        [4] = "2107354962689268705",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|910975403");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TaggingModifier_v3_47_Enabled,
    });
    params = {
        -- Entity,
        [0] = self.Rush_character,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SetVehicleAsLeashAnchor_23()
    local params;
    params = {
        -- targetVehicleEntity,
        [0] = "2107354954218871553",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|923833496");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_161_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|940815823");
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
                [0] = self.f_box_OutputOrder_v2_185_Out_0,
                [1] = self.f_box_OutputOrder_v2_185_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_144()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MovementListener_v2_159()
    local params;
    params = {
        -- angleThreshold,
        [0] = 0.1,
        -- autoDisable,
        [1] = true,
        -- entityGroup,
        [2] = "2107354962689268705",
        -- movingThreshold,
        [3] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_206()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1660873889",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|974787324");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_140_B30_Bike_Fail",
            id = "1030302",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_196()
    local params;
    params = {
        -- Pawns,
        [0] = "2109494033758824217",
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

function export:OnEnter_box_TaggingModifier_v3_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|997478520");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TaggingModifier_v3_48_Enabled,
    });
    params = {
        -- Entity,
        [0] = self.Rush_character,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_73()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108638656831953451",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1038297693");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
                [2] = self.f_box_OutputOrder_v2_27_Out_2,
                [3] = self.f_box_OutputOrder_v2_27_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1042553420");
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

function export:OnEnter_box_ExitZoneWarningListener_v3_109()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2108997633524635455",
        -- WarningZoneTrigger,
        [3] = "2108997614876759870",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_71()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108638522572282381",
    };
    return params;
end;

function export:OnEnter_box_NpcDestinationCheckListener_184()
    local params;
    params = {
        -- Agent,
        [0] = "2107354962689268705",
        -- AutoDisable,
        [1] = false,
        -- Destination,
        [2] = "2109286302739341117",
        -- DestinationToleranceDistance,
        [3] = 5,
    };
    return params;
end;

function export:OnEnter_box_MovementListener_v2_154()
    local params;
    params = {
        -- angleThreshold,
        [0] = 0.1,
        -- autoDisable,
        [1] = false,
        -- entityGroup,
        [2] = "2107354962689268705",
        -- movingThreshold,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_NarrativeHideVehicles_108()
    local params;
    params = {
        -- Vehicles,
        [0] = self.Vehicle_to_delete,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_5()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2107354962689268705",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_35()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_25()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1164468966");
    l0:SetConnections({
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
        [4] = "2107354962689268705",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_155()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_76()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108638687865608775",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_31()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1227105600");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_208()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4141443082",
    };
    return params;
end;

function export:OnEnter_box_PlayRandomDialog_v2_72()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- maxTime,
        [1] = 10,
        -- minTime,
        [2] = 5,
        -- SoundId,
        [3] = {
            connections = {
                [0] = "3333809696",
                [1] = "2932896562",
                [2] = "73240767",
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_26()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "698951700",
    };
    return params;
end;

function export:OnEnter_box_DestinationReachable_170()
    local params;
    params = {
        -- Destination,
        [0] = "2109287063734985651",
        -- NPC,
        [1] = "2107354962689268705",
        -- TriggerID,
        [2] = "2109287050134954919",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_146()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_209()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1734737661",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_30()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3523879888",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1314250144");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_140_B30_block_fail",
            id = "1031367",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_36()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_207()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2108208606965945068",
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_95()
    local params;
    params = {
        -- Vehicle,
        [0] = "2107354962689268705",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1379079264");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1384218411");
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

function export:OnEnter_box_Gate_v3_33()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1414861884");
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

function export:OnEnter_box_DestinationReachable_169()
    local params;
    params = {
        -- Destination,
        [0] = "2109287050139149227",
        -- NPC,
        [1] = "2107354962689268705",
        -- TriggerID,
        [2] = "2109287036792873887",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_211()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109287078589113275",
    };
    return params;
end;

function export:OnEnter_box_NarrativeHideVehicles_43()
    local params;
    params = {
        -- Vehicles,
        [0] = self.Vehicle_to_delete,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1465292007");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_140_B30_block_fail",
            id = "1031367",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1479657272");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2108734092097925961",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_140_B30_OBJ_2",
            id = "1023273",
        },
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_150()
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
        [6] = "3698971670",
        -- StopEvent,
        [7] = "4025596061",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1499041862");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2109980513509863710",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_16()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = "2107365778958338244",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1522738896");
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

function export:OnEnter_box_SetVehicleAsLeashAnchor_21()
    local params;
    params = {
        -- targetVehicleEntity,
        [0] = "2107354962689268705",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1552260031");
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

function export:OnEnter_box_DestinationReachable_172()
    local params;
    params = {
        -- Destination,
        [0] = "2109287088298927039",
        -- NPC,
        [1] = "2107354962689268705",
        -- TriggerID,
        [2] = "2109287078589113275",
    };
    return params;
end;

function export:OnEnter_box_NarrativeGetVehiclesInTrigger_217()
    local params;
    params = {
        -- Trigger,
        [0] = "2108983695565147961",
        -- Vehicles,
        [1] = self.Vehicle_to_delete,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_68()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108637491603974593",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_142()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_104()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.Rush_character,
    };
    return params;
end;

function export:OnEnter_box_Brick_Escort_NPC_To_Position_v3_92()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bRequiresObjective,
        [1] = true,
        -- eDestinationTrigger,
        [3] = "2108734148226102362",
        -- eNPCMobileMarker,
        [4] = self.Rush_character,
        -- eNPCToEscort,
        [5] = self.Rush_character,
        -- fWarnDistance,
        [6] = 0,
        -- Objective,
        [7] = {
            section = "Objectives",
            item = "MIS_140_B30_OBJ",
            id = "961276",
        },
        -- WarningMsg,
        [8] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_FailWarning",
            id = "432251",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_52()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1738643804");
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
                [0] = self.f_box_OutputOrder_v2_149_Out_0,
                [1] = self.f_box_OutputOrder_v2_149_Out_1,
                [2] = self.f_box_OutputOrder_v2_149_Out_2,
                [3] = self.f_box_OutputOrder_v2_149_Out_3,
                [4] = self.f_box_OutputOrder_v2_149_Out_4,
                [5] = self.f_box_OutputOrder_v2_149_Out_5,
                [6] = self.f_box_OutputOrder_v2_149_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1756251383");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TaggingModifier_v3_49_Enabled,
    });
    params = {
        -- Entity,
        [0] = self.Rush_character,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_70()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108638360208698676",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1801015988");
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
                [1] = self.f_box_OutputOrder_v2_178_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107354962689268705",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_6()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107354954218871553",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_143()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_210()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.Rush_character,
    };
    return params;
end;

function export:OnEnter_box_PlayRandomDialog_v2_75()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- maxTime,
        [1] = 10,
        -- minTime,
        [2] = 5,
        -- SoundId,
        [3] = {
            connections = {
                [0] = "930797807",
                [1] = "3996426836",
                [2] = "1660873889",
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_214()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "462729459",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_64()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870620083",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_212()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3654425411",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_199()
    local params;
    params = {
        -- Pawns,
        [0] = "2109494033758824217",
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

function export:OnEnter_box_NarrativeGetVehiclesInTrigger_42()
    local params;
    params = {
        -- Trigger,
        [0] = "2110160648408152083",
        -- Vehicles,
        [1] = self.Vehicle_to_delete,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|1974442102");
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
                [0] = self.f_box_OutputOrder_v2_179_Out_0,
                [1] = self.f_box_OutputOrder_v2_179_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DestinationReachable_168()
    local params;
    params = {
        -- Destination,
        [0] = "2109287036794971043",
        -- NPC,
        [1] = "2107354962689268705",
        -- TriggerID,
        [2] = "2109287018683966359",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2024083084");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2107766901837943330",
        -- Entity,
        [2] = self.Rush_character,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_202()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109286312736465072",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B30.domino|@mis_140_b30|2058734484");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayRandomDialog_v2_69()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- maxTime,
        [1] = 10,
        -- minTime,
        [2] = 5,
        -- SoundId,
        [3] = {
            connections = {
                [0] = "930797807",
                [1] = "3996426836",
                [2] = "1660873889",
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_DestinationReachable_153()
    local params;
    params = {
        -- Destination,
        [0] = "2109286867462529873",
        -- NPC,
        [1] = "2107354962689268705",
        -- TriggerID,
        [2] = "2109286745125167930",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_203()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3434369752",
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_66_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.PlayerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_64_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_64;
    self.Rush_character = l0:GetDataOutValue(0);
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
