LUACFv -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_430/mis_430_b15.domino
-- User graph: MIS_430_B15_main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/IsEntityInGroup.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[306259042.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3584356036.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3485963007.bnk]], "CSoundResource");
        cboxRes:LoadResource([[150803828.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B15.MIS_430_B15_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")] = {
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
                name = "Entity",
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
    metadataTable[GetPathID("Domino/System/PawnInvincibleState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetInvincible",
            },
            [1] = {
                name = "UnsetInvincible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSet",
                delayed = false,
            },
            [1] = {
                name = "OnUnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "MessageId",
                type = "oasis",
            },
            [1] = {
                name = "MessageType",
                type = "int",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua")] = {
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
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Active",
                delayed = false,
            },
            [2] = {
                name = "Inactive",
                delayed = false,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "e_Stim",
                type = "entity",
            },
            [1] = {
                name = "e_TrapActivator",
                type = "entity",
            },
            [2] = {
                name = "e_Trigger",
                type = "entity",
            },
            [3] = {
                name = "e_VFX",
                type = "entity",
            },
            [4] = {
                name = "e_VFX_ActiveTrap",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
            [0] = {
                name = "e_WhoWalkedonTrap",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_430_B15_main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main";
    self.e_Sharky = nil;
    self.e_TrapUser = nil;
    self.box_PhoneCallExclusivityModifier_83 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|25451272");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_83_Enabled,
    });
    self.box_OnceOnly_v3_31 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|28051649");
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
                [0] = self.f_box_OnceOnly_v3_31_Out_0,
            },
            count = 2,
        },
    });
    self.box_RequestPhoneCall_v2_78 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|77997865");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_78_Completed,
    });
    self.box_CharacterLoadedIdListener_v2_90 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|126581933");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_90_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_90_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_90_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_90_LoadedIdReceived,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|447761875");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_PostFx_v3_94 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|470008312");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_16 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|495752196");
    l0:SetConnections({
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|581824403");
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
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|598847896");
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
    self.box_MultipleAND_v2_13 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|612986317");
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
        [0] = self.f_box_MultipleAND_v2_13_Out,
    });
    self.box_MultipleOR_59 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|621774850");
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
        [0] = self.f_box_MultipleOR_59_Out,
    });
    self.box_MultipleOR_51 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|669701516");
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
        [0] = self.f_box_MultipleOR_51_Out,
    });
    self.box_MIS_430_SteamTrap_53 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|675741247");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_53_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_53_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_53_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_53_Out,
    });
    self.box_RequestPhoneCall_v2_82 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|752277236");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_82_Completed,
    });
    self.box_Delay_v5_35 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|799679264");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_35_TimeElapsed,
    });
    self.box_NarrativeFade_27 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|800427415");
    l0:SetConnections({
    });
    self.box_Reach_GoTo_v3_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|918786947");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_7_Success,
    });
    self.box_MIS_430_SteamTrap_57 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|935175605");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_57_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_57_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_57_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_57_Out,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|983490361");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_81 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1076521015");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_81_Completed,
    });
    self.box_PhoneCallExclusivityModifier_85 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1090993440");
    l0:SetConnections({
    });
    self.box_MultipleOR_68 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1220911652");
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
        [0] = self.f_box_MultipleOR_68_Out,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1258849384");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_NarrativeSceneCleanUp_V2_93 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1271061410");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_93_Out,
    });
    self.box_MultipleOR_92 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1284023248");
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
        [0] = self.f_box_MultipleOR_92_Out,
    });
    self.box_OnceOnly_v3_14 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1301737935");
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
                [0] = self.f_box_OnceOnly_v3_14_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1388187459");
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
        [0] = self.f_box_MultipleOR_49_Out,
    });
    self.box_MIS_430_SteamTrap_50 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1423536876");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_50_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_50_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_50_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_50_Out,
    });
    self.box_StaticBreakableListener_33 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1497639987");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_33_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_33_OnBreak,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_33_OnDamage,
    });
    self.box_MIS_430_SteamTrap_45 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1646942803");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_45_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_45_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_45_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_45_Out,
    });
    self.box_PhoneCallExclusivityModifier_80 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1656150905");
    l0:SetConnections({
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1697847812");
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
    self.box_ExitZoneWarningListener_v3_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1756519564");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_6_FailingZoneEntered,
    });
    self.box_MIS_430_SteamTrap_67 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1795996149");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_67_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_67_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_67_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_67_Out,
    });
    self.box_PhoneCallExclusivityModifier_79 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1827488682");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_79_Enabled,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1841847490");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_StaticBreakableListener_38 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1866670923");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_38_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_38_OnBreak,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_38_OnDamage,
    });
    self.box_PlaySequence_v8_91 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1906019386");
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
        [0] = self.f_box_PlaySequence_v8_91_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_91_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_91_SPOut__FadeIn_,
                },
            },
            count = 1,
        },
    });
    self.box_DisplayCustomUIMsg_v5_26 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1931106004");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_26_OnDisplay,
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1988748058");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_88 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1998973712");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_88_Completed,
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|2023084426");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|2043479273");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_DisplayCustomUIMsg_v5_42 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|2043710048");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_42_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v5_42_OnHide,
    });
    self.box_NarrativeFade_23 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|2146689381");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_23_FadedOut,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|99966580", "99966580", "MIS_430_B15_main", "In", "box_ActivityAcknowledgeGate_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_87_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|131042150", "131042150", "MIS_430_B15_main", "box_Simple_Node_87.Out", "box_OnceOnly_v3_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1665710496", "1665710496", "MIS_430_B15_main", "box_Simple_Node_74.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|707800192", "707800192", "MIS_430_B15_main", "box_Simple_Node_74.Out", "box_MultipleOR_68.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|2043376431", "2043376431", "MIS_430_B15_main", "box_Simple_Node_74.Out", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_MIS_430_SteamTrap_53();
    l0 = self.box_MIS_430_SteamTrap_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|2129493358", "2129493358", "MIS_430_B15_main", "box_Simple_Node_74.Out", "box_MIS_430_SteamTrap_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_45();
    l0 = self.box_MIS_430_SteamTrap_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|634287028", "634287028", "MIS_430_B15_main", "box_Simple_Node_74.Out", "box_MIS_430_SteamTrap_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_57();
    l0 = self.box_MIS_430_SteamTrap_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|541880999", "541880999", "MIS_430_B15_main", "box_Simple_Node_74.Out", "box_MIS_430_SteamTrap_57.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_72_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1413817883", "1413817883", "MIS_430_B15_main", "box_Simple_Node_72.Out", "box_MultipleOR_49.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_MIS_430_SteamTrap_50();
    l0 = self.box_MIS_430_SteamTrap_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1408388692", "1408388692", "MIS_430_B15_main", "box_Simple_Node_72.Out", "box_MIS_430_SteamTrap_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_67();
    l0 = self.box_MIS_430_SteamTrap_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1806605575", "1806605575", "MIS_430_B15_main", "box_Simple_Node_72.Out", "box_MIS_430_SteamTrap_67.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|729759607", "729759607", "MIS_430_B15_main", "box_Simple_Node_72.Out", "box_MultipleOR_59.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_63_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1325188041", "1325188041", "MIS_430_B15_main", "box_Simple_Node_63.Out", "box_OnceOnly_v3_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_73_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_SteamTrap_45();
    l0 = self.box_MIS_430_SteamTrap_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|472307219", "472307219", "MIS_430_B15_main", "box_Simple_Node_73.Out", "box_MIS_430_SteamTrap_45.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MultipleAND_v2_13();
    l0 = self.box_MultipleAND_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|133283889", "133283889", "MIS_430_B15_main", "box_Simple_Node_73.Out", "box_MultipleAND_v2_13.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
    params = self:OnEnter_box_MIS_430_SteamTrap_57();
    l0 = self.box_MIS_430_SteamTrap_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1680197728", "1680197728", "MIS_430_B15_main", "box_Simple_Node_73.Out", "box_MIS_430_SteamTrap_57.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_53();
    l0 = self.box_MIS_430_SteamTrap_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|2078679856", "2078679856", "MIS_430_B15_main", "box_Simple_Node_73.Out", "box_MIS_430_SteamTrap_53.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_75_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_SteamTrap_67();
    l0 = self.box_MIS_430_SteamTrap_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|26598613", "26598613", "MIS_430_B15_main", "box_Simple_Node_75.Out", "box_MIS_430_SteamTrap_67.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_50();
    l0 = self.box_MIS_430_SteamTrap_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1783100313", "1783100313", "MIS_430_B15_main", "box_Simple_Node_75.Out", "box_MIS_430_SteamTrap_50.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MultipleAND_v2_13();
    l0 = self.box_MultipleAND_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1230530214", "1230530214", "MIS_430_B15_main", "box_Simple_Node_75.Out", "box_MultipleAND_v2_13.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_38();
    l0 = self.box_StaticBreakableListener_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1338286777", "1338286777", "MIS_430_B15_main", "box_Simple_Node_64.Out", "box_StaticBreakableListener_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_33();
    l0 = self.box_StaticBreakableListener_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|690856981", "690856981", "MIS_430_B15_main", "box_Simple_Node_62.Out", "box_StaticBreakableListener_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_65_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|143462234", "143462234", "MIS_430_B15_main", "box_Simple_Node_65.Out", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_83_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_88();
    l0 = self.box_PhoneCallExclusivityModifier_83;
    l1 = self.box_RequestPhoneCall_v2_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|415342796", "415342796", "MIS_430_B15_main", "box_PhoneCallExclusivityModifier_83.Enabled", "box_RequestPhoneCall_v2_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_31_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_42();
    l0 = self.box_OnceOnly_v3_31;
    l1 = self.box_DisplayCustomUIMsg_v5_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|546041076", "546041076", "MIS_430_B15_main", "box_OnceOnly_v3_31.Out", "box_DisplayCustomUIMsg_v5_42.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|826756537", "826756537", "MIS_430_B15_main", "box_OutputOrder_v2_69.Out", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_73();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|843036775", "843036775", "MIS_430_B15_main", "box_OutputOrder_v2_69.Out", "box_Simple_Node_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_78_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_82();
    l0 = self.box_RequestPhoneCall_v2_78;
    l1 = self.box_RequestPhoneCall_v2_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1650698098", "1650698098", "MIS_430_B15_main", "box_RequestPhoneCall_v2_78.Completed", "box_RequestPhoneCall_v2_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_90_LoadedIdReceived()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_89();
    l0 = self.box_CharacterLoadedIdListener_v2_90;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|683562544", "683562544", "MIS_430_B15_main", "box_CharacterLoadedIdListener_v2_90.LoadedIdReceived", "box_PawnInvincibleState_v2_89.SetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetInvincible
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_19_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_16();
    l0 = self.box_RemoveEntity_v2_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|2063005703", "2063005703", "MIS_430_B15_main", "box_IsEntityLoaded_v3_19.True", "box_RemoveEntity_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_46_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1255406664", "1255406664", "MIS_430_B15_main", "box_MissionBlockLayer_46.Activated", "box_Simple_Node_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_95_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_93();
    l0 = self.box_NarrativeSceneCleanUp_V2_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|703541077", "703541077", "MIS_430_B15_main", "box_OutputOrder_v2_95.Out", "box_NarrativeSceneCleanUp_V2_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_95_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_94();
    l0 = self.box_PostFx_v3_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1559795498", "1559795498", "MIS_430_B15_main", "box_OutputOrder_v2_95.Out", "box_PostFx_v3_94.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_38();
    l0 = self.box_StaticBreakableListener_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|925384940", "925384940", "MIS_430_B15_main", "box_OutputOrder_v2_21.Out", "box_StaticBreakableListener_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_33();
    l0 = self.box_StaticBreakableListener_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1787204857", "1787204857", "MIS_430_B15_main", "box_OutputOrder_v2_21.Out", "box_StaticBreakableListener_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1204908674", "1204908674", "MIS_430_B15_main", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_23();
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_NarrativeFade_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|24661970", "24661970", "MIS_430_B15_main", "box_ActivityAcknowledgeGate_1.Reloaded", "box_NarrativeFade_23.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_18_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|464891771", "464891771", "MIS_430_B15_main", "box_IsEntityLoaded_v3_18.False", "box_MultipleOR_36.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_18_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_40();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|394600133", "394600133", "MIS_430_B15_main", "box_IsEntityLoaded_v3_18.True", "box_MissionBlockLayer_40.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|169384335", "169384335", "MIS_430_B15_main", "box_OutputOrder_v2_24.Out", "box_Print_v2_2.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1438134401", "1438134401", "MIS_430_B15_main", "box_OutputOrder_v2_24.Out", "box_Delay_v5_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_24_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_65();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|73358773", "73358773", "MIS_430_B15_main", "box_OutputOrder_v2_24.Out", "box_Simple_Node_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_6();
    l0 = self.box_ExitZoneWarningListener_v3_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1088116359", "1088116359", "MIS_430_B15_main", "box_OutputOrder_v2_24.Out", "box_ExitZoneWarningListener_v3_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_19();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1603924913", "1603924913", "MIS_430_B15_main", "box_OutputOrder_v2_24.Out", "box_IsEntityLoaded_v3_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_44();
    l0 = self.box_MultipleOR_48;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1858793713", "1858793713", "MIS_430_B15_main", "box_MultipleOR_48.Out", "box_ParticleSystem_v3_44.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_17();
    l0 = self.box_MultipleOR_43;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1752059510", "1752059510", "MIS_430_B15_main", "box_MultipleOR_43.Out", "box_MissionBlockLayer_17.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_12();
    l0 = self.box_MultipleAND_v2_13;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1354076625", "1354076625", "MIS_430_B15_main", "box_MultipleAND_v2_13.Out", "box_ActivityRetry_v2_12.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_52();
    l0 = self.box_MultipleOR_59;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1045683937", "1045683937", "MIS_430_B15_main", "box_MultipleOR_59.Out", "box_ParticleSystem_v3_52.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_47();
    l0 = self.box_MultipleOR_51;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|506068385", "506068385", "MIS_430_B15_main", "box_MultipleOR_51.Out", "box_ParticleSystem_v3_47.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_53_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_53_Activated();
    params = self:OnEnter_box_Simple_Node_87();
    l0 = self.box_MIS_430_SteamTrap_53;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|90967814", "90967814", "MIS_430_B15_main", "box_MIS_430_SteamTrap_53.Activated", "box_Simple_Node_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_53_Active()
    local l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_53_Active();
    l0 = self.box_MIS_430_SteamTrap_53;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|335989365", "335989365", "MIS_430_B15_main", "box_MIS_430_SteamTrap_53.Active", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_430_SteamTrap_53_Inactive()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_53_Inactive();
    params = self:OnEnter_box_ParticleSystem_v3_47();
    l0 = self.box_MIS_430_SteamTrap_53;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1250852122", "1250852122", "MIS_430_B15_main", "box_MIS_430_SteamTrap_53.Inactive", "box_ParticleSystem_v3_47.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_53_Out()
    self:OnExit_box_MIS_430_SteamTrap_53_Out();
