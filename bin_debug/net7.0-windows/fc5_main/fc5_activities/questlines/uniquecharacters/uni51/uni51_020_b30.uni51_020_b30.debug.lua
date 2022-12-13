LUAC��
 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni51/uni51_020_b30.domino
-- User graph: UNI51_020_B30
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/GroupIter.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemListener.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PawnWeaponCheck_v3.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua");
        cboxRes:RegisterBox("Domino/System/Player/WieldInventory_v5.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/RestrictedItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/TaggingModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B30.UNI51_GrabBuff.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B30.UNI51_InjectBuff.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_020_B30.UNI51_020_BlessedInHoles.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1208579990.bnk]], "CSoundResource");
        cboxRes:LoadResource([[419766665.bnk]], "CSoundResource");
        cboxRes:LoadResource([[159871221.bnk]], "CSoundResource");
        cboxRes:LoadResource([[37679539.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3752651086.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2617276002.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1231152497.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3224442149.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1452321509.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2046880537.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4173118697.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2047672067.bnk]], "CSoundResource");
        cboxRes:LoadResource([[525636272.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3540140438.bnk]], "CSoundResource");
        cboxRes:LoadResource([[683011558.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2180454312.bnk]], "CSoundResource");
        cboxRes:LoadResource([[294667235.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1271921971.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3038987877.bnk]], "CSoundResource");
        cboxRes:LoadResource([[373364794.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1445425660.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3162287052.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2910629883.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4076581793.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2589176122.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_020_B30.UNI51_020_B30.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")] = {
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
                name = "MarkerTypeId",
                type = "database",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "ProgressDisplayType",
                type = "int",
            },
            [3] = {
                name = "TotalProgress",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")] = {
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
                name = "Progress",
                type = "int",
            },
            [2] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/AI/RegenerateNavmesh.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Completed",
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
                name = "RegionEntity",
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
    metadataTable[GetPathID("Domino/System/GroupIter.lua")] = {
        stateless = false,
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
                name = "EndIter",
                delayed = true,
            },
            [1] = {
                name = "PawnIter",
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
                name = "entities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "entity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v5.lua")] = {
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
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberRemoved",
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
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/InventoryItemListener.lua")] = {
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
                name = "ItemAdded",
                delayed = true,
            },
            [3] = {
                name = "ItemRemoved",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [2] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [3] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "itemQuantityRemain",
                type = "int",
            },
            [1] = {
                name = "outItemDescriptorID",
                type = "genericdb",
            },
            [2] = {
                name = "player",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/InventoryItemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Refill",
            },
            [2] = {
                name = "RefillClip",
            },
            [3] = {
                name = "Remove",
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
            [3] = {
                name = "quantity",
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
    metadataTable[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "InHands",
                delayed = false,
            },
            [1] = {
                name = "InInventory",
                delayed = false,
            },
            [2] = {
                name = "NotFound",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "categoryName",
                type = "string",
            },
            [1] = {
                name = "className",
                type = "string",
            },
            [2] = {
                name = "pawn",
                type = "entity",
            },
            [3] = {
                name = "weaponDesc",
                type = "genericdb",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/Player/WieldInventory_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LuaDraw",
            },
            [1] = {
                name = "LuaHolster",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Drawn",
                delayed = false,
            },
            [1] = {
                name = "Holstered",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "itemDescriptorId",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterId",
                type = "genericdb",
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
    metadataTable[GetPathID("Domino/System/Random.lua")] = {
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
            [1] = {
                name = "Probability",
                type = "float",
                dynamicType = 1,
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/RestrictedItemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "AddItem",
            },
            [1] = {
                name = "Clear",
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
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/ShimmerModifier_v2.lua")] = {
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
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "B",
                type = "float",
            },
            [1] = {
                name = "G",
                type = "float",
            },
            [2] = {
                name = "R",
                type = "float",
            },
            [3] = {
                name = "Speed",
                type = "float",
            },
            [4] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B30.UNI51_GrabBuff.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Done",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Buff",
                type = "genericdb",
            },
            [1] = {
                name = "eClientMarker",
                type = "entity",
            },
            [2] = {
                name = "eHostMarker",
                type = "entity",
            },
            [3] = {
                name = "eTrigger",
                type = "entity",
            },
            [4] = {
                name = "oClientObjective",
                type = "oasis",
            },
            [5] = {
                name = "oHostObjective",
                type = "oasis",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B30.UNI51_InjectBuff.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Done",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Buff",
                type = "string",
            },
            [1] = {
                name = "BuffDescriptor",
                type = "genericdb",
            },
            [2] = {
                name = "oObjective",
                type = "oasis",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_020_B30.UNI51_020_BlessedInHoles.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Started",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out1",
                delayed = false,
            },
            [1] = {
                name = "Out2",
                delayed = false,
            },
            [2] = {
                name = "Out3",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "eAngel",
                type = "entity",
            },
            [1] = {
                name = "eStratPoint",
                type = "entity",
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
    self._name = "UNI51_020_B30";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30";
    self.bTarget_01_Destroyed = false;
    self.bTarget_03_Destroyed = false;
    self.bTarget_02_Destroyed = false;
    self.sDmgType = "";
    self.item = "";
    self.iBlessedNbr = 0;
    self.iProgress = 0;
    self.FallCount = 0;
    self.Tweak = nil;
    self.ItemAquiredbyPlayer = 0;
    self.NumberOfPlayers = 0;
    self.FriendlyPlayers = nil;
    self.Host = nil;
    self.Client = nil;
    self.box_Music_Quest_v2_373 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_373;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_373");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|36159360");
    l0:SetConnections({
    });
    self.box_MultipleOR_322 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_322;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_322");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|37080830");
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
        [0] = self.f_box_MultipleOR_322_Out,
    });
    self.box_UNI51_020_BlessedInHoles_288 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_020_B30.UNI51_020_BlessedInHoles.debug.lua");
    l0 = self.box_UNI51_020_BlessedInHoles_288;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_020_BlessedInHoles_288");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|48908868");
    l0:SetConnections({
        -- Out1,
        [0] = self.f_box_UNI51_020_BlessedInHoles_288_Out1,
        -- Out2,
        [1] = self.f_box_UNI51_020_BlessedInHoles_288_Out2,
        -- Out3,
        [2] = self.f_box_UNI51_020_BlessedInHoles_288_Out3,
    });
    self.box_Bind_v4_135 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|54675953");
    l0:SetConnections({
    });
    self.box_Delay_v5_230 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|87153957");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_230_TimeElapsed,
    });
    self.box_GroupSizeListener_v5_307 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_307;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_307");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|91967490");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_307_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_307_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_307_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_307_MemberRemoved,
    });
    self.box_ActivityInitialized_138 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|95593030");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_138_Out,
    });
    self.box_MultipleOR_188 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|104480668");
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
        [0] = self.f_box_MultipleOR_188_Out,
    });
    self.box_MultipleOR_409 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_409;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_409");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|119730529");
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
        [0] = self.f_box_MultipleOR_409_Out,
    });
    self.box_WieldInventory_v5_437 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_437;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_437");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|121964771");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_437_Drawn,
    });
    self.box_Delay_v5_398 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_398;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_398");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|172961456");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_398_TimeElapsed,
    });
    self.box_SoundModifier_v2_257 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_257");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|203669417");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_257_Started,
    });
    self.box_PlayDialog_v6_91 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|234203555");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_91_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_91_FinishedInterrupted,
    });
    self.box_RestrictedItemModifier_441 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_441;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_441");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|234458170");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_441_Out,
    });
    self.box_Delay_v5_206 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|248319960");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_206_TimeElapsed,
    });
    self.box_Delay_v5_190 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|252623522");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_190_TimeElapsed,
    });
    self.box_Delay_v5_394 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_394;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_394");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|293997135");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_394_TimeElapsed,
    });
    self.box_MultipleOR_240 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|294240276");
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
        [0] = self.f_box_MultipleOR_240_Out,
    });
    self.box_Random_228 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|320661396");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_228_Output_0,
                [1] = self.f_box_Random_228_Output_1,
                [2] = self.f_box_Random_228_Output_2,
            },
            count = 3,
        },
    });
    self.box_PlayDialog_v6_58 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|331470100");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_58_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_58_FinishedInterrupted,
    });
    self.box_Random_182 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|349352848");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_182_Output_0,
                [1] = self.f_box_Random_182_Output_1,
                [2] = self.f_box_Random_182_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_211 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|352774110");
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
        [0] = self.f_box_MultipleOR_211_Out,
    });
    self.box_SoundModifier_v2_152 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|359213683");
    l0:SetConnections({
    });
    self.box_WieldInventory_v5_401 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_401;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_401");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|369980115");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_401_Drawn,
    });
    self.box_HealthListener_v6_363 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_363;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_363");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|382267806");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_363_Killed,
    });
    self.box_MultipleOR_28 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|385102107");
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
    self.box_Delay_v5_400 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_400;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_400");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|406832908");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_400_TimeElapsed,
    });
    self.box_GroupSizeListener_v5_324 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_324;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_324");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|451079221");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_324_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_324_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_324_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_324_MemberRemoved,
    });
    self.box_RestrictedItemModifier_137 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|463124538");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_137_Out,
    });
    self.box_PlayDialog_v6_77 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|465946815");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_77_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_77_FinishedInterrupted,
    });
    self.box_UNI51_020_BlessedInHoles_278 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_020_B30.UNI51_020_BlessedInHoles.debug.lua");
    l0 = self.box_UNI51_020_BlessedInHoles_278;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_020_BlessedInHoles_278");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|471590145");
    l0:SetConnections({
        -- Out1,
        [0] = self.f_box_UNI51_020_BlessedInHoles_278_Out1,
        -- Out2,
        [1] = self.f_box_UNI51_020_BlessedInHoles_278_Out2,
        -- Out3,
        [2] = self.f_box_UNI51_020_BlessedInHoles_278_Out3,
    });
    self.box_Delay_v5_223 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|477703071");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_223_TimeElapsed,
    });
    self.box_Delay_v5_219 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|491396358");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_219_TimeElapsed,
    });
    self.box_RegenerateNavmesh_382 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_382;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_382");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|495069239");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_RegenerateNavmesh_382_Completed,
    });
    self.box_UNI51_GrabBuff_14 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B30.UNI51_GrabBuff.debug.lua");
    l0 = self.box_UNI51_GrabBuff_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_GrabBuff_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|500281698");
    l0:SetConnections({
        -- Done,
        [0] = self.f_box_UNI51_GrabBuff_14_Done,
    });
    self.box_PlayDialog_v6_126 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|524971943");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_126_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_126_FinishedInterrupted,
    });
    self.box_UNI51_020_BlessedInHoles_276 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_020_B30.UNI51_020_BlessedInHoles.debug.lua");
    l0 = self.box_UNI51_020_BlessedInHoles_276;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_020_BlessedInHoles_276");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|530704724");
    l0:SetConnections({
        -- Out1,
        [0] = self.f_box_UNI51_020_BlessedInHoles_276_Out1,
        -- Out2,
        [1] = self.f_box_UNI51_020_BlessedInHoles_276_Out2,
        -- Out3,
        [2] = self.f_box_UNI51_020_BlessedInHoles_276_Out3,
    });
    self.box_ProximityRadiusListener_v3_37 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|539787226");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_37_SomeoneNear,
    });
    self.box_PlayDialog_v6_67 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|540300073");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_67_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_67_FinishedInterrupted,
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|545620932");
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
    self.box_MultipleOR_405 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_405;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_405");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|558247887");
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
        [0] = self.f_box_MultipleOR_405_Out,
    });
    self.box_Delay_v5_302 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_302;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_302");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|572361262");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_302_TimeElapsed,
    });
    self.box_PlayDialog_v6_90 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|577672815");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_90_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_90_FinishedInterrupted,
    });
    self.box_Delay_v5_397 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_397;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_397");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|583905566");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_397_TimeElapsed,
    });
    self.box_SoundModifier_v2_153 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|592756125");
    l0:SetConnections({
    });
    self.box_CoopActivePlayers_115 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|598611885");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_115_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_115_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_115_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_115_TwoPlayers,
    });
    self.box_MultipleOR_429 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_429;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_429");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|613195067");
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
        [0] = self.f_box_MultipleOR_429_Out,
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|618800874");
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
        [0] = self.f_box_MultipleOR_33_Out,
    });
    self.box_CharacterLoadedIdListener_65 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|624590930");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_65_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_65_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_65_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_65_LoadedIdReceived,
    });
    self.box_Delay_v5_224 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|624641805");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_224_TimeElapsed,
    });
    self.box_MultipleOR_107 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|629677432");
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
    self.box_PlayDialog_v6_64 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|630806607");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_64_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_64_FinishedInterrupted,
    });
    self.box_MultipleOR_110 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|649523792");
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
        [0] = self.f_box_MultipleOR_110_Out,
    });
    self.box_Random_214 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|652727176");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_214_Output_0,
                [1] = self.f_box_Random_214_Output_1,
                [2] = self.f_box_Random_214_Output_2,
            },
            count = 3,
        },
    });
    self.box_Random_201 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|660744269");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_201_Output_0,
                [1] = self.f_box_Random_201_Output_1,
                [2] = self.f_box_Random_201_Output_2,
            },
            count = 3,
        },
    });
    self.box_GroupSizeListener_v5_25 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|670102915");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_25_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_25_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_25_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_25_MemberRemoved,
    });
    self.box_MultipleOR_105 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|670882680");
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
        [0] = self.f_box_MultipleOR_105_Out,
    });
    self.box_InventoryItemListener_361 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_361;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_361");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|679665828");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_InventoryItemListener_361_Disabled,
        -- Enabled,
        [1] = self.f_box_InventoryItemListener_361_Enabled,
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_361_ItemAdded,
        -- ItemRemoved,
        [3] = self.f_box_InventoryItemListener_361_ItemRemoved,
    });
    self.box_Random_78 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|685457432");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 8,
        },
        dataIn = {
            [1] = 8,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Random_78_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_78_Output_0,
                [1] = self.f_box_Random_78_Output_1,
                [2] = self.f_box_Random_78_Output_2,
                [3] = self.f_box_Random_78_Output_3,
                [4] = self.f_box_Random_78_Output_4,
                [5] = self.f_box_Random_78_Output_5,
                [6] = self.f_box_Random_78_Output_6,
                [7] = self.f_box_Random_78_Output_7,
            },
            count = 8,
        },
    });
    self.box_MultipleOR_439 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_439;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_439");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|686052017");
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
        [0] = self.f_box_MultipleOR_439_Out,
    });
    self.box_Delay_v5_295 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_295;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_295");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|688572762");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_295_TimeElapsed,
    });
    self.box_WieldInventory_v5_443 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_443;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_443");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|690891085");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_443_Drawn,
    });
    self.box_Delay_v5_27 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|703697538");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_27_TimeElapsed,
    });
    self.box_GroupSizeListener_v5_32 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|710881632");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_32_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_32_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_32_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_32_MemberRemoved,
    });
    self.box_MultipleOR_275 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_275;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_275");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|715372772");
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
        [0] = self.f_box_MultipleOR_275_Out,
    });
    self.box_PlayDialog_v6_92 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|721167739");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_92_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_92_FinishedInterrupted,
    });
    self.box_UNI51_020_BlessedInHoles_291 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_020_B30.UNI51_020_BlessedInHoles.debug.lua");
    l0 = self.box_UNI51_020_BlessedInHoles_291;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_020_BlessedInHoles_291");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|724982720");
    l0:SetConnections({
        -- Out1,
        [0] = self.f_box_UNI51_020_BlessedInHoles_291_Out1,
        -- Out2,
        [1] = self.f_box_UNI51_020_BlessedInHoles_291_Out2,
        -- Out3,
        [2] = self.f_box_UNI51_020_BlessedInHoles_291_Out3,
    });
    self.box_PlayDialog_v6_51 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|744474304");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_51_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_51_FinishedInterrupted,
    });
    self.box_Random_217 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|748570703");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_217_Output_0,
                [1] = self.f_box_Random_217_Output_1,
                [2] = self.f_box_Random_217_Output_2,
            },
            count = 3,
        },
    });
    self.box_Delay_v5_185 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|776989419");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_185_TimeElapsed,
    });
    self.box_Delay_v5_98 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|779516048");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_98_TimeElapsed,
    });
    self.box_Delay_v5_395 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_395;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_395");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|788460532");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_395_TimeElapsed,
    });
    self.box_PhysicsModifier_380 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_380;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_380");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|792868880");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_380_Disabled,
    });
    self.box_SoundModifier_v2_259 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_259;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_259");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|804621590");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_41 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|815442522");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_41_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_41_FinishedInterrupted,
    });
    self.box_RestrictedItemModifier_433 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_433;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_433");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|843509329");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_433_Out,
    });
    self.box_RegenerateNavmesh_386 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_386;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_386");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|847436099");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_RegenerateNavmesh_386_Completed,
    });
    self.box_Random_196 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|862522007");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_196_Output_0,
                [1] = self.f_box_Random_196_Output_1,
                [2] = self.f_box_Random_196_Output_2,
            },
            count = 3,
        },
    });
    self.box_Delay_v5_199 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|903578797");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_199_TimeElapsed,
    });
    self.box_MultipleAND_v2_121 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|910519485");
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
        [0] = self.f_box_MultipleAND_v2_121_Out,
    });
    self.box_Gate_v3_49 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|926253111");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_49_Out,
    });
    self.box_MultipleOR_139 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|929957039");
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
        [0] = self.f_box_MultipleOR_139_Out,
    });
    self.box_MultipleOR_192 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|930085351");
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
        [0] = self.f_box_MultipleOR_192_Out,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|939208426");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|952066718");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_Delay_v5_233 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|952545100");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_233_TimeElapsed,
    });
    self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|955869214");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
        [0] = self.f_box_MultipleOR_104_Out,
    });
    self.box_MultipleOR_333 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_333;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_333");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|968575558");
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
        [0] = self.f_box_MultipleOR_333_Out,
    });
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|985383245");
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
        [0] = self.f_box_MultipleOR_70_Out,
    });
    self.box_Delay_v5_209 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|990282802");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_209_TimeElapsed,
    });
    self.box_SoundModifier_v2_252 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_252;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_252");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|994495404");
    l0:SetConnections({
    });
    self.box_WieldInventory_v5_428 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_428;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_428");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1012282468");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_428_Drawn,
    });
    self.box_Delay_v5_72 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1015656822");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_72_TimeElapsed,
    });
    self.box_RestrictedItemModifier_427 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_427;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_427");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1022570499");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_427_Out,
    });
    self.box_UNI51_020_BlessedInHoles_287 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_020_B30.UNI51_020_BlessedInHoles.debug.lua");
    l0 = self.box_UNI51_020_BlessedInHoles_287;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_020_BlessedInHoles_287");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1033862261");
    l0:SetConnections({
        -- Out1,
        [0] = self.f_box_UNI51_020_BlessedInHoles_287_Out1,
        -- Out2,
        [1] = self.f_box_UNI51_020_BlessedInHoles_287_Out2,
        -- Out3,
        [2] = self.f_box_UNI51_020_BlessedInHoles_287_Out3,
    });
    self.box_PhysicsModifier_378 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_378;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_378");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1036350972");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_378_Disabled,
    });
    self.box_CoopActivePlayers_68 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1039920743");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_68_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_68_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_68_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_68_TwoPlayers,
    });
    self.box_Delay_v5_184 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1042076603");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_184_TimeElapsed,
    });
    self.box_MultipleOR_326 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_326;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_326");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1069962735");
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
        [0] = self.f_box_MultipleOR_326_Out,
    });
    self.box_Delay_v5_129 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1077970880");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_129_TimeElapsed,
    });
    self.box_RemoveEntity_v2_396 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_396;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_396");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1080985954");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_396_Out,
    });
    self.box_Music_Quest_v2_374 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_374;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_374");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1111121713");
    l0:SetConnections({
    });
    self.box_UNI51_020_BlessedInHoles_285 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_020_B30.UNI51_020_BlessedInHoles.debug.lua");
    l0 = self.box_UNI51_020_BlessedInHoles_285;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_020_BlessedInHoles_285");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1114557547");
    l0:SetConnections({
        -- Out1,
        [0] = self.f_box_UNI51_020_BlessedInHoles_285_Out1,
        -- Out2,
        [1] = self.f_box_UNI51_020_BlessedInHoles_285_Out2,
        -- Out3,
        [2] = self.f_box_UNI51_020_BlessedInHoles_285_Out3,
    });
    self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1131490872");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 9,
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
    self.box_MultipleOR_426 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_426;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_426");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1131768461");
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
        [0] = self.f_box_MultipleOR_426_Out,
    });
    self.box_UNI51_InjectBuff_370 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B30.UNI51_InjectBuff.debug.lua");
    l0 = self.box_UNI51_InjectBuff_370;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_InjectBuff_370");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1156122643");
    l0:SetConnections({
        -- Done,
        [0] = self.f_box_UNI51_InjectBuff_370_Done,
    });
    self.box_GroupSizeListener_v5_116 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1157758425");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_116_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_116_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_116_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_116_MemberRemoved,
    });
    self.box_Delay_v5_207 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1181818572");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_207_TimeElapsed,
    });
    self.box_RestrictedItemModifier_452 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_452;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_452");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1187295078");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_375 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_375;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_375");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1188215537");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_375_Disabled,
    });
    self.box_GunsForHireSystemModifier_381 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_381;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_381");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1188581809");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_381_Disabled,
    });
    self.box_RegenerateNavmesh_384 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_384;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_384");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1189100136");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_47 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1199263273");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_47_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_47_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_66 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1202136993");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_66_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_66_FinishedInterrupted,
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1220929410");
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
        [0] = self.f_box_MultipleOR_45_Out,
    });
    self.box_Random_241 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_241");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1229678908");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_241_Output_0,
                [1] = self.f_box_Random_241_Output_1,
                [2] = self.f_box_Random_241_Output_2,
            },
            count = 3,
        },
    });
    self.box_Gate_v3_24 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1244168305");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_24_Out,
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1246726517");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_MultipleOR_445 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_445;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_445");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1262599433");
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
        [0] = self.f_box_MultipleOR_445_Out,
    });
    self.box_SoundModifier_v2_253 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_253;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_253");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1263575201");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_253_Started,
    });
    self.box_Delay_v5_255 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_255");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1288043070");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_255_TimeElapsed,
    });
    self.box_MultipleOR_111 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1289002275");
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
        [0] = self.f_box_MultipleOR_111_Out,
    });
    self.box_MultipleOR_235 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_235;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1294699906");
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
        [0] = self.f_box_MultipleOR_235_Out,
    });
    self.box_MultipleOR_35 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1299781900");
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
        [0] = self.f_box_MultipleOR_35_Out,
    });
    self.box_SoundModifier_v2_256 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_256;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_256");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1320219112");
    l0:SetConnections({
    });
    self.box_UNI51_020_BlessedInHoles_284 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_020_B30.UNI51_020_BlessedInHoles.debug.lua");
    l0 = self.box_UNI51_020_BlessedInHoles_284;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_020_BlessedInHoles_284");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1327335883");
    l0:SetConnections({
        -- Out1,
        [0] = self.f_box_UNI51_020_BlessedInHoles_284_Out1,
        -- Out2,
        [1] = self.f_box_UNI51_020_BlessedInHoles_284_Out2,
        -- Out3,
        [2] = self.f_box_UNI51_020_BlessedInHoles_284_Out3,
    });
    self.box_MultipleOR_127 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1336428345");
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
        [0] = self.f_box_MultipleOR_127_Out,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1363868383");
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
    self.box_Delay_v5_148 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1365489852");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_148_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1389875359");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_PlayDialog_v6_46 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1391603974");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_46_Finished,
    });
    self.box_Delay_v5_53 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1396383863");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_53_TimeElapsed,
    });
    self.box_MultipleOR_131 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1408441189");
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
        [0] = self.f_box_MultipleOR_131_Out,
    });
    self.box_PlayDialog_v6_39 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1410096357");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_39_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_39_FinishedInterrupted,
    });
    self.box_UNI51_020_BlessedInHoles_247 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_020_B30.UNI51_020_BlessedInHoles.debug.lua");
    l0 = self.box_UNI51_020_BlessedInHoles_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_020_BlessedInHoles_247");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1420534316");
    l0:SetConnections({
        -- Out1,
        [0] = self.f_box_UNI51_020_BlessedInHoles_247_Out1,
        -- Out2,
        [1] = self.f_box_UNI51_020_BlessedInHoles_247_Out2,
        -- Out3,
        [2] = self.f_box_UNI51_020_BlessedInHoles_247_Out3,
    });
    self.box_PlayDialog_v6_52 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1427317369");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_52_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_52_FinishedInterrupted,
    });
    self.box_NarrativeSceneCleanUp_V2_331 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_331;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_331");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1433534002");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_331_Out,
    });
    self.box_Gate_v3_42 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1441443882");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_42_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_42_Out,
    });
    self.box_CoopActivePlayers_85 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1443050091");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_85_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_85_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_85_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_85_TwoPlayers,
    });
    self.box_Delay_v5_191 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1444513005");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_191_TimeElapsed,
    });
    self.box_Delay_v5_294 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_294;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_294");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1447380769");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_294_TimeElapsed,
    });
    self.box_InventoryItemModifier_362 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_362;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_362");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1454339872");
    l0:SetConnections({
    });
    self.box_Random_237 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1464629628");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_237_Output_0,
                [1] = self.f_box_Random_237_Output_1,
                [2] = self.f_box_Random_237_Output_2,
            },
            count = 3,
        },
    });
    self.box_SoundModifier_v2_151 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1467809798");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_154 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1470465981");
    l0:SetConnections({
    });
    self.box_MultipleOR_442 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_442;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_442");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1489487299");
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
        [0] = self.f_box_MultipleOR_442_Out,
    });
    self.box_MultipleOR_193 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1494622949");
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
        [0] = self.f_box_MultipleOR_193_Out,
    });
    self.box_Random_194 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1495346443");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_194_Output_0,
                [1] = self.f_box_Random_194_Output_1,
                [2] = self.f_box_Random_194_Output_2,
            },
            count = 3,
        },
    });
    self.box_Delay_v5_195 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1496408389");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_195_TimeElapsed,
    });
    self.box_Random_189 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1519571679");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_189_Output_0,
                [1] = self.f_box_Random_189_Output_1,
                [2] = self.f_box_Random_189_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_108 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1536328852");
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
    self.box_MultipleOR_226 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_226;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1544620923");
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
        [0] = self.f_box_MultipleOR_226_Out,
    });
    self.box_Delay_v5_231 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1549035399");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_231_TimeElapsed,
    });
    self.box_RestrictedItemModifier_330 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_330;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_330");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1550504903");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_330_Out,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1553049432");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_Random_238 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1563134232");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_238_Output_0,
                [1] = self.f_box_Random_238_Output_1,
                [2] = self.f_box_Random_238_Output_2,
            },
            count = 3,
        },
    });
    self.box_UNI51_020_BlessedInHoles_243 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_020_B30.UNI51_020_BlessedInHoles.debug.lua");
    l0 = self.box_UNI51_020_BlessedInHoles_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_020_BlessedInHoles_243");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1564469482");
    l0:SetConnections({
        -- Out1,
        [0] = self.f_box_UNI51_020_BlessedInHoles_243_Out1,
        -- Out2,
        [1] = self.f_box_UNI51_020_BlessedInHoles_243_Out2,
        -- Out3,
        [2] = self.f_box_UNI51_020_BlessedInHoles_243_Out3,
    });
    self.box_Delay_v5_296 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_296;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_296");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1609655272");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_296_TimeElapsed,
    });
    self.box_Random_54 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1614537118");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
            [1] = 4,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_54_Output_0,
                [1] = self.f_box_Random_54_Output_1,
                [2] = self.f_box_Random_54_Output_2,
                [3] = self.f_box_Random_54_Output_3,
            },
            count = 4,
        },
    });
    self.box_PhysicsModifier_379 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_379;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_379");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1660536096");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_379_Disabled,
    });
    self.box_GroupIter_134 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1662306516");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_134_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_134_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_134_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_134_Stopped,
    });
    self.box_GunsForHireSystemModifier_404 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_404;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_404");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1674734780");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GunsForHireSystemModifier_404_Enabled,
    });
    self.box_Random_213 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1677999980");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_213_Output_0,
                [1] = self.f_box_Random_213_Output_1,
                [2] = self.f_box_Random_213_Output_2,
            },
            count = 3,
        },
    });
    self.box_RestrictedItemModifier_410 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_410;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_410");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1691885022");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_410_Out,
    });
    self.box_PlayDialog_v6_59 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1699907499");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_59_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_59_FinishedInterrupted,
    });
    self.box_WieldInventory_v5_82 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1713698103");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_82_Drawn,
    });
    self.box_MultipleOR_202 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1715670342");
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
        [0] = self.f_box_MultipleOR_202_Out,
    });
    self.box_Random_204 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1726884291");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_204_Output_0,
                [1] = self.f_box_Random_204_Output_1,
                [2] = self.f_box_Random_204_Output_2,
            },
            count = 3,
        },
    });
    self.box_Music_Quest_v2_371 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_371;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_371");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1740638871");
    l0:SetConnections({
    });
    self.box_MultipleOR_218 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1746066441");
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
        [0] = self.f_box_MultipleOR_218_Out,
    });
    self.box_MultipleOR_50 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1786337156");
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
    self.box_MultipleAND_v2_432 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_432;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_432");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1792457891");
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
        [0] = self.f_box_MultipleAND_v2_432_Out,
    });
    self.box_RestrictedItemModifier_136 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1849428230");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_136_Out,
    });
    self.box_Delay_v5_76 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1857617807");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_76_TimeElapsed,
    });
    self.box_MultipleOR_95 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1857908550");
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
        [0] = self.f_box_MultipleOR_95_Out,
    });
    self.box_Random_225 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1858728443");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_225_Output_0,
                [1] = self.f_box_Random_225_Output_1,
                [2] = self.f_box_Random_225_Output_2,
            },
            count = 3,
        },
    });
    self.box_PlayDialog_v6_43 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1877577811");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_43_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_43_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_38 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1880451531");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_38_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_38_FinishedInterrupted,
    });
    self.box_Random_109 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1881812816");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 5,
        },
        dataIn = {
            [1] = 5,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Random_109_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_109_Output_0,
                [1] = self.f_box_Random_109_Output_1,
                [2] = self.f_box_Random_109_Output_2,
                [3] = self.f_box_Random_109_Output_3,
                [4] = self.f_box_Random_109_Output_4,
            },
            count = 5,
        },
    });
    self.box_UNI51_020_BlessedInHoles_150 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_020_B30.UNI51_020_BlessedInHoles.debug.lua");
    l0 = self.box_UNI51_020_BlessedInHoles_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_020_BlessedInHoles_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1903508750");
    l0:SetConnections({
        -- Out1,
        [0] = self.f_box_UNI51_020_BlessedInHoles_150_Out1,
        -- Out2,
        [1] = self.f_box_UNI51_020_BlessedInHoles_150_Out2,
        -- Out3,
        [2] = self.f_box_UNI51_020_BlessedInHoles_150_Out3,
    });
    self.box_Random_187 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1909814264");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_187_Output_0,
                [1] = self.f_box_Random_187_Output_1,
                [2] = self.f_box_Random_187_Output_2,
            },
            count = 3,
        },
    });
    self.box_RestrictedItemModifier_332 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_332;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_332");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1918723327");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_332_Out,
    });
    self.box_MultipleOR_40 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1919155791");
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
    self.box_Delay_v5_399 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_399;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_399");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1923758044");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_399_TimeElapsed,
    });
    self.box_UNI51_020_BlessedInHoles_290 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_020_B30.UNI51_020_BlessedInHoles.debug.lua");
    l0 = self.box_UNI51_020_BlessedInHoles_290;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_020_BlessedInHoles_290");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1924918464");
    l0:SetConnections({
        -- Out1,
        [0] = self.f_box_UNI51_020_BlessedInHoles_290_Out1,
        -- Out2,
        [1] = self.f_box_UNI51_020_BlessedInHoles_290_Out2,
        -- Out3,
        [2] = self.f_box_UNI51_020_BlessedInHoles_290_Out3,
    });
    self.box_MultipleOR_242 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_242;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_242");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1926621910");
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
        [0] = self.f_box_MultipleOR_242_Out,
    });
    self.box_RestrictedItemModifier_450 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_450;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_450");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1935611391");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v5_316 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_316;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_316");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1939525017");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_316_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_316_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_316_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_316_MemberRemoved,
    });
    self.box_MultipleOR_434 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_434;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_434");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1940670937");
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
        [0] = self.f_box_MultipleOR_434_Out,
    });
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1948694540");
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
        [0] = self.f_box_MultipleOR_106_Out,
    });
    self.box_UNI51_020_BlessedInHoles_246 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_020_B30.UNI51_020_BlessedInHoles.debug.lua");
    l0 = self.box_UNI51_020_BlessedInHoles_246;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_020_BlessedInHoles_246");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1960236214");
    l0:SetConnections({
        -- Out1,
        [0] = self.f_box_UNI51_020_BlessedInHoles_246_Out1,
        -- Out2,
        [1] = self.f_box_UNI51_020_BlessedInHoles_246_Out2,
        -- Out3,
        [2] = self.f_box_UNI51_020_BlessedInHoles_246_Out3,
    });
    self.box_PhysicsModifier_376 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_376;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_376");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1972767628");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_376_Disabled,
    });
    self.box_WieldInventory_v5_446 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_446;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_446");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1996672699");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_446_Drawn,
    });
    self.box_Delay_v5_183 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2001992791");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_183_TimeElapsed,
    });
    self.box_HealthListener_v6_16 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2002215600");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_16_Downed,
    });
    self.box_OnceOnly_v3_319 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_319;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_319");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2014766608");
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
                [0] = self.f_box_OnceOnly_v3_319_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_244 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_244");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2017384058");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_244_TimeElapsed,
    });
    self.box_MultipleOR_216 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2023619068");
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
        [0] = self.f_box_MultipleOR_216_Out,
    });
    self.box_GroupSizeListener_v5_31 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2024765131");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_31_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_31_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_31_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_31_MemberRemoved,
    });
    self.box_Delay_v5_200 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2036841331");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_200_TimeElapsed,
    });
    self.box_InventoryItemModifier_89 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2051667244");
    l0:SetConnections({
    });
    self.box_MultipleOR_186 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2056069223");
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
        [0] = self.f_box_MultipleOR_186_Out,
    });
    self.box_MultipleOR_454 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_454;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_454");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2056769125");
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
        [0] = self.f_box_MultipleOR_454_Out,
    });
    self.box_WieldInventory_v5_448 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_448;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_448");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2087387221");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_448_Drawn,
    });
    self.box_NarrativeFade_165 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2095003372");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_165_FadedIn,
    });
    self.box_Delay_v5_312 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_312;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_312");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2099685497");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_312_TimeElapsed,
    });
    self.box_RegenerateNavmesh_383 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_383;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_383");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2100275108");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_RegenerateNavmesh_383_Completed,
    });
    self.box_SoundModifier_v2_402 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_402;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_402");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2102169767");
    l0:SetConnections({
    });
    self.box_WieldInventory_v5_268 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_268;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_268");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2104947862");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_268_Drawn,
    });
    self.box_Delay_v5_258 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_258");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2107697444");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_258_TimeElapsed,
    });
    self.box_Delay_v5_254 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_254;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_254");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2117487716");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_254_TimeElapsed,
    });
    self.box_SoundModifier_v2_251 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_251");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2140463243");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_251_Started,
    });
    self.box_ExitZoneWarningListener_v3_411 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_411;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_411");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2146022978");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_411_FailingZoneEntered,
    });
    self.box_PhysicsModifier_377 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_377;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_377");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2147430795");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_377_Disabled,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1113729987", "1113729987", "UNI51_020_B30", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_RestrictedItemModifier_137();
    l0 = self.box_RestrictedItemModifier_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|842318455", "842318455", "UNI51_020_B30", "OnLeaveZone", "box_RestrictedItemModifier_137.Clear", self, l0:GetLuaBox());
    -- Clear
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_122_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_121();
    l0 = self.box_MultipleAND_v2_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1089642053", "1089642053", "UNI51_020_B30", "box_Simple_Node_122.Out", "box_MultipleAND_v2_121.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_295();
    l0 = self.box_Delay_v5_295;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|496555693", "496555693", "UNI51_020_B30", "box_Simple_Node_36.Out", "box_Delay_v5_295.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_Delay_v5_296();
    l0 = self.box_Delay_v5_296;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|608685105", "608685105", "UNI51_020_B30", "box_Simple_Node_36.Out", "box_Delay_v5_296.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_163_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_154();
    l0 = self.box_SoundModifier_v2_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|201308831", "201308831", "UNI51_020_B30", "box_Simple_Node_163.Out", "box_SoundModifier_v2_154.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_84_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_363();
    l0 = self.box_HealthListener_v6_363;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|405269100", "405269100", "UNI51_020_B30", "box_Simple_Node_84.Out", "box_HealthListener_v6_363.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Music_Quest_v2_371();
    l0 = self.box_Music_Quest_v2_371;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|714759590", "714759590", "UNI51_020_B30", "box_Simple_Node_84.Out", "box_Music_Quest_v2_371.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_263_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_251();
    l0 = self.box_SoundModifier_v2_251;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|968329630", "968329630", "UNI51_020_B30", "box_Simple_Node_263.Out", "box_SoundModifier_v2_251.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_264_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_253();
    l0 = self.box_SoundModifier_v2_253;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|421288814", "421288814", "UNI51_020_B30", "box_Simple_Node_264.Out", "box_SoundModifier_v2_253.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_265_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_257();
    l0 = self.box_SoundModifier_v2_257;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1908306238", "1908306238", "UNI51_020_B30", "box_Simple_Node_265.Out", "box_SoundModifier_v2_257.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_248_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_182();
    l0 = self.box_Random_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|558628017", "558628017", "UNI51_020_B30", "box_Simple_Node_248.Out", "box_Random_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_249_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_201();
    l0 = self.box_Random_201;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1577396513", "1577396513", "UNI51_020_B30", "box_Simple_Node_249.Out", "box_Random_201.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_250_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_225();
    l0 = self.box_Random_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1372550446", "1372550446", "UNI51_020_B30", "box_Simple_Node_250.Out", "box_Random_225.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_403_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_402();
    l0 = self.box_SoundModifier_v2_402;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|870333403", "870333403", "UNI51_020_B30", "box_Simple_Node_403.Out", "box_SoundModifier_v2_402.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_272_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_292();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|225916172", "225916172", "UNI51_020_B30", "box_Simple_Node_272.Out", "box_IntegerArithmetics_v2_292.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_273_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_280();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1984842558", "1984842558", "UNI51_020_B30", "box_Simple_Node_273.Out", "box_IntegerArithmetics_v2_280.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_274_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_277();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1731853589", "1731853589", "UNI51_020_B30", "box_Simple_Node_274.Out", "box_IntegerArithmetics_v2_277.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_162_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_155();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1533468235", "1533468235", "UNI51_020_B30", "box_Simple_Node_162.Out", "box_OutputOrder_v2_155.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_60_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_24();
    l0 = self.box_Gate_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1019829719", "1019829719", "UNI51_020_B30", "box_Simple_Node_60.Out", "box_Gate_v3_24.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_49();
    l0 = self.box_Gate_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|791345624", "791345624", "UNI51_020_B30", "box_Simple_Node_60.Out", "box_Gate_v3_49.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_271_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_55();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|925782799", "925782799", "UNI51_020_B30", "box_Simple_Node_271.Out", "box_ShimmerModifier_v2_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_270_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_55();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1820221949", "1820221949", "UNI51_020_B30", "box_Simple_Node_270.Out", "box_ShimmerModifier_v2_55.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_112_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1503420614", "1503420614", "UNI51_020_B30", "box_Simple_Node_112.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StaticBreakableBreaker_315_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_314();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1492191838", "1492191838", "UNI51_020_B30", "box_StaticBreakableBreaker_315.Destroyed", "box_ParticleSystem_v3_314.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_349_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_73();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1537571800", "1537571800", "UNI51_020_B30", "box_IsEntityLoaded_v3_349.True", "box_StaticBreakableBreaker_73.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_322_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_332();
    l0 = self.box_MultipleOR_322;
    l1 = self.box_RestrictedItemModifier_332;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|918026574", "918026574", "UNI51_020_B30", "box_MultipleOR_322.Out", "box_RestrictedItemModifier_332.AddItem", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItem
    l1:Exec(0, params);
