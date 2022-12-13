LUAC3� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_020/lt01_020_debrief.domino
-- User graph: LT01_020_Debrief
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GetClosestEntity.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GetPlayersVehicleID.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CancelAllExplosions.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ExtinguishAllFires.lua");
        cboxRes:RegisterBox("Domino/System/ForceExitVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/ListLength_v2.lua");
        cboxRes:RegisterBox("Domino/System/ListWriter_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputPriorityModifier_v4.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/PostWWiseEventSetState.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        
        -- Load resources
        cboxRes:LoadResource([[264881612.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1828168742.bnk]], "CSoundResource");
        cboxRes:LoadResource([[323211064.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_020/LT01_020_Debrief.LT01_020_Debrief.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.GetClosestEntity.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "ListIsEmpty",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "EntitytList",
                type = "list",
            },
            [1] = {
                name = "EntityToCheck",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "ClosestEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.GetPlayersVehicleID.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NotInVehicle",
                delayed = false,
            },
            [1] = {
                name = "OneVehicle",
                delayed = false,
            },
            [2] = {
                name = "TwoVehicles",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Vehicle1",
                type = "entity",
            },
            [1] = {
                name = "Vehicle2",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityFact.lua")] = {
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
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/AgentGroupModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "AddGroup",
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
                name = "AnimalGroup",
                type = "group",
            },
            [1] = {
                name = "PawnGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/CancelAllExplosions.lua")] = {
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
    metadataTable[GetPathID("Domino/System/CompareEntity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Equal",
                delayed = false,
            },
            [1] = {
                name = "NotEqual",
                delayed = false,
            },
        },
        controlOutCount = 2,
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
                name = "Result",
                type = "bool",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/ExtinguishAllFires.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ForceExitVehicle_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ForceExit",
            },
            [1] = {
                name = "TryExit",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "ForceExitted",
                delayed = false,
            },
            [1] = {
                name = "TryExitted",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "noFail",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/ListLength_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetLength",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Empty",
                delayed = false,
            },
            [1] = {
                name = "NotEmpty",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Length",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/ListWriter_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Remove",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Data",
                type = "entity",
            },
            [1] = {
                name = "Index",
                type = "int",
            },
            [2] = {
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/Narrative/StartMetaSequence.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "ID",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Interrupt",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Interrupted",
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
                name = "ContextFlags",
                type = "list",
            },
            [1] = {
                name = "ID",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/PostWWiseEventSetState.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetState",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Set",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "SoundId",
                type = "Sound",
            },
            [1] = {
                name = "SoundType",
                type = "SoundType",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "LT01_020_Debrief";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief";
    self.MetaSequenceID = 0;
    self.l_cinPosition = {
    };
    self.e_LocalPlayer = nil;
    self.e_ClosestCinPosition = nil;
    self.gFriendlyPlayers = nil;
    self.e_JohnSeed = nil;
    self.e_JS_AiSpawner = nil;
    self.e_JS_EntityID = nil;
    self.f_XPlayer = 0;
    self.f_YPlayer = 0;
    self.f_ZPlayer = 0;
    self.x_Cin = 0;
    self.y_CIN = 0;
    self.Z_Cin = 0;
    self.x_CinBefore = 0;
    self.y_CinBefore = 0;
    self.z_CinBefore = 0;
    self.x_CinPos = 0;
    self.y_CinPos = 0;
    self.z_CinPos = 0;
    self.e_playerVehicle = nil;
    self.e_PlayerVehicle_2 = nil;
    self.box_EntityStatusListener_113 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|11182019");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_113_Loaded,
    });
    self.box_MultipleOR_89 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|13186747");
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
        [0] = self.f_box_MultipleOR_89_Out,
    });
    self.box_MultipleAND_v2_76 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|70724371");
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
        [0] = self.f_box_MultipleAND_v2_76_Out,
    });
    self.box_EntityStatusListener_108 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|109564941");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_108_Loaded,
    });
    self.box_TeleportPawns_132 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|131389012");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_132_Out,
    });
    self.box_EntityStatusListener_133 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|139166745");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_133_Loaded,
    });
    self.box_EntityStatusListener_90 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|161740321");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_90_Loaded,
    });
    self.box_ActivityAcknowledgeGate_8 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|168734577");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_8_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_8_Reloaded,
    });
    self.box_MultipleOR_121 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|191262889");
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
        [0] = self.f_box_MultipleOR_121_Out,
    });
    self.box_EntityStatusListener_118 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|212467526");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_118_Loaded,
    });
    self.box_InputPriorityModifier_v4_109 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|234527490");
    l0:SetConnections({
        -- OnSet,
        [1] = self.f_box_InputPriorityModifier_v4_109_OnSet,
    });
    self.box_PositionModifier_v2_78 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|238982790");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_78_Done,
    });
    self.box_GetClosestEntity_28 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetClosestEntity.debug.lua");
    l0 = self.box_GetClosestEntity_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetClosestEntity_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|239121780");
    l0:SetConnections({
        -- ListIsEmpty,
        [0] = self.f_box_GetClosestEntity_28_ListIsEmpty,
        -- Out,
        [1] = self.f_box_GetClosestEntity_28_Out,
    });
    self.box_MultipleAND_v2_111 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|239320152");
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
        [0] = self.f_box_MultipleAND_v2_111_Out,
    });
    self.box_EntityStatusListener_117 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|273496965");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_117_Loaded,
    });
    self.box_EntityStatusListener_119 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|327435471");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_119_Loaded,
    });
    self.box_StartCelebration_87 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|424324116");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_87_Ended,
    });
    self.box_NarrativeSceneCleanUp_18 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|477026786");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_18_Out,
    });
    self.box_GetPlayersVehicleID_120 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayersVehicleID.debug.lua");
    l0 = self.box_GetPlayersVehicleID_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayersVehicleID_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|513519587");
    l0:SetConnections({
        -- NotInVehicle,
        [0] = self.f_box_GetPlayersVehicleID_120_NotInVehicle,
        -- OneVehicle,
        [1] = self.f_box_GetPlayersVehicleID_120_OneVehicle,
        -- TwoVehicles,
        [2] = self.f_box_GetPlayersVehicleID_120_TwoVehicles,
    });
    self.box_PositionModifier_v2_33 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|522754740");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_33_Done,
    });
    self.box_SpawnAI_42 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|534136537");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_42_Spawned,
    });
    self.box_StartMetaSequence_10 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|694435775");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_10_Out,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|712255753");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_Delay_v5_27 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|717013569");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_27_TimeElapsed,
    });
    self.box_OnceOnly_v3_105 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|754795356");
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
                [0] = self.f_box_OnceOnly_v3_105_Out_0,
            },
            count = 2,
        },
    });
    self.box_Switch_48 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|850919593");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 9,
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
                [0] = self.f_box_Switch_48_Output_0,
                [1] = self.f_box_Switch_48_Output_1,
                [2] = self.f_box_Switch_48_Output_2,
                [3] = self.f_box_Switch_48_Output_3,
                [4] = self.f_box_Switch_48_Output_4,
                [5] = self.f_box_Switch_48_Output_5,
                [6] = self.f_box_Switch_48_Output_6,
                [7] = self.f_box_Switch_48_Output_7,
                [8] = self.f_box_Switch_48_Output_8,
            },
            count = 9,
        },
    });
    self.box_PostFx_v3_112 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|935939579");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_112_Disabled,
    });
    self.box_PhoneCallExclusivityModifier_99 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1007667813");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_99_Enabled,
    });
    self.box_Delay_v5_102 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1037692581");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_102_TimeElapsed,
    });
    self.box_EntityStatusListener_84 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1044490217");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_84_Loaded,
    });
    self.box_MultipleOR_129 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1051211965");
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
        [0] = self.f_box_MultipleOR_129_Out,
    });
    self.box_MultipleOR_92 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1121037489");
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
    self.box_NarrativeFade_15 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1141071849");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_5 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1165977643");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_5_Out,
    });
    self.box_Delay_v5_125 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1200968911");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_125_TimeElapsed,
    });
    self.box_MultipleOR_61 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1211472654");
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
        [0] = self.f_box_MultipleOR_61_Out,
    });
    self.box_PlaySequence_v8_11 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1281657698");
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
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_11_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_11_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_11_SPOut__FadeIn_,
                },
                [1] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_11_SPOut__FadeOut_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_11_Started,
    });
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1294729648");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_NarrativeFade_14 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1332085219");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_14_FadedIn,
    });
    self.box_MultipleOR_51 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1374704500");
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
        [0] = self.f_box_MultipleOR_51_Out,
    });
    self.box_Music_Quest_v2_37 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1381039554");
    l0:SetConnections({
    });
    self.box_NarrativeSceneSetup_95 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1389957197");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_95_Out,
    });
    self.box_TeleportPawns_130 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1450469588");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_130_Out,
    });
    self.box_GetPlayersVehicleID_127 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayersVehicleID.debug.lua");
    l0 = self.box_GetPlayersVehicleID_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayersVehicleID_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1455592240");
    l0:SetConnections({
        -- NotInVehicle,
        [0] = self.f_box_GetPlayersVehicleID_127_NotInVehicle,
        -- OneVehicle,
        [1] = self.f_box_GetPlayersVehicleID_127_OneVehicle,
        -- TwoVehicles,
        [2] = self.f_box_GetPlayersVehicleID_127_TwoVehicles,
    });
    self.box_EntityStatusListener_116 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1477194683");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_116_Loaded,
    });
    self.box_OnceOnly_v3_93 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1655161471");
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
                [0] = self.f_box_OnceOnly_v3_93_Out_0,
            },
            count = 2,
        },
    });
    self.box_TeleportPawns_20 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1681880401");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_20_Out,
    });
    self.box_EntityStatusListener_107 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1690377437");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_107_Loaded,
    });
    self.box_EntityStatusListener_114 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1779434382");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_114_Loaded,
    });
    self.box_NarrativeFade_96 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1812543430");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_96_FadedOut,
    });
    self.box_PositionModifier_v2_79 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1862761654");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_79_Done,
    });
    self.box_Delay_v5_91 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1893513810");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_91_TimeElapsed,
    });
    self.box_InventoryItemModifier_1 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1940984650");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_1_Out,
    });
    self.box_EntityStatusListener_115 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1954808889");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_115_Loaded,
    });
    self.box_PostWWiseEventSetState_41 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1976702744");
    l0:SetConnections({
    });
    self.box_MultipleOR_124 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1977010960");
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
        [0] = self.f_box_MultipleOR_124_Out,
    });
    self.box_Delay_v5_85 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|2047357192");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_85_TimeElapsed,
    });
    self.box_MultipleOR_128 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|2094285356");
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
        [0] = self.f_box_MultipleOR_128_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|540698876", "540698876", "LT01_020_Debrief", "In", "box_OutputOrder_v2_9.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_37();
    l0 = self.box_Music_Quest_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|982735565", "982735565", "LT01_020_Debrief", "box_Simple_Node_46.Out", "box_Music_Quest_v2_37.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_68_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|2071344178", "2071344178", "LT01_020_Debrief", "box_Simple_Node_68.Out", "box_MultipleOR_61.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_137_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_136();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|703771418", "703771418", "LT01_020_Debrief", "box_Simple_Node_137.Out", "box_OutputOrder_v2_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_113_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_24();
    l0 = self.box_EntityStatusListener_113;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1638426100", "1638426100", "LT01_020_Debrief", "box_EntityStatusListener_113.Loaded", "box_ListWriter_v2_24.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_89_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_95();
    l0 = self.box_MultipleOR_89;
    l1 = self.box_NarrativeSceneSetup_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|193504640", "193504640", "LT01_020_Debrief", "box_MultipleOR_89.Out", "box_NarrativeSceneSetup_95.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_112();
    l0 = self.box_MultipleAND_v2_76;
    l1 = self.box_PostFx_v3_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1679101654", "1679101654", "LT01_020_Debrief", "box_MultipleAND_v2_76.Out", "box_PostFx_v3_112.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_108_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_23();
    l0 = self.box_EntityStatusListener_108;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|891574128", "891574128", "LT01_020_Debrief", "box_EntityStatusListener_108.Loaded", "box_ListWriter_v2_23.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_132_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_133();
    l0 = self.box_TeleportPawns_132;
    l1 = self.box_EntityStatusListener_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|649782884", "649782884", "LT01_020_Debrief", "box_TeleportPawns_132.Out", "box_EntityStatusListener_133.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_83_Out()
    self:OnExit_box_SetEntity_v2_83_Out();
