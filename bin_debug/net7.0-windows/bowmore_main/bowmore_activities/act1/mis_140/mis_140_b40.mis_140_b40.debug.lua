LUAC�n -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act1/mis_140/mis_140_b40.domino
-- User graph: mis_140_b40
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Escort_NPC_To_Position.Brick_Escort_NPC_To_Position_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/TaggingModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/UsableEntityModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2546213877.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2835871323.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3153881832.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3698971670.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4025596061.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2946554717.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/MIS_140/MIS_140_B40.mis_140_b40.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/SoundMixing.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "SoundMixing",
                type = "SoundMixing",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/UsableEntityModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetUnusable",
            },
            [1] = {
                name = "SetUsable",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetUnusable",
                delayed = false,
            },
            [1] = {
                name = "OnSetUsable",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "mis_140_b40";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40";
    self.Rush_character = nil;
    self.Player = nil;
    self.Activity_Reloaded = false;
    self.box_PlayDialog_v6_27 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|84280223");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_27_Finished,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|88063644");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|132569396");
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
        [0] = self.f_box_MultipleOR_46_Out,
    });
    self.box_MultipleAND_v2_22 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|172686865");
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
        [0] = self.f_box_MultipleAND_v2_22_Out,
    });
    self.box_HealthListener_v6_66 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|231950725");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_66_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_66_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_66_Healed,
    });
    self.box_GunsForHireSystemModifier_70 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|290554847");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GunsForHireSystemModifier_70_Enabled,
    });
    self.box_OnceOnly_v3_35 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|369724655");
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
                [0] = self.f_box_OnceOnly_v3_35_Out_0,
                [1] = self.f_box_OnceOnly_v3_35_Out_1,
            },
            count = 2,
        },
    });
    self.box_NarrativeSceneSetup_33 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|376948556");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_33_Holstered,
    });
    self.box_Brick_Escort_NPC_To_Position_v3_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Escort_NPC_To_Position.Brick_Escort_NPC_To_Position_v3.debug.lua");
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Escort_NPC_To_Position_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|378061985");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Escort_NPC_To_Position_v3_14_Fail,
        -- Started,
        [1] = self.f_box_Brick_Escort_NPC_To_Position_v3_14_Started,
        -- Success,
        [2] = self.f_box_Brick_Escort_NPC_To_Position_v3_14_Success,
    });
    self.box_MultipleOR_65 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|501426058");
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
        [0] = self.f_box_MultipleOR_65_Out,
    });
    self.box_Delay_v5_64 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|563900907");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_64_TimeElapsed,
    });
    self.box_CharacterLoadedIdListener_v2_4 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|564352334");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_4_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_4_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_4_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_4_LoadedIdReceived,
    });
    self.box_EntityStatusListener_61 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|598534797");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_61_Loaded,
    });
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|652384451");
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
    self.box_EntityStatusListener_62 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|681994438");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_62_Loaded,
    });
    self.box_GunsForHireSystemModifier_69 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|851628694");
    l0:SetConnections({
    });
    self.box_ExitZoneWarningListener_v3_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|876584285");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_11_FailingZoneEntered,
    });
    self.box_Music_Quest_v2_50 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|968846167");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_38 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1017549661");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_v2_6 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1037893254");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_6_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_6_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_6_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_6_LoadedIdReceived,
    });
    self.box_OnceOnly_v3_26 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1073373184");
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
                [0] = self.f_box_OnceOnly_v3_26_Out_0,
            },
            count = 2,
        },
    });
    self.box_PhoneCallExclusivityModifier_72 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1109163090");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_72_Enabled,
    });
    self.box_Reach_GoTo_v3_75 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1126102452");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_75_Success,
    });
    self.box_PlayDialog_v6_28 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1176464024");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_28_Finished,
    });
    self.box_VehicleListener_v3_79 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1259468543");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_79_OnSit,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_79_OnStandUp,
    });
    self.box_Delay_v5_37 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1267017567");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_37_TimeElapsed,
    });
    self.box_Delay_v5_48 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1291877517");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_48_TimeElapsed,
    });
    self.box_EntityStatusListener_53 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1321818987");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_53_Loaded,
    });
    self.box_Music_Quest_v2_51 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1387304615");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_29 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1413439904");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_29_Finished,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_29_Stopped,
    });
    self.box_PlayDialog_v6_10 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1422301232");
    l0:SetConnections({
    });
    self.box_Delay_v5_83 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1429785723");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_83_TimeElapsed,
    });
    self.box_NarrativeFade_49 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1439351534");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_49_FadedOut,
    });
    self.box_Music_Quest_v2_74 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1477688856");
    l0:SetConnections({
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1533784271");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_Brick_Escort_NPC_To_Position_v3_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Escort_NPC_To_Position.Brick_Escort_NPC_To_Position_v3.debug.lua");
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Escort_NPC_To_Position_v3_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1581085338");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Escort_NPC_To_Position_v3_17_Fail,
        -- Success,
        [2] = self.f_box_Brick_Escort_NPC_To_Position_v3_17_Success,
    });
    self.box_NarrativeFade_25 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1593178500");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_63 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1609612189");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_63_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_63_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_63_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_63_Healed,
    });
    self.box_MultipleOR_40 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1621909032");
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
        [0] = self.f_box_MultipleOR_40_Out,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1654584538");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1659580552");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1758673350");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_21_Spawned,
    });
    self.box_SpawnAI_20 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1779411226");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_20_Spawned,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1807347858");
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
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1822078890");
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
        [0] = self.f_box_MultipleOR_82_Out,
    });
    self.box_ProximityTrigger_v3_31 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1846901262");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_31_Enter,
    });
    self.box_Brick_Escort_NPC_To_Position_v3_32 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Escort_NPC_To_Position.Brick_Escort_NPC_To_Position_v3.debug.lua");
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Escort_NPC_To_Position_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1849878599");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Escort_NPC_To_Position_v3_32_Fail,
        -- Success,
        [2] = self.f_box_Brick_Escort_NPC_To_Position_v3_32_Success,
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1894195488");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_HealthListener_v6_68 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1948620128");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_68_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_68_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_68_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_68_Healed,
    });
    self.box_PhoneCallExclusivityModifier_73 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1973971011");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhoneCallExclusivityModifier_73_Disabled,
    });
    self.box_OnceOnly_v3_47 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|2026147620");
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
                [0] = self.f_box_OnceOnly_v3_47_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_67 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|2141293833");
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
        [0] = self.f_box_MultipleOR_67_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1552127915", "1552127915", "mis_140_b40", "In", "box_ActivityAcknowledgeGate_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_41_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1572944953", "1572944953", "mis_140_b40", "box_Simple_Node_41.Out", "box_MultipleOR_40.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_27_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_63();
    l0 = self.box_PlayDialog_v6_27;
    l1 = self.box_HealthListener_v6_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|981585767", "981585767", "mis_140_b40", "box_PlayDialog_v6_27.Finished", "box_HealthListener_v6_63.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_45();
    l0 = self.box_ActivityInitialized_1;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|74494522", "74494522", "mis_140_b40", "box_ActivityInitialized_1.Out", "box_GetPlayerGroup_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_38();
    l0 = self.box_MultipleOR_46;
    l1 = self.box_Music_Quest_v2_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|197581012", "197581012", "mis_140_b40", "box_MultipleOR_46.Out", "box_Music_Quest_v2_38.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_UsableEntityModifier_v2_60_OnSetUsable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UsableEntityModifier_v2_58();
    l0 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1691084055", "1691084055", "mis_140_b40", "box_UsableEntityModifier_v2_60.OnSetUsable", "box_UsableEntityModifier_v2_58.SetUsable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUsable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_25();
    l0 = self.box_MultipleAND_v2_22;
    l1 = self.box_NarrativeFade_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|2001084655", "2001084655", "mis_140_b40", "box_MultipleAND_v2_22.Out", "box_NarrativeFade_25.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_66_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_29();
    l0 = self.box_HealthListener_v6_66;
    l1 = self.box_PlayDialog_v6_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|665396858", "665396858", "mis_140_b40", "box_HealthListener_v6_66.Downed", "box_PlayDialog_v6_29.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_66_Enabled()
    local l0, l1;
    l0 = self.box_HealthListener_v6_66;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1470706999", "1470706999", "mis_140_b40", "box_HealthListener_v6_66.Enabled", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_66_Healed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_66;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|469999431", "469999431", "mis_140_b40", "box_HealthListener_v6_66.Healed", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GunsForHireSystemModifier_70_Enabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_70;
    l1 = self.box_PhoneCallExclusivityModifier_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1018574486", "1018574486", "mis_140_b40", "box_GunsForHireSystemModifier_70.Enabled", "box_PhoneCallExclusivityModifier_73.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UsableEntityModifier_v2_57();
    l0 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|2107668822", "2107668822", "mis_140_b40", "box_OutputOrder_v2_59.Out", "box_UsableEntityModifier_v2_57.SetUsable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUsable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_70();
    l0 = self.box_GunsForHireSystemModifier_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1131438191", "1131438191", "mis_140_b40", "box_OutputOrder_v2_59.Out", "box_GunsForHireSystemModifier_70.EnableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- EnableGFHSystem
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_59_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_71();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1265649195", "1265649195", "mis_140_b40", "box_OutputOrder_v2_59.Out", "box_SoundMixing_71.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1811752056", "1811752056", "mis_140_b40", "box_OutputOrder_v2_52.Out", "box_MultipleOR_40.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_81();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|893145284", "893145284", "mis_140_b40", "box_OutputOrder_v2_52.Out", "box_TaggingModifier_v3_81.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_35_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_33();
    l0 = self.box_OnceOnly_v3_35;
    l1 = self.box_NarrativeSceneSetup_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|789543708", "789543708", "mis_140_b40", "box_OnceOnly_v3_35.Out", "box_NarrativeSceneSetup_33.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_35_Out_1()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_74();
    l0 = self.box_OnceOnly_v3_35;
    l1 = self.box_Music_Quest_v2_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|975131212", "975131212", "mis_140_b40", "box_OnceOnly_v3_35.Out", "box_Music_Quest_v2_74.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_NarrativeSceneSetup_33_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_49();
    l0 = self.box_NarrativeSceneSetup_33;
    l1 = self.box_NarrativeFade_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|700654876", "700654876", "mis_140_b40", "box_NarrativeSceneSetup_33.Holstered", "box_NarrativeFade_49.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_14_Fail()
    local l0, l1;
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_14;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1590294047", "1590294047", "mis_140_b40", "box_Brick_Escort_NPC_To_Position_v3_14.Fail", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_14_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_44();
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_14;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1170179808", "1170179808", "mis_140_b40", "box_Brick_Escort_NPC_To_Position_v3_14.Started", "box_Compare_Boolean_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_14_Success()
    local l0, l1;
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_14;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1045637110", "1045637110", "mis_140_b40", "box_Brick_Escort_NPC_To_Position_v3_14.Success", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_76_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|345948636", "345948636", "mis_140_b40", "box_EndActivityObjective_v2_76.Out", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|62521469", "62521469", "mis_140_b40", "box_OutputOrder_v2_9.Out", "box_OnceOnly_v3_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_11();
    l0 = self.box_ExitZoneWarningListener_v3_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|492014194", "492014194", "mis_140_b40", "box_OutputOrder_v2_9.Out", "box_ExitZoneWarningListener_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_62();
    l0 = self.box_EntityStatusListener_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|457655852", "457655852", "mis_140_b40", "box_OutputOrder_v2_9.Out", "box_EntityStatusListener_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_61();
    l0 = self.box_EntityStatusListener_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|860433755", "860433755", "mis_140_b40", "box_OutputOrder_v2_9.Out", "box_EntityStatusListener_61.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_53();
    l0 = self.box_EntityStatusListener_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|914372261", "914372261", "mis_140_b40", "box_OutputOrder_v2_9.Out", "box_EntityStatusListener_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_69();
    l0 = self.box_GunsForHireSystemModifier_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1798440657", "1798440657", "mis_140_b40", "box_OutputOrder_v2_9.Out", "box_GunsForHireSystemModifier_69.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1381898322", "1381898322", "mis_140_b40", "box_SetContextualStrategy_24.Out", "box_OnceOnly_v3_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_65_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_28();
    l0 = self.box_MultipleOR_65;
    l1 = self.box_PlayDialog_v6_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1468324594", "1468324594", "mis_140_b40", "box_MultipleOR_65.Out", "box_PlayDialog_v6_28.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1718798960", "1718798960", "mis_140_b40", "box_OutputOrder_v2_16.Out", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_43();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|613586848", "613586848", "mis_140_b40", "box_OutputOrder_v2_16.Out", "box_SetBoolean_v2_43.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|206520774", "206520774", "mis_140_b40", "box_OutputOrder_v2_16.Out", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_64_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_66();
    l0 = self.box_Delay_v5_64;
    l1 = self.box_HealthListener_v6_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|845035920", "845035920", "mis_140_b40", "box_Delay_v5_64.TimeElapsed", "box_HealthListener_v6_66.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_4_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleSeatModifier_v2_13();
    l0 = self.box_CharacterLoadedIdListener_v2_4;
    l1 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|633070973", "633070973", "mis_140_b40", "box_CharacterLoadedIdListener_v2_4.Enabled", "box_VehicleSeatModifier_v2_13.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_4_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_4_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_CharacterLoadedIdListener_v2_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|850550090", "850550090", "mis_140_b40", "box_CharacterLoadedIdListener_v2_4.LoadedIdReceived", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_61_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UsableEntityModifier_v2_55();
    l0 = self.box_EntityStatusListener_61;
    l1 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1478472142", "1478472142", "mis_140_b40", "box_EntityStatusListener_61.Loaded", "box_UsableEntityModifier_v2_55.SetUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_31();
    l0 = self.box_MultipleOR_42;
    l1 = self.box_ProximityTrigger_v3_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1618985982", "1618985982", "mis_140_b40", "box_MultipleOR_42.Out", "box_ProximityTrigger_v3_31.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_44_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|413249645", "413249645", "mis_140_b40", "box_Compare_Boolean_44.A_is_False", "box_Delay_v5_37.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Boolean_44_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|444303185", "444303185", "mis_140_b40", "box_Compare_Boolean_44.A_is_True", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_62_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UsableEntityModifier_v2_54();
    l0 = self.box_EntityStatusListener_62;
    l1 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1347087287", "1347087287", "mis_140_b40", "box_EntityStatusListener_62.Loaded", "box_UsableEntityModifier_v2_54.SetUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Escort_NPC_To_Position_v3_14();
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1517290954", "1517290954", "mis_140_b40", "box_OutputOrder_v2_18.Out", "box_Brick_Escort_NPC_To_Position_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Escort_NPC_To_Position_v3_32();
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1055124159", "1055124159", "mis_140_b40", "box_OutputOrder_v2_18.Out", "box_Brick_Escort_NPC_To_Position_v3_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Escort_NPC_To_Position_v3_17();
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|76387904", "76387904", "mis_140_b40", "box_OutputOrder_v2_18.Out", "box_Brick_Escort_NPC_To_Position_v3_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_75();
    l0 = self.box_Reach_GoTo_v3_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|56541730", "56541730", "mis_140_b40", "box_OutputOrder_v2_18.Out", "box_Reach_GoTo_v3_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1906591992", "1906591992", "mis_140_b40", "box_OutputOrder_v2_18.Out", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_18_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_79();
    l0 = self.box_VehicleListener_v3_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|857078541", "857078541", "mis_140_b40", "box_OutputOrder_v2_18.Out", "box_VehicleListener_v3_79.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ExitZoneWarningListener_v3_11_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_ExitZoneWarningListener_v3_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1269938842", "1269938842", "mis_140_b40", "box_ExitZoneWarningListener_v3_11.FailingZoneEntered", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_81_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_30();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|722290440", "722290440", "mis_140_b40", "box_TaggingModifier_v3_81.Enabled", "box_ActivityRetry_v2_30.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_6_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_6_LoadedIdReceived();
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_CharacterLoadedIdListener_v2_6;
    l1 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|877648917", "877648917", "mis_140_b40", "box_CharacterLoadedIdListener_v2_6.LoadedIdReceived", "box_Delay_v5_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_26_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_24();
    l0 = self.box_OnceOnly_v3_26;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|2094997054", "2094997054", "mis_140_b40", "box_OnceOnly_v3_26.Out", "box_SetContextualStrategy_24.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_72_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_4();
    l0 = self.box_PhoneCallExclusivityModifier_72;
    l1 = self.box_CharacterLoadedIdListener_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1036691168", "1036691168", "mis_140_b40", "box_PhoneCallExclusivityModifier_72.Enabled", "box_CharacterLoadedIdListener_v2_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v3_75_Success()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_76();
    l0 = self.box_Reach_GoTo_v3_75;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|164938049", "164938049", "mis_140_b40", "box_Reach_GoTo_v3_75.Success", "box_EndActivityObjective_v2_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_28_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_68();
    l0 = self.box_PlayDialog_v6_28;
    l1 = self.box_HealthListener_v6_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|130117683", "130117683", "mis_140_b40", "box_PlayDialog_v6_28.Finished", "box_HealthListener_v6_68.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_79_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_77();
    l0 = self.box_VehicleListener_v3_79;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|89121883", "89121883", "mis_140_b40", "box_VehicleListener_v3_79.OnSit", "box_TaggingModifier_v3_77.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_79_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_77();
    l0 = self.box_VehicleListener_v3_79;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1559483636", "1559483636", "mis_140_b40", "box_VehicleListener_v3_79.OnStandUp", "box_TaggingModifier_v3_77.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_37_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_37;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|383273746", "383273746", "mis_140_b40", "box_Delay_v5_37.TimeElapsed", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_48_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_78();
    l0 = self.box_Delay_v5_48;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|584853517", "584853517", "mis_140_b40", "box_Delay_v5_48.TimeElapsed", "box_TaggingModifier_v3_78.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_53_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UsableEntityModifier_v2_56();
    l0 = self.box_EntityStatusListener_53;
    l1 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1672211952", "1672211952", "mis_140_b40", "box_EntityStatusListener_53.Loaded", "box_UsableEntityModifier_v2_56.SetUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|2095112011", "2095112011", "mis_140_b40", "box_OutputOrder_v2_23.Out", "box_SpawnAI_21.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_20();
    l0 = self.box_SpawnAI_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|744661444", "744661444", "mis_140_b40", "box_OutputOrder_v2_23.Out", "box_SpawnAI_20.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_13_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_7();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|520222606", "520222606", "mis_140_b40", "box_VehicleSeatModifier_v2_13.Unlocked", "box_VehicleSeatModifier_v2_7.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_29_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_66();
    l0 = self.box_PlayDialog_v6_29;
    l1 = self.box_HealthListener_v6_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|623810363", "623810363", "mis_140_b40", "box_PlayDialog_v6_29.Finished", "box_HealthListener_v6_66.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_29_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_29();
    l0 = self.box_PlayDialog_v6_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|244793076", "244793076", "mis_140_b40", "box_PlayDialog_v6_29.Stopped", "box_PlayDialog_v6_29.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_43_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_43_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_6();
    l0 = self.box_CharacterLoadedIdListener_v2_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|838548311", "838548311", "mis_140_b40", "box_SetBoolean_v2_43.Out", "box_CharacterLoadedIdListener_v2_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_83_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_68();
    l0 = self.box_Delay_v5_83;
    l1 = self.box_HealthListener_v6_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|535250524", "535250524", "mis_140_b40", "box_Delay_v5_83.TimeElapsed", "box_HealthListener_v6_68.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_NarrativeFade_49_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = self.box_NarrativeFade_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1628764629", "1628764629", "mis_140_b40", "box_NarrativeFade_49.FadedOut", "box_OutputOrder_v2_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_78_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|2060360271", "2060360271", "mis_140_b40", "box_TaggingModifier_v3_78.Enabled", "box_ActivityEnd_19.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = self.box_MultipleOR_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|746587496", "746587496", "mis_140_b40", "box_MultipleOR_36.Out", "box_OutputOrder_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_17_Fail()
    local l0, l1;
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_17;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|424572689", "424572689", "mis_140_b40", "box_Brick_Escort_NPC_To_Position_v3_17.Fail", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_17_Success()
    local l0, l1;
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_17;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|397168060", "397168060", "mis_140_b40", "box_Brick_Escort_NPC_To_Position_v3_17.Success", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_HealthListener_v6_63_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_83();
    l0 = self.box_HealthListener_v6_63;
    l1 = self.box_Delay_v5_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1558599308", "1558599308", "mis_140_b40", "box_HealthListener_v6_63.Disabled", "box_Delay_v5_83.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_63_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_27();
    l0 = self.box_HealthListener_v6_63;
    l1 = self.box_PlayDialog_v6_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1741996728", "1741996728", "mis_140_b40", "box_HealthListener_v6_63.Downed", "box_PlayDialog_v6_27.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_63_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_27();
    l0 = self.box_HealthListener_v6_63;
    l1 = self.box_PlayDialog_v6_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1101969894", "1101969894", "mis_140_b40", "box_HealthListener_v6_63.Enabled", "box_PlayDialog_v6_27.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_63_Healed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_63;
    l1 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1596014019", "1596014019", "mis_140_b40", "box_HealthListener_v6_63.Healed", "box_MultipleOR_67.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_51();
    l0 = self.box_MultipleOR_40;
    l1 = self.box_Music_Quest_v2_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|2100259346", "2100259346", "mis_140_b40", "box_MultipleOR_40.Out", "box_Music_Quest_v2_51.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1346549332", "1346549332", "mis_140_b40", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1545371453", "1545371453", "mis_140_b40", "box_ActivityAcknowledgeGate_3.Reloaded", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_15();
    l0 = self.box_Delay_v5_8;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1320312797", "1320312797", "mis_140_b40", "box_Delay_v5_8.TimeElapsed", "box_SetContextualStrategy_15.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UsableEntityModifier_v2_57_OnSetUsable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UsableEntityModifier_v2_60();
    l0 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|283529560", "283529560", "mis_140_b40", "box_UsableEntityModifier_v2_57.OnSetUsable", "box_UsableEntityModifier_v2_60.SetUsable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUsable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_21_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_22();
    l0 = self.box_SpawnAI_21;
    l1 = self.box_MultipleAND_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1660090866", "1660090866", "mis_140_b40", "box_SpawnAI_21.Spawned", "box_MultipleAND_v2_22.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_41();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|124842828", "124842828", "mis_140_b40", "box_OutputOrder_v2_39.Out", "box_Simple_Node_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_80();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|918146756", "918146756", "mis_140_b40", "box_OutputOrder_v2_39.Out", "box_TaggingModifier_v3_80.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_20_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_22();
    l0 = self.box_SpawnAI_20;
    l1 = self.box_MultipleAND_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|84252797", "84252797", "mis_140_b40", "box_SpawnAI_20.Spawned", "box_MultipleAND_v2_22.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|295423210", "295423210", "mis_140_b40", "box_MultipleOR_2.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_29();
    l0 = self.box_MultipleOR_82;
    l1 = self.box_PlayDialog_v6_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|988703963", "988703963", "mis_140_b40", "box_MultipleOR_82.Out", "box_PlayDialog_v6_29.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_31_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_31;
    l1 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1022222651", "1022222651", "mis_140_b40", "box_ProximityTrigger_v3_31.Enter", "box_MultipleOR_67.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_32_Fail()
    local l0, l1;
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_32;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1642284160", "1642284160", "mis_140_b40", "box_Brick_Escort_NPC_To_Position_v3_32.Fail", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Escort_NPC_To_Position_v3_32_Success()
    local l0, l1;
    l0 = self.box_Brick_Escort_NPC_To_Position_v3_32;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1607788598", "1607788598", "mis_140_b40", "box_Brick_Escort_NPC_To_Position_v3_32.Success", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_45_Out()
    local l0;
    self:OnExit_box_GetPlayerGroup_v2_45_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|48292710", "48292710", "mis_140_b40", "box_GetPlayerGroup_v2_45.Out", "box_PhoneCallExclusivityModifier_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_MultipleOR_34_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_34;
    l1 = self.box_OnceOnly_v3_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1927029308", "1927029308", "mis_140_b40", "box_MultipleOR_34.Out", "box_OnceOnly_v3_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_68_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_64();
    l0 = self.box_HealthListener_v6_68;
    l1 = self.box_Delay_v5_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1299310396", "1299310396", "mis_140_b40", "box_HealthListener_v6_68.Disabled", "box_Delay_v5_64.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_68_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_28();
    l0 = self.box_HealthListener_v6_68;
    l1 = self.box_PlayDialog_v6_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1995920992", "1995920992", "mis_140_b40", "box_HealthListener_v6_68.Downed", "box_PlayDialog_v6_28.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_68_Enabled()
    local l0, l1;
    l0 = self.box_HealthListener_v6_68;
    l1 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1271953986", "1271953986", "mis_140_b40", "box_HealthListener_v6_68.Enabled", "box_MultipleOR_65.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_68_Healed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_68;
    l1 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1934852628", "1934852628", "mis_140_b40", "box_HealthListener_v6_68.Healed", "box_MultipleOR_65.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PhoneCallExclusivityModifier_73_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_48();
    l0 = self.box_PhoneCallExclusivityModifier_73;
    l1 = self.box_Delay_v5_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|2074757090", "2074757090", "mis_140_b40", "box_PhoneCallExclusivityModifier_73.Disabled", "box_Delay_v5_48.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_22();
    l0 = self.box_MultipleAND_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1074431535", "1074431535", "mis_140_b40", "box_SetContextualStrategy_15.Out", "box_MultipleAND_v2_22.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OnceOnly_v3_47_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_OnceOnly_v3_47;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1728882348", "1728882348", "mis_140_b40", "box_OnceOnly_v3_47.Out", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_80_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1376772782", "1376772782", "mis_140_b40", "box_TaggingModifier_v3_80.Enabled", "box_ActivityRetry_v2_5.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1453714604", "1453714604", "mis_140_b40", "box_OutputOrder_v2_12.Out", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|302935657", "302935657", "mis_140_b40", "box_OutputOrder_v2_12.Out", "box_PlayDialog_v6_10.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_50();
    l0 = self.box_Music_Quest_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|916591835", "916591835", "mis_140_b40", "box_OutputOrder_v2_12.Out", "box_Music_Quest_v2_50.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_67_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_63();
    l0 = self.box_MultipleOR_67;
    l1 = self.box_HealthListener_v6_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|43216020", "43216020", "mis_140_b40", "box_MultipleOR_67.Out", "box_HealthListener_v6_63.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|@Escort_Failed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_41_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_27()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- RelevancyTime,
        [1] = 9,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3153881832",
    };
    return params;