end;

function export:f_box_UNI51_020_BlessedInHoles_288_Out1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_272();
    l0 = self.box_UNI51_020_BlessedInHoles_288;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|145012475", "145012475", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_288.Out1", "box_Simple_Node_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_288_Out2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_273();
    l0 = self.box_UNI51_020_BlessedInHoles_288;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1179754167", "1179754167", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_288.Out2", "box_Simple_Node_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_288_Out3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_274();
    l0 = self.box_UNI51_020_BlessedInHoles_288;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|373771574", "373771574", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_288.Out3", "box_Simple_Node_274.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetInventoryItemQuantity_166_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_166_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_141();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1265308514", "1265308514", "UNI51_020_B30", "box_GetInventoryItemQuantity_166.Out", "box_Compare_Integers_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_180_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1256789552", "1256789552", "UNI51_020_B30", "box_ParticleSystem_v3_180.Started", "box_MultipleOR_193.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_230_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_230;
    l1 = self.box_MultipleOR_242;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1105368732", "1105368732", "UNI51_020_B30", "box_Delay_v5_230.TimeElapsed", "box_MultipleOR_242.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_307_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_301();
    l0 = self.box_GroupSizeListener_v5_307;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|924429373", "924429373", "UNI51_020_B30", "box_GroupSizeListener_v5_307.MemberRemoved", "box_Compare_Integers_301.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_130_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_109();
    l0 = self.box_Random_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|482565799", "482565799", "UNI51_020_B30", "box_OutputOrder_v2_130.Out", "box_Random_109.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_130_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1573698729", "1573698729", "UNI51_020_B30", "box_OutputOrder_v2_130.Out", "box_MultipleOR_131.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityInitialized_138_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_65();
    l0 = self.box_ActivityInitialized_138;
    l1 = self.box_CharacterLoadedIdListener_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1874419032", "1874419032", "UNI51_020_B30", "box_ActivityInitialized_138.Out", "box_CharacterLoadedIdListener_65.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_188_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_189();
    l0 = self.box_MultipleOR_188;
    l1 = self.box_Random_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|419061579", "419061579", "UNI51_020_B30", "box_MultipleOR_188.Out", "box_Random_189.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_83_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_114();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|30849944", "30849944", "UNI51_020_B30", "box_EndActivityObjective_v2_83.Out", "box_EndActivityObjective_v2_114.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_103_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|288609526", "288609526", "UNI51_020_B30", "box_ActivityObjectiveMarkerModifier_v3_103.Enabled", "box_OutputOrder_v2_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_409_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_331();
    l0 = self.box_MultipleOR_409;
    l1 = self.box_NarrativeSceneCleanUp_V2_331;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1382166766", "1382166766", "UNI51_020_B30", "box_MultipleOR_409.Out", "box_NarrativeSceneCleanUp_V2_331.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_WieldInventory_v5_437_Drawn()
    local l0, l1;
    l0 = self.box_WieldInventory_v5_437;
    l1 = self.box_MultipleOR_439;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|998834120", "998834120", "UNI51_020_B30", "box_WieldInventory_v5_437.Drawn", "box_MultipleOR_439.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PawnWeaponCheck_v3_436_InHands()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_434;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1368575720", "1368575720", "UNI51_020_B30", "box_PawnWeaponCheck_v3_436.InHands", "box_MultipleOR_434.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnWeaponCheck_v3_436_InInventory()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_WieldInventory_v5_443();
    l0 = self.box_WieldInventory_v5_443;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|799591818", "799591818", "UNI51_020_B30", "box_PawnWeaponCheck_v3_436.InInventory", "box_WieldInventory_v5_443.LuaDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- LuaDraw
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_350_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_74();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|565758365", "565758365", "UNI51_020_B30", "box_IsEntityLoaded_v3_350.True", "box_StaticBreakableBreaker_74.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_292_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_292_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_282();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|609387274", "609387274", "UNI51_020_B30", "box_IntegerArithmetics_v2_292.Out", "box_OutputOrder_v2_282.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_398_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_391();
    l0 = self.box_Delay_v5_398;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|546179448", "546179448", "UNI51_020_B30", "box_Delay_v5_398.TimeElapsed", "box_SetContextualStrategy_391.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_157_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_160();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1442689614", "1442689614", "UNI51_020_B30", "box_ShimmerModifier_v2_157.Disabled", "box_ShimmerModifier_v2_160.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_157_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_160();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|530774337", "530774337", "UNI51_020_B30", "box_ShimmerModifier_v2_157.Enabled", "box_ShimmerModifier_v2_160.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_289_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI51_020_BlessedInHoles_290();
    l0 = self.box_UNI51_020_BlessedInHoles_290;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1255089118", "1255089118", "UNI51_020_B30", "box_OutputOrder_v2_289.Out", "box_UNI51_020_BlessedInHoles_290.Started", clone:GetLuaBox(), l0:GetLuaBox());
    -- Started
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_289_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI51_020_BlessedInHoles_285();
    l0 = self.box_UNI51_020_BlessedInHoles_285;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|830242163", "830242163", "UNI51_020_B30", "box_OutputOrder_v2_289.Out", "box_UNI51_020_BlessedInHoles_285.Started", clone:GetLuaBox(), l0:GetLuaBox());
    -- Started
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_289_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI51_020_BlessedInHoles_287();
    l0 = self.box_UNI51_020_BlessedInHoles_287;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|369163565", "369163565", "UNI51_020_B30", "box_OutputOrder_v2_289.Out", "box_UNI51_020_BlessedInHoles_287.Started", clone:GetLuaBox(), l0:GetLuaBox());
    -- Started
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_289_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI51_020_BlessedInHoles_276();
    l0 = self.box_UNI51_020_BlessedInHoles_276;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1288014346", "1288014346", "UNI51_020_B30", "box_OutputOrder_v2_289.Out", "box_UNI51_020_BlessedInHoles_276.Started", clone:GetLuaBox(), l0:GetLuaBox());
    -- Started
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_257_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_258();
    l0 = self.box_SoundModifier_v2_257;
    l1 = self.box_Delay_v5_258;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1094898695", "1094898695", "UNI51_020_B30", "box_SoundModifier_v2_257.Started", "box_Delay_v5_258.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PawnWeaponCheck_v3_267_InHands()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|323773930", "323773930", "UNI51_020_B30", "box_PawnWeaponCheck_v3_267.InHands", "box_MultipleOR_139.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnWeaponCheck_v3_267_InInventory()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_WieldInventory_v5_82();
    l0 = self.box_WieldInventory_v5_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|908274478", "908274478", "UNI51_020_B30", "box_PawnWeaponCheck_v3_267.InInventory", "box_WieldInventory_v5_82.LuaDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- LuaDraw
    l0:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_114_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_328();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|241629541", "241629541", "UNI51_020_B30", "box_EndActivityObjective_v2_114.Out", "box_AddActivityObjective_v2_328.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_91_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_91;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|620767443", "620767443", "UNI51_020_B30", "box_PlayDialog_v6_91.Finished", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_91_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_91;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|590168667", "590168667", "UNI51_020_B30", "box_PlayDialog_v6_91.FinishedInterrupted", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RestrictedItemModifier_441_Out()
    local l0, l1;
    l0 = self.box_RestrictedItemModifier_441;
    l1 = self.box_MultipleOR_442;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|344060432", "344060432", "UNI51_020_B30", "box_RestrictedItemModifier_441.Out", "box_MultipleOR_442.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_227_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_235;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1580019272", "1580019272", "UNI51_020_B30", "box_ParticleSystem_v3_227.Started", "box_MultipleOR_235.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_206_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_206;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1019327101", "1019327101", "UNI51_020_B30", "box_Delay_v5_206.TimeElapsed", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TaggingModifier_v3_161_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_159();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|112271014", "112271014", "UNI51_020_B30", "box_TaggingModifier_v3_161.Tagged", "box_TaggingModifier_v3_159.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_190_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_190;
    l1 = self.box_MultipleOR_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1735368705", "1735368705", "UNI51_020_B30", "box_Delay_v5_190.TimeElapsed", "box_MultipleOR_192.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_128_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1903159725", "1903159725", "UNI51_020_B30", "box_OutputOrder_v2_128.Out", "box_MultipleOR_127.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_128_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_24();
    l0 = self.box_Gate_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2058101784", "2058101784", "UNI51_020_B30", "box_OutputOrder_v2_128.Out", "box_Gate_v3_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_280_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_280_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_293();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1337796624", "1337796624", "UNI51_020_B30", "box_IntegerArithmetics_v2_280.Out", "box_OutputOrder_v2_293.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|502992730", "502992730", "UNI51_020_B30", "box_OutputOrder_v2_2.Out", "box_ActivityAcknowledgeGate_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|449885865", "449885865", "UNI51_020_B30", "box_OutputOrder_v2_2.Out", "box_Print_v2_9.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_293_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_281();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|543637303", "543637303", "UNI51_020_B30", "box_OutputOrder_v2_293.Out", "box_Print_v2_281.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_293_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_275;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1285821463", "1285821463", "UNI51_020_B30", "box_OutputOrder_v2_293.Out", "box_MultipleOR_275.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_293_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_249();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1743957475", "1743957475", "UNI51_020_B30", "box_OutputOrder_v2_293.Out", "box_Simple_Node_249.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_394_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_388();
    l0 = self.box_Delay_v5_394;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|72933074", "72933074", "UNI51_020_B30", "box_Delay_v5_394.TimeElapsed", "box_SetContextualStrategy_388.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_240_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_238();
    l0 = self.box_MultipleOR_240;
    l1 = self.box_Random_238;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2026710891", "2026710891", "UNI51_020_B30", "box_MultipleOR_240.Out", "box_Random_238.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_239_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_235;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|102000491", "102000491", "UNI51_020_B30", "box_ParticleSystem_v3_239.Started", "box_MultipleOR_235.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Random_228_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_230();
    l0 = self.box_Random_228;
    l1 = self.box_Delay_v5_230;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|191621062", "191621062", "UNI51_020_B30", "box_Random_228.Output", "box_Delay_v5_230.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_228_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_233();
    l0 = self.box_Random_228;
    l1 = self.box_Delay_v5_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1176950237", "1176950237", "UNI51_020_B30", "box_Random_228.Output", "box_Delay_v5_233.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_228_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_223();
    l0 = self.box_Random_228;
    l1 = self.box_Delay_v5_223;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|194229780", "194229780", "UNI51_020_B30", "box_Random_228.Output", "box_Delay_v5_223.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_58_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_58;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|450845182", "450845182", "UNI51_020_B30", "box_PlayDialog_v6_58.Finished", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_58_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_58;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|240065585", "240065585", "UNI51_020_B30", "box_PlayDialog_v6_58.FinishedInterrupted", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ParticleSystem_v3_174_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|269955896", "269955896", "UNI51_020_B30", "box_ParticleSystem_v3_174.Started", "box_MultipleOR_186.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_182_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_173();
    l0 = self.box_Random_182;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1060758744", "1060758744", "UNI51_020_B30", "box_Random_182.Output", "box_ParticleSystem_v3_173.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_182_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_174();
    l0 = self.box_Random_182;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1669253466", "1669253466", "UNI51_020_B30", "box_Random_182.Output", "box_ParticleSystem_v3_174.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_182_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_175();
    l0 = self.box_Random_182;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|246626965", "246626965", "UNI51_020_B30", "box_Random_182.Output", "box_ParticleSystem_v3_175.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_211_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_261();
    l0 = self.box_MultipleOR_211;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1501213315", "1501213315", "UNI51_020_B30", "box_MultipleOR_211.Out", "box_OutputOrder_v2_261.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_WieldInventory_v5_401_Drawn()
    local l0, l1;
    l0 = self.box_WieldInventory_v5_401;
    l1 = self.box_MultipleOR_429;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|794662054", "794662054", "UNI51_020_B30", "box_WieldInventory_v5_401.Drawn", "box_MultipleOR_429.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_117_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_147();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1845757161", "1845757161", "UNI51_020_B30", "box_Compare_Integers_117.A_le_B", "box_OutputOrder_v2_147.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_363_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_364();
    l0 = self.box_HealthListener_v6_363;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|764508015", "764508015", "UNI51_020_B30", "box_HealthListener_v6_363.Killed", "box_ActivityRetry_364.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_28_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_28;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|343251461", "343251461", "UNI51_020_B30", "box_MultipleOR_28.Out", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_307();
    l0 = self.box_GroupSizeListener_v5_307;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|536365978", "536365978", "UNI51_020_B30", "box_OutputOrder_v2_17.Out", "box_GroupSizeListener_v5_307.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_31();
    l0 = self.box_GroupSizeListener_v5_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|47270280", "47270280", "UNI51_020_B30", "box_OutputOrder_v2_17.Out", "box_GroupSizeListener_v5_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_312();
    l0 = self.box_Delay_v5_312;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|473556259", "473556259", "UNI51_020_B30", "box_OutputOrder_v2_17.Out", "box_Delay_v5_312.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_400_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_393();
    l0 = self.box_Delay_v5_400;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1772346144", "1772346144", "UNI51_020_B30", "box_Delay_v5_400.TimeElapsed", "box_SetContextualStrategy_393.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_73_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_171();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|8542528", "8542528", "UNI51_020_B30", "box_StaticBreakableBreaker_73.Destroyed", "box_ParticleSystem_v3_171.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_133_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_78();
    l0 = self.box_Random_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1380374907", "1380374907", "UNI51_020_B30", "box_OutputOrder_v2_133.Out", "box_Random_78.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_133_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1250938445", "1250938445", "UNI51_020_B30", "box_OutputOrder_v2_133.Out", "box_MultipleOR_106.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_TaggingModifier_v3_369_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_400();
    l0 = self.box_Delay_v5_400;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|163857897", "163857897", "UNI51_020_B30", "box_TaggingModifier_v3_369.Tagged", "box_Delay_v5_400.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v5_324_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_324;
    l1 = self.box_MultipleOR_326;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|112163053", "112163053", "UNI51_020_B30", "box_GroupSizeListener_v5_324.Enabled", "box_MultipleOR_326.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_324_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_324;
    l1 = self.box_MultipleOR_326;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1647599629", "1647599629", "UNI51_020_B30", "box_GroupSizeListener_v5_324.MemberRemoved", "box_MultipleOR_326.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RestrictedItemModifier_137_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_372();
    l0 = self.box_RestrictedItemModifier_137;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|333991955", "333991955", "UNI51_020_B30", "box_RestrictedItemModifier_137.Out", "box_OutputOrder_v2_372.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_77_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_77;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|975264825", "975264825", "UNI51_020_B30", "box_PlayDialog_v6_77.Finished", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_77_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_77;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1564463096", "1564463096", "UNI51_020_B30", "box_PlayDialog_v6_77.FinishedInterrupted", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_435_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnWeaponCheck_v3_436();
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|107787902", "107787902", "UNI51_020_B30", "box_Compare_Integers_435.A_ge_B", "box_PawnWeaponCheck_v3_436.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_435_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnWeaponCheck_v3_440();
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|784617267", "784617267", "UNI51_020_B30", "box_Compare_Integers_435.A_lt_B", "box_PawnWeaponCheck_v3_440.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_278_Out1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_272();
    l0 = self.box_UNI51_020_BlessedInHoles_278;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1193145043", "1193145043", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_278.Out1", "box_Simple_Node_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_278_Out2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_273();
    l0 = self.box_UNI51_020_BlessedInHoles_278;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|351707785", "351707785", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_278.Out2", "box_Simple_Node_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_278_Out3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_274();
    l0 = self.box_UNI51_020_BlessedInHoles_278;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|960202507", "960202507", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_278.Out3", "box_Simple_Node_274.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_223_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_223;
    l1 = self.box_MultipleOR_242;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1668939436", "1668939436", "UNI51_020_B30", "box_Delay_v5_223.TimeElapsed", "box_MultipleOR_242.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_219_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_219;
    l1 = self.box_MultipleOR_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|218388781", "218388781", "UNI51_020_B30", "box_Delay_v5_219.TimeElapsed", "box_MultipleOR_202.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RegenerateNavmesh_382_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RegenerateNavmesh_383();
    l0 = self.box_RegenerateNavmesh_382;
    l1 = self.box_RegenerateNavmesh_383;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|124629155", "124629155", "UNI51_020_B30", "box_RegenerateNavmesh_382.Completed", "box_RegenerateNavmesh_383.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UNI51_GrabBuff_14_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_UNI51_GrabBuff_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2052312264", "2052312264", "UNI51_020_B30", "box_UNI51_GrabBuff_14.Done", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_142_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_142_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_134();
    l0 = self.box_GroupIter_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|702558441", "702558441", "UNI51_020_B30", "box_GetPlayerGroup_v2_142.Out", "box_GroupIter_134.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_126_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_126;
    l1 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|286871022", "286871022", "UNI51_020_B30", "box_PlayDialog_v6_126.Finished", "box_MultipleOR_95.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_126_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_126;
    l1 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1731241135", "1731241135", "UNI51_020_B30", "box_PlayDialog_v6_126.FinishedInterrupted", "box_MultipleOR_95.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_79_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_97();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|338545503", "338545503", "UNI51_020_B30", "box_OutputOrder_v2_79.Out", "box_SetActivityObjectiveProgress_v2_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1446040086", "1446040086", "UNI51_020_B30", "box_OutputOrder_v2_79.Out", "box_OutputOrder_v2_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_276_Out1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_272();
    l0 = self.box_UNI51_020_BlessedInHoles_276;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|724876202", "724876202", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_276.Out1", "box_Simple_Node_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_276_Out2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_273();
    l0 = self.box_UNI51_020_BlessedInHoles_276;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1115668507", "1115668507", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_276.Out2", "box_Simple_Node_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_276_Out3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_274();
    l0 = self.box_UNI51_020_BlessedInHoles_276;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2038013524", "2038013524", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_276.Out3", "box_Simple_Node_274.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_294();
    l0 = self.box_Delay_v5_294;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|421473725", "421473725", "UNI51_020_B30", "box_OutputOrder_v2_11.Out", "box_Delay_v5_294.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_25();
    l0 = self.box_GroupSizeListener_v5_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|155639565", "155639565", "UNI51_020_B30", "box_OutputOrder_v2_11.Out", "box_GroupSizeListener_v5_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_37_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_46();
    l0 = self.box_ProximityRadiusListener_v3_37;
    l1 = self.box_PlayDialog_v6_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|832809345", "832809345", "UNI51_020_B30", "box_ProximityRadiusListener_v3_37.SomeoneNear", "box_PlayDialog_v6_46.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_67_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_67;
    l1 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|628313140", "628313140", "UNI51_020_B30", "box_PlayDialog_v6_67.Finished", "box_MultipleOR_110.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_67_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_67;
    l1 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|829598647", "829598647", "UNI51_020_B30", "box_PlayDialog_v6_67.FinishedInterrupted", "box_MultipleOR_110.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_42();
    l0 = self.box_MultipleOR_48;
    l1 = self.box_Gate_v3_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|238805596", "238805596", "UNI51_020_B30", "box_MultipleOR_48.Out", "box_Gate_v3_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_TaggingModifier_v3_266_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_323();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|913800697", "913800697", "UNI51_020_B30", "box_TaggingModifier_v3_266.Tagged", "box_TaggingModifier_v3_323.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_405_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_432();
    l0 = self.box_MultipleOR_405;
    l1 = self.box_MultipleAND_v2_432;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|844152299", "844152299", "UNI51_020_B30", "box_MultipleOR_405.Out", "box_MultipleAND_v2_432.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_AddActivityObjectiveProgress_v2_94_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_94_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_168();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1501149615", "1501149615", "UNI51_020_B30", "box_AddActivityObjectiveProgress_v2_94.Out", "box_OutputOrder_v2_168.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_260_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_187();
    l0 = self.box_Random_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|988949518", "988949518", "UNI51_020_B30", "box_OutputOrder_v2_260.Out", "box_Random_187.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_260_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_263();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|512079930", "512079930", "UNI51_020_B30", "box_OutputOrder_v2_260.Out", "box_Simple_Node_263.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_302_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_342();
    l0 = self.box_Delay_v5_302;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1836956290", "1836956290", "UNI51_020_B30", "box_Delay_v5_302.TimeElapsed", "box_OutputOrder_v2_342.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_90_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_90;
    l1 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1056508503", "1056508503", "UNI51_020_B30", "box_PlayDialog_v6_90.Finished", "box_MultipleOR_111.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_90_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_90;
    l1 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1908834330", "1908834330", "UNI51_020_B30", "box_PlayDialog_v6_90.FinishedInterrupted", "box_MultipleOR_111.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_397_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_390();
    l0 = self.box_Delay_v5_397;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|48954185", "48954185", "UNI51_020_B30", "box_Delay_v5_397.TimeElapsed", "box_SetContextualStrategy_390.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_198_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|758041527", "758041527", "UNI51_020_B30", "box_ParticleSystem_v3_198.Started", "box_MultipleOR_211.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_115_OnePlayer()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_115_OnePlayer();
    params = self:OnEnter_box_GetInventoryItemQuantity_166();
    l0 = self.box_CoopActivePlayers_115;
    l1 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|587357105", "587357105", "UNI51_020_B30", "box_CoopActivePlayers_115.OnePlayer", "box_GetInventoryItemQuantity_166.GetNumberOfItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetNumberOfItems
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_115_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = self.box_CoopActivePlayers_115;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1561922430", "1561922430", "UNI51_020_B30", "box_CoopActivePlayers_115.PlayerAdded", "box_Simple_Node_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_115_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_115_TwoPlayers();
    params = self:OnEnter_box_OutputOrder_v2_444();
    l0 = self.box_CoopActivePlayers_115;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1152097805", "1152097805", "UNI51_020_B30", "box_CoopActivePlayers_115.TwoPlayers", "box_OutputOrder_v2_444.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_146_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI51_020_BlessedInHoles_243();
    l0 = self.box_UNI51_020_BlessedInHoles_243;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|952330018", "952330018", "UNI51_020_B30", "box_OutputOrder_v2_146.Out", "box_UNI51_020_BlessedInHoles_243.Started", clone:GetLuaBox(), l0:GetLuaBox());
    -- Started
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_146_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI51_020_BlessedInHoles_246();
    l0 = self.box_UNI51_020_BlessedInHoles_246;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|385322641", "385322641", "UNI51_020_B30", "box_OutputOrder_v2_146.Out", "box_UNI51_020_BlessedInHoles_246.Started", clone:GetLuaBox(), l0:GetLuaBox());
    -- Started
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_146_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI51_020_BlessedInHoles_150();
    l0 = self.box_UNI51_020_BlessedInHoles_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|656627338", "656627338", "UNI51_020_B30", "box_OutputOrder_v2_146.Out", "box_UNI51_020_BlessedInHoles_150.Started", clone:GetLuaBox(), l0:GetLuaBox());
    -- Started
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_146_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI51_020_BlessedInHoles_247();
    l0 = self.box_UNI51_020_BlessedInHoles_247;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1438211948", "1438211948", "UNI51_020_B30", "box_OutputOrder_v2_146.Out", "box_UNI51_020_BlessedInHoles_247.Started", clone:GetLuaBox(), l0:GetLuaBox());
    -- Started
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_372_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_373();
    l0 = self.box_Music_Quest_v2_373;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|478636176", "478636176", "UNI51_020_B30", "box_OutputOrder_v2_372.Out", "box_Music_Quest_v2_373.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_372_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|436480501", "436480501", "UNI51_020_B30", "box_OutputOrder_v2_372.Out", "box_ActivityRetry_4.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_318_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_311();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|101222366", "101222366", "UNI51_020_B30", "box_StaticBreakableBreaker_318.Destroyed", "box_ParticleSystem_v3_311.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_56_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_157();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|876822113", "876822113", "UNI51_020_B30", "box_ShimmerModifier_v2_56.Disabled", "box_ShimmerModifier_v2_157.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_56_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_157();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2100045194", "2100045194", "UNI51_020_B30", "box_ShimmerModifier_v2_56.Enabled", "box_ShimmerModifier_v2_157.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_429_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_410();
    l0 = self.box_MultipleOR_429;
    l1 = self.box_RestrictedItemModifier_410;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1388809406", "1388809406", "UNI51_020_B30", "box_MultipleOR_429.Out", "box_RestrictedItemModifier_410.AddItem", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItem
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_33_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_33;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|655024026", "655024026", "UNI51_020_B30", "box_MultipleOR_33.Out", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_CharacterLoadedIdListener_65_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_65_LoadedIdReceived();
    params = self:OnEnter_box_GunsForHireSystemModifier_381();
    l0 = self.box_CharacterLoadedIdListener_65;
    l1 = self.box_GunsForHireSystemModifier_381;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1172011476", "1172011476", "UNI51_020_B30", "box_CharacterLoadedIdListener_65.LoadedIdReceived", "box_GunsForHireSystemModifier_381.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_224_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_224;
    l1 = self.box_MultipleOR_226;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|827290383", "827290383", "UNI51_020_B30", "box_Delay_v5_224.TimeElapsed", "box_MultipleOR_226.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_107_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_107;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2116587893", "2116587893", "UNI51_020_B30", "box_MultipleOR_107.Out", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PlayDialog_v6_64_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_64;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|211560260", "211560260", "UNI51_020_B30", "box_PlayDialog_v6_64.Finished", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_64_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_64;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1714926407", "1714926407", "UNI51_020_B30", "box_PlayDialog_v6_64.FinishedInterrupted", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_308_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_129();
    l0 = self.box_Delay_v5_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|124781405", "124781405", "UNI51_020_B30", "box_OutputOrder_v2_308.Out", "box_Delay_v5_129.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_308_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_316();
    l0 = self.box_GroupSizeListener_v5_316;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1784404502", "1784404502", "UNI51_020_B30", "box_OutputOrder_v2_308.Out", "box_GroupSizeListener_v5_316.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_308_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_122();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|516078049", "516078049", "UNI51_020_B30", "box_OutputOrder_v2_308.Out", "box_Simple_Node_122.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_55_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_56();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|34953287", "34953287", "UNI51_020_B30", "box_ShimmerModifier_v2_55.Disabled", "box_ShimmerModifier_v2_56.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_55_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_56();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|233118128", "233118128", "UNI51_020_B30", "box_ShimmerModifier_v2_55.Enabled", "box_ShimmerModifier_v2_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_110_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_110;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|93339524", "93339524", "UNI51_020_B30", "box_MultipleOR_110.Out", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_214_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_207();
    l0 = self.box_Random_214;
    l1 = self.box_Delay_v5_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|690422214", "690422214", "UNI51_020_B30", "box_Random_214.Output", "box_Delay_v5_207.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_214_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_219();
    l0 = self.box_Random_214;
    l1 = self.box_Delay_v5_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|496068030", "496068030", "UNI51_020_B30", "box_Random_214.Output", "box_Delay_v5_219.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_214_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_200();
    l0 = self.box_Random_214;
    l1 = self.box_Delay_v5_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1554079528", "1554079528", "UNI51_020_B30", "box_Random_214.Output", "box_Delay_v5_200.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Integers_93_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_327();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|275184384", "275184384", "UNI51_020_B30", "box_Compare_Integers_93.A_ge_B", "box_OutputOrder_v2_327.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_201_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_198();
    l0 = self.box_Random_201;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1058550377", "1058550377", "UNI51_020_B30", "box_Random_201.Output", "box_ParticleSystem_v3_198.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_201_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_203();
    l0 = self.box_Random_201;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|198570262", "198570262", "UNI51_020_B30", "box_Random_201.Output", "box_ParticleSystem_v3_203.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_201_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_215();
    l0 = self.box_Random_201;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|962566472", "962566472", "UNI51_020_B30", "box_Random_201.Output", "box_ParticleSystem_v3_215.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_25_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_26();
    l0 = self.box_GroupSizeListener_v5_25;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|633055471", "633055471", "UNI51_020_B30", "box_GroupSizeListener_v5_25.MemberRemoved", "box_Compare_Integers_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_105_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_105;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|678602735", "678602735", "UNI51_020_B30", "box_MultipleOR_105.Out", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OutputOrder_v2_282_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_145();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|22843637", "22843637", "UNI51_020_B30", "box_OutputOrder_v2_282.Out", "box_Print_v2_145.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_282_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_275;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1375920350", "1375920350", "UNI51_020_B30", "box_OutputOrder_v2_282.Out", "box_MultipleOR_275.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_282_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_248();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|677022470", "677022470", "UNI51_020_B30", "box_OutputOrder_v2_282.Out", "box_Simple_Node_248.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InventoryItemListener_361_ItemRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_132();
    l0 = self.box_InventoryItemListener_361;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|980229972", "980229972", "UNI51_020_B30", "box_InventoryItemListener_361.ItemRemoved", "box_Compare_Integers_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_78_None()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_133();
    l0 = self.box_Random_78;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1388943744", "1388943744", "UNI51_020_B30", "box_Random_78.None", "box_OutputOrder_v2_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_78_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_39();
    l0 = self.box_Random_78;
    l1 = self.box_PlayDialog_v6_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|295326247", "295326247", "UNI51_020_B30", "box_Random_78.Output", "box_PlayDialog_v6_39.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_78_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_52();
    l0 = self.box_Random_78;
    l1 = self.box_PlayDialog_v6_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1935674553", "1935674553", "UNI51_020_B30", "box_Random_78.Output", "box_PlayDialog_v6_52.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_78_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_43();
    l0 = self.box_Random_78;
    l1 = self.box_PlayDialog_v6_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1833226732", "1833226732", "UNI51_020_B30", "box_Random_78.Output", "box_PlayDialog_v6_43.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_78_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_47();
    l0 = self.box_Random_78;
    l1 = self.box_PlayDialog_v6_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|859919668", "859919668", "UNI51_020_B30", "box_Random_78.Output", "box_PlayDialog_v6_47.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_78_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_Random_78;
    l1 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2073566240", "2073566240", "UNI51_020_B30", "box_Random_78.Output", "box_PlayDialog_v6_38.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_78_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_66();
    l0 = self.box_Random_78;
    l1 = self.box_PlayDialog_v6_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1266139593", "1266139593", "UNI51_020_B30", "box_Random_78.Output", "box_PlayDialog_v6_66.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_78_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_77();
    l0 = self.box_Random_78;
    l1 = self.box_PlayDialog_v6_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1658968642", "1658968642", "UNI51_020_B30", "box_Random_78.Output", "box_PlayDialog_v6_77.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_78_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_126();
    l0 = self.box_Random_78;
    l1 = self.box_PlayDialog_v6_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1366168285", "1366168285", "UNI51_020_B30", "box_Random_78.Output", "box_PlayDialog_v6_126.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_439_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_441();
    l0 = self.box_MultipleOR_439;
    l1 = self.box_RestrictedItemModifier_441;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|499837526", "499837526", "UNI51_020_B30", "box_MultipleOR_439.Out", "box_RestrictedItemModifier_441.AddItem", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItem
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_295_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_286();
    l0 = self.box_Delay_v5_295;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|873166132", "873166132", "UNI51_020_B30", "box_Delay_v5_295.TimeElapsed", "box_OutputOrder_v2_286.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_WieldInventory_v5_443_Drawn()
    local l0, l1;
    l0 = self.box_WieldInventory_v5_443;
    l1 = self.box_MultipleOR_434;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|763248726", "763248726", "UNI51_020_B30", "box_WieldInventory_v5_443.Drawn", "box_MultipleOR_434.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PawnWeaponCheck_v3_440_InHands()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_439;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1189433087", "1189433087", "UNI51_020_B30", "box_PawnWeaponCheck_v3_440.InHands", "box_MultipleOR_439.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnWeaponCheck_v3_440_InInventory()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_WieldInventory_v5_437();
    l0 = self.box_WieldInventory_v5_437;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1527227677", "1527227677", "UNI51_020_B30", "box_PawnWeaponCheck_v3_440.InInventory", "box_WieldInventory_v5_437.LuaDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- LuaDraw
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_449_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnWeaponCheck_v3_447();
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1380968854", "1380968854", "UNI51_020_B30", "box_Compare_Integers_449.A_ge_B", "box_PawnWeaponCheck_v3_447.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_449_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnWeaponCheck_v3_453();
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|544250289", "544250289", "UNI51_020_B30", "box_Compare_Integers_449.A_lt_B", "box_PawnWeaponCheck_v3_453.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetInventoryItemQuantity_406_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_406_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_425();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2147385152", "2147385152", "UNI51_020_B30", "box_GetInventoryItemQuantity_406.Out", "box_Compare_Integers_425.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_27_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = self.box_Delay_v5_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2005427741", "2005427741", "UNI51_020_B30", "box_Delay_v5_27.TimeElapsed", "box_OutputOrder_v2_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_32_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_34();
    l0 = self.box_GroupSizeListener_v5_32;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1985335179", "1985335179", "UNI51_020_B30", "box_GroupSizeListener_v5_32.MemberRemoved", "box_Compare_Integers_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_275_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = self.box_MultipleOR_275;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2070064220", "2070064220", "UNI51_020_B30", "box_MultipleOR_275.Out", "box_OutputOrder_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_92_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_92;
    l1 = self.box_MultipleOR_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|161518540", "161518540", "UNI51_020_B30", "box_PlayDialog_v6_92.Finished", "box_MultipleOR_105.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_92_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_92;
    l1 = self.box_MultipleOR_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1140422908", "1140422908", "UNI51_020_B30", "box_PlayDialog_v6_92.FinishedInterrupted", "box_MultipleOR_105.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UNI51_020_BlessedInHoles_291_Out1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_272();
    l0 = self.box_UNI51_020_BlessedInHoles_291;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|153161661", "153161661", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_291.Out1", "box_Simple_Node_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_291_Out2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_273();
    l0 = self.box_UNI51_020_BlessedInHoles_291;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|888234924", "888234924", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_291.Out2", "box_Simple_Node_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_291_Out3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_274();
    l0 = self.box_UNI51_020_BlessedInHoles_291;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|201739939", "201739939", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_291.Out3", "box_Simple_Node_274.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_310_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_305();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|60064868", "60064868", "UNI51_020_B30", "box_StaticBreakableBreaker_310.Destroyed", "box_ParticleSystem_v3_305.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetInventoryItemQuantity_451_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_451_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_449();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1771231843", "1771231843", "UNI51_020_B30", "box_GetInventoryItemQuantity_451.Out", "box_Compare_Integers_449.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_51_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_51;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|293549327", "293549327", "UNI51_020_B30", "box_PlayDialog_v6_51.Finished", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_PlayDialog_v6_51_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_51;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1220750233", "1220750233", "UNI51_020_B30", "box_PlayDialog_v6_51.FinishedInterrupted", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_Random_217_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_212();
    l0 = self.box_Random_217;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1671849642", "1671849642", "UNI51_020_B30", "box_Random_217.Output", "box_ParticleSystem_v3_212.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_217_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_210();
    l0 = self.box_Random_217;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1272490043", "1272490043", "UNI51_020_B30", "box_Random_217.Output", "box_ParticleSystem_v3_210.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_217_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_205();
    l0 = self.box_Random_217;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|119538005", "119538005", "UNI51_020_B30", "box_Random_217.Output", "box_ParticleSystem_v3_205.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_261_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_204();
    l0 = self.box_Random_204;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1169337228", "1169337228", "UNI51_020_B30", "box_OutputOrder_v2_261.Out", "box_Random_204.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_261_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_264();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1981288643", "1981288643", "UNI51_020_B30", "box_OutputOrder_v2_261.Out", "box_Simple_Node_264.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_339_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_124();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1554014477", "1554014477", "UNI51_020_B30", "box_IsEntityLoaded_v3_339.True", "box_StaticBreakableBreaker_124.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_414_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_356();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1761335680", "1761335680", "UNI51_020_B30", "box_StaticBreakableBreaker_414.Destroyed", "box_ParticleSystem_v3_356.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_185_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_185;
    l1 = self.box_MultipleOR_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2127976432", "2127976432", "UNI51_020_B30", "box_Delay_v5_185.TimeElapsed", "box_MultipleOR_188.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_98_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_169();
    l0 = self.box_Delay_v5_98;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|899183845", "899183845", "UNI51_020_B30", "box_Delay_v5_98.TimeElapsed", "box_OutputOrder_v2_169.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_395_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_389();
    l0 = self.box_Delay_v5_395;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|784479013", "784479013", "UNI51_020_B30", "box_Delay_v5_395.TimeElapsed", "box_SetContextualStrategy_389.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhysicsModifier_380_Disabled()
    local l0, l1;
    l0 = self.box_PhysicsModifier_380;
    l1 = self.box_ActivityInitialized_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|169197719", "169197719", "UNI51_020_B30", "box_PhysicsModifier_380.Disabled", "box_ActivityInitialized_138.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_169_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_374();
    l0 = self.box_Music_Quest_v2_374;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|34754116", "34754116", "UNI51_020_B30", "box_OutputOrder_v2_169.Out", "box_Music_Quest_v2_374.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_169_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RestrictedItemModifier_330();
    l0 = self.box_RestrictedItemModifier_330;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|5297880", "5297880", "UNI51_020_B30", "box_OutputOrder_v2_169.Out", "box_RestrictedItemModifier_330.Clear", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clear
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_169_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_270();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1031049821", "1031049821", "UNI51_020_B30", "box_OutputOrder_v2_169.Out", "box_Simple_Node_270.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_169_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_163();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|904639393", "904639393", "UNI51_020_B30", "box_OutputOrder_v2_169.Out", "box_Simple_Node_163.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_41_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_41;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1777927294", "1777927294", "UNI51_020_B30", "box_PlayDialog_v6_41.Finished", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_PlayDialog_v6_41_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_41;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|265067057", "265067057", "UNI51_020_B30", "box_PlayDialog_v6_41.FinishedInterrupted", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1029938369", "1029938369", "UNI51_020_B30", "box_OutputOrder_v2_8.Out", "box_Print_v2_7.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|435625513", "435625513", "UNI51_020_B30", "box_OutputOrder_v2_8.Out", "box_ActivityEnd_5.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_143_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_144();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1030523406", "1030523406", "UNI51_020_B30", "box_TaggingModifier_v3_143.Tagged", "box_TaggingModifier_v3_144.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RestrictedItemModifier_433_Out()
    local l0, l1;
    l0 = self.box_RestrictedItemModifier_433;
    l1 = self.box_MultipleOR_442;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1177725554", "1177725554", "UNI51_020_B30", "box_RestrictedItemModifier_433.Out", "box_MultipleOR_442.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_354_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_344();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|913429560", "913429560", "UNI51_020_B30", "box_OutputOrder_v2_354.Out", "box_IsEntityLoaded_v3_344.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_354_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_353();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1147181481", "1147181481", "UNI51_020_B30", "box_OutputOrder_v2_354.Out", "box_IsEntityLoaded_v3_353.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_354_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_343();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|442906287", "442906287", "UNI51_020_B30", "box_OutputOrder_v2_354.Out", "box_IsEntityLoaded_v3_343.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_354_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_266();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|220264354", "220264354", "UNI51_020_B30", "box_OutputOrder_v2_354.Out", "box_TaggingModifier_v3_266.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RegenerateNavmesh_386_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_375();
    l0 = self.box_RegenerateNavmesh_386;
    l1 = self.box_PhysicsModifier_375;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1890563733", "1890563733", "UNI51_020_B30", "box_RegenerateNavmesh_386.Completed", "box_PhysicsModifier_375.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableBreaker_300_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_335();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2023108915", "2023108915", "UNI51_020_B30", "box_StaticBreakableBreaker_300.Destroyed", "box_ParticleSystem_v3_335.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_234_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_240;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|331297426", "331297426", "UNI51_020_B30", "box_ParticleSystem_v3_234.Started", "box_MultipleOR_240.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_196_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_195();
    l0 = self.box_Random_196;
    l1 = self.box_Delay_v5_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|653678488", "653678488", "UNI51_020_B30", "box_Random_196.Output", "box_Delay_v5_195.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_196_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_190();
    l0 = self.box_Random_196;
    l1 = self.box_Delay_v5_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1535665596", "1535665596", "UNI51_020_B30", "box_Random_196.Output", "box_Delay_v5_190.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_196_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_191();
    l0 = self.box_Random_196;
    l1 = self.box_Delay_v5_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2078175472", "2078175472", "UNI51_020_B30", "box_Random_196.Output", "box_Delay_v5_191.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Integers_30_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1809768007", "1809768007", "UNI51_020_B30", "box_Compare_Integers_30.A_le_B", "box_OutputOrder_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_199_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_199;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|118990492", "118990492", "UNI51_020_B30", "box_Delay_v5_199.TimeElapsed", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleAND_v2_121_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_98();
    l0 = self.box_MultipleAND_v2_121;
    l1 = self.box_Delay_v5_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2124383745", "2124383745", "UNI51_020_B30", "box_MultipleAND_v2_121.Out", "box_Delay_v5_98.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_22();
    l0 = self.box_Gate_v3_49;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1640894140", "1640894140", "UNI51_020_B30", "box_Gate_v3_49.Out", "box_ActivityRetry_22.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_139_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_136();
    l0 = self.box_MultipleOR_139;
    l1 = self.box_RestrictedItemModifier_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|758307987", "758307987", "UNI51_020_B30", "box_MultipleOR_139.Out", "box_RestrictedItemModifier_136.AddItem", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItem
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_192_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_194();
    l0 = self.box_MultipleOR_192;
    l1 = self.box_Random_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|179061407", "179061407", "UNI51_020_B30", "box_MultipleOR_192.Out", "box_Random_194.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PawnWeaponCheck_v3_321_InHands()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_322;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2003107248", "2003107248", "UNI51_020_B30", "box_PawnWeaponCheck_v3_321.InHands", "box_MultipleOR_322.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnWeaponCheck_v3_321_InInventory()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_WieldInventory_v5_268();
    l0 = self.box_WieldInventory_v5_268;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1160378479", "1160378479", "UNI51_020_B30", "box_PawnWeaponCheck_v3_321.InInventory", "box_WieldInventory_v5_268.LuaDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- LuaDraw
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_62_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_62;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1580405876", "1580405876", "UNI51_020_B30", "box_MultipleOR_62.Out", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_262_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_228();
    l0 = self.box_Random_228;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1364609443", "1364609443", "UNI51_020_B30", "box_OutputOrder_v2_262.Out", "box_Random_228.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_262_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_265();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1027238058", "1027238058", "UNI51_020_B30", "box_OutputOrder_v2_262.Out", "box_Simple_Node_265.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_54();
    l0 = self.box_Random_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1859863456", "1859863456", "UNI51_020_B30", "box_OutputOrder_v2_12.Out", "box_Random_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|785147436", "785147436", "UNI51_020_B30", "box_OutputOrder_v2_12.Out", "box_Delay_v5_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_6;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|144640071", "144640071", "UNI51_020_B30", "box_Delay_v5_6.TimeElapsed", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_Delay_v5_233_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_233;
    l1 = self.box_MultipleOR_242;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|805059122", "805059122", "UNI51_020_B30", "box_Delay_v5_233.TimeElapsed", "box_MultipleOR_242.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TaggingModifier_v3_156_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_395();
    l0 = self.box_Delay_v5_395;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1700564664", "1700564664", "UNI51_020_B30", "box_TaggingModifier_v3_156.Tagged", "box_Delay_v5_395.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_42();
    l0 = self.box_MultipleOR_104;
    l1 = self.box_Gate_v3_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|737125698", "737125698", "UNI51_020_B30", "box_MultipleOR_104.Out", "box_Gate_v3_42.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_333_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_333;
    l1 = self.box_MultipleOR_409;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|197008765", "197008765", "UNI51_020_B30", "box_MultipleOR_333.Out", "box_MultipleOR_409.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StaticBreakableBreaker_74_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_338();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|542666510", "542666510", "UNI51_020_B30", "box_StaticBreakableBreaker_74.Destroyed", "box_ParticleSystem_v3_338.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_70_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_70;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2015146847", "2015146847", "UNI51_020_B30", "box_MultipleOR_70.Out", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ShimmerModifier_v2_269_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_158();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2121709019", "2121709019", "UNI51_020_B30", "box_ShimmerModifier_v2_269.Disabled", "box_ShimmerModifier_v2_158.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_269_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_158();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1191009887", "1191009887", "UNI51_020_B30", "box_ShimmerModifier_v2_269.Enabled", "box_ShimmerModifier_v2_158.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_209_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_209;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1638800764", "1638800764", "UNI51_020_B30", "box_Delay_v5_209.TimeElapsed", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TaggingModifier_v3_368_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_369();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1568841122", "1568841122", "UNI51_020_B30", "box_TaggingModifier_v3_368.Tagged", "box_TaggingModifier_v3_369.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_WieldInventory_v5_428_Drawn()
    local l0, l1;
    l0 = self.box_WieldInventory_v5_428;
    l1 = self.box_MultipleOR_426;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2128270481", "2128270481", "UNI51_020_B30", "box_WieldInventory_v5_428.Drawn", "box_MultipleOR_426.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_72_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_351();
    l0 = self.box_Delay_v5_72;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1911398744", "1911398744", "UNI51_020_B30", "box_Delay_v5_72.TimeElapsed", "box_OutputOrder_v2_351.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RestrictedItemModifier_427_Out()
    local l0, l1;
    l0 = self.box_RestrictedItemModifier_427;
    l1 = self.box_MultipleOR_405;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|974909409", "974909409", "UNI51_020_B30", "box_RestrictedItemModifier_427.Out", "box_MultipleOR_405.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PawnWeaponCheck_v3_430_InHands()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_426;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|509325131", "509325131", "UNI51_020_B30", "box_PawnWeaponCheck_v3_430.InHands", "box_MultipleOR_426.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnWeaponCheck_v3_430_InInventory()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_WieldInventory_v5_428();
    l0 = self.box_WieldInventory_v5_428;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|998109566", "998109566", "UNI51_020_B30", "box_PawnWeaponCheck_v3_430.InInventory", "box_WieldInventory_v5_428.LuaDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- LuaDraw
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_155_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_152();
    l0 = self.box_SoundModifier_v2_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1402347025", "1402347025", "UNI51_020_B30", "box_OutputOrder_v2_155.Out", "box_SoundModifier_v2_152.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_155_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_151();
    l0 = self.box_SoundModifier_v2_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|197801702", "197801702", "UNI51_020_B30", "box_OutputOrder_v2_155.Out", "box_SoundModifier_v2_151.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_155_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_153();
    l0 = self.box_SoundModifier_v2_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1155694871", "1155694871", "UNI51_020_B30", "box_OutputOrder_v2_155.Out", "box_SoundModifier_v2_153.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_69_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_300();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1262697954", "1262697954", "UNI51_020_B30", "box_IsEntityLoaded_v3_69.True", "box_StaticBreakableBreaker_300.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_287_Out1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_272();
    l0 = self.box_UNI51_020_BlessedInHoles_287;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|479868306", "479868306", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_287.Out1", "box_Simple_Node_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_287_Out2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_273();
    l0 = self.box_UNI51_020_BlessedInHoles_287;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|376629495", "376629495", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_287.Out2", "box_Simple_Node_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_287_Out3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_274();
    l0 = self.box_UNI51_020_BlessedInHoles_287;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1067090229", "1067090229", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_287.Out3", "box_Simple_Node_274.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhysicsModifier_378_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_379();
    l0 = self.box_PhysicsModifier_378;
    l1 = self.box_PhysicsModifier_379;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1047375368", "1047375368", "UNI51_020_B30", "box_PhysicsModifier_378.Disabled", "box_PhysicsModifier_379.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_CoopActivePlayers_68_PlayerAdded()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_68_PlayerAdded();
    params = self:OnEnter_box_GetInventoryItemQuantity_451();
    l0 = self.box_CoopActivePlayers_68;
    l1 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|640189491", "640189491", "UNI51_020_B30", "box_CoopActivePlayers_68.PlayerAdded", "box_GetInventoryItemQuantity_451.GetNumberOfItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetNumberOfItems
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_68_PlayerRemoved()
    self:OnExit_box_CoopActivePlayers_68_PlayerRemoved();