end;

function export:f_box_EntityStatusListener_133_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_134();
    l0 = self.box_EntityStatusListener_133;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|2130757605", "2130757605", "LT01_020_Debrief", "box_EntityStatusListener_133.Loaded", "box_SetEntity_v2_134.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_90_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_33();
    l0 = self.box_EntityStatusListener_90;
    l1 = self.box_PositionModifier_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1809452149", "1809452149", "LT01_020_Debrief", "box_EntityStatusListener_90.Loaded", "box_PositionModifier_v2_33.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_8_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1554242603", "1554242603", "LT01_020_Debrief", "box_ActivityAcknowledgeGate_8.Acknowledged", "box_MultipleOR_89.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_8_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|835631764", "835631764", "LT01_020_Debrief", "box_ActivityAcknowledgeGate_8.Reloaded", "box_MultipleOR_89.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_121_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceExitVehicle_v2_88();
    l0 = self.box_MultipleOR_121;
    l1 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1670988450", "1670988450", "LT01_020_Debrief", "box_MultipleOR_121.Out", "box_ForceExitVehicle_v2_88.ForceExit", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceExit
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_118_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_31();
    l0 = self.box_EntityStatusListener_118;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|132656796", "132656796", "LT01_020_Debrief", "box_EntityStatusListener_118.Loaded", "box_ListWriter_v2_31.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_64_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_64_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_83();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|943358117", "943358117", "LT01_020_Debrief", "box_SetEntity_v2_64.Out", "box_SetEntity_v2_83.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InputPriorityModifier_v4_109_OnSet()
    local l0, l1;
    l0 = self.box_InputPriorityModifier_v4_109;
    l1 = self.box_StartMetaSequence_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1237341786", "1237341786", "LT01_020_Debrief", "box_InputPriorityModifier_v4_109.OnSet", "box_StartMetaSequence_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PositionModifier_v2_78_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_79();
    l0 = self.box_PositionModifier_v2_78;
    l1 = self.box_PositionModifier_v2_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1966915983", "1966915983", "LT01_020_Debrief", "box_PositionModifier_v2_78.Done", "box_PositionModifier_v2_79.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_GetClosestEntity_28_ListIsEmpty()
    local params, l0, l1;
    self:OnExit_box_GetClosestEntity_28_ListIsEmpty();
    params = self:OnEnter_box_Print_v2_34();
    l0 = self.box_GetClosestEntity_28;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|590771542", "590771542", "LT01_020_Debrief", "box_GetClosestEntity_28.ListIsEmpty", "box_Print_v2_34.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetClosestEntity_28_Out()
    local l0, l1;
    self:OnExit_box_GetClosestEntity_28_Out();
    l0 = self.box_GetClosestEntity_28;
    l1 = self.box_GetPlayersVehicleID_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1518205618", "1518205618", "LT01_020_Debrief", "box_GetClosestEntity_28.Out", "box_GetPlayersVehicleID_120.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleAND_v2_111_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_102();
    l0 = self.box_MultipleAND_v2_111;
    l1 = self.box_Delay_v5_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1468928870", "1468928870", "LT01_020_Debrief", "box_MultipleAND_v2_111.Out", "box_Delay_v5_102.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_117_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_32();
    l0 = self.box_EntityStatusListener_117;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1399618997", "1399618997", "LT01_020_Debrief", "box_EntityStatusListener_117.Loaded", "box_ListWriter_v2_32.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_71_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_111();
    l0 = self.box_MultipleAND_v2_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|2014495335", "2014495335", "LT01_020_Debrief", "box_SetContextualStrategy_71.Out", "box_MultipleAND_v2_111.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_EntityStatusListener_119_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_29();
    l0 = self.box_EntityStatusListener_119;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1954847665", "1954847665", "LT01_020_Debrief", "box_EntityStatusListener_119.Loaded", "box_ListWriter_v2_29.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_63_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_63_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_47();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1114980645", "1114980645", "LT01_020_Debrief", "box_SetEntity_v2_63.Out", "box_SetEntity_v2_47.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_62_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_62_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_86();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1481691805", "1481691805", "LT01_020_Debrief", "box_SetEntity_v2_62.Out", "box_SetEntity_v2_86.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_59_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_59_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_16();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1875807594", "1875807594", "LT01_020_Debrief", "box_SetEntity_v2_59.Out", "box_SetEntity_v2_16.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_87_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = self.box_StartCelebration_87;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1878726184", "1878726184", "LT01_020_Debrief", "box_StartCelebration_87.Ended", "box_ActivityEnd_7.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanUp_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = self.box_NarrativeSceneCleanUp_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|644200273", "644200273", "LT01_020_Debrief", "box_NarrativeSceneCleanUp_18.Out", "box_OutputOrder_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListLength_v2_131_Empty()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListLength_v2.lua")];
    local clone = l0;
    l0 = self.box_GetPlayersVehicleID_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1730031414", "1730031414", "LT01_020_Debrief", "box_ListLength_v2_131.Empty", "box_GetPlayersVehicleID_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_ListLength_v2_131_NotEmpty()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListLength_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetClosestEntity_28();
    l0 = self.box_GetClosestEntity_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|533424629", "533424629", "LT01_020_Debrief", "box_ListLength_v2_131.NotEmpty", "box_GetClosestEntity_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_85();
    l0 = self.box_Delay_v5_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1280718093", "1280718093", "LT01_020_Debrief", "box_OutputOrder_v2_94.Out", "box_Delay_v5_85.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_94_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_38();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1268086414", "1268086414", "LT01_020_Debrief", "box_OutputOrder_v2_94.Out", "box_HealthModifier_v2_38.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayersVehicleID_120_NotInVehicle()
    local l0, l1;
    self:OnExit_box_GetPlayersVehicleID_120_NotInVehicle();
    l0 = self.box_GetPlayersVehicleID_120;
    l1 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1312439224", "1312439224", "LT01_020_Debrief", "box_GetPlayersVehicleID_120.NotInVehicle", "box_MultipleOR_92.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayersVehicleID_120_OneVehicle()
    local l0, l1;
    self:OnExit_box_GetPlayersVehicleID_120_OneVehicle();
    l0 = self.box_GetPlayersVehicleID_120;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|610418926", "610418926", "LT01_020_Debrief", "box_GetPlayersVehicleID_120.OneVehicle", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayersVehicleID_120_TwoVehicles()
    local params, l0, l1;
    self:OnExit_box_GetPlayersVehicleID_120_TwoVehicles();
    params = self:OnEnter_box_ForceExitVehicle_v2_122();
    l0 = self.box_GetPlayersVehicleID_120;
    l1 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|85334270", "85334270", "LT01_020_Debrief", "box_GetPlayersVehicleID_120.TwoVehicles", "box_ForceExitVehicle_v2_122.ForceExit", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceExit
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_33_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_78();
    l0 = self.box_PositionModifier_v2_33;
    l1 = self.box_PositionModifier_v2_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1476104664", "1476104664", "LT01_020_Debrief", "box_PositionModifier_v2_33.Done", "box_PositionModifier_v2_78.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_42_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_84();
    l0 = self.box_SpawnAI_42;
    l1 = self.box_EntityStatusListener_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|229685986", "229685986", "LT01_020_Debrief", "box_SpawnAI_42.Spawned", "box_EntityStatusListener_84.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_76();
    l0 = self.box_MultipleAND_v2_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1237917151", "1237917151", "LT01_020_Debrief", "box_SetContextualStrategy_74.Out", "box_MultipleAND_v2_76.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_GetPlayerGroup_v2_35_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_35_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_36();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|560027959", "560027959", "LT01_020_Debrief", "box_GetPlayerGroup_v2_35.Out", "box_GetLocalPlayer_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_65_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_65_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_80();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1075549432", "1075549432", "LT01_020_Debrief", "box_SetEntity_v2_65.Out", "box_SetEntity_v2_80.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_10_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_10_Out();
    params = self:OnEnter_box_PlaySequence_v8_11();
    l0 = self.box_StartMetaSequence_10;
    l1 = self.box_PlaySequence_v8_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|255300707", "255300707", "LT01_020_Debrief", "box_StartMetaSequence_10.Out", "box_PlaySequence_v8_11.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_69_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_111();
    l0 = self.box_MultipleAND_v2_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|344794007", "344794007", "LT01_020_Debrief", "box_SetContextualStrategy_69.Out", "box_MultipleAND_v2_111.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_12();
    l0 = self.box_MultipleOR_17;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1725371994", "1725371994", "LT01_020_Debrief", "box_MultipleOR_17.Out", "box_StopMetaSequence_v4_12.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AgentGroupModifier_70_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1404531221", "1404531221", "LT01_020_Debrief", "box_AgentGroupModifier_70.Out", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_27_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_135();
    l0 = self.box_Delay_v5_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|2021197714", "2021197714", "LT01_020_Debrief", "box_Delay_v5_27.TimeElapsed", "box_OutputOrder_v2_135.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_105_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_109();
    l0 = self.box_OnceOnly_v3_105;
    l1 = self.box_InputPriorityModifier_v4_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1534659737", "1534659737", "LT01_020_Debrief", "box_OnceOnly_v3_105.Out", "box_InputPriorityModifier_v4_109.Set", l0:GetLuaBox(), l1:GetLuaBox());
    -- Set
    l1:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_36_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_36_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_1();
    l0 = self.box_InventoryItemModifier_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|440708464", "440708464", "LT01_020_Debrief", "box_GetLocalPlayer_v2_36.Out", "box_InventoryItemModifier_1.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_Switch_48_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_43();
    l0 = self.box_Switch_48;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|167487208", "167487208", "LT01_020_Debrief", "box_Switch_48.Output", "box_Compare_Entity_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_48_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_50();
    l0 = self.box_Switch_48;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1657956019", "1657956019", "LT01_020_Debrief", "box_Switch_48.Output", "box_Compare_Entity_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_48_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_52();
    l0 = self.box_Switch_48;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|111548524", "111548524", "LT01_020_Debrief", "box_Switch_48.Output", "box_Compare_Entity_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_48_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_53();
    l0 = self.box_Switch_48;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|564784135", "564784135", "LT01_020_Debrief", "box_Switch_48.Output", "box_Compare_Entity_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_48_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_54();
    l0 = self.box_Switch_48;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|16062299", "16062299", "LT01_020_Debrief", "box_Switch_48.Output", "box_Compare_Entity_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_48_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_55();
    l0 = self.box_Switch_48;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|971042836", "971042836", "LT01_020_Debrief", "box_Switch_48.Output", "box_Compare_Entity_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_48_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_56();
    l0 = self.box_Switch_48;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|307353055", "307353055", "LT01_020_Debrief", "box_Switch_48.Output", "box_Compare_Entity_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_48_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_57();
    l0 = self.box_Switch_48;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1800809124", "1800809124", "LT01_020_Debrief", "box_Switch_48.Output", "box_Compare_Entity_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_48_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_58();
    l0 = self.box_Switch_48;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1651968494", "1651968494", "LT01_020_Debrief", "box_Switch_48.Output", "box_Compare_Entity_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_53_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_62();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1196404315", "1196404315", "LT01_020_Debrief", "box_Compare_Entity_53.Equal", "box_SetEntity_v2_62.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_53_NotEqual()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|928508037", "928508037", "LT01_020_Debrief", "box_Compare_Entity_53.NotEqual", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_SetEntity_v2_67_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_67_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_82();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|91254649", "91254649", "LT01_020_Debrief", "box_SetEntity_v2_67.Out", "box_SetEntity_v2_82.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_45_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_45_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_19();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|284462143", "284462143", "LT01_020_Debrief", "box_SetEntity_v2_45.Out", "box_SetEntity_v2_19.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_49_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_49_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_4();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1037911508", "1037911508", "LT01_020_Debrief", "box_SetEntity_v2_49.Out", "box_SetEntity_v2_4.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_4_Out()
    self:OnExit_box_SetEntity_v2_4_Out();