end;

function export:OnEnter_box_UsableEntityModifier_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UsableEntityModifier_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|135800227");
    l0:SetConnections({
        -- OnSetUsable,
        [1] = self.f_box_UsableEntityModifier_v2_60_OnSetUsable,
    });
    params = {
        -- Entity,
        [0] = "2109399250887522802",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_22()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_66()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.Rush_character,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_70()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|311557066");
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
                [0] = self.f_box_OutputOrder_v2_59_Out_0,
                [1] = self.f_box_OutputOrder_v2_59_Out_1,
                [2] = self.f_box_OutputOrder_v2_59_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|352075966");
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
                [0] = self.f_box_OutputOrder_v2_52_Out_0,
                [1] = self.f_box_OutputOrder_v2_52_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_33()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Escort_NPC_To_Position_v3_14()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bRequiresObjective,
        [1] = true,
        -- eDestinationMarker,
        [2] = "2107756066778386329",
        -- eDestinationTrigger,
        [3] = "2108596560441922265",
        -- eNPCMobileMarker,
        [4] = "2108596611669054179",
        -- eNPCToEscort,
        [5] = self.Rush_character,
        -- fWarnDistance,
        [6] = 100,
        -- Objective,
        [7] = {
            section = "Objectives",
            item = "MIS_140_B40_OBJ_2",
            id = "1023198",
        },
        -- WarningMsg,
        [8] = {
            section = "Objectives",
            item = "MIS_140_B40_WarningRush",
            id = "1033193",
        },
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|394419175");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_76_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_140_B40_OBJ_2",
            id = "1023198",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|413893360");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
                [3] = self.f_box_OutputOrder_v2_9_Out_3,
                [4] = self.f_box_OutputOrder_v2_9_Out_4,
                [5] = self.f_box_OutputOrder_v2_9_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|472002533");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_24_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108596747252028163",
        -- Group,
        [1] = self.Rush_character,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|527654578");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
            },
            count = 3,
        },
    });
    params = {
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

function export:OnEnter_box_CharacterLoadedIdListener_v2_4()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870620083",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_61()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109399250887522802",
    };
    return params;