end;

function export:f_box_OutputOrder_v2_286_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI51_020_BlessedInHoles_278();
    l0 = self.box_UNI51_020_BlessedInHoles_278;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|265996103", "265996103", "UNI51_020_B30", "box_OutputOrder_v2_286.Out", "box_UNI51_020_BlessedInHoles_278.Started", clone:GetLuaBox(), l0:GetLuaBox());
    -- Started
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_286_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI51_020_BlessedInHoles_284();
    l0 = self.box_UNI51_020_BlessedInHoles_284;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|906283", "906283", "UNI51_020_B30", "box_OutputOrder_v2_286.Out", "box_UNI51_020_BlessedInHoles_284.Started", clone:GetLuaBox(), l0:GetLuaBox());
    -- Started
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_286_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI51_020_BlessedInHoles_291();
    l0 = self.box_UNI51_020_BlessedInHoles_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1172704265", "1172704265", "UNI51_020_B30", "box_OutputOrder_v2_286.Out", "box_UNI51_020_BlessedInHoles_291.Started", clone:GetLuaBox(), l0:GetLuaBox());
    -- Started
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_286_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI51_020_BlessedInHoles_288();
    l0 = self.box_UNI51_020_BlessedInHoles_288;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1133680936", "1133680936", "UNI51_020_B30", "box_OutputOrder_v2_286.Out", "box_UNI51_020_BlessedInHoles_288.Started", clone:GetLuaBox(), l0:GetLuaBox());
    -- Started
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_184_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_184;
    l1 = self.box_MultipleOR_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|442194420", "442194420", "UNI51_020_B30", "box_Delay_v5_184.TimeElapsed", "box_MultipleOR_188.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_348_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_149();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|677206736", "677206736", "UNI51_020_B30", "box_IsEntityLoaded_v3_348.True", "box_StaticBreakableBreaker_149.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_326_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_325();
    l0 = self.box_MultipleOR_326;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1832593509", "1832593509", "UNI51_020_B30", "box_MultipleOR_326.Out", "box_Compare_Integers_325.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1540800115", "1540800115", "UNI51_020_B30", "box_OutputOrder_v2_57.Out", "box_MultipleOR_127.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|603833687", "603833687", "UNI51_020_B30", "box_OutputOrder_v2_57.Out", "box_MultipleOR_131.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_129_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_23();
    l0 = self.box_Delay_v5_129;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|703209684", "703209684", "UNI51_020_B30", "box_Delay_v5_129.TimeElapsed", "box_Compare_Integers_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_396_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_404();
    l0 = self.box_RemoveEntity_v2_396;
    l1 = self.box_GunsForHireSystemModifier_404;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1557818442", "1557818442", "UNI51_020_B30", "box_RemoveEntity_v2_396.Out", "box_GunsForHireSystemModifier_404.EnableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableGFHSystem
    l1:Exec(1, params);