end;

function export:f_box_PostFx_v3_112_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_14();
    l0 = self.box_PostFx_v3_112;
    l1 = self.box_NarrativeFade_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|318394732", "318394732", "LT01_020_Debrief", "box_PostFx_v3_112.Disabled", "box_NarrativeFade_14.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_Compare_Entity_50_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_59();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|467930655", "467930655", "LT01_020_Debrief", "box_Compare_Entity_50.Equal", "box_SetEntity_v2_59.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_50_NotEqual()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|2030208561", "2030208561", "LT01_020_Debrief", "box_Compare_Entity_50.NotEqual", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StopMetaSequence_v4_12_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_42();
    l0 = self.box_SpawnAI_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1785790911", "1785790911", "LT01_020_Debrief", "box_StopMetaSequence_v4_12.Stopped", "box_SpawnAI_42.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_99_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_87();
    l0 = self.box_PhoneCallExclusivityModifier_99;
    l1 = self.box_StartCelebration_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|376363916", "376363916", "LT01_020_Debrief", "box_PhoneCallExclusivityModifier_99.Enabled", "box_StartCelebration_87.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_102_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_102;
    l1 = self.box_OnceOnly_v3_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|58645540", "58645540", "LT01_020_Debrief", "box_Delay_v5_102.TimeElapsed", "box_OnceOnly_v3_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ForceExitVehicle_v2_123_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_125();
    l0 = self.box_Delay_v5_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|357086725", "357086725", "LT01_020_Debrief", "box_ForceExitVehicle_v2_123.ForceExitted", "box_Delay_v5_125.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_84_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_94();
    l0 = self.box_EntityStatusListener_84;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|154775212", "154775212", "LT01_020_Debrief", "box_EntityStatusListener_84.Loaded", "box_OutputOrder_v2_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_129_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_90();
    l0 = self.box_MultipleOR_129;
    l1 = self.box_EntityStatusListener_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1859619477", "1859619477", "LT01_020_Debrief", "box_MultipleOR_129.Out", "box_EntityStatusListener_90.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_86_Out()
    self:OnExit_box_SetEntity_v2_86_Out();
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|123512132", "123512132", "LT01_020_Debrief", "box_OutputOrder_v2_9.Out", "box_Print_v2_2.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1424537898", "1424537898", "LT01_020_Debrief", "box_OutputOrder_v2_9.Out", "box_ActivityAcknowledgeGate_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_ExtinguishAllFires_97_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentGroupModifier_70();
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|251430678", "251430678", "LT01_020_Debrief", "box_ExtinguishAllFires_97.Out", "box_AgentGroupModifier_70.AddGroup", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddGroup
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_82_Out()
    self:OnExit_box_SetEntity_v2_82_Out();