end;

function export:f_box_RequestPhoneCall_v2_82_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_82;
    l1 = self.box_PhoneCallExclusivityModifier_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|824738035", "824738035", "MIS_430_B15_main", "box_RequestPhoneCall_v2_82.Completed", "box_PhoneCallExclusivityModifier_80.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_90();
    l0 = self.box_CharacterLoadedIdListener_v2_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|322696563", "322696563", "MIS_430_B15_main", "box_OutputOrder_v2_29.Out", "box_CharacterLoadedIdListener_v2_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_26();
    l0 = self.box_DisplayCustomUIMsg_v5_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1678194587", "1678194587", "MIS_430_B15_main", "box_OutputOrder_v2_29.Out", "box_DisplayCustomUIMsg_v5_26.Display", clone:GetLuaBox(), l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_29_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1413761836", "1413761836", "MIS_430_B15_main", "box_OutputOrder_v2_29.Out", "box_PhoneCallExclusivityModifier_79.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_GetPlayerGroup_v2_11_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_10();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1053392950", "1053392950", "MIS_430_B15_main", "box_GetPlayerGroup_v2_11.Out", "box_IsEntityInGroup_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_35_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_18();
    l0 = self.box_Delay_v5_35;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1700474399", "1700474399", "MIS_430_B15_main", "box_Delay_v5_35.TimeElapsed", "box_IsEntityLoaded_v3_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_62();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|470448995", "470448995", "MIS_430_B15_main", "box_OutputOrder_v2_70.Out", "box_Simple_Node_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_75();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|145863626", "145863626", "MIS_430_B15_main", "box_OutputOrder_v2_70.Out", "box_Simple_Node_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_7_Success()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_5();
    l0 = self.box_Reach_GoTo_v3_7;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|593909888", "593909888", "MIS_430_B15_main", "box_Reach_GoTo_v3_7.Success", "box_EndActivityObjective_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_57_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_57_Activated();
    params = self:OnEnter_box_Simple_Node_87();
    l0 = self.box_MIS_430_SteamTrap_57;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|764931876", "764931876", "MIS_430_B15_main", "box_MIS_430_SteamTrap_57.Activated", "box_Simple_Node_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_57_Active()
    local l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_57_Active();
    l0 = self.box_MIS_430_SteamTrap_57;
    l1 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|896410280", "896410280", "MIS_430_B15_main", "box_MIS_430_SteamTrap_57.Active", "box_MultipleOR_68.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_430_SteamTrap_57_Inactive()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_57_Inactive();
    params = self:OnEnter_box_ParticleSystem_v3_66();
    l0 = self.box_MIS_430_SteamTrap_57;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|500334349", "500334349", "MIS_430_B15_main", "box_MIS_430_SteamTrap_57.Inactive", "box_ParticleSystem_v3_66.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_57_Out()
    self:OnExit_box_MIS_430_SteamTrap_57_Out();