end;

function export:f_box_GetInventoryItemQuantity_438_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_438_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_435();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|814945202", "814945202", "UNI51_020_B30", "box_GetInventoryItemQuantity_438.Out", "box_Compare_Integers_435.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_360_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_359();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|137705097", "137705097", "UNI51_020_B30", "box_OutputOrder_v2_360.Out", "box_IsEntityLoaded_v3_359.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_360_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_358();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|116451683", "116451683", "UNI51_020_B30", "box_OutputOrder_v2_360.Out", "box_IsEntityLoaded_v3_358.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_360_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_357();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1111921689", "1111921689", "UNI51_020_B30", "box_OutputOrder_v2_360.Out", "box_IsEntityLoaded_v3_357.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_360_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_164();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1133438749", "1133438749", "UNI51_020_B30", "box_OutputOrder_v2_360.Out", "box_TaggingModifier_v3_164.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_285_Out1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_272();
    l0 = self.box_UNI51_020_BlessedInHoles_285;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|329109470", "329109470", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_285.Out1", "box_Simple_Node_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_285_Out2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_273();
    l0 = self.box_UNI51_020_BlessedInHoles_285;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2134379090", "2134379090", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_285.Out2", "box_Simple_Node_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_285_Out3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_274();
    l0 = self.box_UNI51_020_BlessedInHoles_285;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|550777636", "550777636", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_285.Out3", "box_Simple_Node_274.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_49();
    l0 = self.box_MultipleOR_63;
    l1 = self.box_Gate_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1228660923", "1228660923", "UNI51_020_B30", "box_MultipleOR_63.Out", "box_Gate_v3_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_426_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_427();
    l0 = self.box_MultipleOR_426;
    l1 = self.box_RestrictedItemModifier_427;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1490075090", "1490075090", "UNI51_020_B30", "box_MultipleOR_426.Out", "box_RestrictedItemModifier_427.AddItem", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItem
    l1:Exec(0, params);