end;

function export:f_box_MultipleOR_92_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_92;
    l1 = self.box_OnceOnly_v3_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|812161621", "812161621", "LT01_020_Debrief", "box_MultipleOR_92.Out", "box_OnceOnly_v3_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntity_v2_5_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_5;
    l1 = self.box_PhoneCallExclusivityModifier_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|478686371", "478686371", "LT01_020_Debrief", "box_RemoveEntity_v2_5.Out", "box_PhoneCallExclusivityModifier_99.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_SetEntity_v2_16_Out()
    self:OnExit_box_SetEntity_v2_16_Out();
end;

function export:f_box_SetActivityFact_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_35();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|771837746", "771837746", "LT01_020_Debrief", "box_SetActivityFact_44.Out", "box_GetPlayerGroup_v2_35.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_54_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_63();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|545857535", "545857535", "LT01_020_Debrief", "box_Compare_Entity_54.Equal", "box_SetEntity_v2_63.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_54_NotEqual()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|444880539", "444880539", "LT01_020_Debrief", "box_Compare_Entity_54.NotEqual", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Delay_v5_125_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_125;
    l1 = self.box_MultipleOR_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1382932558", "1382932558", "LT01_020_Debrief", "box_Delay_v5_125.TimeElapsed", "box_MultipleOR_124.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_61_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_48();
    l0 = self.box_MultipleOR_61;
    l1 = self.box_Switch_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1263880018", "1263880018", "LT01_020_Debrief", "box_MultipleOR_61.Out", "box_Switch_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetEntity_v2_134_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_134_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_130();
    l0 = self.box_TeleportPawns_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|995012146", "995012146", "LT01_020_Debrief", "box_SetEntity_v2_134.Out", "box_TeleportPawns_130.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_80_Out()
    self:OnExit_box_SetEntity_v2_80_Out();