end;

function export:f_box_EndActivityObjective_v2_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|2117786102", "2117786102", "MIS_430_B15_main", "box_EndActivityObjective_v2_5.Out", "box_ActivityEnd_15.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_42();
    l0 = self.box_Delay_v5_20;
    l1 = self.box_DisplayCustomUIMsg_v5_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1158352507", "1158352507", "MIS_430_B15_main", "box_Delay_v5_20.TimeElapsed", "box_DisplayCustomUIMsg_v5_42.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_ActivityForceAndLockTracking_22_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_7();
    l0 = self.box_Reach_GoTo_v3_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|747602048", "747602048", "MIS_430_B15_main", "box_ActivityForceAndLockTracking_22.Enabled", "box_Reach_GoTo_v3_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_56_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_60();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|56864311", "56864311", "MIS_430_B15_main", "box_MissionBlockLayer_56.Disabled", "box_MissionBlockLayer_60.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_81_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_78();
    l0 = self.box_RequestPhoneCall_v2_81;
    l1 = self.box_RequestPhoneCall_v2_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|897132405", "897132405", "MIS_430_B15_main", "box_RequestPhoneCall_v2_81.Completed", "box_RequestPhoneCall_v2_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_17_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_39();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1939175091", "1939175091", "MIS_430_B15_main", "box_MissionBlockLayer_17.Disabled", "box_MissionBlockLayer_39.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_68_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_66();
    l0 = self.box_MultipleOR_68;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|996968595", "996968595", "MIS_430_B15_main", "box_MultipleOR_68.Out", "box_ParticleSystem_v3_66.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_32();
    l0 = self.box_Delay_v5_34;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|159131892", "159131892", "MIS_430_B15_main", "box_Delay_v5_34.TimeElapsed", "box_IsEntityLoaded_v3_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanUp_V2_93_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_NarrativeSceneCleanUp_V2_93;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|534470669", "534470669", "MIS_430_B15_main", "box_NarrativeSceneCleanUp_V2_93.Out", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_92_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_95();
    l0 = self.box_MultipleOR_92;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1331307516", "1331307516", "MIS_430_B15_main", "box_MultipleOR_92.Out", "box_OutputOrder_v2_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_32_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|247476005", "247476005", "MIS_430_B15_main", "box_IsEntityLoaded_v3_32.False", "box_MultipleOR_43.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_32_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_46();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|252643547", "252643547", "MIS_430_B15_main", "box_IsEntityLoaded_v3_32.True", "box_MissionBlockLayer_46.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_14_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_11();
    l0 = self.box_OnceOnly_v3_14;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|124119330", "124119330", "MIS_430_B15_main", "box_OnceOnly_v3_14.Out", "box_GetPlayerGroup_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_39_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|326750315", "326750315", "MIS_430_B15_main", "box_MissionBlockLayer_39.Activated", "box_OutputOrder_v2_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_60_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_70();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1696963725", "1696963725", "MIS_430_B15_main", "box_MissionBlockLayer_60.Activated", "box_OutputOrder_v2_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_55();
    l0 = self.box_MultipleOR_49;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|181127195", "181127195", "MIS_430_B15_main", "box_MultipleOR_49.Out", "box_ParticleSystem_v3_55.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_50_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_50_Activated();
    params = self:OnEnter_box_Simple_Node_87();
    l0 = self.box_MIS_430_SteamTrap_50;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1373476173", "1373476173", "MIS_430_B15_main", "box_MIS_430_SteamTrap_50.Activated", "box_Simple_Node_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_50_Active()
    local l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_50_Active();
    l0 = self.box_MIS_430_SteamTrap_50;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|969514671", "969514671", "MIS_430_B15_main", "box_MIS_430_SteamTrap_50.Active", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_430_SteamTrap_50_Inactive()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_50_Inactive();
    params = self:OnEnter_box_ParticleSystem_v3_55();
    l0 = self.box_MIS_430_SteamTrap_50;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1465049736", "1465049736", "MIS_430_B15_main", "box_MIS_430_SteamTrap_50.Inactive", "box_ParticleSystem_v3_55.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_50_Out()
    self:OnExit_box_MIS_430_SteamTrap_50_Out();