end;

function export:f_box_UNI51_InjectBuff_370_Done()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_81();
    l0 = self.box_UNI51_InjectBuff_370;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|608314934", "608314934", "UNI51_020_B30", "box_UNI51_InjectBuff_370.Done", "box_AddActivityObjective_v2_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_96_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_94();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|439772937", "439772937", "UNI51_020_B30", "box_AddActivityObjective_v2_96.Out", "box_AddActivityObjectiveProgress_v2_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_116_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_117();
    l0 = self.box_GroupSizeListener_v5_116;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|195134390", "195134390", "UNI51_020_B30", "box_GroupSizeListener_v5_116.MemberRemoved", "box_Compare_Integers_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_81_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_96();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2008778496", "2008778496", "UNI51_020_B30", "box_AddActivityObjective_v2_81.Out", "box_AddActivityObjective_v2_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_210_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|682216156", "682216156", "UNI51_020_B30", "box_ParticleSystem_v3_210.Started", "box_MultipleOR_216.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_173_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1284483042", "1284483042", "UNI51_020_B30", "box_ParticleSystem_v3_173.Started", "box_MultipleOR_186.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_415_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_414();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2064715702", "2064715702", "UNI51_020_B30", "box_IsEntityLoaded_v3_415.True", "box_StaticBreakableBreaker_414.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_366_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_399();
    l0 = self.box_Delay_v5_399;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|479592042", "479592042", "UNI51_020_B30", "box_TaggingModifier_v3_366.Tagged", "box_Delay_v5_399.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_116();
    l0 = self.box_GroupSizeListener_v5_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1270891957", "1270891957", "UNI51_020_B30", "box_OutputOrder_v2_18.Out", "box_GroupSizeListener_v5_116.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_25();
    l0 = self.box_GroupSizeListener_v5_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1173058884", "1173058884", "UNI51_020_B30", "box_OutputOrder_v2_18.Out", "box_GroupSizeListener_v5_25.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_148();
    l0 = self.box_Delay_v5_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1122337978", "1122337978", "UNI51_020_B30", "box_OutputOrder_v2_18.Out", "box_Delay_v5_148.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_207_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_207;
    l1 = self.box_MultipleOR_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|552183629", "552183629", "UNI51_020_B30", "box_Delay_v5_207.TimeElapsed", "box_MultipleOR_202.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PhysicsModifier_375_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_376();
    l0 = self.box_PhysicsModifier_375;
    l1 = self.box_PhysicsModifier_376;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1927728701", "1927728701", "UNI51_020_B30", "box_PhysicsModifier_375.Disabled", "box_PhysicsModifier_376.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_GunsForHireSystemModifier_381_Disabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_381;
    l1 = self.box_CoopActivePlayers_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|955871851", "955871851", "UNI51_020_B30", "box_GunsForHireSystemModifier_381.Disabled", "box_CoopActivePlayers_115.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_IsEntityLoaded_v3_336_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_44();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1178602678", "1178602678", "UNI51_020_B30", "box_IsEntityLoaded_v3_336.True", "box_StaticBreakableBreaker_44.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_323_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_398();
    l0 = self.box_Delay_v5_398;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|391742075", "391742075", "UNI51_020_B30", "box_TaggingModifier_v3_323.Tagged", "box_Delay_v5_398.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_101_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_102();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|145924120", "145924120", "UNI51_020_B30", "box_ActivityObjectiveMarkerModifier_v3_101.Enabled", "box_ActivityObjectiveMarkerModifier_v3_102.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_47_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_47;
    l1 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1602797302", "1602797302", "UNI51_020_B30", "box_PlayDialog_v6_47.Finished", "box_MultipleOR_50.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_47_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_47;
    l1 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1336752274", "1336752274", "UNI51_020_B30", "box_PlayDialog_v6_47.FinishedInterrupted", "box_MultipleOR_50.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_181_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2052556028", "2052556028", "UNI51_020_B30", "box_ParticleSystem_v3_181.Started", "box_MultipleOR_193.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_66_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_66;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1176718445", "1176718445", "UNI51_020_B30", "box_PlayDialog_v6_66.Finished", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_66_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_66;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|774633233", "774633233", "UNI51_020_B30", "box_PlayDialog_v6_66.FinishedInterrupted", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_301_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_303();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|625511044", "625511044", "UNI51_020_B30", "box_Compare_Integers_301.A_le_B", "box_OutputOrder_v2_303.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_45_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_45;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2040070767", "2040070767", "UNI51_020_B30", "box_MultipleOR_45.Out", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_241_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_236();
    l0 = self.box_Random_241;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1655350785", "1655350785", "UNI51_020_B30", "box_Random_241.Output", "box_ParticleSystem_v3_236.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_241_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_234();
    l0 = self.box_Random_241;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|923499240", "923499240", "UNI51_020_B30", "box_Random_241.Output", "box_ParticleSystem_v3_234.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_241_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_229();
    l0 = self.box_Random_241;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1040093121", "1040093121", "UNI51_020_B30", "box_Random_241.Output", "box_ParticleSystem_v3_229.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PawnWeaponCheck_v3_453_InHands()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_445;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|126447045", "126447045", "UNI51_020_B30", "box_PawnWeaponCheck_v3_453.InHands", "box_MultipleOR_445.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnWeaponCheck_v3_453_InInventory()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_WieldInventory_v5_446();
    l0 = self.box_WieldInventory_v5_446;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1161629242", "1161629242", "UNI51_020_B30", "box_PawnWeaponCheck_v3_453.InInventory", "box_WieldInventory_v5_446.LuaDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- LuaDraw
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_Gate_v3_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|189349993", "189349993", "UNI51_020_B30", "box_Gate_v3_24.Out", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_355();
    l0 = self.box_Delay_v5_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1446243747", "1446243747", "UNI51_020_B30", "box_Delay_v5_10.TimeElapsed", "box_OutputOrder_v2_355.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_236_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_240;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|855252346", "855252346", "UNI51_020_B30", "box_ParticleSystem_v3_236.Started", "box_MultipleOR_240.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_358_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_315();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|557315898", "557315898", "UNI51_020_B30", "box_IsEntityLoaded_v3_358.True", "box_StaticBreakableBreaker_315.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_408_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|415869919", "415869919", "UNI51_020_B30", "box_ActivityForceAndLockTracking_408.Disabled", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_445_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_450();
    l0 = self.box_MultipleOR_445;
    l1 = self.box_RestrictedItemModifier_450;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1414507325", "1414507325", "UNI51_020_B30", "box_MultipleOR_445.Out", "box_RestrictedItemModifier_450.AddItem", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItem
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_253_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_255();
    l0 = self.box_SoundModifier_v2_253;
    l1 = self.box_Delay_v5_255;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|66090182", "66090182", "UNI51_020_B30", "box_SoundModifier_v2_253.Started", "box_Delay_v5_255.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_TaggingModifier_v3_367_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_366();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2144487056", "2144487056", "UNI51_020_B30", "box_TaggingModifier_v3_367.Tagged", "box_TaggingModifier_v3_366.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_309_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_308();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1068274005", "1068274005", "UNI51_020_B30", "box_Compare_Integers_309.A_le_B", "box_OutputOrder_v2_308.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_26_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|545108667", "545108667", "UNI51_020_B30", "box_Compare_Integers_26.A_le_B", "box_OutputOrder_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_255_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_256();
    l0 = self.box_Delay_v5_255;
    l1 = self.box_SoundModifier_v2_256;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1739900763", "1739900763", "UNI51_020_B30", "box_Delay_v5_255.TimeElapsed", "box_SoundModifier_v2_256.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_111_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_111;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1332214325", "1332214325", "UNI51_020_B30", "box_MultipleOR_111.Out", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_235_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_262();
    l0 = self.box_MultipleOR_235;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1141411585", "1141411585", "UNI51_020_B30", "box_MultipleOR_235.Out", "box_OutputOrder_v2_262.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_222_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_235;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|598371860", "598371860", "UNI51_020_B30", "box_ParticleSystem_v3_222.Started", "box_MultipleOR_235.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TaggingModifier_v3_164_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_156();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1398324965", "1398324965", "UNI51_020_B30", "box_TaggingModifier_v3_164.Tagged", "box_TaggingModifier_v3_156.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_35_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_35;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|762049618", "762049618", "UNI51_020_B30", "box_MultipleOR_35.Out", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_355_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_345();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|364027238", "364027238", "UNI51_020_B30", "box_OutputOrder_v2_355.Out", "box_IsEntityLoaded_v3_345.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_355_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_339();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1427300775", "1427300775", "UNI51_020_B30", "box_OutputOrder_v2_355.Out", "box_IsEntityLoaded_v3_339.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_355_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_416();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1532774630", "1532774630", "UNI51_020_B30", "box_OutputOrder_v2_355.Out", "box_IsEntityLoaded_v3_416.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_355_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_415();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|673357870", "673357870", "UNI51_020_B30", "box_OutputOrder_v2_355.Out", "box_IsEntityLoaded_v3_415.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_355_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_143();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1064486401", "1064486401", "UNI51_020_B30", "box_OutputOrder_v2_355.Out", "box_TaggingModifier_v3_143.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_179_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|940872326", "940872326", "UNI51_020_B30", "box_ParticleSystem_v3_179.Started", "box_MultipleOR_193.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_342_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_348();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2133557197", "2133557197", "UNI51_020_B30", "box_OutputOrder_v2_342.Out", "box_IsEntityLoaded_v3_348.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_342_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_347();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|54025809", "54025809", "UNI51_020_B30", "box_OutputOrder_v2_342.Out", "box_IsEntityLoaded_v3_347.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_342_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_69();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1768339666", "1768339666", "UNI51_020_B30", "box_OutputOrder_v2_342.Out", "box_IsEntityLoaded_v3_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_342_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_368();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1676263370", "1676263370", "UNI51_020_B30", "box_OutputOrder_v2_342.Out", "box_TaggingModifier_v3_368.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PawnWeaponCheck_v3_447_InHands()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_454;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|153345873", "153345873", "UNI51_020_B30", "box_PawnWeaponCheck_v3_447.InHands", "box_MultipleOR_454.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnWeaponCheck_v3_447_InInventory()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_WieldInventory_v5_448();
    l0 = self.box_WieldInventory_v5_448;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|711314426", "711314426", "UNI51_020_B30", "box_PawnWeaponCheck_v3_447.InInventory", "box_WieldInventory_v5_448.LuaDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- LuaDraw
    l0:Exec(0, params);
end;

function export:f_box_UNI51_020_BlessedInHoles_284_Out1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_272();
    l0 = self.box_UNI51_020_BlessedInHoles_284;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1210234405", "1210234405", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_284.Out1", "box_Simple_Node_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_284_Out2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_273();
    l0 = self.box_UNI51_020_BlessedInHoles_284;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1062383065", "1062383065", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_284.Out2", "box_Simple_Node_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_284_Out3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_274();
    l0 = self.box_UNI51_020_BlessedInHoles_284;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|427591542", "427591542", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_284.Out3", "box_Simple_Node_274.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_343_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_306();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|80091913", "80091913", "UNI51_020_B30", "box_IsEntityLoaded_v3_343.True", "box_StaticBreakableBreaker_306.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_422_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_421();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|646991855", "646991855", "UNI51_020_B30", "box_IsEntityLoaded_v3_422.True", "box_StaticBreakableBreaker_421.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_357_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_317();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1845382785", "1845382785", "UNI51_020_B30", "box_IsEntityLoaded_v3_357.True", "box_StaticBreakableBreaker_317.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_127_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_42();
    l0 = self.box_MultipleOR_127;
    l1 = self.box_Gate_v3_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1105227168", "1105227168", "UNI51_020_B30", "box_MultipleOR_127.Out", "box_Gate_v3_42.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_GetInventoryItemQuantity_88_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_88_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_87();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2050191320", "2050191320", "UNI51_020_B30", "box_GetInventoryItemQuantity_88.Out", "box_Compare_Integers_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_32();
    l0 = self.box_GroupSizeListener_v5_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|385866028", "385866028", "UNI51_020_B30", "box_OutputOrder_v2_125.Out", "box_GroupSizeListener_v5_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_125_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_76();
    l0 = self.box_Delay_v5_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1570805728", "1570805728", "UNI51_020_B30", "box_OutputOrder_v2_125.Out", "box_Delay_v5_76.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_344_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_310();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|295391173", "295391173", "UNI51_020_B30", "box_IsEntityLoaded_v3_344.True", "box_StaticBreakableBreaker_310.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_407();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|168152827", "168152827", "UNI51_020_B30", "box_MultipleOR_1.Out", "box_ActivityForceAndLockTracking_407.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_148_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_360();
    l0 = self.box_Delay_v5_148;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1397734432", "1397734432", "UNI51_020_B30", "box_Delay_v5_148.TimeElapsed", "box_OutputOrder_v2_360.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_298_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_299();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|121523304", "121523304", "UNI51_020_B30", "box_StaticBreakableBreaker_298.Destroyed", "box_ParticleSystem_v3_299.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1053152328", "1053152328", "UNI51_020_B30", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|36726364", "36726364", "UNI51_020_B30", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_46_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = self.box_PlayDialog_v6_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2122990490", "2122990490", "UNI51_020_B30", "box_PlayDialog_v6_46.Finished", "box_OutputOrder_v2_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_144_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_394();
    l0 = self.box_Delay_v5_394;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2065769437", "2065769437", "UNI51_020_B30", "box_TaggingModifier_v3_144.Tagged", "box_Delay_v5_394.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_419_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_420();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|868201088", "868201088", "UNI51_020_B30", "box_IsEntityLoaded_v3_419.True", "box_StaticBreakableBreaker_420.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_53_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_78();
    l0 = self.box_Delay_v5_53;
    l1 = self.box_Random_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|398780480", "398780480", "UNI51_020_B30", "box_Delay_v5_53.TimeElapsed", "box_Random_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableBreaker_149_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_297();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1212824347", "1212824347", "UNI51_020_B30", "box_StaticBreakableBreaker_149.Destroyed", "box_ParticleSystem_v3_297.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_131_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_109();
    l0 = self.box_MultipleOR_131;
    l1 = self.box_Random_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2125863085", "2125863085", "UNI51_020_B30", "box_MultipleOR_131.Out", "box_Random_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_39_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_39;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1025292441", "1025292441", "UNI51_020_B30", "box_PlayDialog_v6_39.Finished", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_39_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_39;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|172230187", "172230187", "UNI51_020_B30", "box_PlayDialog_v6_39.FinishedInterrupted", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UNI51_020_BlessedInHoles_247_Out1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_272();
    l0 = self.box_UNI51_020_BlessedInHoles_247;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|887379391", "887379391", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_247.Out1", "box_Simple_Node_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_247_Out2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_273();
    l0 = self.box_UNI51_020_BlessedInHoles_247;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1046287413", "1046287413", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_247.Out2", "box_Simple_Node_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_247_Out3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_274();
    l0 = self.box_UNI51_020_BlessedInHoles_247;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1900848284", "1900848284", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_247.Out3", "box_Simple_Node_274.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_52_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_52;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|471739619", "471739619", "UNI51_020_B30", "box_PlayDialog_v6_52.Finished", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_52_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_52;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|571320639", "571320639", "UNI51_020_B30", "box_PlayDialog_v6_52.FinishedInterrupted", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_147_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2068656401", "2068656401", "UNI51_020_B30", "box_OutputOrder_v2_147.Out", "box_Delay_v5_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_147_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_116();
    l0 = self.box_GroupSizeListener_v5_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|535516738", "535516738", "UNI51_020_B30", "box_OutputOrder_v2_147.Out", "box_GroupSizeListener_v5_116.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_NarrativeSceneCleanUp_V2_331_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_165();
    l0 = self.box_NarrativeSceneCleanUp_V2_331;
    l1 = self.box_NarrativeFade_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1794399983", "1794399983", "UNI51_020_B30", "box_NarrativeSceneCleanUp_V2_331.Out", "box_NarrativeFade_165.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_42_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_42;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1028548252", "1028548252", "UNI51_020_B30", "box_Gate_v3_42.Opened", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_42_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_42;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|759010575", "759010575", "UNI51_020_B30", "box_Gate_v3_42.Out", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_85_PlayerAdded()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_85_PlayerAdded();
    params = self:OnEnter_box_GetInventoryItemQuantity_88();
    l0 = self.box_CoopActivePlayers_85;
    l1 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|975307187", "975307187", "UNI51_020_B30", "box_CoopActivePlayers_85.PlayerAdded", "box_GetInventoryItemQuantity_88.GetNumberOfItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetNumberOfItems
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_85_PlayerRemoved()
    self:OnExit_box_CoopActivePlayers_85_PlayerRemoved();
end;