end;

function export:f_box_PlaySequence_v8_11_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_11;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1482783681", "1482783681", "LT01_020_Debrief", "box_PlaySequence_v8_11.Finished", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_11_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_PlaySequence_v8_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1769919364", "1769919364", "LT01_020_Debrief", "box_PlaySequence_v8_11.Skipped", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_11_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_15();
    l0 = self.box_PlaySequence_v8_11;
    l1 = self.box_NarrativeFade_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|947314795", "947314795", "LT01_020_Debrief", "box_PlaySequence_v8_11.SPOut", "box_NarrativeFade_15.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_11_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_15();
    l0 = self.box_PlaySequence_v8_11;
    l1 = self.box_NarrativeFade_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1762693228", "1762693228", "LT01_020_Debrief", "box_PlaySequence_v8_11.SPOut", "box_NarrativeFade_15.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_11_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = self.box_PlaySequence_v8_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|285628770", "285628770", "LT01_020_Debrief", "box_PlaySequence_v8_11.Started", "box_OutputOrder_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_44();
    l0 = self.box_ActivityInitialized_6;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1968444531", "1968444531", "LT01_020_Debrief", "box_ActivityInitialized_6.Out", "box_SetActivityFact_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_135_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListLength_v2_131();
    l0 = Boxes[GetPathID("Domino/System/ListLength_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1197891484", "1197891484", "LT01_020_Debrief", "box_OutputOrder_v2_135.Out", "box_ListLength_v2_131.GetLength", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetLength
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_135_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_137();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|726116834", "726116834", "LT01_020_Debrief", "box_OutputOrder_v2_135.Out", "box_Simple_Node_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_14_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_18();
    l0 = self.box_NarrativeFade_14;
    l1 = self.box_NarrativeSceneCleanUp_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|778819973", "778819973", "LT01_020_Debrief", "box_NarrativeFade_14.FadedIn", "box_NarrativeSceneCleanUp_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_37();
    l0 = self.box_Music_Quest_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1672559272", "1672559272", "LT01_020_Debrief", "box_OutputOrder_v2_60.Out", "box_Music_Quest_v2_37.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_68();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|2074738216", "2074738216", "LT01_020_Debrief", "box_OutputOrder_v2_60.Out", "box_Simple_Node_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_51_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_51;
    l1 = self.box_MultipleOR_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1123038586", "1123038586", "LT01_020_Debrief", "box_MultipleOR_51.Out", "box_MultipleOR_61.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_NarrativeSceneSetup_95_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_96();
    l0 = self.box_NarrativeSceneSetup_95;
    l1 = self.box_NarrativeFade_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1500067566", "1500067566", "LT01_020_Debrief", "box_NarrativeSceneSetup_95.Out", "box_NarrativeFade_96.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_115();
    l0 = self.box_EntityStatusListener_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1343277334", "1343277334", "LT01_020_Debrief", "box_OutputOrder_v2_3.Out", "box_EntityStatusListener_115.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_118();
    l0 = self.box_EntityStatusListener_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1589007257", "1589007257", "LT01_020_Debrief", "box_OutputOrder_v2_3.Out", "box_EntityStatusListener_118.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_116();
    l0 = self.box_EntityStatusListener_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|921550027", "921550027", "LT01_020_Debrief", "box_OutputOrder_v2_3.Out", "box_EntityStatusListener_116.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_113();
    l0 = self.box_EntityStatusListener_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|822998992", "822998992", "LT01_020_Debrief", "box_OutputOrder_v2_3.Out", "box_EntityStatusListener_113.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_117();
    l0 = self.box_EntityStatusListener_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|118020166", "118020166", "LT01_020_Debrief", "box_OutputOrder_v2_3.Out", "box_EntityStatusListener_117.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_108();
    l0 = self.box_EntityStatusListener_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|879054004", "879054004", "LT01_020_Debrief", "box_OutputOrder_v2_3.Out", "box_EntityStatusListener_108.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_119();
    l0 = self.box_EntityStatusListener_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1281793131", "1281793131", "LT01_020_Debrief", "box_OutputOrder_v2_3.Out", "box_EntityStatusListener_119.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_114();
    l0 = self.box_EntityStatusListener_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1984200687", "1984200687", "LT01_020_Debrief", "box_OutputOrder_v2_3.Out", "box_EntityStatusListener_114.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_107();
    l0 = self.box_EntityStatusListener_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1047505691", "1047505691", "LT01_020_Debrief", "box_OutputOrder_v2_3.Out", "box_EntityStatusListener_107.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|150172897", "150172897", "LT01_020_Debrief", "box_OutputOrder_v2_3.Out", "box_Delay_v5_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Entity_56_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_65();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|41371016", "41371016", "LT01_020_Debrief", "box_Compare_Entity_56.Equal", "box_SetEntity_v2_65.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_56_NotEqual()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|340354988", "340354988", "LT01_020_Debrief", "box_Compare_Entity_56.NotEqual", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_ForceExitVehicle_v2_88_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_91();
    l0 = self.box_Delay_v5_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|764691171", "764691171", "LT01_020_Debrief", "box_ForceExitVehicle_v2_88.ForceExitted", "box_Delay_v5_91.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ForceExitVehicle_v2_126_ForceExitted()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|619020601", "619020601", "LT01_020_Debrief", "box_ForceExitVehicle_v2_126.ForceExitted", "box_MultipleOR_128.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TeleportPawns_130_Out()
    local l0, l1;
    l0 = self.box_TeleportPawns_130;
    l1 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1219973609", "1219973609", "LT01_020_Debrief", "box_TeleportPawns_130.Out", "box_MultipleOR_129.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayersVehicleID_127_NotInVehicle()
    local l0, l1;
    self:OnExit_box_GetPlayersVehicleID_127_NotInVehicle();
    l0 = self.box_GetPlayersVehicleID_127;
    l1 = self.box_MultipleOR_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|762181858", "762181858", "LT01_020_Debrief", "box_GetPlayersVehicleID_127.NotInVehicle", "box_MultipleOR_124.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayersVehicleID_127_OneVehicle()
    local l0, l1;
    self:OnExit_box_GetPlayersVehicleID_127_OneVehicle();
    l0 = self.box_GetPlayersVehicleID_127;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1080721728", "1080721728", "LT01_020_Debrief", "box_GetPlayersVehicleID_127.OneVehicle", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayersVehicleID_127_TwoVehicles()
    local params, l0, l1;
    self:OnExit_box_GetPlayersVehicleID_127_TwoVehicles();
    params = self:OnEnter_box_ForceExitVehicle_v2_126();
    l0 = self.box_GetPlayersVehicleID_127;
    l1 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|76995459", "76995459", "LT01_020_Debrief", "box_GetPlayersVehicleID_127.TwoVehicles", "box_ForceExitVehicle_v2_126.ForceExit", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceExit
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_116_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_22();
    l0 = self.box_EntityStatusListener_116;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|612674159", "612674159", "LT01_020_Debrief", "box_EntityStatusListener_116.Loaded", "box_ListWriter_v2_22.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_43_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_49();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1590419748", "1590419748", "LT01_020_Debrief", "box_Compare_Entity_43.Equal", "box_SetEntity_v2_49.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_43_NotEqual()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1023332609", "1023332609", "LT01_020_Debrief", "box_Compare_Entity_43.NotEqual", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_136_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_115();
    l0 = self.box_EntityStatusListener_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|2039397705", "2039397705", "LT01_020_Debrief", "box_OutputOrder_v2_136.Out", "box_EntityStatusListener_115.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_136_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_118();
    l0 = self.box_EntityStatusListener_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1662957178", "1662957178", "LT01_020_Debrief", "box_OutputOrder_v2_136.Out", "box_EntityStatusListener_118.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_136_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_116();
    l0 = self.box_EntityStatusListener_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1936495120", "1936495120", "LT01_020_Debrief", "box_OutputOrder_v2_136.Out", "box_EntityStatusListener_116.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_136_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_113();
    l0 = self.box_EntityStatusListener_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1620696432", "1620696432", "LT01_020_Debrief", "box_OutputOrder_v2_136.Out", "box_EntityStatusListener_113.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_136_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_117();
    l0 = self.box_EntityStatusListener_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1360784643", "1360784643", "LT01_020_Debrief", "box_OutputOrder_v2_136.Out", "box_EntityStatusListener_117.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_136_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_108();
    l0 = self.box_EntityStatusListener_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|658377087", "658377087", "LT01_020_Debrief", "box_OutputOrder_v2_136.Out", "box_EntityStatusListener_108.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_136_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_119();
    l0 = self.box_EntityStatusListener_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|592827985", "592827985", "LT01_020_Debrief", "box_OutputOrder_v2_136.Out", "box_EntityStatusListener_119.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_136_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_114();
    l0 = self.box_EntityStatusListener_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1080104394", "1080104394", "LT01_020_Debrief", "box_OutputOrder_v2_136.Out", "box_EntityStatusListener_114.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_136_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_107();
    l0 = self.box_EntityStatusListener_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1058999708", "1058999708", "LT01_020_Debrief", "box_OutputOrder_v2_136.Out", "box_EntityStatusListener_107.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_93_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_20();
    l0 = self.box_OnceOnly_v3_93;
    l1 = self.box_TeleportPawns_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|917635476", "917635476", "LT01_020_Debrief", "box_OnceOnly_v3_93.Out", "box_TeleportPawns_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_69();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|2081538066", "2081538066", "LT01_020_Debrief", "box_OutputOrder_v2_13.Out", "box_SetContextualStrategy_69.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_71();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1584679299", "1584679299", "LT01_020_Debrief", "box_OutputOrder_v2_13.Out", "box_SetContextualStrategy_71.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_20_Out()
    local l0, l1;
    l0 = self.box_TeleportPawns_20;
    l1 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1470368002", "1470368002", "LT01_020_Debrief", "box_TeleportPawns_20.Out", "box_MultipleOR_129.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_107_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_26();
    l0 = self.box_EntityStatusListener_107;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1050986489", "1050986489", "LT01_020_Debrief", "box_EntityStatusListener_107.Loaded", "box_ListWriter_v2_26.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_74();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1340896107", "1340896107", "LT01_020_Debrief", "box_OutputOrder_v2_77.Out", "box_SetContextualStrategy_74.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_75();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|979282330", "979282330", "LT01_020_Debrief", "box_OutputOrder_v2_77.Out", "box_SetContextualStrategy_75.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1362844228", "1362844228", "LT01_020_Debrief", "box_OutputOrder_v2_40.Out", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostWWiseEventSetState_41();
    l0 = self.box_PostWWiseEventSetState_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|175849766", "175849766", "LT01_020_Debrief", "box_OutputOrder_v2_40.Out", "box_PostWWiseEventSetState_41.SetState", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetState
    l0:Exec(0, params);
end;

function export:f_box_CancelAllExplosions_98_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CancelAllExplosions.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExtinguishAllFires_97();
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1807848272", "1807848272", "LT01_020_Debrief", "box_CancelAllExplosions_98.Out", "box_ExtinguishAllFires_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_19_Out()
    self:OnExit_box_SetEntity_v2_19_Out();
end;

function export:f_box_EntityStatusListener_114_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_25();
    l0 = self.box_EntityStatusListener_114;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1708949629", "1708949629", "LT01_020_Debrief", "box_EntityStatusListener_114.Loaded", "box_ListWriter_v2_25.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_96_FadedOut()
    local l0, l1;
    l0 = self.box_NarrativeFade_96;
    l1 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1022521778", "1022521778", "LT01_020_Debrief", "box_NarrativeFade_96.FadedOut", "box_ActivityInitialized_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Compare_Entity_58_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_67();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1226535318", "1226535318", "LT01_020_Debrief", "box_Compare_Entity_58.Equal", "box_SetEntity_v2_67.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_58_NotEqual()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1361626042", "1361626042", "LT01_020_Debrief", "box_Compare_Entity_58.NotEqual", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_Compare_Entity_52_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_45();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|768715501", "768715501", "LT01_020_Debrief", "box_Compare_Entity_52.Equal", "box_SetEntity_v2_45.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_52_NotEqual()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|933443688", "933443688", "LT01_020_Debrief", "box_Compare_Entity_52.NotEqual", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PositionModifier_v2_79_Done()
    local params, l0, l1;
    params = self:OnEnter_box_CancelAllExplosions_98();
    l0 = self.box_PositionModifier_v2_79;
    l1 = Boxes[GetPathID("Domino/System/CancelAllExplosions.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|564225801", "564225801", "LT01_020_Debrief", "box_PositionModifier_v2_79.Done", "box_CancelAllExplosions_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_75_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_76();
    l0 = self.box_MultipleAND_v2_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1177841343", "1177841343", "LT01_020_Debrief", "box_SetContextualStrategy_75.Out", "box_MultipleAND_v2_76.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SetEntity_v2_66_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_66_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_81();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1806894022", "1806894022", "LT01_020_Debrief", "box_SetEntity_v2_66.Out", "box_SetEntity_v2_81.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_91_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_91;
    l1 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1406470596", "1406470596", "LT01_020_Debrief", "box_Delay_v5_91.TimeElapsed", "box_MultipleOR_92.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Entity_57_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_66();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1786115536", "1786115536", "LT01_020_Debrief", "box_Compare_Entity_57.Equal", "box_SetEntity_v2_66.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_57_NotEqual()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1016435556", "1016435556", "LT01_020_Debrief", "box_Compare_Entity_57.NotEqual", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_SetEntity_v2_81_Out()
    self:OnExit_box_SetEntity_v2_81_Out();
end;

function export:f_box_Compare_Entity_55_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_64();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1256056453", "1256056453", "LT01_020_Debrief", "box_Compare_Entity_55.Equal", "box_SetEntity_v2_64.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_55_NotEqual()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|802591149", "802591149", "LT01_020_Debrief", "box_Compare_Entity_55.NotEqual", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_InventoryItemModifier_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_InventoryItemModifier_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1061215849", "1061215849", "LT01_020_Debrief", "box_InventoryItemModifier_1.Out", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_115_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_30();
    l0 = self.box_EntityStatusListener_115;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|27182941", "27182941", "LT01_020_Debrief", "box_EntityStatusListener_115.Loaded", "box_ListWriter_v2_30.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ForceExitVehicle_v2_122_ForceExitted()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1579462767", "1579462767", "LT01_020_Debrief", "box_ForceExitVehicle_v2_122.ForceExitted", "box_MultipleOR_121.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_124_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_132();
    l0 = self.box_MultipleOR_124;
    l1 = self.box_TeleportPawns_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|496983386", "496983386", "LT01_020_Debrief", "box_MultipleOR_124.Out", "box_TeleportPawns_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_85_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = self.box_Delay_v5_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|134160985", "134160985", "LT01_020_Debrief", "box_Delay_v5_85.TimeElapsed", "box_OutputOrder_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_47_Out()
    self:OnExit_box_SetEntity_v2_47_Out();
end;

function export:f_box_MultipleOR_128_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceExitVehicle_v2_123();
    l0 = self.box_MultipleOR_128;
    l1 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|127907596", "127907596", "LT01_020_Debrief", "box_MultipleOR_128.Out", "box_ForceExitVehicle_v2_123.ForceExit", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceExit
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_5();
    l0 = self.box_RemoveEntity_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|338045079", "338045079", "LT01_020_Debrief", "box_OutputOrder_v2_39.Out", "box_RemoveEntity_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1511167788", "1511167788", "LT01_020_Debrief", "box_OutputOrder_v2_39.Out", "box_Simple_Node_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|@MissionEnd");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_46_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|@n_SetAiSpawner");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_68_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|@StopCheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_137_Out,
    });
    params = {
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
        [2] = "2103456924543562047",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_76()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_108()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103456949990404419",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_132()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2100941782538795810",
        -- LoadingScreen,
        [2] = true,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|132905436");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_83_Out,
    });
    params = {
        -- Entity,
        [0] = "2103941030693921163",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_133()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103456882898317615",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_90()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103467391976492316",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_118()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103456903561556279",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|225268254");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_64_Out,
    });
    params = {
        -- Entity,
        [0] = "2103941030683435397",
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_109()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_78()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = self.e_ClosestCinPosition,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103954230868991412",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_GetClosestEntity_28()
    local params;
    params = {
        -- EntitytList,
        [0] = self.l_cinPosition,
        -- EntityToCheck,
        [1] = self.e_LocalPlayer,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_111()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_117()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103456960836874567",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|279545196");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_71_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103954228715216305",
        -- Group,
        [1] = "#A8D86C48",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_119()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103456897534341427",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|358601502");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_63_Out,
    });
    params = {
        -- Entity,
        [0] = "2103941003321893202",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|380923587");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_62_Out,
    });
    params = {
        -- Entity,
        [0] = "2103940981203231003",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|393124130");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_59_Out,
    });
    params = {
        -- Entity,
        [0] = "2103940921090465961",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_87()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_18()
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

function export:OnEnter_box_ListLength_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListLength_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListLength_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|499513168");
    l0:SetConnections({
        -- Empty,
        [0] = self.f_box_ListLength_v2_131_Empty,
        -- NotEmpty,
        [1] = self.f_box_ListLength_v2_131_NotEmpty,
    });
    params = {
        -- Input,
        [0] = self.l_cinPosition,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|510190165");
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
                [0] = self.f_box_OutputOrder_v2_94_Out_0,
                [1] = self.f_box_OutputOrder_v2_94_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_33()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = self.e_ClosestCinPosition,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103467391976492316",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_42()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.e_JS_AiSpawner,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|602915348");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_74_Out,
    });
    params = {
        -- Group,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|618485878");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_35_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|680746121");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_65_Out,
    });
    params = {
        -- Entity,
        [0] = "2103941047949287858",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|701817828");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_69_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103954230868991412",
        -- Group,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|713715075");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_70_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A8D86C48",
        -- PawnGroup,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_27()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|805902153");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103456960836874567",
        -- Input,
        [2] = self.l_cinPosition,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|812848815");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_48()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|858958712");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103456924543562047",
        -- Input,
        [2] = self.l_cinPosition,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|860219322");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103456897534341427",
        -- Input,
        [2] = self.l_cinPosition,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|873563544");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_53_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_53_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.e_ClosestCinPosition,
        -- Entity2,
        [1] = "2103456924543562047",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|880581487");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_67_Out,
    });
    params = {
        -- Entity,
        [0] = "2103941080467726895",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|894673877");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_45_Out,
    });
    params = {
        -- Entity,
        [0] = "2103940949949374682",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|899454675");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_49_Out,
    });
    params = {
        -- Entity,
        [0] = "2103939935517045009",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|930034496");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_4_Out,
    });
    params = {
        -- Entity,
        [0] = "2103939939918967141",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_112()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|987927519");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_50_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_50_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.e_ClosestCinPosition,
        -- Entity2,
        [1] = "2103456903561556279",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1007227817");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_12_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1011083057");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103456969210802507",
        -- Input,
        [2] = self.l_cinPosition,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_102()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1043138769");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_123_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- vehicle,
        [2] = self.e_playerVehicle,
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
        [2] = self.e_JS_EntityID,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1057393228");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_86_Out,
    });
    params = {
        -- Entity,
        [0] = "2103940981211619617",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1086799959");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103456975416275279",
        -- Input,
        [2] = self.l_cinPosition,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1091381260");
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

function export:OnEnter_box_ExtinguishAllFires_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1113857165");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ExtinguishAllFires_97_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1116551826");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_82_Out,
    });
    params = {
        -- Entity,
        [0] = "2103941080478212661",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_15()
    local params;
    params = {
        -- PostFX,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_5()
    local params;
    params = {
        -- Group,
        [0] = "2103951188515904922",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1190822838");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_16_Out,
    });
    params = {
        -- Entity,
        [0] = "2103940921098854575",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1195513446");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_44_Out,
    });
    params = {
        -- Fact,
        [0] = "lt01_020_end_objective",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1200317073");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_54_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_54_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.e_ClosestCinPosition,
        -- Entity2,
        [1] = "2103456960836874567",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_125()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1220144183");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_134_Out,
    });
    params = {
        -- Entity,
        [0] = "2103456882898317615",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1224250018");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103456949990404419",
        -- Input,
        [2] = self.l_cinPosition,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1258885624");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_80_Out,
    });
    params = {
        -- Entity,
        [0] = "2103941047959773624",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_11()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2103467391976492316",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/cin_LT01_020_JohnDeath/cin_lt01_020_johndeath.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1317379092");
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
                [0] = self.f_box_OutputOrder_v2_135_Out_0,
                [1] = self.f_box_OutputOrder_v2_135_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1326540803");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103456903561556279",
        -- Input,
        [2] = self.l_cinPosition,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_14()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1360936161");
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