end;

function export:f_box_StaticBreakableListener_33_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_StaticBreakableListener_33;
    l1 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1406274543", "1406274543", "MIS_430_B15_main", "box_StaticBreakableListener_33.Enabled", "box_Delay_v5_35.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_33_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_33;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1132679366", "1132679366", "MIS_430_B15_main", "box_StaticBreakableListener_33.OnBreak", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_33_OnDamage()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_63();
    l0 = self.box_StaticBreakableListener_33;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1948070902", "1948070902", "MIS_430_B15_main", "box_StaticBreakableListener_33.OnDamage", "box_Simple_Node_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_45_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_45_Activated();
    params = self:OnEnter_box_Simple_Node_87();
    l0 = self.box_MIS_430_SteamTrap_45;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1563280421", "1563280421", "MIS_430_B15_main", "box_MIS_430_SteamTrap_45.Activated", "box_Simple_Node_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_45_Active()
    local l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_45_Active();
    l0 = self.box_MIS_430_SteamTrap_45;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1345721621", "1345721621", "MIS_430_B15_main", "box_MIS_430_SteamTrap_45.Active", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_430_SteamTrap_45_Inactive()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_45_Inactive();
    params = self:OnEnter_box_ParticleSystem_v3_44();
    l0 = self.box_MIS_430_SteamTrap_45;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1889195789", "1889195789", "MIS_430_B15_main", "box_MIS_430_SteamTrap_45.Inactive", "box_ParticleSystem_v3_44.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_45_Out()
    self:OnExit_box_MIS_430_SteamTrap_45_Out();
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|744394621", "744394621", "MIS_430_B15_main", "box_MultipleOR_3.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ExitZoneWarningListener_v3_6_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_8();
    l0 = self.box_ExitZoneWarningListener_v3_6;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1780159073", "1780159073", "MIS_430_B15_main", "box_ExitZoneWarningListener_v3_6.FailingZoneEntered", "box_ActivityRetry_v2_8.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_67_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_67_Activated();
    params = self:OnEnter_box_Simple_Node_87();
    l0 = self.box_MIS_430_SteamTrap_67;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|244198770", "244198770", "MIS_430_B15_main", "box_MIS_430_SteamTrap_67.Activated", "box_Simple_Node_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_67_Active()
    local l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_67_Active();
    l0 = self.box_MIS_430_SteamTrap_67;
    l1 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|651287021", "651287021", "MIS_430_B15_main", "box_MIS_430_SteamTrap_67.Active", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_430_SteamTrap_67_Inactive()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_67_Inactive();
    params = self:OnEnter_box_ParticleSystem_v3_52();
    l0 = self.box_MIS_430_SteamTrap_67;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1400776793", "1400776793", "MIS_430_B15_main", "box_MIS_430_SteamTrap_67.Inactive", "box_ParticleSystem_v3_52.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_67_Out()
    self:OnExit_box_MIS_430_SteamTrap_67_Out();
