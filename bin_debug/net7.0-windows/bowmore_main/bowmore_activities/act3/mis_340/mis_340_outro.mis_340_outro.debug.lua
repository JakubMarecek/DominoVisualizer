LUAC�? -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_340/mis_340_outro.domino
-- User graph: MIS_340_OUTRO
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/MovingBodyModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PickupState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputPriorityModifier_v4.lua");
        cboxRes:RegisterBox("Domino/System/Player/InventoryWieldModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PersistentParticlesModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/TimedSlowMotion_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayerLookAtModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1937439047.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015344457050066.part]], "CParticlesSystemParamResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_340/MIS_340_OUTRO.MIS_340_OUTRO.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.UIMode.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CinematicMode",
            },
            [1] = {
                name = "NormalMode",
            },
            [2] = {
                name = "OutpostMode",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "OnCinematicMode",
                delayed = false,
            },
            [1] = {
                name = "OnNormalMode",
                delayed = false,
            },
            [2] = {
                name = "OnOutpostMode",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
        },
        dataInCount = 0,
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
    metadataTable[GetPathID("Domino/System/MovingBodyModifier.lua")] = {
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
                name = "displayId",
                type = "oasis",
            },
            [1] = {
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/InventoryWieldModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableAutoDraw",
            },
            [1] = {
                name = "EnableAutoDraw",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "AutoDrawDisabled",
                delayed = false,
            },
            [1] = {
                name = "AutoDrawEnabled",
                delayed = false,
            },
            [2] = {
                name = "Error",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "errorMsg",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Player/PersistentParticlesModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "StartParticles",
            },
            [1] = {
                name = "StopParticles",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnStartParticles",
                delayed = false,
            },
            [1] = {
                name = "OnStopParticles",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "fadeDuration",
                type = "float",
            },
            [1] = {
                name = "particleSystem",
                type = "particle",
            },
            [2] = {
                name = "players",
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
    metadataTable[GetPathID("Domino/System/Player/TimedSlowMotion_v2.lua")] = {
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
                name = "SlowMotionEnded",
                delayed = true,
            },
            [3] = {
                name = "SlowMotionStarted",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "AimSpeedMultiplier",
                type = "float",
            },
            [1] = {
                name = "AutoDisable",
                type = "bool",
            },
            [2] = {
                name = "BlendInTime",
                type = "float",
            },
            [3] = {
                name = "BlendOutTime",
                type = "float",
            },
            [4] = {
                name = "Duration",
                type = "float",
            },
            [5] = {
                name = "PreDelay",
                type = "float",
            },
            [6] = {
                name = "TimeFactor",
                type = "float",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayerLookAtModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LookAtEntity",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Done",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendOutTime",
                type = "float",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "lockPlayer",
                type = "bool",
            },
            [3] = {
                name = "lockTime",
                type = "float",
            },
            [4] = {
                name = "lookTarget",
                type = "entity",
            },
            [5] = {
                name = "Pawns",
                type = "group",
            },
        },
        dataInCount = 6,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_340_OUTRO";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO";
    self.gPlayer = nil;
    self.eLocalPlayer = nil;
    self.MetaSequenceID = 0;
    self.isMickeyDead = false;
    self.box_EntityStatusListener_17 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|2368505");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_17_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_17_Loaded,
    });
    self.box_SpawnAI_26 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|212395250");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_48 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|227472780");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_48_Loaded,
    });
    self.box_MultipleOR_60 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|278052946");
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
    self.box_PersistentParticlesModifier_85 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|302170644");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_31 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|429448419");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhoneCallExclusivityModifier_31_Disabled,
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_31_Enabled,
    });
    self.box_RemoveEntity_v2_93 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|475525372");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_93_Out,
    });
    self.box_EntityStatusListener_72 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|499407608");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_72_Loaded,
    });
    self.box_NoWeaponMode_v3_92 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|514834989");
    l0:SetConnections({
        -- OnLeave,
        [1] = self.f_box_NoWeaponMode_v3_92_OnLeave,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|547797888");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_InputPriorityModifier_v4_43 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|603691039");
    l0:SetConnections({
        -- OnRelease,
        [0] = self.f_box_InputPriorityModifier_v4_43_OnRelease,
        -- OnSet,
        [1] = self.f_box_InputPriorityModifier_v4_43_OnSet,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|610272999");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_VisibilityModifier_77 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|747518980");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_77_Enabled,
    });
    self.box_RemoveEntity_v2_90 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|762818061");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_73 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|777018896");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_84 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|823129963");
    l0:SetConnections({
    });
    self.box_MissionAckTriggerListener_51 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|845440949");
    l0:SetConnections({
        -- Leave,
        [3] = self.f_box_MissionAckTriggerListener_51_Leave,
    });
    self.box_PostFx_v3_12 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|871956885");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_12_Disabled,
    });
    self.box_RemoveEntity_v2_15 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|872372010");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_15_Out,
    });
    self.box_VisibilityModifier_76 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|881020341");
    l0:SetConnections({
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|964991466");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_EntityStatusListener_25 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1012001274");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_25_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_25_Loaded,
    });
    self.box_UIMode_74 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1018609825");
    l0:SetConnections({
    });
    self.box_PlayerLookAtModifier_v3_53 = cbox:CreateBox("Domino/System/PlayerLookAtModifier_v3.lua");
    l0 = self.box_PlayerLookAtModifier_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerLookAtModifier_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1154906342");
    l0:SetConnections({
    });
    self.box_Delay_v5_69 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1165191685");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_69_TimeElapsed,
    });
    self.box_NoWeaponMode_v3_33 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1191512481");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1216748284");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_MultipleOR_64 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1260610140");
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
        [0] = self.f_box_MultipleOR_64_Out,
    });
    self.box_MultipleOR_50 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1323696465");
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
    self.box_SpawnAI_22 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1359351448");
    l0:SetConnections({
    });
    self.box_TimedSlowMotion_v2_89 = cbox:CreateBox("Domino/System/Player/TimedSlowMotion_v2.lua");
    l0 = self.box_TimedSlowMotion_v2_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TimedSlowMotion_v2_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1405085531");
    l0:SetConnections({
        -- SlowMotionEnded,
        [2] = self.f_box_TimedSlowMotion_v2_89_SlowMotionEnded,
    });
    self.box_Delay_v5_79 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1465820719");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_79_TimeElapsed,
    });
    self.box_MissionAckTriggerListener_55 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1493905618");
    l0:SetConnections({
        -- Leave,
        [3] = self.f_box_MissionAckTriggerListener_55_Leave,
    });
    self.box_MessageListener_v3_63 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1508110533");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_63_Received,
    });
    self.box_PlayerSpeedModifier_v3_16 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1510327699");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_16_ApplySpeedFactorOut,
        -- Stopped,
        [3] = self.f_box_PlayerSpeedModifier_v3_16_Stopped,
    });
    self.box_Delay_v5_62 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1528208075");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_62_TimeElapsed,
    });
    self.box_InventoryWieldModifier_v2_41 = cbox:CreateBox("Domino/System/Player/InventoryWieldModifier_v2.lua");
    l0 = self.box_InventoryWieldModifier_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryWieldModifier_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1528943552");
    l0:SetConnections({
        -- AutoDrawDisabled,
        [0] = self.f_box_InventoryWieldModifier_v2_41_AutoDrawDisabled,
        -- AutoDrawEnabled,
        [1] = self.f_box_InventoryWieldModifier_v2_41_AutoDrawEnabled,
    });
    self.box_NarrativeFade_29 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1557643451");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_29_FadedIn,
    });
    self.box_UIMode_58 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1568320268");
    l0:SetConnections({
    });
    self.box_Delay_v5_97 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1572497483");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_97_TimeElapsed,
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1578389576");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_Delay_v5_94 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1624958561");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_94_TimeElapsed,
    });
    self.box_NarrativeSceneCleanUp_V2_18 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1653200091");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_18_Out,
    });
    self.box_Delay_v5_44 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1690927183");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_44_TimeElapsed,
    });
    self.box_Delay_v5_38 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1786258304");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_38_TimeElapsed,
    });
    self.box_NoWeaponMode_v3_87 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1810417922");
    l0:SetConnections({
        -- OnLeave,
        [1] = self.f_box_NoWeaponMode_v3_87_OnLeave,
    });
    self.box_MultipleAND_v2_59 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1930453662");
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
        [0] = self.f_box_MultipleAND_v2_59_Out,
    });
    self.box_EntityStatusListener_71 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|2068874702");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_71_Loaded,
    });
    self.box_HealthListener_v6_86 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|2126206501");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_86_Killed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|2082912200", "2082912200", "MIS_340_OUTRO", "In", "box_OutputOrder_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_FastTravelModifier_v2_32();
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1404391207", "1404391207", "MIS_340_OUTRO", "box_Simple_Node_35.Out", "box_FastTravelModifier_v2_32.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_17_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_26();
    l0 = self.box_EntityStatusListener_17;
    l1 = self.box_SpawnAI_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1020672440", "1020672440", "MIS_340_OUTRO", "box_EntityStatusListener_17.Enabled", "box_SpawnAI_26.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_17_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_17;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|619788460", "619788460", "MIS_340_OUTRO", "box_EntityStatusListener_17.Loaded", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_4_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1509351413", "1509351413", "MIS_340_OUTRO", "box_GetPlayerGroup_v2_4.Out", "box_GetLocalPlayer_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_100_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_73();
    l0 = self.box_PlayDialog_v6_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1678827666", "1678827666", "MIS_340_OUTRO", "box_OutputOrder_v2_100.Out", "box_PlayDialog_v6_73.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_100_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TimedSlowMotion_v2_89();
    l0 = self.box_TimedSlowMotion_v2_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1687638175", "1687638175", "MIS_340_OUTRO", "box_OutputOrder_v2_100.Out", "box_TimedSlowMotion_v2_89.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_FastTravelModifier_v2_32_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|367093464", "367093464", "MIS_340_OUTRO", "box_FastTravelModifier_v2_32.Disabled", "box_PhoneCallExclusivityModifier_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_FastTravelModifier_v2_32_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|626940459", "626940459", "MIS_340_OUTRO", "box_FastTravelModifier_v2_32.Enabled", "box_PhoneCallExclusivityModifier_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_EntityStatusListener_48_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PickupState_v2_47();
    l0 = self.box_EntityStatusListener_48;
    l1 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|2080094312", "2080094312", "MIS_340_OUTRO", "box_EntityStatusListener_48.Loaded", "box_PickupState_v2_47.SetAsNotPickable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsNotPickable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_19();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|2059625512", "2059625512", "MIS_340_OUTRO", "box_OutputOrder_v2_42.Out", "box_IsEntityLoaded_v3_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryWieldModifier_v2_41();
    l0 = self.box_InventoryWieldModifier_v2_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|856966659", "856966659", "MIS_340_OUTRO", "box_OutputOrder_v2_42.Out", "box_InventoryWieldModifier_v2_41.DisableAutoDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableAutoDraw
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_42_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_51();
    l0 = self.box_MissionAckTriggerListener_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1669925816", "1669925816", "MIS_340_OUTRO", "box_OutputOrder_v2_42.Out", "box_MissionAckTriggerListener_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_48();
    l0 = self.box_EntityStatusListener_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1072824002", "1072824002", "MIS_340_OUTRO", "box_OutputOrder_v2_42.Out", "box_EntityStatusListener_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_84();
    l0 = self.box_RemoveEntity_v2_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|720227378", "720227378", "MIS_340_OUTRO", "box_OutputOrder_v2_42.Out", "box_RemoveEntity_v2_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_42_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_70();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|677866454", "677866454", "MIS_340_OUTRO", "box_OutputOrder_v2_42.Out", "box_OutputOrder_v2_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MovingBodyModifier_45();
    l0 = self.box_MultipleOR_60;
    l1 = Boxes[GetPathID("Domino/System/MovingBodyModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1437980467", "1437980467", "MIS_340_OUTRO", "box_MultipleOR_60.Out", "box_MovingBodyModifier_45.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_12();
    l0 = self.box_PostFx_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1189492214", "1189492214", "MIS_340_OUTRO", "box_OutputOrder_v2_54.Out", "box_PostFx_v3_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_54_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_UIMode_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|117741539", "117741539", "MIS_340_OUTRO", "box_OutputOrder_v2_54.Out", "box_UIMode_58.CinematicMode", clone:GetLuaBox(), l0:GetLuaBox());
    -- CinematicMode
    l0:Exec(0, {
    });
end;

function export:f_box_PhoneCallExclusivityModifier_31_Disabled()
    local l0, l1;
    l0 = self.box_PhoneCallExclusivityModifier_31;
    l1 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|2094224393", "2094224393", "MIS_340_OUTRO", "box_PhoneCallExclusivityModifier_31.Disabled", "box_MultipleOR_50.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PhoneCallExclusivityModifier_31_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_16();
    l0 = self.box_PhoneCallExclusivityModifier_31;
    l1 = self.box_PlayerSpeedModifier_v3_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1617625746", "1617625746", "MIS_340_OUTRO", "box_PhoneCallExclusivityModifier_31.Enabled", "box_PlayerSpeedModifier_v3_16.ApplySpeedFactor", l0:GetLuaBox(), l1:GetLuaBox());
    -- ApplySpeedFactor
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_93_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_88();
    l0 = self.box_RemoveEntity_v2_93;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|907711385", "907711385", "MIS_340_OUTRO", "box_RemoveEntity_v2_93.Out", "box_ActivityEnd_88.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_72_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_76();
    l0 = self.box_EntityStatusListener_72;
    l1 = self.box_VisibilityModifier_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1593544864", "1593544864", "MIS_340_OUTRO", "box_EntityStatusListener_72.Loaded", "box_VisibilityModifier_76.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_19_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1771999137", "1771999137", "MIS_340_OUTRO", "box_IsEntityLoaded_v3_19.False", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_19_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_15();
    l0 = self.box_RemoveEntity_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1989177111", "1989177111", "MIS_340_OUTRO", "box_IsEntityLoaded_v3_19.True", "box_RemoveEntity_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_NoWeaponMode_v3_92_OnLeave()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_98();
    l0 = self.box_NoWeaponMode_v3_92;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|563459338", "563459338", "MIS_340_OUTRO", "box_NoWeaponMode_v3_92.OnLeave", "box_Compare_Boolean_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_72();
    l0 = self.box_EntityStatusListener_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|324584946", "324584946", "MIS_340_OUTRO", "box_OutputOrder_v2_70.Out", "box_EntityStatusListener_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_70_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_71();
    l0 = self.box_EntityStatusListener_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|160821035", "160821035", "MIS_340_OUTRO", "box_OutputOrder_v2_70.Out", "box_EntityStatusListener_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1300716080", "1300716080", "MIS_340_OUTRO", "box_MultipleOR_5.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_61();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|992512912", "992512912", "MIS_340_OUTRO", "box_OutputOrder_v2_52.Out", "box_IsEntityLoaded_v3_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_24();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1330325814", "1330325814", "MIS_340_OUTRO", "box_OutputOrder_v2_52.Out", "box_IsEntityLoaded_v3_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerLookAtModifier_v3_53();
    l0 = self.box_PlayerLookAtModifier_v3_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|520570599", "520570599", "MIS_340_OUTRO", "box_OutputOrder_v2_52.Out", "box_PlayerLookAtModifier_v3_53.LookAtEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- LookAtEntity
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_24_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_17();
    l0 = self.box_EntityStatusListener_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1229826386", "1229826386", "MIS_340_OUTRO", "box_IsEntityLoaded_v3_24.False", "box_EntityStatusListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_24_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|371487267", "371487267", "MIS_340_OUTRO", "box_IsEntityLoaded_v3_24.True", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_InputPriorityModifier_v4_43_OnRelease()
    local params, l0, l1;
    params = self:OnEnter_box_FastTravelModifier_v2_32();
    l0 = self.box_InputPriorityModifier_v4_43;
    l1 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1881679735", "1881679735", "MIS_340_OUTRO", "box_InputPriorityModifier_v4_43.OnRelease", "box_FastTravelModifier_v2_32.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InputPriorityModifier_v4_43_OnSet()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_InputPriorityModifier_v4_43;
    l1 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1332632472", "1332632472", "MIS_340_OUTRO", "box_InputPriorityModifier_v4_43.OnSet", "box_Delay_v5_44.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_MultipleOR_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1346237450", "1346237450", "MIS_340_OUTRO", "box_MultipleOR_13.Out", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_96_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_96_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1551751380", "1551751380", "MIS_340_OUTRO", "box_SetBoolean_v2_96.Out", "box_MultipleOR_64.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_91_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_91_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|2046601197", "2046601197", "MIS_340_OUTRO", "box_SetBoolean_v2_91.Out", "box_MultipleOR_64.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VisibilityModifier_77_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_69();
    l0 = self.box_VisibilityModifier_77;
    l1 = self.box_Delay_v5_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1631337390", "1631337390", "MIS_340_OUTRO", "box_VisibilityModifier_77.Enabled", "box_Delay_v5_69.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MissionAckTriggerListener_51_Leave()
    local l0, l1;
    l0 = self.box_MissionAckTriggerListener_51;
    l1 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|246851712", "246851712", "MIS_340_OUTRO", "box_MissionAckTriggerListener_51.Leave", "box_MultipleOR_50.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PostFx_v3_12_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_56();
    l0 = self.box_PostFx_v3_12;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|538574048", "538574048", "MIS_340_OUTRO", "box_PostFx_v3_12.Disabled", "box_ActivityMiscInfoModifier_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_15_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_15;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1877472992", "1877472992", "MIS_340_OUTRO", "box_RemoveEntity_v2_15.Out", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MovingBodyModifier_67();
    l0 = self.box_MultipleOR_14;
    l1 = Boxes[GetPathID("Domino/System/MovingBodyModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|114963254", "114963254", "MIS_340_OUTRO", "box_MultipleOR_14.Out", "box_MovingBodyModifier_67.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_25_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_22();
    l0 = self.box_EntityStatusListener_25;
    l1 = self.box_SpawnAI_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|202435493", "202435493", "MIS_340_OUTRO", "box_EntityStatusListener_25.Enabled", "box_SpawnAI_22.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_25_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_25;
    l1 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1125430172", "1125430172", "MIS_340_OUTRO", "box_EntityStatusListener_25.Loaded", "box_MultipleOR_60.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MovingBodyModifier_45_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MovingBodyModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_59();
    l0 = self.box_MultipleAND_v2_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1386445118", "1386445118", "MIS_340_OUTRO", "box_MovingBodyModifier_45.Disabled", "box_MultipleAND_v2_59.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_GetLocalPlayer_v2_6_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1088778066", "1088778066", "MIS_340_OUTRO", "box_GetLocalPlayer_v2_6.Out", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_69_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_75();
    l0 = self.box_Delay_v5_69;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|209400945", "209400945", "MIS_340_OUTRO", "box_Delay_v5_69.TimeElapsed", "box_HealthModifier_v2_75.Set", l0:GetLuaBox(), l1:GetLuaBox());
    -- Set
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MovingBodyModifier_67_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MovingBodyModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_59();
    l0 = self.box_MultipleAND_v2_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1473008345", "1473008345", "MIS_340_OUTRO", "box_MovingBodyModifier_67.Disabled", "box_MultipleAND_v2_59.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|466701159", "466701159", "MIS_340_OUTRO", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1560337057", "1560337057", "MIS_340_OUTRO", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_64_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_80();
    l0 = self.box_MultipleOR_64;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1409995118", "1409995118", "MIS_340_OUTRO", "box_MultipleOR_64.Out", "box_OutputOrder_v2_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_16();
    l0 = self.box_MultipleOR_50;
    l1 = self.box_PlayerSpeedModifier_v3_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|272640534", "272640534", "MIS_340_OUTRO", "box_MultipleOR_50.Out", "box_PlayerSpeedModifier_v3_16.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_61_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_25();
    l0 = self.box_EntityStatusListener_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|854660001", "854660001", "MIS_340_OUTRO", "box_IsEntityLoaded_v3_61.False", "box_EntityStatusListener_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_61_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|811747990", "811747990", "MIS_340_OUTRO", "box_IsEntityLoaded_v3_61.True", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TimedSlowMotion_v2_89_SlowMotionEnded()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_96();
    l0 = self.box_TimedSlowMotion_v2_89;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|275778921", "275778921", "MIS_340_OUTRO", "box_TimedSlowMotion_v2_89.SlowMotionEnded", "box_SetBoolean_v2_96.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_79_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = self.box_Delay_v5_79;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|224878933", "224878933", "MIS_340_OUTRO", "box_Delay_v5_79.TimeElapsed", "box_OutputOrder_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_55_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_91();
    l0 = self.box_MissionAckTriggerListener_55;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|650546288", "650546288", "MIS_340_OUTRO", "box_MissionAckTriggerListener_55.Leave", "box_SetBoolean_v2_91.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_63_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_79();
    l0 = self.box_MessageListener_v3_63;
    l1 = self.box_Delay_v5_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1025030655", "1025030655", "MIS_340_OUTRO", "box_MessageListener_v3_63.Received", "box_Delay_v5_79.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayerSpeedModifier_v3_16_ApplySpeedFactorOut()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_33();
    l0 = self.box_PlayerSpeedModifier_v3_16;
    l1 = self.box_NoWeaponMode_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1951507454", "1951507454", "MIS_340_OUTRO", "box_PlayerSpeedModifier_v3_16.ApplySpeedFactorOut", "box_NoWeaponMode_v3_33.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_PlayerSpeedModifier_v3_16_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_33();
    l0 = self.box_PlayerSpeedModifier_v3_16;
    l1 = self.box_NoWeaponMode_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|410619711", "410619711", "MIS_340_OUTRO", "box_PlayerSpeedModifier_v3_16.Stopped", "box_NoWeaponMode_v3_33.Off", l0:GetLuaBox(), l1:GetLuaBox());
    -- Off
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_62_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = self.box_Delay_v5_62;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|260089390", "260089390", "MIS_340_OUTRO", "box_Delay_v5_62.TimeElapsed", "box_OutputOrder_v2_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryWieldModifier_v2_41_AutoDrawDisabled()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_43();
    l0 = self.box_InventoryWieldModifier_v2_41;
    l1 = self.box_InputPriorityModifier_v4_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|311400194", "311400194", "MIS_340_OUTRO", "box_InventoryWieldModifier_v2_41.AutoDrawDisabled", "box_InputPriorityModifier_v4_43.Set", l0:GetLuaBox(), l1:GetLuaBox());
    -- Set
    l1:Exec(1, params);
end;

function export:f_box_InventoryWieldModifier_v2_41_AutoDrawEnabled()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_43();
    l0 = self.box_InventoryWieldModifier_v2_41;
    l1 = self.box_InputPriorityModifier_v4_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|175950440", "175950440", "MIS_340_OUTRO", "box_InventoryWieldModifier_v2_41.AutoDrawEnabled", "box_InputPriorityModifier_v4_43.Release", l0:GetLuaBox(), l1:GetLuaBox());
    -- Release
    l1:Exec(0, params);
end;

function export:f_box_NarrativeFade_29_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_18();
    l0 = self.box_NarrativeFade_29;
    l1 = self.box_NarrativeSceneCleanUp_V2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|46763246", "46763246", "MIS_340_OUTRO", "box_NarrativeFade_29.FadedIn", "box_NarrativeSceneCleanUp_V2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_97_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_92();
    l0 = self.box_Delay_v5_97;
    l1 = self.box_NoWeaponMode_v3_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1551469268", "1551469268", "MIS_340_OUTRO", "box_Delay_v5_97.TimeElapsed", "box_NoWeaponMode_v3_92.Off", l0:GetLuaBox(), l1:GetLuaBox());
    -- Off
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_4();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1480101299", "1480101299", "MIS_340_OUTRO", "box_ActivityInitialized_3.Out", "box_GetPlayerGroup_v2_4.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_94();
    l0 = self.box_Delay_v5_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|243284441", "243284441", "MIS_340_OUTRO", "box_OutputOrder_v2_66.Out", "box_Delay_v5_94.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_66_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NoWeaponMode_v3_87();
    l0 = self.box_NoWeaponMode_v3_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|279125420", "279125420", "MIS_340_OUTRO", "box_OutputOrder_v2_66.Out", "box_NoWeaponMode_v3_87.Off", clone:GetLuaBox(), l0:GetLuaBox());
    -- Off
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_94_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_73();
    l0 = self.box_Delay_v5_94;
    l1 = self.box_PlayDialog_v6_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1717891811", "1717891811", "MIS_340_OUTRO", "box_Delay_v5_94.TimeElapsed", "box_PlayDialog_v6_73.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_99_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_29();
    l0 = self.box_NarrativeFade_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1276259113", "1276259113", "MIS_340_OUTRO", "box_OutputOrder_v2_99.Out", "box_NarrativeFade_29.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerLookAtModifier_v3_53();
    l0 = self.box_PlayerLookAtModifier_v3_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|31175996", "31175996", "MIS_340_OUTRO", "box_OutputOrder_v2_99.Out", "box_PlayerLookAtModifier_v3_53.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_NarrativeSceneCleanUp_V2_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = self.box_NarrativeSceneCleanUp_V2_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|152237101", "152237101", "MIS_340_OUTRO", "box_NarrativeSceneCleanUp_V2_18.Out", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_44_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryWieldModifier_v2_41();
    l0 = self.box_Delay_v5_44;
    l1 = self.box_InventoryWieldModifier_v2_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|503646375", "503646375", "MIS_340_OUTRO", "box_Delay_v5_44.TimeElapsed", "box_InventoryWieldModifier_v2_41.EnableAutoDraw", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableAutoDraw
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|427686230", "427686230", "MIS_340_OUTRO", "box_OutputOrder_v2_1.Out", "box_ActivityAcknowledgeGate_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1707828261", "1707828261", "MIS_340_OUTRO", "box_OutputOrder_v2_1.Out", "box_Print_v2_7.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PickupState_v2_68_OnSetAsPickable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    local clone = l0;
    l0 = self.box_UIMode_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|256156629", "256156629", "MIS_340_OUTRO", "box_PickupState_v2_68.OnSetAsPickable", "box_UIMode_74.NormalMode", clone:GetLuaBox(), l0:GetLuaBox());
    -- NormalMode
    l0:Exec(1, {
    });
end;

function export:f_box_Delay_v5_38_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_Delay_v5_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|595372231", "595372231", "MIS_340_OUTRO", "box_Delay_v5_38.TimeElapsed", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NoWeaponMode_v3_87_OnLeave()
    local params, l0, l1;
    params = self:OnEnter_box_PickupState_v2_68();
    l0 = self.box_NoWeaponMode_v3_87;
    l1 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|192953769", "192953769", "MIS_340_OUTRO", "box_NoWeaponMode_v3_87.OnLeave", "box_PickupState_v2_68.SetAsPickable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsPickable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_80_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_97();
    l0 = self.box_Delay_v5_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1414745166", "1414745166", "MIS_340_OUTRO", "box_OutputOrder_v2_80.Out", "box_Delay_v5_97.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_80_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_90();
    l0 = self.box_RemoveEntity_v2_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1515621544", "1515621544", "MIS_340_OUTRO", "box_OutputOrder_v2_80.Out", "box_RemoveEntity_v2_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_80_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PersistentParticlesModifier_85();
    l0 = self.box_PersistentParticlesModifier_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|75009536", "75009536", "MIS_340_OUTRO", "box_OutputOrder_v2_80.Out", "box_PersistentParticlesModifier_85.StopParticles", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopParticles
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_80_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_35();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|492863070", "492863070", "MIS_340_OUTRO", "box_OutputOrder_v2_80.Out", "box_Simple_Node_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_62();
    l0 = self.box_MultipleAND_v2_59;
    l1 = self.box_Delay_v5_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|563772224", "563772224", "MIS_340_OUTRO", "box_MultipleAND_v2_59.Out", "box_Delay_v5_62.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_63();
    l0 = self.box_MessageListener_v3_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1087123567", "1087123567", "MIS_340_OUTRO", "box_OutputOrder_v2_65.Out", "box_MessageListener_v3_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_86();
    l0 = self.box_HealthListener_v6_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|875276744", "875276744", "MIS_340_OUTRO", "box_OutputOrder_v2_65.Out", "box_HealthListener_v6_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_65_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_55();
    l0 = self.box_MissionAckTriggerListener_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|143758238", "143758238", "MIS_340_OUTRO", "box_OutputOrder_v2_65.Out", "box_MissionAckTriggerListener_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityMiscInfoModifier_v2_56_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_38();
    l0 = self.box_Delay_v5_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1789287452", "1789287452", "MIS_340_OUTRO", "box_ActivityMiscInfoModifier_v2_56.Out", "box_Delay_v5_38.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_71_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_77();
    l0 = self.box_EntityStatusListener_71;
    l1 = self.box_VisibilityModifier_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|502243821", "502243821", "MIS_340_OUTRO", "box_EntityStatusListener_71.Loaded", "box_VisibilityModifier_77.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_98_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_93();
    l0 = self.box_RemoveEntity_v2_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|891883293", "891883293", "MIS_340_OUTRO", "box_Compare_Boolean_98.A_is_False", "box_RemoveEntity_v2_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_98_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_95();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|439413918", "439413918", "MIS_340_OUTRO", "box_Compare_Boolean_98.A_is_True", "box_ActivityEnd_95.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_86_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_100();
    l0 = self.box_HealthListener_v6_86;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|768313731", "768313731", "MIS_340_OUTRO", "box_HealthListener_v6_86.Killed", "box_OutputOrder_v2_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|@cleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_35_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_17()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109691134721679533",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|123206679");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|137771810");
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
                [0] = self.f_box_OutputOrder_v2_100_Out_0,
                [1] = self.f_box_OutputOrder_v2_100_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|139105967");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_32_Disabled,
        -- Enabled,
        [1] = self.f_box_FastTravelModifier_v2_32_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_26()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109691134715388071",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_48()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109663789044479301",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|240421901");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
                [2] = self.f_box_OutputOrder_v2_42_Out_2,
                [3] = self.f_box_OutputOrder_v2_42_Out_3,
                [4] = self.f_box_OutputOrder_v2_42_Out_4,
                [5] = self.f_box_OutputOrder_v2_42_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_85()
    local params;
    params = {
        -- fadeDuration,
        [0] = 1,
        -- particleSystem,
        [1] = "newparticles/9015344457050066.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|418964286");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [2] = self.f_box_OutputOrder_v2_54_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_93()
    local params;
    params = {
        -- Group,
        [0] = "2109566703271688598",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_72()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109566703271688598",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|504130609");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_19_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_19_True,
    });
    params = {
        -- entityId,
        [0] = "2108199969350495871",
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_92()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|533918503");
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

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|574895849");
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
                [0] = self.f_box_OutputOrder_v2_52_Out_0,
                [1] = self.f_box_OutputOrder_v2_52_Out_1,
                [2] = self.f_box_OutputOrder_v2_52_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|576118021");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_24_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_24_True,
    });
    params = {
        -- entityId,
        [0] = "2109691134721679533",
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_43()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|655861960");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_96_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|670416280");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = "2109691134721679533",
        -- pawns,
        [2] = "2109691134721679533",
        -- value,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|714761690");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_91_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_77()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109691134721679533",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_90()
    local params;
    params = {
        -- Group,
        [0] = "2108236599692134713",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_73()
    local params;
    params = {
        -- Group,
        [0] = "2109566703271688598",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1937439047",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_84()
    local params;
    params = {
        -- Group,
        [0] = "#0587E442",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_51()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109678724841487216",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_12()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_15()
    local params;
    params = {
        -- Group,
        [0] = "2108199969350495871",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_76()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109566703271688598",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109566703271688598",
    };
    return params;
end;

function export:OnEnter_box_MovingBodyModifier_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MovingBodyModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MovingBodyModifier_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1024404492");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_MovingBodyModifier_45_Disabled,
    });
    params = {
        -- pawn,
        [1] = "2109566703271688598",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1092007687");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayerLookAtModifier_v3_53()
    local params;
    params = {
        -- blendOutTime,
        [0] = 0,
        -- blendTime,
        [1] = 0.1,
        -- lockPlayer,
        [2] = true,
        -- lockTime,
        [3] = 100,
        -- lookTarget,
        [4] = "2109679012331681219",
        -- Pawns,
        [5] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_69()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MovingBodyModifier_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MovingBodyModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MovingBodyModifier_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1177159150");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_MovingBodyModifier_67_Disabled,
    });
    params = {
        -- pawn,
        [1] = "2109691134721679533",
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_33()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1214005626");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1272866950");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1354704409");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_61_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_61_True,
    });
    params = {
        -- entityId,
        [0] = "2109566703271688598",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_22()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109566703265397136",
    };
    return params;