function export:f_box_Delay_v5_191_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_191;
    l1 = self.box_MultipleOR_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|946651533", "946651533", "UNI51_020_B30", "box_Delay_v5_191.TimeElapsed", "box_MultipleOR_192.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_294_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_146();
    l0 = self.box_Delay_v5_294;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|910480839", "910480839", "UNI51_020_B30", "box_Delay_v5_294.TimeElapsed", "box_OutputOrder_v2_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_168_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_84();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1513571154", "1513571154", "UNI51_020_B30", "box_OutputOrder_v2_168.Out", "box_Simple_Node_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_168_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_163();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|816876835", "816876835", "UNI51_020_B30", "box_OutputOrder_v2_168.Out", "box_Simple_Node_163.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_168_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_101();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2047072259", "2047072259", "UNI51_020_B30", "box_OutputOrder_v2_168.Out", "box_ActivityObjectiveMarkerModifier_v3_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_237_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_221();
    l0 = self.box_Random_237;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|594932357", "594932357", "UNI51_020_B30", "box_Random_237.Output", "box_ParticleSystem_v3_221.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_237_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_245();
    l0 = self.box_Random_237;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|314107520", "314107520", "UNI51_020_B30", "box_Random_237.Output", "box_ParticleSystem_v3_245.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_237_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_232();
    l0 = self.box_Random_237;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|591989124", "591989124", "UNI51_020_B30", "box_Random_237.Output", "box_ParticleSystem_v3_232.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_444_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetInventoryItemQuantity_406();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1287893820", "1287893820", "UNI51_020_B30", "box_OutputOrder_v2_444.Out", "box_GetInventoryItemQuantity_406.GetNumberOfItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetNumberOfItems
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_444_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetInventoryItemQuantity_438();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|653788015", "653788015", "UNI51_020_B30", "box_OutputOrder_v2_444.Out", "box_GetInventoryItemQuantity_438.GetNumberOfItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetNumberOfItems
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_87_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_89();
    l0 = self.box_InventoryItemModifier_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|676093522", "676093522", "UNI51_020_B30", "box_Compare_Integers_87.A_lt_B", "box_InventoryItemModifier_89.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_140_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_396();
    l0 = self.box_RemoveEntity_v2_396;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2057773816", "2057773816", "UNI51_020_B30", "box_UseContextualActionModifier_v3_140.Disabled", "box_RemoveEntity_v2_396.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_442_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_432();
    l0 = self.box_MultipleOR_442;
    l1 = self.box_MultipleAND_v2_432;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2017874118", "2017874118", "UNI51_020_B30", "box_MultipleOR_442.Out", "box_MultipleAND_v2_432.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_193_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_196();
    l0 = self.box_MultipleOR_193;
    l1 = self.box_Random_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|255652916", "255652916", "UNI51_020_B30", "box_MultipleOR_193.Out", "box_Random_196.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_194_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_176();
    l0 = self.box_Random_194;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2052288765", "2052288765", "UNI51_020_B30", "box_Random_194.Output", "box_ParticleSystem_v3_176.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_194_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_177();
    l0 = self.box_Random_194;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|812968269", "812968269", "UNI51_020_B30", "box_Random_194.Output", "box_ParticleSystem_v3_177.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_194_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_178();
    l0 = self.box_Random_194;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1121794562", "1121794562", "UNI51_020_B30", "box_Random_194.Output", "box_ParticleSystem_v3_178.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_195_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_195;
    l1 = self.box_MultipleOR_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|9358685", "9358685", "UNI51_020_B30", "box_Delay_v5_195.TimeElapsed", "box_MultipleOR_192.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_212_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|794570963", "794570963", "UNI51_020_B30", "box_ParticleSystem_v3_212.Started", "box_MultipleOR_216.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_167();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|361303517", "361303517", "UNI51_020_B30", "box_OutputOrder_v2_13.Out", "box_OutputOrder_v2_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|384085929", "384085929", "UNI51_020_B30", "box_OutputOrder_v2_13.Out", "box_Simple_Node_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_142();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|676831538", "676831538", "UNI51_020_B30", "box_OutputOrder_v2_13.Out", "box_GetPlayerGroup_v2_142.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_16();
    l0 = self.box_HealthListener_v6_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|272151486", "272151486", "UNI51_020_B30", "box_OutputOrder_v2_13.Out", "box_HealthListener_v6_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_162();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1901152395", "1901152395", "UNI51_020_B30", "box_OutputOrder_v2_13.Out", "box_Simple_Node_162.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_31();
    l0 = self.box_GroupSizeListener_v5_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|167639884", "167639884", "UNI51_020_B30", "box_OutputOrder_v2_75.Out", "box_GroupSizeListener_v5_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_72();
    l0 = self.box_Delay_v5_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|135590140", "135590140", "UNI51_020_B30", "box_OutputOrder_v2_75.Out", "box_Delay_v5_72.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_347_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_298();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|311821092", "311821092", "UNI51_020_B30", "box_IsEntityLoaded_v3_347.True", "box_StaticBreakableBreaker_298.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_189_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_179();
    l0 = self.box_Random_189;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1891057348", "1891057348", "UNI51_020_B30", "box_Random_189.Output", "box_ParticleSystem_v3_179.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_189_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_180();
    l0 = self.box_Random_189;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1548843321", "1548843321", "UNI51_020_B30", "box_Random_189.Output", "box_ParticleSystem_v3_180.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_189_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_181();
    l0 = self.box_Random_189;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1477933991", "1477933991", "UNI51_020_B30", "box_Random_189.Output", "box_ParticleSystem_v3_181.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_108_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_108;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|593458620", "593458620", "UNI51_020_B30", "box_MultipleOR_108.Out", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_226_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_237();
    l0 = self.box_MultipleOR_226;
    l1 = self.box_Random_237;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1881243835", "1881243835", "UNI51_020_B30", "box_MultipleOR_226.Out", "box_Random_237.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_231_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_231;
    l1 = self.box_MultipleOR_226;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|570494111", "570494111", "UNI51_020_B30", "box_Delay_v5_231.TimeElapsed", "box_MultipleOR_226.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RestrictedItemModifier_330_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_140();
    l0 = self.box_RestrictedItemModifier_330;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1874122464", "1874122464", "UNI51_020_B30", "box_RestrictedItemModifier_330.Out", "box_UseContextualActionModifier_v3_140.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_125();
    l0 = self.box_Delay_v5_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|518191853", "518191853", "UNI51_020_B30", "box_Delay_v5_29.TimeElapsed", "box_OutputOrder_v2_125.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_238_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_231();
    l0 = self.box_Random_238;
    l1 = self.box_Delay_v5_231;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1679134988", "1679134988", "UNI51_020_B30", "box_Random_238.Output", "box_Delay_v5_231.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_238_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_244();
    l0 = self.box_Random_238;
    l1 = self.box_Delay_v5_244;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1337829296", "1337829296", "UNI51_020_B30", "box_Random_238.Output", "box_Delay_v5_244.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_238_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_224();
    l0 = self.box_Random_238;
    l1 = self.box_Delay_v5_224;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1151552585", "1151552585", "UNI51_020_B30", "box_Random_238.Output", "box_Delay_v5_224.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UNI51_020_BlessedInHoles_243_Out1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_272();
    l0 = self.box_UNI51_020_BlessedInHoles_243;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|834884939", "834884939", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_243.Out1", "box_Simple_Node_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_243_Out2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_273();
    l0 = self.box_UNI51_020_BlessedInHoles_243;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|506852778", "506852778", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_243.Out2", "box_Simple_Node_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_243_Out3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_274();
    l0 = self.box_UNI51_020_BlessedInHoles_243;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1316801120", "1316801120", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_243.Out3", "box_Simple_Node_274.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_359_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_318();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|39776939", "39776939", "UNI51_020_B30", "box_IsEntityLoaded_v3_359.True", "box_StaticBreakableBreaker_318.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_132_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_362();
    l0 = self.box_InventoryItemModifier_362;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1530148368", "1530148368", "UNI51_020_B30", "box_Compare_Integers_132.A_le_B", "box_InventoryItemModifier_362.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_319;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|945025015", "945025015", "UNI51_020_B30", "box_OutputOrder_v2_61.Out", "box_OnceOnly_v3_319.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_361();
    l0 = self.box_InventoryItemListener_361;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|205885901", "205885901", "UNI51_020_B30", "box_OutputOrder_v2_61.Out", "box_InventoryItemListener_361.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_61_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|885418266", "885418266", "UNI51_020_B30", "box_OutputOrder_v2_61.Out", "box_CoopActivePlayers_85.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_61_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_270();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|285913295", "285913295", "UNI51_020_B30", "box_OutputOrder_v2_61.Out", "box_Simple_Node_270.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_403();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1631639566", "1631639566", "UNI51_020_B30", "box_OutputOrder_v2_61.Out", "box_Simple_Node_403.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_296_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_289();
    l0 = self.box_Delay_v5_296;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1748732539", "1748732539", "UNI51_020_B30", "box_Delay_v5_296.TimeElapsed", "box_OutputOrder_v2_289.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_102_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_103();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1739524003", "1739524003", "UNI51_020_B30", "box_ActivityObjectiveMarkerModifier_v3_102.Enabled", "box_ActivityObjectiveMarkerModifier_v3_103.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_54_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_59();
    l0 = self.box_Random_54;
    l1 = self.box_PlayDialog_v6_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|253008740", "253008740", "UNI51_020_B30", "box_Random_54.Output", "box_PlayDialog_v6_59.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_54_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_58();
    l0 = self.box_Random_54;
    l1 = self.box_PlayDialog_v6_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|159907044", "159907044", "UNI51_020_B30", "box_Random_54.Output", "box_PlayDialog_v6_58.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_54_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_51();
    l0 = self.box_Random_54;
    l1 = self.box_PlayDialog_v6_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|236252656", "236252656", "UNI51_020_B30", "box_Random_54.Output", "box_PlayDialog_v6_51.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_54_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_41();
    l0 = self.box_Random_54;
    l1 = self.box_PlayDialog_v6_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2046680446", "2046680446", "UNI51_020_B30", "box_Random_54.Output", "box_PlayDialog_v6_41.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_345_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_123();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|378344265", "378344265", "UNI51_020_B30", "box_IsEntityLoaded_v3_345.True", "box_StaticBreakableBreaker_123.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_416_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_413();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1268314262", "1268314262", "UNI51_020_B30", "box_IsEntityLoaded_v3_416.True", "box_StaticBreakableBreaker_413.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_337_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_422();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|524062225", "524062225", "UNI51_020_B30", "box_OutputOrder_v2_337.Out", "box_IsEntityLoaded_v3_422.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_337_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_423();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1662378954", "1662378954", "UNI51_020_B30", "box_OutputOrder_v2_337.Out", "box_IsEntityLoaded_v3_423.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_337_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_341();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|887344372", "887344372", "UNI51_020_B30", "box_OutputOrder_v2_337.Out", "box_IsEntityLoaded_v3_341.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_337_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_336();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1838221234", "1838221234", "UNI51_020_B30", "box_OutputOrder_v2_337.Out", "box_IsEntityLoaded_v3_336.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_337_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_367();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|329775791", "329775791", "UNI51_020_B30", "box_OutputOrder_v2_337.Out", "box_TaggingModifier_v3_367.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhysicsModifier_379_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_380();
    l0 = self.box_PhysicsModifier_379;
    l1 = self.box_PhysicsModifier_380;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2066204489", "2066204489", "UNI51_020_B30", "box_PhysicsModifier_379.Disabled", "box_PhysicsModifier_380.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_GroupIter_134_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_134_PawnIter();
    params = self:OnEnter_box_Bind_v4_135();
    l0 = self.box_GroupIter_134;
    l1 = self.box_Bind_v4_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1011889073", "1011889073", "UNI51_020_B30", "box_GroupIter_134.PawnIter", "box_Bind_v4_135.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_341_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_20();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1897595257", "1897595257", "UNI51_020_B30", "box_IsEntityLoaded_v3_341.True", "box_StaticBreakableBreaker_20.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_404_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_408();
    l0 = self.box_GunsForHireSystemModifier_404;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1582027630", "1582027630", "UNI51_020_B30", "box_GunsForHireSystemModifier_404.Enabled", "box_ActivityForceAndLockTracking_408.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_213_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_197();
    l0 = self.box_Random_213;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1276161756", "1276161756", "UNI51_020_B30", "box_Random_213.Output", "box_ParticleSystem_v3_197.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_213_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_220();
    l0 = self.box_Random_213;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1092557574", "1092557574", "UNI51_020_B30", "box_Random_213.Output", "box_ParticleSystem_v3_220.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_213_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_208();
    l0 = self.box_Random_213;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1240771700", "1240771700", "UNI51_020_B30", "box_Random_213.Output", "box_ParticleSystem_v3_208.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RestrictedItemModifier_410_Out()
    local l0, l1;
    l0 = self.box_RestrictedItemModifier_410;
    l1 = self.box_MultipleOR_405;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|500373070", "500373070", "UNI51_020_B30", "box_RestrictedItemModifier_410.Out", "box_MultipleOR_405.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_316();
    l0 = self.box_GroupSizeListener_v5_316;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1531881136", "1531881136", "UNI51_020_B30", "box_OutputOrder_v2_15.Out", "box_GroupSizeListener_v5_316.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_32();
    l0 = self.box_GroupSizeListener_v5_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1571034507", "1571034507", "UNI51_020_B30", "box_OutputOrder_v2_15.Out", "box_GroupSizeListener_v5_32.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_302();
    l0 = self.box_Delay_v5_302;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1484865450", "1484865450", "UNI51_020_B30", "box_OutputOrder_v2_15.Out", "box_Delay_v5_302.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_59_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_59;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|373853597", "373853597", "UNI51_020_B30", "box_PlayDialog_v6_59.Finished", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_59_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_59;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|582230037", "582230037", "UNI51_020_B30", "box_PlayDialog_v6_59.FinishedInterrupted", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableBreaker_20_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_170();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1378562669", "1378562669", "UNI51_020_B30", "box_StaticBreakableBreaker_20.Destroyed", "box_ParticleSystem_v3_170.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_WieldInventory_v5_82_Drawn()
    local l0, l1;
    l0 = self.box_WieldInventory_v5_82;
    l1 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1789604566", "1789604566", "UNI51_020_B30", "box_WieldInventory_v5_82.Drawn", "box_MultipleOR_139.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_202_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_213();
    l0 = self.box_MultipleOR_202;
    l1 = self.box_Random_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|562830014", "562830014", "UNI51_020_B30", "box_MultipleOR_202.Out", "box_Random_213.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_34_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1343952262", "1343952262", "UNI51_020_B30", "box_Compare_Integers_34.A_le_B", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_204_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_206();
    l0 = self.box_Random_204;
    l1 = self.box_Delay_v5_206;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1933955780", "1933955780", "UNI51_020_B30", "box_Random_204.Output", "box_Delay_v5_206.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_204_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_209();
    l0 = self.box_Random_204;
    l1 = self.box_Delay_v5_209;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|378980453", "378980453", "UNI51_020_B30", "box_Random_204.Output", "box_Delay_v5_209.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_204_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_199();
    l0 = self.box_Random_204;
    l1 = self.box_Delay_v5_199;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1819338625", "1819338625", "UNI51_020_B30", "box_Random_204.Output", "box_Delay_v5_199.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_218_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_217();
    l0 = self.box_MultipleOR_218;
    l1 = self.box_Random_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1785265946", "1785265946", "UNI51_020_B30", "box_MultipleOR_218.Out", "box_Random_217.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_385_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RegenerateNavmesh_382();
    l0 = self.box_RegenerateNavmesh_382;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1841931929", "1841931929", "UNI51_020_B30", "box_OutputOrder_v2_385.Out", "box_RegenerateNavmesh_382.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_385_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_334();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1114940950", "1114940950", "UNI51_020_B30", "box_OutputOrder_v2_385.Out", "box_SetTimeOfDay_334.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_385_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_387();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1385971404", "1385971404", "UNI51_020_B30", "box_OutputOrder_v2_385.Out", "box_MissionBlockLayer_387.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_385_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_411();
    l0 = self.box_ExitZoneWarningListener_v3_411;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1277321818", "1277321818", "UNI51_020_B30", "box_OutputOrder_v2_385.Out", "box_ExitZoneWarningListener_v3_411.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StaticBreakableBreaker_306_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_352();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1767455905", "1767455905", "UNI51_020_B30", "box_StaticBreakableBreaker_306.Destroyed", "box_ParticleSystem_v3_352.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_327_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_121();
    l0 = self.box_MultipleAND_v2_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1145460691", "1145460691", "UNI51_020_B30", "box_OutputOrder_v2_327.Out", "box_MultipleAND_v2_121.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_327_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_324();
    l0 = self.box_GroupSizeListener_v5_324;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2141192000", "2141192000", "UNI51_020_B30", "box_OutputOrder_v2_327.Out", "box_GroupSizeListener_v5_324.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_327_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_60();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|243249723", "243249723", "UNI51_020_B30", "box_OutputOrder_v2_327.Out", "box_Simple_Node_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PawnWeaponCheck_v3_431_InHands()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_429;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1623894217", "1623894217", "UNI51_020_B30", "box_PawnWeaponCheck_v3_431.InHands", "box_MultipleOR_429.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnWeaponCheck_v3_431_InInventory()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_WieldInventory_v5_401();
    l0 = self.box_WieldInventory_v5_401;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1892733155", "1892733155", "UNI51_020_B30", "box_PawnWeaponCheck_v3_431.InInventory", "box_WieldInventory_v5_401.LuaDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- LuaDraw
    l0:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_277_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_277_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_279();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|716654854", "716654854", "UNI51_020_B30", "box_IntegerArithmetics_v2_277.Out", "box_OutputOrder_v2_279.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_23_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_128();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|788618451", "788618451", "UNI51_020_B30", "box_Compare_Integers_23.A_lt_B", "box_OutputOrder_v2_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_205_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|915351377", "915351377", "UNI51_020_B30", "box_ParticleSystem_v3_205.Started", "box_MultipleOR_216.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_50_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_50;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1422071156", "1422071156", "UNI51_020_B30", "box_MultipleOR_50.Out", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_StaticBreakableBreaker_313_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_304();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|936066651", "936066651", "UNI51_020_B30", "box_StaticBreakableBreaker_313.Destroyed", "box_ParticleSystem_v3_304.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_432_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_432;
    l1 = self.box_MultipleOR_409;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|561355544", "561355544", "UNI51_020_B30", "box_MultipleAND_v2_432.Out", "box_MultipleOR_409.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetActivityObjectiveProgress_v2_97_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_93();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|59682904", "59682904", "UNI51_020_B30", "box_SetActivityObjectiveProgress_v2_97.Out", "box_Compare_Integers_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_334_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_RegenerateNavmesh_386();
    l0 = self.box_RegenerateNavmesh_386;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|136036582", "136036582", "UNI51_020_B30", "box_SetTimeOfDay_334.Out", "box_RegenerateNavmesh_386.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|110144703", "110144703", "UNI51_020_B30", "box_OutputOrder_v2_71.Out", "box_OutputOrder_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1799152925", "1799152925", "UNI51_020_B30", "box_OutputOrder_v2_71.Out", "box_Delay_v5_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RestrictedItemModifier_136_Out()
    local l0, l1;
    l0 = self.box_RestrictedItemModifier_136;
    l1 = self.box_MultipleOR_333;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|514301082", "514301082", "UNI51_020_B30", "box_RestrictedItemModifier_136.Out", "box_MultipleOR_333.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_229_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_240;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|266534553", "266534553", "UNI51_020_B30", "box_ParticleSystem_v3_229.Started", "box_MultipleOR_240.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_76_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_337();
    l0 = self.box_Delay_v5_76;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|789644899", "789644899", "UNI51_020_B30", "box_Delay_v5_76.TimeElapsed", "box_OutputOrder_v2_337.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_95_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_95;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|916922984", "916922984", "UNI51_020_B30", "box_MultipleOR_95.Out", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_Random_225_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_222();
    l0 = self.box_Random_225;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1013060783", "1013060783", "UNI51_020_B30", "box_Random_225.Output", "box_ParticleSystem_v3_222.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_225_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_227();
    l0 = self.box_Random_225;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|539560172", "539560172", "UNI51_020_B30", "box_Random_225.Output", "box_ParticleSystem_v3_227.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_225_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_239();
    l0 = self.box_Random_225;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1659802545", "1659802545", "UNI51_020_B30", "box_Random_225.Output", "box_ParticleSystem_v3_239.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_43_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_43;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1033722994", "1033722994", "UNI51_020_B30", "box_PlayDialog_v6_43.Finished", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_43_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_43;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|584793485", "584793485", "UNI51_020_B30", "box_PlayDialog_v6_43.FinishedInterrupted", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_38_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_38;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|607644137", "607644137", "UNI51_020_B30", "box_PlayDialog_v6_38.Finished", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_38_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_38;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|22674444", "22674444", "UNI51_020_B30", "box_PlayDialog_v6_38.FinishedInterrupted", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_109_None()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_130();
    l0 = self.box_Random_109;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1817648372", "1817648372", "UNI51_020_B30", "box_Random_109.None", "box_OutputOrder_v2_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_109_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_64();
    l0 = self.box_Random_109;
    l1 = self.box_PlayDialog_v6_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1530680687", "1530680687", "UNI51_020_B30", "box_Random_109.Output", "box_PlayDialog_v6_64.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_109_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_67();
    l0 = self.box_Random_109;
    l1 = self.box_PlayDialog_v6_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1387685236", "1387685236", "UNI51_020_B30", "box_Random_109.Output", "box_PlayDialog_v6_67.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_109_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_90();
    l0 = self.box_Random_109;
    l1 = self.box_PlayDialog_v6_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1026987368", "1026987368", "UNI51_020_B30", "box_Random_109.Output", "box_PlayDialog_v6_90.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_109_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_91();
    l0 = self.box_Random_109;
    l1 = self.box_PlayDialog_v6_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|164999338", "164999338", "UNI51_020_B30", "box_Random_109.Output", "box_PlayDialog_v6_91.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_109_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_92();
    l0 = self.box_Random_109;
    l1 = self.box_PlayDialog_v6_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|43108573", "43108573", "UNI51_020_B30", "box_Random_109.Output", "box_PlayDialog_v6_92.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UNI51_020_BlessedInHoles_150_Out1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_272();
    l0 = self.box_UNI51_020_BlessedInHoles_150;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1111164063", "1111164063", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_150.Out1", "box_Simple_Node_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_150_Out2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_273();
    l0 = self.box_UNI51_020_BlessedInHoles_150;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|201942659", "201942659", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_150.Out2", "box_Simple_Node_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_150_Out3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_274();
    l0 = self.box_UNI51_020_BlessedInHoles_150;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|39909453", "39909453", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_150.Out3", "box_Simple_Node_274.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_187_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_183();
    l0 = self.box_Random_187;
    l1 = self.box_Delay_v5_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1225371809", "1225371809", "UNI51_020_B30", "box_Random_187.Output", "box_Delay_v5_183.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_187_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_184();
    l0 = self.box_Random_187;
    l1 = self.box_Delay_v5_184;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|749488308", "749488308", "UNI51_020_B30", "box_Random_187.Output", "box_Delay_v5_184.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_187_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_185();
    l0 = self.box_Random_187;
    l1 = self.box_Delay_v5_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|594546035", "594546035", "UNI51_020_B30", "box_Random_187.Output", "box_Delay_v5_185.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Integers_325_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_83();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|269657047", "269657047", "UNI51_020_B30", "box_Compare_Integers_325.A_gt_B", "box_EndActivityObjective_v2_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RestrictedItemModifier_332_Out()
    local l0, l1;
    l0 = self.box_RestrictedItemModifier_332;
    l1 = self.box_MultipleOR_333;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1928946510", "1928946510", "UNI51_020_B30", "box_RestrictedItemModifier_332.Out", "box_MultipleOR_333.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_40_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_40;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1680321203", "1680321203", "UNI51_020_B30", "box_MultipleOR_40.Out", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_Delay_v5_399_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_392();
    l0 = self.box_Delay_v5_399;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1912147448", "1912147448", "UNI51_020_B30", "box_Delay_v5_399.TimeElapsed", "box_SetContextualStrategy_392.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_290_Out1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_272();
    l0 = self.box_UNI51_020_BlessedInHoles_290;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1241456058", "1241456058", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_290.Out1", "box_Simple_Node_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_290_Out2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_273();
    l0 = self.box_UNI51_020_BlessedInHoles_290;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|428382532", "428382532", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_290.Out2", "box_Simple_Node_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_290_Out3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_274();
    l0 = self.box_UNI51_020_BlessedInHoles_290;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|917389646", "917389646", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_290.Out3", "box_Simple_Node_274.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_242_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_241();
    l0 = self.box_MultipleOR_242;
    l1 = self.box_Random_241;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|412781866", "412781866", "UNI51_020_B30", "box_MultipleOR_242.Out", "box_Random_241.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_316_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_309();
    l0 = self.box_GroupSizeListener_v5_316;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|22055495", "22055495", "UNI51_020_B30", "box_GroupSizeListener_v5_316.MemberRemoved", "box_Compare_Integers_309.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_434_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_433();
    l0 = self.box_MultipleOR_434;
    l1 = self.box_RestrictedItemModifier_433;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1375898985", "1375898985", "UNI51_020_B30", "box_MultipleOR_434.Out", "box_RestrictedItemModifier_433.AddItem", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItem
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_417_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_418();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|586897962", "586897962", "UNI51_020_B30", "box_IsEntityLoaded_v3_417.True", "box_StaticBreakableBreaker_418.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_407_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_385();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1829989058", "1829989058", "UNI51_020_B30", "box_ActivityForceAndLockTracking_407.Enabled", "box_OutputOrder_v2_385.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_106_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_53();
    l0 = self.box_MultipleOR_106;
    l1 = self.box_Delay_v5_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|691526089", "691526089", "UNI51_020_B30", "box_MultipleOR_106.Out", "box_Delay_v5_53.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UNI51_020_BlessedInHoles_246_Out1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_272();
    l0 = self.box_UNI51_020_BlessedInHoles_246;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|273910242", "273910242", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_246.Out1", "box_Simple_Node_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_246_Out2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_273();
    l0 = self.box_UNI51_020_BlessedInHoles_246;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1660023825", "1660023825", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_246.Out2", "box_Simple_Node_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_020_BlessedInHoles_246_Out3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_274();
    l0 = self.box_UNI51_020_BlessedInHoles_246;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|203000912", "203000912", "UNI51_020_B30", "box_UNI51_020_BlessedInHoles_246.Out3", "box_Simple_Node_274.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhysicsModifier_376_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_377();
    l0 = self.box_PhysicsModifier_376;
    l1 = self.box_PhysicsModifier_377;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|506328566", "506328566", "UNI51_020_B30", "box_PhysicsModifier_376.Disabled", "box_PhysicsModifier_377.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_353_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_313();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1471061385", "1471061385", "UNI51_020_B30", "box_IsEntityLoaded_v3_353.True", "box_StaticBreakableBreaker_313.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_WieldInventory_v5_446_Drawn()
    local l0, l1;
    l0 = self.box_WieldInventory_v5_446;
    l1 = self.box_MultipleOR_445;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1815757982", "1815757982", "UNI51_020_B30", "box_WieldInventory_v5_446.Drawn", "box_MultipleOR_445.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_183_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_183;
    l1 = self.box_MultipleOR_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|791499380", "791499380", "UNI51_020_B30", "box_Delay_v5_183.TimeElapsed", "box_MultipleOR_188.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_16_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_21();
    l0 = self.box_HealthListener_v6_16;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2044088746", "2044088746", "UNI51_020_B30", "box_HealthListener_v6_16.Downed", "box_ActivityRetry_21.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_203_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|576048147", "576048147", "UNI51_020_B30", "box_ParticleSystem_v3_203.Started", "box_MultipleOR_211.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_319_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UNI51_InjectBuff_370();
    l0 = self.box_OnceOnly_v3_319;
    l1 = self.box_UNI51_InjectBuff_370;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1060765755", "1060765755", "UNI51_020_B30", "box_OnceOnly_v3_319.Out", "box_UNI51_InjectBuff_370.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_TaggingModifier_v3_159_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_397();
    l0 = self.box_Delay_v5_397;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2007556682", "2007556682", "UNI51_020_B30", "box_TaggingModifier_v3_159.Tagged", "box_Delay_v5_397.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_244_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_244;
    l1 = self.box_MultipleOR_226;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2119404207", "2119404207", "UNI51_020_B30", "box_Delay_v5_244.TimeElapsed", "box_MultipleOR_226.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_351_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_417();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1842169805", "1842169805", "UNI51_020_B30", "box_OutputOrder_v2_351.Out", "box_IsEntityLoaded_v3_417.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_351_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_419();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1544736420", "1544736420", "UNI51_020_B30", "box_OutputOrder_v2_351.Out", "box_IsEntityLoaded_v3_419.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_351_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_349();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1042250079", "1042250079", "UNI51_020_B30", "box_OutputOrder_v2_351.Out", "box_IsEntityLoaded_v3_349.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_351_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_350();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|257708398", "257708398", "UNI51_020_B30", "box_OutputOrder_v2_351.Out", "box_IsEntityLoaded_v3_350.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_351_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_161();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1927084299", "1927084299", "UNI51_020_B30", "box_OutputOrder_v2_351.Out", "box_TaggingModifier_v3_161.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_216_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_214();
    l0 = self.box_MultipleOR_216;
    l1 = self.box_Random_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|386285692", "386285692", "UNI51_020_B30", "box_MultipleOR_216.Out", "box_Random_214.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_31_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_30();
    l0 = self.box_GroupSizeListener_v5_31;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1726922122", "1726922122", "UNI51_020_B30", "box_GroupSizeListener_v5_31.MemberRemoved", "box_Compare_Integers_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_44_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_340();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|540082482", "540082482", "UNI51_020_B30", "box_StaticBreakableBreaker_44.Destroyed", "box_ParticleSystem_v3_340.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_200_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_200;
    l1 = self.box_MultipleOR_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1350916887", "1350916887", "UNI51_020_B30", "box_Delay_v5_200.TimeElapsed", "box_MultipleOR_202.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ParticleSystem_v3_175_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|40138544", "40138544", "UNI51_020_B30", "box_ParticleSystem_v3_175.Started", "box_MultipleOR_186.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Integers_425_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnWeaponCheck_v3_430();
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|732676130", "732676130", "UNI51_020_B30", "box_Compare_Integers_425.A_ge_B", "box_PawnWeaponCheck_v3_430.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_425_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnWeaponCheck_v3_431();
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1594900640", "1594900640", "UNI51_020_B30", "box_Compare_Integers_425.A_lt_B", "box_PawnWeaponCheck_v3_431.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_186_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_260();
    l0 = self.box_MultipleOR_186;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1106605291", "1106605291", "UNI51_020_B30", "box_MultipleOR_186.Out", "box_OutputOrder_v2_260.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_454_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_452();
    l0 = self.box_MultipleOR_454;
    l1 = self.box_RestrictedItemModifier_452;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2002049282", "2002049282", "UNI51_020_B30", "box_MultipleOR_454.Out", "box_RestrictedItemModifier_452.AddItem", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItem
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_215_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1065278442", "1065278442", "UNI51_020_B30", "box_ParticleSystem_v3_215.Started", "box_MultipleOR_211.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IsEntityLoaded_v3_423_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_424();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|759556643", "759556643", "UNI51_020_B30", "box_IsEntityLoaded_v3_423.True", "box_StaticBreakableBreaker_424.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_WieldInventory_v5_448_Drawn()
    local l0, l1;
    l0 = self.box_WieldInventory_v5_448;
    l1 = self.box_MultipleOR_454;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1716532312", "1716532312", "UNI51_020_B30", "box_WieldInventory_v5_448.Drawn", "box_MultipleOR_454.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_99_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_86();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1251300187", "1251300187", "UNI51_020_B30", "box_OutputOrder_v2_99.Out", "box_Print_v2_86.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_112();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|377871381", "377871381", "UNI51_020_B30", "box_OutputOrder_v2_99.Out", "box_Simple_Node_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_165_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_NarrativeFade_165;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|324769942", "324769942", "UNI51_020_B30", "box_NarrativeFade_165.FadedIn", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_312_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_354();
    l0 = self.box_Delay_v5_312;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|640495849", "640495849", "UNI51_020_B30", "box_Delay_v5_312.TimeElapsed", "box_OutputOrder_v2_354.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RegenerateNavmesh_383_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RegenerateNavmesh_384();
    l0 = self.box_RegenerateNavmesh_383;
    l1 = self.box_RegenerateNavmesh_384;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|14635637", "14635637", "UNI51_020_B30", "box_RegenerateNavmesh_383.Completed", "box_RegenerateNavmesh_384.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_303_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1421861851", "1421861851", "UNI51_020_B30", "box_OutputOrder_v2_303.Out", "box_Delay_v5_29.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_303_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_307();
    l0 = self.box_GroupSizeListener_v5_307;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1129151066", "1129151066", "UNI51_020_B30", "box_OutputOrder_v2_303.Out", "box_GroupSizeListener_v5_307.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_WieldInventory_v5_268_Drawn()
    local l0, l1;
    l0 = self.box_WieldInventory_v5_268;
    l1 = self.box_MultipleOR_322;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|347018933", "347018933", "UNI51_020_B30", "box_WieldInventory_v5_268.Drawn", "box_MultipleOR_322.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_279_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_283();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1144481915", "1144481915", "UNI51_020_B30", "box_OutputOrder_v2_279.Out", "box_Print_v2_283.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_279_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_275;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2098258073", "2098258073", "UNI51_020_B30", "box_OutputOrder_v2_279.Out", "box_MultipleOR_275.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_279_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_250();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2057384760", "2057384760", "UNI51_020_B30", "box_OutputOrder_v2_279.Out", "box_Simple_Node_250.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_258_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_259();
    l0 = self.box_Delay_v5_258;
    l1 = self.box_SoundModifier_v2_259;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1902356683", "1902356683", "UNI51_020_B30", "box_Delay_v5_258.TimeElapsed", "box_SoundModifier_v2_259.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ShimmerModifier_v2_160_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_269();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1326149250", "1326149250", "UNI51_020_B30", "box_ShimmerModifier_v2_160.Disabled", "box_ShimmerModifier_v2_269.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_160_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_269();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1905541183", "1905541183", "UNI51_020_B30", "box_ShimmerModifier_v2_160.Enabled", "box_ShimmerModifier_v2_269.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_254_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_252();
    l0 = self.box_Delay_v5_254;
    l1 = self.box_SoundModifier_v2_252;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1332497909", "1332497909", "UNI51_020_B30", "box_Delay_v5_254.TimeElapsed", "box_SoundModifier_v2_252.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_167_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_365();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1726966696", "1726966696", "UNI51_020_B30", "box_OutputOrder_v2_167.Out", "box_OutputOrder_v2_365.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_167_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_37();
    l0 = self.box_ProximityRadiusListener_v3_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|45864507", "45864507", "UNI51_020_B30", "box_OutputOrder_v2_167.Out", "box_ProximityRadiusListener_v3_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StaticBreakableBreaker_317_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_346();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|960471013", "960471013", "UNI51_020_B30", "box_StaticBreakableBreaker_317.Destroyed", "box_ParticleSystem_v3_346.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_141_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnWeaponCheck_v3_321();
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1409969229", "1409969229", "UNI51_020_B30", "box_Compare_Integers_141.A_ge_B", "box_PawnWeaponCheck_v3_321.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_141_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnWeaponCheck_v3_267();
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1459374451", "1459374451", "UNI51_020_B30", "box_Compare_Integers_141.A_lt_B", "box_PawnWeaponCheck_v3_267.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_251_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_254();
    l0 = self.box_SoundModifier_v2_251;
    l1 = self.box_Delay_v5_254;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1882893384", "1882893384", "UNI51_020_B30", "box_SoundModifier_v2_251.Started", "box_Delay_v5_254.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_365_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI51_GrabBuff_14();
    l0 = self.box_UNI51_GrabBuff_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1406130043", "1406130043", "UNI51_020_B30", "box_OutputOrder_v2_365.Out", "box_UNI51_GrabBuff_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_365_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_363();
    l0 = self.box_HealthListener_v6_363;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|515128110", "515128110", "UNI51_020_B30", "box_OutputOrder_v2_365.Out", "box_HealthListener_v6_363.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_365_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|41118667", "41118667", "UNI51_020_B30", "box_OutputOrder_v2_365.Out", "box_CoopActivePlayers_68.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_365_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_271();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|518900986", "518900986", "UNI51_020_B30", "box_OutputOrder_v2_365.Out", "box_Simple_Node_271.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_411_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_412();
    l0 = self.box_ExitZoneWarningListener_v3_411;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|963197630", "963197630", "UNI51_020_B30", "box_ExitZoneWarningListener_v3_411.FailingZoneEntered", "box_ActivityRetry_412.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_413_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_172();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1946204277", "1946204277", "UNI51_020_B30", "box_StaticBreakableBreaker_413.Destroyed", "box_ParticleSystem_v3_172.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhysicsModifier_377_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_378();
    l0 = self.box_PhysicsModifier_377;
    l1 = self.box_PhysicsModifier_378;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|986345929", "986345929", "UNI51_020_B30", "box_PhysicsModifier_377.Disabled", "box_PhysicsModifier_378.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@AllAngelsAreDead");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_122_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@AllAngelsSpawned");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@Bell_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_163_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@BuffInjected");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_84_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_263()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_263");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@Firework_Pit1_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_263_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_264()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_264");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@Firework_Pit2_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_264_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_265()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_265");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@Firework_Pit3_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_265_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_248()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_248");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@Fireworks_Pit1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_248_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_249()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_249");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@Fireworks_Pit2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_249_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_250()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_250");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@Fireworks_Pit3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_250_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_403()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_403");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@PickUp_Buff_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_403_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_272()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_272");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@Pit1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_272_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_273()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_273");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@Pit2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_273_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_274()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_274");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@Pit3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_274_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@Resume_BurningPit");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_162_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@ScoreSuccess");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_60_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_271()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_271");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@StartShimmer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_271_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_270()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_270");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@StopShimmer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_270_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|@TweakIntroDone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_112_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_340()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_340");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|9044923");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2100996313576392035",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|15883334");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101753854075874292",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_315()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_315");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|25585279");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_315_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2102790972933943413",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_349()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_349");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|33651057");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_349_True,
    });
    params = {
        -- entityId,
        [0] = "2101177964247928137",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_373()
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
        [6] = "683011558",
        -- StopEvent,
        [7] = "3540140438",
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

function export:OnEnter_box_UNI51_020_BlessedInHoles_288()
    local params;
    params = {
        -- eAngel,
        [0] = "2100984472353662896",
        -- eStratPoint,
        [1] = "2102531539647642051",
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|51783653");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_166_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015223910946970",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_135()
    local params, l0;
    l0 = self.box_GroupIter_134;
    params = {
        -- BoneName,
        [0] = "Spine1",
        -- EntityA,
        [1] = l0:GetDataOutValue(0),
        -- EntityB,
        [2] = "2100858407104867286",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|73696715");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_180_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101753843948727282",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_389()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_389");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|74724941");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101463734298879908",
        -- Group,
        [1] = "#2952B9E1",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|78482930");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101754052747471873",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_230()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_307()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#044036D6",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|92801560");
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
                [0] = self.f_box_OutputOrder_v2_130_Out_0,
                [1] = self.f_box_OutputOrder_v2_130_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_338()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_338");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|103539366");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103373713796795318",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|107218652");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_83_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "UNI51",
            item = "UNI51_020_B30_AngelPitsScoreOptional",
            id = "886048",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|107947735");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_103_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100983005444099731",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_020_B30_KillBlessed",
            id = "563696",
        },
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|121336920");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101177970751196493",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_437()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015220298226478",
        -- pawns,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponCheck_v3_436()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponCheck_v3_436");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|142165885");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnWeaponCheck_v3_436_InHands,
        -- InInventory,
        [1] = self.f_box_PawnWeaponCheck_v3_436_InInventory,
    });
    params = {
        -- pawn,
        [2] = self.Client,
        -- weaponDesc,
        [3] = "9015223910946970",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_350()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_350");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|159110320");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_350_True,
    });
    params = {
        -- entityId,
        [0] = "2101177964247928139",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_292()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_292");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|165080786");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_292_Out,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.FallCount,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_398()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|177739483");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_157_Disabled,
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_157_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101809346101915399",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_289()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_289");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|178784861");
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
                [0] = self.f_box_OutputOrder_v2_289_Out_0,
                [1] = self.f_box_OutputOrder_v2_289_Out_1,
                [2] = self.f_box_OutputOrder_v2_289_Out_2,
                [3] = self.f_box_OutputOrder_v2_289_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_257()
    local params;
    params = {
        -- Pawns,
        [0] = "2101770845218163846",
        -- SoundId,
        [1] = "525636272",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponCheck_v3_267()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponCheck_v3_267");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|208117683");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnWeaponCheck_v3_267_InHands,
        -- InInventory,
        [1] = self.f_box_PawnWeaponCheck_v3_267_InInventory,
    });
    params = {
        -- weaponDesc,
        [3] = "9015220298226478",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_418()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_418");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|218352670");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2105128352732979672",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|222836612");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_114_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI51_020_B30_KillBlessed",
            id = "563696",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_91()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4173118697",
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_441()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015220298226478",
        -- players,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|242940968");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_227_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101754065875643421",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_206()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|250250741");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_161_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2100984472353662896",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_190()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|254681621");
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
                [0] = self.f_box_OutputOrder_v2_128_Out_0,
                [1] = self.f_box_OutputOrder_v2_128_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_280()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_280");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|255214432");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_280_Out,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.FallCount,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|267656264");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_293()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_293");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|275515086");
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
                [0] = self.f_box_OutputOrder_v2_293_Out_0,
                [1] = self.f_box_OutputOrder_v2_293_Out_1,
                [2] = self.f_box_OutputOrder_v2_293_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_391()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_391");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|275662566");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101463734298879908",
        -- Group,
        [1] = "#2952B9E1",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|283158396");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101729466452544819",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_394()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_239()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|313399033");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_239_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101754065881934881",
    };
    return params;