end;

function export:f_box_PhoneCallExclusivityModifier_79_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_81();
    l0 = self.box_PhoneCallExclusivityModifier_79;
    l1 = self.box_RequestPhoneCall_v2_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1913928693", "1913928693", "MIS_430_B15_main", "box_PhoneCallExclusivityModifier_79.Enabled", "box_RequestPhoneCall_v2_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_56();
    l0 = self.box_MultipleOR_36;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1705764813", "1705764813", "MIS_430_B15_main", "box_MultipleOR_36.Out", "box_MissionBlockLayer_56.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_38_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_StaticBreakableListener_38;
    l1 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1495618139", "1495618139", "MIS_430_B15_main", "box_StaticBreakableListener_38.Enabled", "box_Delay_v5_34.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_38_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_38;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|796116233", "796116233", "MIS_430_B15_main", "box_StaticBreakableListener_38.OnBreak", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_38_OnDamage()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_63();
    l0 = self.box_StaticBreakableListener_38;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|153864957", "153864957", "MIS_430_B15_main", "box_StaticBreakableListener_38.OnDamage", "box_Simple_Node_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_40_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_72();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1767555208", "1767555208", "MIS_430_B15_main", "box_MissionBlockLayer_40.Activated", "box_Simple_Node_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_91_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_91;
    l1 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1703179285", "1703179285", "MIS_430_B15_main", "box_PlaySequence_v8_91.Finished", "box_MultipleOR_92.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_91_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_91;
    l1 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1338053391", "1338053391", "MIS_430_B15_main", "box_PlaySequence_v8_91.Skipped", "box_MultipleOR_92.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_91_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_27();
    l0 = self.box_PlaySequence_v8_91;
    l1 = self.box_NarrativeFade_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|625098544", "625098544", "MIS_430_B15_main", "box_PlaySequence_v8_91.SPOut", "box_NarrativeFade_27.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_IsEntityInGroup_10_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1066144239", "1066144239", "MIS_430_B15_main", "box_IsEntityInGroup_10.True", "box_PhoneCallExclusivityModifier_83.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_DisplayCustomUIMsg_v5_26_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_DisplayCustomUIMsg_v5_26;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|341163621", "341163621", "MIS_430_B15_main", "box_DisplayCustomUIMsg_v5_26.OnDisplay", "box_Delay_v5_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PawnInvincibleState_v2_89_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_22();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|765993369", "765993369", "MIS_430_B15_main", "box_PawnInvincibleState_v2_89.OnSet", "box_ActivityForceAndLockTracking_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_91();
    l0 = self.box_Delay_v5_30;
    l1 = self.box_PlaySequence_v8_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|923157267", "923157267", "MIS_430_B15_main", "box_Delay_v5_30.TimeElapsed", "box_PlaySequence_v8_91.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_88_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_88;
    l1 = self.box_PhoneCallExclusivityModifier_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1162935831", "1162935831", "MIS_430_B15_main", "box_RequestPhoneCall_v2_88.Completed", "box_PhoneCallExclusivityModifier_85.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_ActivityInitialized_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1860022236", "1860022236", "MIS_430_B15_main", "box_ActivityInitialized_4.Out", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_26();
    l0 = self.box_Delay_v5_28;
    l1 = self.box_DisplayCustomUIMsg_v5_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|2078985321", "2078985321", "MIS_430_B15_main", "box_Delay_v5_28.TimeElapsed", "box_DisplayCustomUIMsg_v5_26.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_DisplayCustomUIMsg_v5_42_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_DisplayCustomUIMsg_v5_42;
    l1 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1834163336", "1834163336", "MIS_430_B15_main", "box_DisplayCustomUIMsg_v5_42.OnDisplay", "box_Delay_v5_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DisplayCustomUIMsg_v5_42_OnHide()
    local l0, l1;
    l0 = self.box_DisplayCustomUIMsg_v5_42;
    l1 = self.box_OnceOnly_v3_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|652955312", "652955312", "MIS_430_B15_main", "box_DisplayCustomUIMsg_v5_42.OnHide", "box_OnceOnly_v3_31.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_NarrativeFade_23_FadedOut()
    local l0, l1;
    l0 = self.box_NarrativeFade_23;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1617085062", "1617085062", "MIS_430_B15_main", "box_NarrativeFade_23.FadedOut", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|@n_ActivatedTrap_Bark");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_87_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|@n_ActivateTrapsTurbine_A");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_74_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|@n_ActivateTrapsTurbine_B");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_72_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|@n_ActivateWarning");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_63_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|@n_DeactivateTrapsTurbine_A");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_73_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|@n_DeactivateTrapsTurbine_B");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_75_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|@n_DisableListener_A");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_64_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|@n_DisableListener_B");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_62_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|@n_SetGlobalVariables");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_65_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|7507067");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108927240514314473",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|56228609");
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
                [0] = self.f_box_OutputOrder_v2_69_Out_0,
                [1] = self.f_box_OutputOrder_v2_69_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_78()
    local params;
    params = {
        -- Delay,
        [2] = 1,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "150803828",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_90()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015196386540318",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|135340979");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_19_True,
    });
    params = {
        -- entityId,
        [0] = "2109594463725691950",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|202300603");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_46_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "27160309022500288",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|284385040");
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
                [0] = self.f_box_OutputOrder_v2_95_Out_0,
                [1] = self.f_box_OutputOrder_v2_95_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|326453209");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|375607395");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_94()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|488707282");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108927183014600929",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_16()
    local params;
    params = {
        -- Group,
        [0] = "2109594463725691950",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|500943349");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_18_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_18_True,
    });
    params = {
        -- entityId,
        [0] = "2106649748548098372",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|548447506");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
                [2] = self.f_box_OutputOrder_v2_24_Out_2,
                [3] = self.f_box_OutputOrder_v2_24_Out_3,
                [4] = self.f_box_OutputOrder_v2_24_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|566716365");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108927228719931619",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_13()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_53()
    local params;
    params = {
        -- e_Stim,
        [0] = "2106843519122428188",
        -- e_TrapActivator,
        [1] = "2106663202673672012",
        -- e_Trigger,
        [2] = "2106663293459382121",
        -- e_VFX,
        [3] = "2108914553034128904",
        -- e_VFX_ActiveTrap,
        [4] = "2108927232352198885",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_82()
    local params;
    params = {
        -- Delay,
        [2] = 1,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3485963007",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|756516825");
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

function export:OnEnter_box_GetPlayerGroup_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|786296672");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_35()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_27()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|821820886");
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

function export:OnEnter_box_Reach_GoTo_v3_7()
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
        [6] = "2107617296697527438",
        -- eTrigger,
        [8] = "2107481076678006018",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Regroup",
            id = "964205",
        },
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_57()
    local params;
    params = {
        -- e_Stim,
        [0] = "2106843534330974504",
        -- e_TrapActivator,
        [1] = "2106652274521545100",
        -- e_Trigger,
        [2] = "2106677013904375719",
        -- e_VFX,
        [3] = "2108914572388744718",
        -- e_VFX_ActiveTrap,
        [4] = "2108927240514314473",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|980760741");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_5_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Regroup",
            id = "964205",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|989722087");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_22_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1032997445");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Fail",
            item = "MIS_430_DestroyedTurbines",
            id = "1028894",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1034284830");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108927232352198885",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1057681904");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_56_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "54181906786865724",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1075323674");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_81()
    local params;
    params = {
        -- Delay,
        [2] = 1,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "306259042",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1101488648");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_17_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "27160309022500288",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_93()
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

function export:OnEnter_box_IsEntityLoaded_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1285013466");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_32_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_32_True,
    });
    params = {
        -- entityId,
        [0] = "2106663202673672012",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1368677233");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_39_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "36167508277255094",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1379338204");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_60_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "45174707532116349",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_50()
    local params;
    params = {
        -- e_Stim,
        [0] = "2106843529683685668",
        -- e_TrapActivator,
        [1] = "2106652274521545100",
        -- e_Trigger,
        [2] = "2106665024033406950",
        -- e_VFX,
        [3] = "2108914567223459340",
        -- e_VFX_ActiveTrap,
        [4] = "2108927183014600929",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_33()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2106649748548098372",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_45()
    local params;
    params = {
        -- e_Stim,
        [0] = "2106802855183652413",
        -- e_TrapActivator,
        [1] = "2106663202673672012",
        -- e_Trigger,
        [2] = "2106661740958721684",
        -- e_VFX,
        [3] = "2108914538763009542",
        -- e_VFX_ActiveTrap,
        [4] = "2108927236015923431",
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_6()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = true,
        -- FailingZoneTrigger,
        [2] = "2107643296626004333",
        -- WarningZoneTrigger,
        [3] = "2107643286289142124",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1759279879");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108927236015923431",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_67()
    local params;
    params = {
        -- e_Stim,
        [0] = "2106843523748745504",
        -- e_TrapActivator,
        [1] = "2106649748548098372",
        -- e_Trigger,
        [2] = "2106664761186861020",
        -- e_VFX,
        [3] = "2108914562850897418",
        -- e_VFX_ActiveTrap,
        [4] = "2108927228719931619",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_38()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2106663202673672012",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1893340048");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "E5_Proto_GeoSource_B15 Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1898759342");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_40_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "54181906786865724",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_91()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- SceneEntity,
        [3] = "2107518708973847655",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/MIS_430/mis_430_wake_up.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1921186084");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_10_True,
    });
    params = {
        -- Entity,
        [0] = self.e_TrapUser,
        -- Group,
        [1] = self._sld_PlayerGroup_box_GetPlayerGroup_v2_11,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_26()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Warnings",
            item = "MIS_430_B15_WARN_HoursLater",
            id = "1028771",
        },
        -- MessageType,
        [1] = 2,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B15.domino|@MIS_430_B15_main|1983656015");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleState_v2_89_OnSet,
    });
    l0 = self.box_CharacterLoadedIdListener_v2_90;
    params = {
        -- Pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_88()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3584356036",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_42()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Warnings",
            item = "MIS_430_B10_WARN_TurbinesStart",
            id = "1027640",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_23()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnExit_box_MIS_430_SteamTrap_53_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_53;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_53_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_53;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_53_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_53;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_53_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_53;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self._sld_PlayerGroup_box_GetPlayerGroup_v2_11 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_57_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_57;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_57_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_57;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_57_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_57;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_57_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_57;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_50_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_50;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_50_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_50;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_50_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_50;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_50_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_50;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_45_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_45;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_45_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_45;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_45_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_45;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_45_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_45;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_67_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_67;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_67_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_67;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_67_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_67;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_67_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_67;
    self.e_TrapUser = l0:GetDataOutValue(0);
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