function export:OnEnter_box_Music_Quest_v2_37()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 8,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "323211064",
        -- StopEvent,
        [7] = "1828168742",
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

function export:OnEnter_box_NarrativeSceneSetup_95()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1397744804");
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
        [8] = "---- LT01_020_DEBRIEF ---- LIST OF POSITION IS EMPTY",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1399315120");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
                [3] = self.f_box_OutputOrder_v2_3_Out_3,
                [4] = self.f_box_OutputOrder_v2_3_Out_4,
                [5] = self.f_box_OutputOrder_v2_3_Out_5,
                [6] = self.f_box_OutputOrder_v2_3_Out_6,
                [7] = self.f_box_OutputOrder_v2_3_Out_7,
                [8] = self.f_box_OutputOrder_v2_3_Out_8,
                [9] = self.f_box_OutputOrder_v2_3_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1400602491");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_56_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_56_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.e_ClosestCinPosition,
        -- Entity2,
        [1] = "2103456897534341427",
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1402301839");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_88_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- vehicle,
        [2] = self.e_playerVehicle,
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1429479943");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_126_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- vehicle,
        [2] = self.e_PlayerVehicle_2,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_130()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2103456882898317615",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_116()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103456969210802507",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1484465362");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_43_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_43_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.e_ClosestCinPosition,
        -- Entity2,
        [1] = "2103456882898317615",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1620241668");
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
                [0] = self.f_box_OutputOrder_v2_136_Out_0,
                [1] = self.f_box_OutputOrder_v2_136_Out_1,
                [2] = self.f_box_OutputOrder_v2_136_Out_2,
                [3] = self.f_box_OutputOrder_v2_136_Out_3,
                [4] = self.f_box_OutputOrder_v2_136_Out_4,
                [5] = self.f_box_OutputOrder_v2_136_Out_5,
                [6] = self.f_box_OutputOrder_v2_136_Out_6,
                [7] = self.f_box_OutputOrder_v2_136_Out_7,
                [8] = self.f_box_OutputOrder_v2_136_Out_8,
            },
            count = 9,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1662382029");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_20()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = self.e_ClosestCinPosition,
        -- LoadingScreen,
        [2] = true,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_107()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103456975416275279",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1692267998");
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
                [0] = self.f_box_OutputOrder_v2_77_Out_0,
                [1] = self.f_box_OutputOrder_v2_77_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1707999888");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "Green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "---- LT01_020_DEBRIEF ---- SCRIPT IS RUNNING",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1714216119");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CancelAllExplosions_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CancelAllExplosions.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CancelAllExplosions_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1723024339");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CancelAllExplosions_98_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1749565279");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_19_Out,
    });
    params = {
        -- Entity,
        [0] = "2103940949957763296",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1769373202");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_114()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103456916425486651",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_96()
    local params;
    params = {
        -- PostFX,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1826990713");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103456882898317615",
        -- Input,
        [2] = self.l_cinPosition,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1831862664");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_58_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_58_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.e_ClosestCinPosition,
        -- Entity2,
        [1] = "2103456975416275279",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1845387028");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_52_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_52_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.e_ClosestCinPosition,
        -- Entity2,
        [1] = "2103456969210802507",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_79()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = self.e_ClosestCinPosition,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103954228715216305",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1871482644");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_75_Out,
    });
    params = {
        -- Group,
        [1] = "#A8D86C48",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1885817068");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_66_Out,
    });
    params = {
        -- Entity,
        [0] = "2103941069126328834",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_91()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1898282518");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_57_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_57_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.e_ClosestCinPosition,
        -- Entity2,
        [1] = "2103456916425486651",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1900661859");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103456916425486651",
        -- Input,
        [2] = self.l_cinPosition,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1914316270");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_81_Out,
    });
    params = {
        -- Entity,
        [0] = "2103941069134717448",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1925816484");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_55_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_55_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.e_ClosestCinPosition,
        -- Entity2,
        [1] = "2103456949990404419",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_1()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015206613801123",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
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
        [2] = "2103456882898317615",
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|1975022634");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_122_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- vehicle,
        [2] = self.e_PlayerVehicle_2,
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_41()
    local params;
    params = {
        -- SoundId,
        [0] = "264881612",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_38()
    local params, l0;
    DrawTextToScreen("Comment: KILL RAGDOLL", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'HealthModifier_v2')-- Comment: KILL RAGDOLL");
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|2015218054");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self.e_JS_EntityID,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_85()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|2055376785");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_47_Out,
    });
    params = {
        -- Entity,
        [0] = "2103941003330281816",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_Debrief.domino|@LT01_020_Debrief|2131568570");
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

function export:OnExit_box_SetEntity_v2_83_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_EntityID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_64_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_AiSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetClosestEntity_28_ListIsEmpty()
    local l0;
    l0 = self.box_GetClosestEntity_28;
    self.e_ClosestCinPosition = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetClosestEntity_28_Out()
    local l0;
    l0 = self.box_GetClosestEntity_28;
    self.e_ClosestCinPosition = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_63_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_AiSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_62_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_AiSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_59_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_AiSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayersVehicleID_120_NotInVehicle()
    local l0;
    l0 = self.box_GetPlayersVehicleID_120;
    self.e_playerVehicle = l0:GetDataOutValue(0);
    self.e_PlayerVehicle_2 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayersVehicleID_120_OneVehicle()
    local l0;
    l0 = self.box_GetPlayersVehicleID_120;
    self.e_playerVehicle = l0:GetDataOutValue(0);
    self.e_PlayerVehicle_2 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayersVehicleID_120_TwoVehicles()
    local l0;
    l0 = self.box_GetPlayersVehicleID_120;
    self.e_playerVehicle = l0:GetDataOutValue(0);
    self.e_PlayerVehicle_2 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayerGroup_v2_35_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_65_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_AiSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_10_Out()
    local l0;
    l0 = self.box_StartMetaSequence_10;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.e_LocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_67_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_AiSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_AiSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_49_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_AiSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_EntityID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_86_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_EntityID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_82_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_EntityID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_EntityID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_134_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_ClosestCinPosition = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_80_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_EntityID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayersVehicleID_127_NotInVehicle()
    local l0;
    l0 = self.box_GetPlayersVehicleID_127;
    self.e_playerVehicle = l0:GetDataOutValue(0);
    self.e_PlayerVehicle_2 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayersVehicleID_127_OneVehicle()
    local l0;
    l0 = self.box_GetPlayersVehicleID_127;
    self.e_playerVehicle = l0:GetDataOutValue(0);
    self.e_PlayerVehicle_2 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayersVehicleID_127_TwoVehicles()
    local l0;
    l0 = self.box_GetPlayersVehicleID_127;
    self.e_playerVehicle = l0:GetDataOutValue(0);
    self.e_PlayerVehicle_2 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetEntity_v2_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_EntityID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_66_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_AiSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_EntityID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_47_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_JS_EntityID = l0:GetDataOutValue(0);
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