end;

function export:OnEnter_box_Random_228()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_58()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2180454312",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|337869878");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_174_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101753838932339696",
    };
    return params;
end;

function export:OnEnter_box_Random_182()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_152()
    local params;
    params = {
        -- Pawns,
        [0] = "2101658891348624886",
        -- SoundId,
        [1] = "3752651086",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_401()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015220298226478",
        -- pawns,
        [2] = self.Host,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|370568965");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_117_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_116;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_363()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#2952B9E1",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|395599400");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_400()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|415540202");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_73_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2101177964247928137",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_283()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_283");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|420281688");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.FallCount,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|422575225");
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
                [0] = self.f_box_OutputOrder_v2_133_Out_0,
                [1] = self.f_box_OutputOrder_v2_133_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_420()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_420");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|423275648");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2105128352735076826",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_369()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_369");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|431801846");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_369_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2103374153166893610",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|443139206");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_324()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#2952B9E1",
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_137()
    local params;
    params = {
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_77()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2910629883",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_435()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_435");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|468525594");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_435_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_435_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_438,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_UNI51_020_BlessedInHoles_278()
    local params;
    params = {
        -- eAngel,
        [0] = "2103374138415526322",
        -- eStratPoint,
        [1] = "2102531539643447735",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_223()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_219()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_382()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2101052711708432289",
    };
    return params;
end;

function export:OnEnter_box_UNI51_GrabBuff_14()
    local params;
    params = {
        -- Buff,
        [0] = "9015245406771958",
        -- eClientMarker,
        [1] = "2103969045995856259",
        -- eHostMarker,
        [2] = "2100762496091589504",
        -- eTrigger,
        [3] = "2100762488749460060",
        -- oClientObjective,
        [4] = {
            section = "Objective",
            item = "UNI51_020_B30_TakeBuff_CLIENT",
            id = "848873",
        },
        -- oHostObjective,
        [5] = {
            section = "Objective",
            item = "UNI51_020_B30_TakeBuff",
            id = "591577",
        },
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|516612203");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_142_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_126()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2046880537",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|525817257");
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
                [0] = self.f_box_OutputOrder_v2_79_Out_0,
                [1] = self.f_box_OutputOrder_v2_79_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UNI51_020_BlessedInHoles_276()
    local params;
    params = {
        -- eAngel,
        [0] = "2100996313576392035",
        -- eStratPoint,
        [1] = "2102531570259769811",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|531202550");
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

function export:OnEnter_box_ProximityRadiusListener_v3_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.Tweak,
        -- id2,
        [3] = "2103952998356019924",
        -- nearZone,
        [4] = 2,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_67()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1271921971",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_266()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_266");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|555053624");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_266_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2103374138415526322",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_297()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_297");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|561017362");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102791058596312078",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_335()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_335");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|562629012");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103373683320982442",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|569243000");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_94_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI51_020_B30_KillBlessed",
            id = "563696",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 6,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_260()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_260");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|569793481");
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
                [0] = self.f_box_OutputOrder_v2_260_Out_0,
                [1] = self.f_box_OutputOrder_v2_260_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_302()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_90()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "37679539",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_397()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_153()
    local params;
    params = {
        -- Pawns,
        [0] = "2101658905445680634",
        -- SoundId,
        [1] = "3752651086",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|593278424");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_198_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101754052751666179",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|599910213");
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
                [0] = self.f_box_OutputOrder_v2_146_Out_0,
                [1] = self.f_box_OutputOrder_v2_146_Out_1,
                [2] = self.f_box_OutputOrder_v2_146_Out_2,
                [3] = self.f_box_OutputOrder_v2_146_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_372()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_372");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|604932188");
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
                [0] = self.f_box_OutputOrder_v2_372_Out_0,
                [1] = self.f_box_OutputOrder_v2_372_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_318()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_318");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|607281578");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_318_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2102790972933943411",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|609134792");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_56_Disabled,
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_56_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101809346097721091",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_65()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015218968191127",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_224()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_64()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1445425660",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_308()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_308");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|645168204");
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
                [0] = self.f_box_OutputOrder_v2_308_Out_0,
                [1] = self.f_box_OutputOrder_v2_308_Out_1,
                [2] = self.f_box_OutputOrder_v2_308_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|647020284");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_55_Disabled,
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_55_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101809346091429631",
    };
    return params;
end;

function export:OnEnter_box_Random_214()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|652965239");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_93_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.FallCount,
        -- B,
        [1] = 6,
    };
    return params;
end;

function export:OnEnter_box_Random_201()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_25()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#9D49676C",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_282()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_282");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|674800947");
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
                [0] = self.f_box_OutputOrder_v2_282_Out_0,
                [1] = self.f_box_OutputOrder_v2_282_Out_1,
                [2] = self.f_box_OutputOrder_v2_282_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_361()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- itemDescriptorID,
        [1] = "9015245406771958",
        -- players,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Random_78()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 8,
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_295()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_443()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015223910946970",
        -- pawns,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponCheck_v3_440()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponCheck_v3_440");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|695378838");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnWeaponCheck_v3_440_InHands,
        -- InInventory,
        [1] = self.f_box_PawnWeaponCheck_v3_440_InInventory,
    });
    params = {
        -- pawn,
        [2] = self.Client,
        -- weaponDesc,
        [3] = "9015220298226478",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_449()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_449");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|701279178");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_449_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_449_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_451,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_406()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_406");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|703484685");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_406_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015223910946970",
        -- players,
        [2] = self.Host,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_27()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|709520868");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objective",
            item = "UNI51_020_B30_NotEnoughPointsFail",
            id = "639872",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_32()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#73470640",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_92()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4076581793",
    };
    return params;
end;

function export:OnEnter_box_UNI51_020_BlessedInHoles_291()
    local params;
    params = {
        -- eAngel,
        [0] = "2100984472349468590",
        -- eStratPoint,
        [1] = "2102531539645544895",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_311()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_311");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|731245533");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102791069654594582",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_310()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_310");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|732406325");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_310_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2102790958339862637",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_451()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_451");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|737457500");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_451_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015223910946970",
        -- players,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_51()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "419766665",
    };
    return params;
end;

function export:OnEnter_box_Random_217()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_261()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_261");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|750181191");
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
                [0] = self.f_box_OutputOrder_v2_261_Out_0,
                [1] = self.f_box_OutputOrder_v2_261_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_339()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_339");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|758077542");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_339_True,
    });
    params = {
        -- entityId,
        [0] = "2101177970753293647",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_414()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_414");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|765077259");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_414_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2105128107225672678",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|765464357");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101754052768443409",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_392()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_392");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|774637529");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101463734298879908",
        -- Group,
        [1] = "#2952B9E1",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_185()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|777785572");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101754065867254805",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_98()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_395()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_380()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2101809346106109705",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|797871667");
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
                [0] = self.f_box_OutputOrder_v2_169_Out_0,
                [1] = self.f_box_OutputOrder_v2_169_Out_1,
                [2] = self.f_box_OutputOrder_v2_169_Out_2,
                [3] = self.f_box_OutputOrder_v2_169_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|803853401");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_259()
    local params;
    params = {
        -- Pawns,
        [0] = "2101770848510692488",
        -- SoundId,
        [1] = "159871221",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_41()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2589176122",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|824248982");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|843215027");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_143_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2103374170422260379",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_433()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015223910946970",
        -- players,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_354()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_354");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|845645414");
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
                [0] = self.f_box_OutputOrder_v2_354_Out_0,
                [1] = self.f_box_OutputOrder_v2_354_Out_1,
                [2] = self.f_box_OutputOrder_v2_354_Out_2,
                [3] = self.f_box_OutputOrder_v2_354_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_386()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2104436312045003314",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_300()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_300");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|861100673");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_300_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2102790954546114667",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|862427764");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_234_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101754065873546267",
    };
    return params;