end;

function export:OnEnter_box_TimedSlowMotion_v2_89()
    local params;
    params = {
        -- AimSpeedMultiplier,
        [0] = 1,
        -- AutoDisable,
        [1] = true,
        -- BlendInTime,
        [2] = 0.1,
        -- BlendOutTime,
        [3] = 0.1,
        -- Duration,
        [4] = 1,
        -- PreDelay,
        [5] = 0,
        -- TimeFactor,
        [6] = 0.15,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_79()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_55()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109678437619734742",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_63()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "MIS_340_END_CIN_DONE",
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_16()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0.4,
        -- Players,
        [2] = "#ED455357",
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

function export:OnEnter_box_InventoryWieldModifier_v2_41()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_29()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_97()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1620240160");
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
                [0] = self.f_box_OutputOrder_v2_66_Out_0,
                [1] = self.f_box_OutputOrder_v2_66_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_94()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1627631004");
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

function export:OnEnter_box_NarrativeSceneCleanUp_V2_18()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGFHDisabled,
        [1] = false,
        -- KeepGodMode,
        [2] = false,
        -- KeepHUDMode,
        [3] = false,
        -- KeepWeaponHolstered,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_44()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1709084827");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PickupState_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupState_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1747930057");
    l0:SetConnections({
        -- OnSetAsPickable,
        [1] = self.f_box_PickupState_v2_68_OnSetAsPickable,
    });
    params = {
        -- Pickup,
        [0] = "2109663789044479301",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_38()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_87()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1869867586");
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
                [0] = self.f_box_OutputOrder_v2_80_Out_0,
                [1] = self.f_box_OutputOrder_v2_80_Out_1,
                [2] = self.f_box_OutputOrder_v2_80_Out_2,
                [3] = self.f_box_OutputOrder_v2_80_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PickupState_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupState_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1899290614");
    l0:SetConnections({
    });
    params = {
        -- Pickup,
        [0] = "2109663789044479301",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1922937295");
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
        [8] = "MIS_340_DEBRIEF script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_59()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|1988521858");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
                [2] = self.f_box_OutputOrder_v2_65_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|2049031128");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_56_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = true,
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
        [2] = "2109691134721679533",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_340\\MIS_340_OUTRO.domino|@MIS_340_OUTRO|2085195498");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_98_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_98_A_is_True,
    });
    params = {
        -- A,
        [0] = self.isMickeyDead,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_86()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2109566703271688598",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_96_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isMickeyDead = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_91_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isMickeyDead = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eLocalPlayer = l0:GetDataOutValue(0);
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