end;

function export:OnEnter_box_UsableEntityModifier_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UsableEntityModifier_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|615835719");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2109399250887522802",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|624123976");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|661057298");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_44_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_44_A_is_True,
    });
    params = {
        -- A,
        [0] = self.Activity_Reloaded,
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
        [2] = "2109399390610263269",
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|710420527");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_MuteAll_Except_Cin_Bink",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|746763026");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
                [3] = self.f_box_OutputOrder_v2_18_Out_3,
                [4] = self.f_box_OutputOrder_v2_18_Out_4,
                [5] = self.f_box_OutputOrder_v2_18_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_69()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_11()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2108638218705455980",
        -- WarningZoneTrigger,
        [3] = "2108638173295823723",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|904548455");
    l0:SetConnections({
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = false,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 2,
        -- vehicleEntity,
        [4] = "2107354962689268705",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|909075474");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_140_B30_Esc_Fail",
            id = "1018883",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_50()
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
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1017196965");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TaggingModifier_v3_81_Enabled,
    });
    params = {
        -- Entity,
        [0] = self.Rush_character,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_38()
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

function export:OnEnter_box_CharacterLoadedIdListener_v2_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870620083",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_75()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresAllPlayer,
        [2] = false,
        -- bRequiresObjective,
        [3] = false,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eTrigger,
        [8] = "2110148507001190153",
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

function export:OnEnter_box_PlayDialog_v6_28()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- RelevancyTime,
        [1] = 9,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2546213877",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_79()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = self.Rush_character,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_37()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_48()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_53()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109399357460581595",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1324584083");
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

function export:OnEnter_box_UsableEntityModifier_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UsableEntityModifier_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1373272851");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2109399357460581595",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_51()
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

function export:OnEnter_box_VehicleSeatModifier_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1411718688");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_13_Unlocked,
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

function export:OnEnter_box_PlayDialog_v6_29()
    local params;
    params = {
        -- Group,
        [0] = self.Rush_character,
        -- RelevancyTime,
        [1] = 9,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2835871323",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1420974719");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_43_Out,
    });
    params = {
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
        [2] = true,
        -- SoundId,
        [3] = "2946554717",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_83()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_49()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1458756964");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TaggingModifier_v3_78_Enabled,
    });
    params = {
        -- Entity,
        [0] = self.Rush_character,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_74()
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

function export:OnEnter_box_Brick_Escort_NPC_To_Position_v3_17()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bRequiresObjective,
        [1] = false,
        -- eDestinationTrigger,
        [3] = "2109673390519363569",
        -- eNPCToEscort,
        [5] = self.Rush_character,
        -- fWarnDistance,
        [6] = 100,
        -- Objective,
        [7] = {
            section = "BRICK_Escort_NPC_To_Position",
            item = "BRICK_Escort_NPC_To_Position",
            id = "376648",
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

function export:OnEnter_box_NarrativeFade_25()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_63()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.Rush_character,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UsableEntityModifier_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UsableEntityModifier_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1696929234");
    l0:SetConnections({
        -- OnSetUsable,
        [1] = self.f_box_UsableEntityModifier_v2_57_OnSetUsable,
    });
    params = {
        -- Entity,
        [0] = "2109399390610263269",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1706798212");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.Rush_character,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_UsableEntityModifier_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UsableEntityModifier_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1707513974");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2109399390610263269",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108596092217070892",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1768633156");
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

function export:OnEnter_box_SpawnAI_20()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108596092212876579",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109646354228748381",
    };
    return params;
end;

function export:OnEnter_box_Brick_Escort_NPC_To_Position_v3_32()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bRequiresObjective,
        [1] = false,
        -- eDestinationTrigger,
        [3] = "2109673384901093171",
        -- eNPCToEscort,
        [5] = self.Rush_character,
        -- fWarnDistance,
        [6] = 100,
        -- Objective,
        [7] = {
            section = "BRICK_Escort_NPC_To_Position",
            item = "BRICK_Escort_NPC_To_Position",
            id = "376648",
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

function export:OnEnter_box_GetPlayerGroup_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1872722784");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_45_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UsableEntityModifier_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UsableEntityModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UsableEntityModifier_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1935964423");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = "2109399357460581595",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_68()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.Rush_character,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|1977082219");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_15_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108596747252028163",
        -- Group,
        [1] = self.Rush_character,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|2027372759");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TaggingModifier_v3_80_Enabled,
    });
    params = {
        -- Entity,
        [0] = self.Rush_character,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|2049696236");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\MIS_140\\MIS_140_B40.domino|@mis_140_b40|2132319028");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_4_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_4;
    self.Rush_character = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_6_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_6;
    self.Rush_character = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_43_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.Activity_Reloaded = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Player = l0:GetDataOutValue(0);
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