end;

function export:OnEnter_box_Random_196()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|863282687");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101753785417214956",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|865796105");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101177970753293647",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|875979057");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_30_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_31;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_199()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_121()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|923875111");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2100859046786559710",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|925125074");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objective",
            item = "UNI51_010_Tweak_Firepit_Fail",
            id = "876635",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_49()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponCheck_v3_321()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponCheck_v3_321");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|937487957");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnWeaponCheck_v3_321_InHands,
        -- InInventory,
        [1] = self.f_box_PawnWeaponCheck_v3_321_InInventory,
    });
    params = {
        -- weaponDesc,
        [3] = "9015223910946970",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_262()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_262");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|945453406");
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
                [0] = self.f_box_OutputOrder_v2_262_Out_0,
                [1] = self.f_box_OutputOrder_v2_262_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|949080110");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_233()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|953650300");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_156_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2100803355508011239",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|977909956");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_74_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2101177964247928139",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_269()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_269");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|987935044");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_269_Disabled,
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_269_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101809346099818245",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_209()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_252()
    local params;
    params = {
        -- Pawns,
        [0] = "2101770828092820608",
        -- SoundId,
        [1] = "159871221",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_305()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_305");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1009665037");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102791064204096530",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_368()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_368");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1010237628");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_368_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2103374153166893608",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_428()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015223910946970",
        -- pawns,
        [2] = self.Host,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_72()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_427()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015223910946970",
        -- players,
        [2] = self.Host,
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponCheck_v3_430()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponCheck_v3_430");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1024124149");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnWeaponCheck_v3_430_InHands,
        -- InInventory,
        [1] = self.f_box_PawnWeaponCheck_v3_430_InInventory,
    });
    params = {
        -- pawn,
        [2] = self.Host,
        -- weaponDesc,
        [3] = "9015223910946970",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1024807056");
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
                [0] = self.f_box_OutputOrder_v2_155_Out_0,
                [1] = self.f_box_OutputOrder_v2_155_Out_1,
                [2] = self.f_box_OutputOrder_v2_155_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1026743726");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_69_True,
    });
    params = {
        -- entityId,
        [0] = "2102790954546114667",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_304()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_304");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1031228957");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102791066246722580",
    };
    return params;
end;

function export:OnEnter_box_UNI51_020_BlessedInHoles_287()
    local params;
    params = {
        -- eAngel,
        [0] = "2100859046786559710",
        -- eStratPoint,
        [1] = "2102531570257672655",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_378()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2101809346093526785",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_286()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_286");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1041456192");
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
                [0] = self.f_box_OutputOrder_v2_286_Out_0,
                [1] = self.f_box_OutputOrder_v2_286_Out_1,
                [2] = self.f_box_OutputOrder_v2_286_Out_2,
                [3] = self.f_box_OutputOrder_v2_286_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_232()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1041495784");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101754065879837727",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_184()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_348()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_348");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1045079283");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_348_True,
    });
    params = {
        -- entityId,
        [0] = "2102790944758706278",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_388()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_388");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1057691368");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101463734298879908",
        -- Group,
        [1] = "#2952B9E1",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_245");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1066392277");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101754065871449113",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1073731622");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [1] = self.f_box_OutputOrder_v2_57_Out_1,
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
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_396()
    local params;
    params = {
        -- Group,
        [0] = "2101065563341096742",
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_438()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_438");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1093258122");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_438_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015223910946970",
        -- players,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_360()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_360");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1095504779");
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
                [0] = self.f_box_OutputOrder_v2_360_Out_0,
                [1] = self.f_box_OutputOrder_v2_360_Out_1,
                [2] = self.f_box_OutputOrder_v2_360_Out_2,
                [3] = self.f_box_OutputOrder_v2_360_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_374()
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
        [6] = "683011558",
        -- StopEvent,
        [7] = "3540140438",
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

function export:OnEnter_box_UNI51_020_BlessedInHoles_285()
    local params;
    params = {
        -- eAngel,
        [0] = "2103374153166893610",
        -- eStratPoint,
        [1] = "2102531570255575499",
    };
    return params;
end;

function export:OnEnter_box_UNI51_InjectBuff_370()
    local params;
    params = {
        -- Buff,
        [0] = "buff_fury",
        -- BuffDescriptor,
        [1] = "9015245406771958",
        -- oObjective,
        [2] = {
            section = "Objective",
            item = "UNI51_020_B30_InjectBuff",
            id = "592104",
        },
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1157523176");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_96_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI51_020_B30_KillBlessed",
            id = "563696",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_116()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#9D49676C",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1159804381");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_81_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "UNI51",
            item = "UNI51_020_B30_AngelPitsScoreOptional",
            id = "886048",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1163166685");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_210_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101754052760054795",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1166402922");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_173_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101753750839372776",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_415()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_415");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1168303309");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_415_True,
    });
    params = {
        -- entityId,
        [0] = "2105128107225672678",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_366()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_366");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1174001539");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_366_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2100859046786559710",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1176393020");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_207()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_452()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015223910946970",
        -- players,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_375()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2101809346091429631",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_381()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_384()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2100980592611954727",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_336()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_336");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1193675429");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_336_True,
    });
    params = {
        -- entityId,
        [0] = "2101177798998630897",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_323()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_323");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1194451511");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_323_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2103374138415526324",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1195125740");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_101_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100982995038031499",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_020_B30_KillBlessed",
            id = "563696",
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_47()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "373364794",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1201569671");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_181_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101753875229846520",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_66()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1231152497",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_301()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_301");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1218559641");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_301_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_307;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Random_241()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponCheck_v3_453()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponCheck_v3_453");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1233214616");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnWeaponCheck_v3_453_InHands,
        -- InInventory,
        [1] = self.f_box_PawnWeaponCheck_v3_453_InInventory,
    });
    params = {
        -- pawn,
        [2] = self.Client,
        -- weaponDesc,
        [3] = "9015220298226478",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_24()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_10()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1247758717");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_236_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101754065863060499",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_358()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_358");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1249785122");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_358_True,
    });
    params = {
        -- entityId,
        [0] = "2102790972933943413",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1252925795");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101753832663952366",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_408()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_408");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1259222519");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityForceAndLockTracking_408_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_253()
    local params;
    params = {
        -- Pawns,
        [0] = "2101770837831994500",
        -- SoundId,
        [1] = "525636272",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_387()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_387");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1263912526");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "18152988058576028",
        -- missionLayerId,
        [1] = "36167386568058016",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_367()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_367");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1265760956");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_367_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2100996313576392035",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_393()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_393");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1265871707");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101463734298879908",
        -- Group,
        [1] = "#2952B9E1",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_309()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_309");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1272996328");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_309_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_316;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1280179617");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_26_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_25;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_255()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1296831047");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_222_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101754065869351959",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1297931258");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_164_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2100803355503816933",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_355()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_355");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1310232947");
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
                [0] = self.f_box_OutputOrder_v2_355_Out_0,
                [1] = self.f_box_OutputOrder_v2_355_Out_1,
                [2] = self.f_box_OutputOrder_v2_355_Out_2,
                [3] = self.f_box_OutputOrder_v2_355_Out_3,
                [4] = self.f_box_OutputOrder_v2_355_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_256()
    local params;
    params = {
        -- Pawns,
        [0] = "2101770833488792706",
        -- SoundId,
        [1] = "159871221",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1321377369");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_179_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101753765699791850",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_342()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_342");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1324988366");
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
                [0] = self.f_box_OutputOrder_v2_342_Out_0,
                [1] = self.f_box_OutputOrder_v2_342_Out_1,
                [2] = self.f_box_OutputOrder_v2_342_Out_2,
                [3] = self.f_box_OutputOrder_v2_342_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponCheck_v3_447()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponCheck_v3_447");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1325919732");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnWeaponCheck_v3_447_InHands,
        -- InInventory,
        [1] = self.f_box_PawnWeaponCheck_v3_447_InInventory,
    });
    params = {
        -- pawn,
        [2] = self.Client,
        -- weaponDesc,
        [3] = "9015223910946970",
    };
    return params;
end;

function export:OnEnter_box_UNI51_020_BlessedInHoles_284()
    local params;
    params = {
        -- eAngel,
        [0] = "2103374138415526324",
        -- eStratPoint,
        [1] = "2102531539643447739",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_343()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_343");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1328998883");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_343_True,
    });
    params = {
        -- entityId,
        [0] = "2102790958341959793",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_422()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_422");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1330934435");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_422_True,
    });
    params = {
        -- entityId,
        [0] = "2105128460178465258",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_357()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_357");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1333299485");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_357_True,
    });
    params = {
        -- entityId,
        [0] = "2102790972936040567",
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1342696521");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_88_Out,
    });
    l0 = self.box_CoopActivePlayers_85;
    params = {
        -- itemDescriptorID,
        [0] = "9015245406771958",
        -- players,
        [2] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1349237179");
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
                [0] = self.f_box_OutputOrder_v2_125_Out_0,
                [1] = self.f_box_OutputOrder_v2_125_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1355967737");
    l0:SetConnections({
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101809346106109705",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_344()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_344");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1357398243");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_344_True,
    });
    params = {
        -- entityId,
        [0] = "2102790958339862637",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_148()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_298()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_298");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1377999547");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_298_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2102790944760803432",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_46()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1208579990",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1391846302");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_144_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2103374170424357533",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_419()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_419");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1394667680");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_419_True,
    });
    params = {
        -- entityId,
        [0] = "2105128352735076826",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_53()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1397395415");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_149_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2102790944758706278",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_39()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1452321509",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_281()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_281");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1416707893");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.FallCount,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_UNI51_020_BlessedInHoles_247()
    local params;
    params = {
        -- eAngel,
        [0] = "2103374170424357533",
        -- eStratPoint,
        [1] = "2102530974916051162",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_52()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2617276002",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1427478346");
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

function export:OnEnter_box_NarrativeSceneCleanUp_V2_331()
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

function export:OnEnter_box_Gate_v3_42()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_191()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_294()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1450569309");
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
                [0] = self.f_box_OutputOrder_v2_168_Out_0,
                [1] = self.f_box_OutputOrder_v2_168_Out_1,
                [2] = self.f_box_OutputOrder_v2_168_Out_2,
            },
            count = 3,
        },
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1453908620");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102791061471507472",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_362()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015245406771958",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 2,
    };
    return params;
end;

function export:OnEnter_box_Random_237()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_151()
    local params;
    params = {
        -- Pawns,
        [0] = "2101658900620133880",
        -- SoundId,
        [1] = "3752651086",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_154()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "294667235",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_444()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_444");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1475165574");
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
                [0] = self.f_box_OutputOrder_v2_444_Out_0,
                [1] = self.f_box_OutputOrder_v2_444_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1483104181");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_87_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_88,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1487752082");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_140_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101191407929671475",
    };
    return params;
end;

function export:OnEnter_box_Random_194()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_195()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1507654399");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_212_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101754052753763333",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1510143571");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
                [2] = self.f_box_OutputOrder_v2_13_Out_2,
                [3] = self.f_box_OutputOrder_v2_13_Out_3,
                [4] = self.f_box_OutputOrder_v2_13_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1513243483");
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
                [0] = self.f_box_OutputOrder_v2_75_Out_0,
                [1] = self.f_box_OutputOrder_v2_75_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_347()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_347");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1513777395");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_347_True,
    });
    params = {
        -- entityId,
        [0] = "2102790944760803432",
    };
    return params;
end;

function export:OnEnter_box_Random_189()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_231()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_330()
    local params;
    params = {
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Random_238()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_UNI51_020_BlessedInHoles_243()
    local params;
    params = {
        -- eAngel,
        [0] = "2100803355503816933",
        -- eStratPoint,
        [1] = "2102530971009056978",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_359()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_359");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1564902936");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_359_True,
    });
    params = {
        -- entityId,
        [0] = "2102790972933943411",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1573347530");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_132_A_le_B,
    });
    l0 = self.box_InventoryItemListener_361;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(0),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1586596244");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
                [2] = self.f_box_OutputOrder_v2_61_Out_2,
                [3] = self.f_box_OutputOrder_v2_61_Out_3,
                [4] = self.f_box_OutputOrder_v2_61_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_296()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1611653193");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_102_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100983002199805583",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_020_B30_KillBlessed",
            id = "563696",
        },
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_346()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_346");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1612890033");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103373725983345596",
    };
    return params;
end;

function export:OnEnter_box_Random_54()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_345()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_345");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1627170053");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_345_True,
    });
    params = {
        -- entityId,
        [0] = "2101177970751196493",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_416()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_416");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1630718684");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_416_True,
    });
    params = {
        -- entityId,
        [0] = "2105128107225672676",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_337()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_337");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1639799974");
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
                [0] = self.f_box_OutputOrder_v2_337_Out_0,
                [1] = self.f_box_OutputOrder_v2_337_Out_1,
                [2] = self.f_box_OutputOrder_v2_337_Out_2,
                [3] = self.f_box_OutputOrder_v2_337_Out_3,
                [4] = self.f_box_OutputOrder_v2_337_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_421()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_421");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1647269231");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2105128460178465258",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1652499455");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101729443107048751",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_379()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2101809346099818245",
    };
    return params;
end;

function export:OnEnter_box_GroupIter_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- entities,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_341()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_341");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1667295164");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_341_True,
    });
    params = {
        -- entityId,
        [0] = "2101177795162939887",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_404()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Random_213()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_328()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_328");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1686546269");
    l0:SetConnections({
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI51_020_B30_KillRemainingAngels",
            id = "698479",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_410()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015220298226478",
        -- players,
        [2] = self.Host,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_364()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_364");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1694845617");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objective",
            item = "UNI51_010_B20_FailFollowDirections",
            id = "793740",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1698671301");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
                [2] = self.f_box_OutputOrder_v2_15_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_59()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3162287052",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1705006994");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_20_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2101177795162939887",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_82()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015220298226478",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1720659679");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_34_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_32;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_Random_204()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_371()
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
        [6] = "683011558",
        -- StopEvent,
        [7] = "3540140438",
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

function export:OnEnter_box_OutputOrder_v2_385()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_385");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1746822916");
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
                [0] = self.f_box_OutputOrder_v2_385_Out_0,
                [1] = self.f_box_OutputOrder_v2_385_Out_1,
                [2] = self.f_box_OutputOrder_v2_385_Out_2,
                [3] = self.f_box_OutputOrder_v2_385_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_306()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_306");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1751826929");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_306_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2102790958341959793",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_327()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_327");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1751888482");
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
                [0] = self.f_box_OutputOrder_v2_327_Out_0,
                [1] = self.f_box_OutputOrder_v2_327_Out_1,
                [2] = self.f_box_OutputOrder_v2_327_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponCheck_v3_431()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponCheck_v3_431");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1755065308");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnWeaponCheck_v3_431_InHands,
        -- InInventory,
        [1] = self.f_box_PawnWeaponCheck_v3_431_InInventory,
    });
    params = {
        -- pawn,
        [2] = self.Host,
        -- weaponDesc,
        [3] = "9015220298226478",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_277()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_277");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1761148622");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_277_Out,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.FallCount,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1768710118");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_23_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.FallCount,
        -- B,
        [1] = 6,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1770953622");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_205_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101754052766346255",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_313()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_313");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1791980675");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_313_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2102790958339862639",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_432()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1806168928");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_97_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI51_020_B30_KillBlessed",
            id = "563696",
        },
        -- Progress,
        [1] = self.FallCount,
        -- ProgressId,
        [2] = self.iProgress,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_334()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_334");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1808761436");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_334_Out,
    });
    params = {
        -- Hour,
        [0] = 1,
        -- Minute,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_424()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_424");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1816063670");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2105128460178465256",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1838472313");
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
                [0] = self.f_box_OutputOrder_v2_71_Out_0,
                [1] = self.f_box_OutputOrder_v2_71_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_356()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_356");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1842447312");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103373721694669754",
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_136()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015220298226478",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1849747472");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_229_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101754065884032035",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_412()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_412");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1856328621");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objective",
            item = "UNI51_010_B20_FailFollowDirections",
            id = "793740",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_76()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Random_225()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_352()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_352");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1875592358");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103373717387119544",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_43()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3038987877",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_38()
    local params;
    params = {
        -- Group,
        [0] = "#4B813AC6",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3224442149",
    };
    return params;
end;

function export:OnEnter_box_Random_109()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 5,
        },
    };
    return params;
end;

function export:OnEnter_box_Print_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1890901496");
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
        [8] = "TweakIntroDone!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1896860611");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objective",
            item = "UNI51_010_B20_FailFollowDirections",
            id = "793740",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_UNI51_020_BlessedInHoles_150()
    local params;
    params = {
        -- eAngel,
        [0] = "2103374170422260379",
        -- eStratPoint,
        [1] = "2102530974268031190",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1905657433");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self.FallCount,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Random_187()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_325()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_325");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1910391315");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_325_A_gt_B,
    });
    l0 = self.box_GroupSizeListener_v5_324;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_332()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015223910946970",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_399()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_UNI51_020_BlessedInHoles_290()
    local params;
    params = {
        -- eAngel,
        [0] = "2103374153166893608",
        -- eStratPoint,
        [1] = "2102531570253478343",
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_450()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015220298226478",
        -- players,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_316()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#2952B9E1",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_417()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_417");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1942260634");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_417_True,
    });
    params = {
        -- entityId,
        [0] = "2105128352732979672",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_407()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_407");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1944264610");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_407_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1953765623");
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
        [8] = "B30 -DONE!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_UNI51_020_BlessedInHoles_246()
    local params;
    params = {
        -- eAngel,
        [0] = "2100803355508011239",
        -- eStratPoint,
        [1] = "2102530966915416270",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_314()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_314");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1966877366");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2102791072003404824",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_376()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2101809346097721091",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_353()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_353");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|1981051990");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_353_True,
    });
    params = {
        -- entityId,
        [0] = "2102790958339862639",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_446()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015220298226478",
        -- pawns,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_183()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_16()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.Tweak,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2003644063");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_203_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101754052757957641",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2017100841");
    l0:SetConnections({
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_159_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2100984472349468590",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_244()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_351()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_351");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2022108826");
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
                [0] = self.f_box_OutputOrder_v2_351_Out_0,
                [1] = self.f_box_OutputOrder_v2_351_Out_1,
                [2] = self.f_box_OutputOrder_v2_351_Out_2,
                [3] = self.f_box_OutputOrder_v2_351_Out_3,
                [4] = self.f_box_OutputOrder_v2_351_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_31()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#044036D6",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2027069583");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_44_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2101177798998630897",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_200()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2043571515");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_175_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101753860384107510",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_425()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_425");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2048256475");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_425_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_425_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_406,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_89()
    local params, l0;
    l0 = self.box_CoopActivePlayers_85;
    params = {
        -- itemDescriptorID,
        [0] = "9015245406771958",
        -- players,
        [2] = l0:GetDataOutValue(2),
        -- quantity,
        [3] = 3,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2081198524");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_215_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101754052762151949",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2081827106");
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
        [8] = "B30 -Started!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_423()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_423");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2084729615");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_423_True,
    });
    params = {
        -- entityId,
        [0] = "2105128460178465256",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_448()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015223910946970",
        -- pawns,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_390()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_390");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2088016767");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101463734298879908",
        -- Group,
        [1] = "#2952B9E1",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2089612261");
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

function export:OnEnter_box_NarrativeFade_165()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_312()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_383()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2101052703439361952",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_402()
    local params;
    params = {
        -- Pawns,
        [0] = "2104656089223033609",
        -- SoundId,
        [1] = "2047672067",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_303()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_303");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2102508469");
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
                [0] = self.f_box_OutputOrder_v2_303_Out_0,
                [1] = self.f_box_OutputOrder_v2_303_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_268()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015223910946970",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_279()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_279");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2106572467");
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
                [0] = self.f_box_OutputOrder_v2_279_Out_0,
                [1] = self.f_box_OutputOrder_v2_279_Out_1,
                [2] = self.f_box_OutputOrder_v2_279_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_258()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2112327816");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_160_Disabled,
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_160_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2101809346093526785",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_254()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2121022386");
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
                [0] = self.f_box_OutputOrder_v2_167_Out_0,
                [1] = self.f_box_OutputOrder_v2_167_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2125156036");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101754052755860487",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_317()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_317");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2138072093");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_317_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2102790972936040567",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2139834080");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_141_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_141_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_166,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_251()
    local params;
    params = {
        -- Pawns,
        [0] = "2101770820358524030",
        -- SoundId,
        [1] = "525636272",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_365()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_365");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2145129754");
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
                [0] = self.f_box_OutputOrder_v2_365_Out_0,
                [1] = self.f_box_OutputOrder_v2_365_Out_1,
                [2] = self.f_box_OutputOrder_v2_365_Out_2,
                [3] = self.f_box_OutputOrder_v2_365_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_411()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = true,
        -- FailingZoneTrigger,
        [2] = "2105116248116312839",
        -- WarningZoneTrigger,
        [3] = "2100082055405650110",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_413()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_413");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_020_B30.domino|@UNI51_020_B30|2147090159");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_413_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2105128107225672676",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_377()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2101809346101915399",
    };
    return params;
end;

function export:OnExit_box_GetInventoryItemQuantity_166_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_166 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_292_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.FallCount = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_280_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.FallCount = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_142_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_GroupIter_134;
    l1:GetLuaBox().entities = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_94_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.iProgress = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_115_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_115;
    self.Host = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_115_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_115;
    self.Host = l0:GetDataOutValue(0);
    self.Client = l0:GetDataOutValue(1);
end;

function export:OnExit_box_CharacterLoadedIdListener_65_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_65;
    self.Tweak = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_406_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_406 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_451_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_451 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_68_PlayerAdded()
    local l0;
    l0 = self.box_CoopActivePlayers_68;
    self.Client = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_68_PlayerRemoved()
    local l0;
    l0 = self.box_CoopActivePlayers_68;
    self.Client = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetInventoryItemQuantity_438_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_438 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_88_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_88 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_85_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_85;
    l1 = self.box_InventoryItemModifier_89;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_85_PlayerRemoved()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_85;
    l1 = self.box_InventoryItemModifier_89;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GroupIter_134_PawnIter()
    local l0, l1;
    l0 = self.box_GroupIter_134;
    l1 = self.box_Bind_v4_135;
    l1:GetLuaBox().EntityA = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_277_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.FallCount = l0:GetDataOutValue(0);
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
