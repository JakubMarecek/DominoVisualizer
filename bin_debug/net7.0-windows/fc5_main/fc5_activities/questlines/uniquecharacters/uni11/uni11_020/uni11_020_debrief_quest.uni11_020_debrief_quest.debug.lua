LUAC\	 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni11/uni11_020/uni11_020_debrief_quest.domino
-- User graph: UNI11_020_DEBRIEF_Quest
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryPackModifier.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/AlternateInventoryModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/WieldInventory_v5.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntitiesOutRange.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/RestrictedItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayWorldLocationUI.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideDisabledLogicId.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisionModeModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_DEBRIEF_Quest._UNI11_020_ShotNShoot.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_DEBRIEF_Quest.UNI11_020_DEBRIEF_Quest.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua")] = {
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
                name = "NextMarker",
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
                name = "fMarkerHeight",
                type = "float",
            },
            [2] = {
                name = "Mission_Objective",
                type = "oasis",
            },
            [3] = {
                name = "Mobile_Marker",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua")] = {
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
                name = "b_SkipObjectiveFlow",
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveTimerListener.lua")] = {
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
                name = "OnTime",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "Time",
                type = "float",
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
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/InventoryPackModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Load",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Failed",
                delayed = false,
            },
            [1] = {
                name = "Loaded",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "inventoryPackId",
                type = "genericdb",
            },
            [1] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/Player/AlternateInventoryModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Main",
            },
            [1] = {
                name = "Mission",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "Switched",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "clearAfterSwitch",
                type = "bool",
            },
            [1] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/IgnoreSignal_v2.lua")] = {
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
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "signal",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Remove",
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
                name = "Range",
                type = "float",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/UI/DisplayWorldLocationUI.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Show",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Hidden",
                delayed = true,
            },
            [1] = {
                name = "Showed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "activityTypeCategory",
                type = "int",
            },
            [1] = {
                name = "subTitleId",
                type = "oasis",
            },
            [2] = {
                name = "titleId",
                type = "oasis",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/VisionModeModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "StartBliss",
            },
            [1] = {
                name = "StartCustomIntoxication",
            },
            [2] = {
                name = "StartDrunk",
            },
            [3] = {
                name = "StartHigh",
            },
            [4] = {
                name = "StartScopolamine",
            },
            [5] = {
                name = "StartScopolamineHeavy",
            },
            [6] = {
                name = "StartScopolamineMedium",
            },
            [7] = {
                name = "Stop",
            },
        },
        controlInCount = 8,
        controlOut = {
            [0] = {
                name = "StartedBliss",
                delayed = false,
            },
            [1] = {
                name = "StartedCustomIntoxication",
                delayed = false,
            },
            [2] = {
                name = "StartedDrunk",
                delayed = false,
            },
            [3] = {
                name = "StartedHigh",
                delayed = false,
            },
            [4] = {
                name = "StartedScopolamine",
                delayed = false,
            },
            [5] = {
                name = "StartedScopolamineHeavy",
                delayed = false,
            },
            [6] = {
                name = "StartedScopolamineMedium",
                delayed = false,
            },
            [7] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "intoxicationAmount",
                type = "float",
            },
            [1] = {
                name = "players",
                type = "group",
            },
            [2] = {
                name = "useAsPercent",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_DEBRIEF_Quest._UNI11_020_ShotNShoot.debug.lua")] = {
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
                name = "AllTargetsDestroyed",
                delayed = false,
            },
            [1] = {
                name = "NextMarker",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Target_Group",
                type = "group",
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
    self._name = "UNI11_020_DEBRIEF_Quest";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest";
    self.g_FriendlyPlayers = nil;
    self.e_Host = nil;
    self.e_Client = nil;
    self.e_Casey = nil;
    self.e_Kenny = nil;
    self.PlayerGroup = nil;
    self.box_LookAtTrigger_v2_57 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|30352908");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_57_EnterFOV,
        -- LeaveFOV,
        [3] = self.f_box_LookAtTrigger_v2_57_LeaveFOV,
    });
    self.box_Delay_v5_116 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|53490823");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_116_TimeElapsed,
    });
    self.box_RemoveEntity_v2_105 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|70796074");
    l0:SetConnections({
    });
    self.box_PlayerSpeedModifier_v3_102 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|73296784");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_102_ApplySpeedFactorOut,
    });
    self.box_UniversalInteractionModifier_v2_31 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|93806587");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_31_Disabled,
    });
    self.box_DisplayWorldLocationUI_19 = cbox:CreateBox("Domino/System/UI/DisplayWorldLocationUI.lua");
    l0 = self.box_DisplayWorldLocationUI_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayWorldLocationUI_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|114656076");
    l0:SetConnections({
    });
    self.box_AlternateInventoryModifier_v2_10 = cbox:CreateBox("Domino/System/Player/AlternateInventoryModifier_v2.lua");
    l0 = self.box_AlternateInventoryModifier_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AlternateInventoryModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|129150765");
    l0:SetConnections({
        -- Switched,
        [1] = self.f_box_AlternateInventoryModifier_v2_10_Switched,
    });
    self.box_IgnoreSignal_v2_38 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|146911792");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_38_Disabled,
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_38_Enabled,
    });
    self.box_PostFx_v3_58 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|214548373");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_58_Enabled,
    });
    self.box_IgnoreSignal_v2_43 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|224101331");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_43_Enabled,
    });
    self.box_TeleportPawns_124 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|228487460");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_124_Out,
    });
    self.box_LookAtTrigger_v2_99 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|263636726");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_99_EnterFOV,
        -- LeaveFOV,
        [3] = self.f_box_LookAtTrigger_v2_99_LeaveFOV,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|265651164");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_PostFx_v3_60 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|272645446");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_60_Disabled,
    });
    self.box_NarrativeFade_26 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|305347967");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_26_FadedOut,
    });
    self.box_WieldInventory_v5_36 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|380165837");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_36_Drawn,
    });
    self.box_IgnoreSignal_v2_40 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|380427232");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_40_Disabled,
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_40_Enabled,
    });
    self.box_ActivityObjectiveTimerListener_95 = cbox:CreateBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
    l0 = self.box_ActivityObjectiveTimerListener_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveTimerListener_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|429120403");
    l0:SetConnections({
        -- OnTime,
        [2] = self.f_box_ActivityObjectiveTimerListener_95_OnTime,
    });
    self.box_VisionModeModifier_v2_93 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|482399470");
    l0:SetConnections({
        -- StartedDrunk,
        [2] = self.f_box_VisionModeModifier_v2_93_StartedDrunk,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_70 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|499827655");
    l0:SetConnections({
        -- NextMarker,
        [1] = self.f_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_70_NextMarker,
    });
    self.box_CoopActivePlayers_89 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|546698149");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_89_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_89_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_89_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_89_TwoPlayers,
    });
    self.box_ProximityTrigger_v2_56 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|591402041");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_56_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_56_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_56_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_56_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_56_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_56_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_56_Use,
    });
    self.box_NoWeaponMode_v3_110 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|604139000");
    l0:SetConnections({
    });
    self.box_VisionModeModifier_v2_78 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|618495794");
    l0:SetConnections({
        -- StartedDrunk,
        [2] = self.f_box_VisionModeModifier_v2_78_StartedDrunk,
    });
    self.box_MultipleOR_117 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|629741802");
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
        [0] = self.f_box_MultipleOR_117_Out,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_16 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|664481052");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|693977555");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_66 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|719038711");
    l0:SetConnections({
    });
    self.box_RestrictedItemModifier_18 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|723439623");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_18_Out,
    });
    self.box_VisionModeModifier_v2_101 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|774303537");
    l0:SetConnections({
        -- StartedDrunk,
        [2] = self.f_box_VisionModeModifier_v2_101_StartedDrunk,
    });
    self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|783765290");
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
    });
    self.box_ActivityObjectiveTimerListener_94 = cbox:CreateBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
    l0 = self.box_ActivityObjectiveTimerListener_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveTimerListener_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|784992259");
    l0:SetConnections({
        -- OnTime,
        [2] = self.f_box_ActivityObjectiveTimerListener_94_OnTime,
    });
    self.box_OverrideMenuAccessibility_33 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|800454012");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_33_Out,
    });
    self.box_IgnoreSignal_v2_112 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|917693178");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_112_Disabled,
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_112_Enabled,
    });
    self.box_OnceOnly_v3_20 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|917737516");
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
                [0] = self.f_box_OnceOnly_v3_20_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_68 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|930989021");
    l0:SetConnections({
        -- NextMarker,
        [1] = self.f_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_68_NextMarker,
    });
    self.box_OnceOnly_v3_59 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|967970692");
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
                [0] = self.f_box_OnceOnly_v3_59_Out_0,
            },
            count = 2,
        },
    });
    self.box_RemoveEntity_v2_80 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|992725091");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_97 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1003985650");
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
                [0] = self.f_box_OnceOnly_v3_97_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_82 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1051768614");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_82_Loaded,
    });
    self.box_RemoveEntity_v2_50 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1052022471");
    l0:SetConnections({
    });
    self.box_Brick_Interact_With_Object_V5_71 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1103021465");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_71_Success,
    });
    self.box_OnceOnly_v3_114 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1110278723");
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
                [0] = self.f_box_OnceOnly_v3_114_Out_0,
            },
            count = 2,
        },
    });
    self.box_IgnoreSignal_v2_53 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1131237625");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_53_Disabled,
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_53_Enabled,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_67 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1134271109");
    l0:SetConnections({
    });
    self.box_ActivityObjectiveTimerListener_24 = cbox:CreateBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
    l0 = self.box_ActivityObjectiveTimerListener_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveTimerListener_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1153903636");
    l0:SetConnections({
        -- OnTime,
        [2] = self.f_box_ActivityObjectiveTimerListener_24_OnTime,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_54 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1278733223");
    l0:SetConnections({
        -- NextMarker,
        [1] = self.f_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_54_NextMarker,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_64 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1309277284");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_91 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1309287581");
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
    self.box_PositionModifier_v2_73 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1309387705");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_73_StartOut,
    });
    self.box_NoWeaponMode_v3_106 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1333323926");
    l0:SetConnections({
    });
    self.box_TeleportPawns_123 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1337785438");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_123_Out,
    });
    self.box_AlternateInventoryModifier_v2_7 = cbox:CreateBox("Domino/System/Player/AlternateInventoryModifier_v2.lua");
    l0 = self.box_AlternateInventoryModifier_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AlternateInventoryModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1351914123");
    l0:SetConnections({
        -- Switched,
        [1] = self.f_box_AlternateInventoryModifier_v2_7_Switched,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1369307553");
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
    self.box_VisionModeModifier_v2_35 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1407886673");
    l0:SetConnections({
        -- StartedDrunk,
        [2] = self.f_box_VisionModeModifier_v2_35_StartedDrunk,
    });
    self.box_Delay_v5_85 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1451536046");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_85_TimeElapsed,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_77 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1565044709");
    l0:SetConnections({
        -- NextMarker,
        [1] = self.f_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_77_NextMarker,
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1603731639");
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
    self.box_OnceOnly_v3_140 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1720306578");
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
                [0] = self.f_box_OnceOnly_v3_140_Out_0,
            },
            count = 2,
        },
    });
    self.box__UNI11_020_ShotNShoot_15 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_DEBRIEF_Quest._UNI11_020_ShotNShoot.debug.lua");
    l0 = self.box__UNI11_020_ShotNShoot_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_ShotNShoot_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1755739884");
    l0:SetConnections({
        -- AllTargetsDestroyed,
        [0] = self.f_box__UNI11_020_ShotNShoot_15_AllTargetsDestroyed,
        -- NextMarker,
        [1] = self.f_box__UNI11_020_ShotNShoot_15_NextMarker,
    });
    self.box_GunsForHireSystemModifier_100 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1774941430");
    l0:SetConnections({
    });
    self.box_InventoryPackModifier_12 = cbox:CreateBox("Domino/System/InventoryPackModifier.lua");
    l0 = self.box_InventoryPackModifier_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryPackModifier_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1816027406");
    l0:SetConnections({
        -- Loaded,
        [1] = self.f_box_InventoryPackModifier_12_Loaded,
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1850813886");
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
        [0] = self.f_box_MultipleOR_27_Out,
    });
    self.box_ActivityInitialized_8 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1877107082");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_8_Out,
    });
    self.box_UniversalInteractionModifier_v2_65 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1880111584");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_65_Disabled,
    });
    self.box_RemoveEntity_v2_139 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1884693366");
    l0:SetConnections({
    });
    self.box_PlayerSpeedModifier_v3_32 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1910626907");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PlayerSpeedModifier_v3_32_Done,
    });
    self.box_NoWeaponMode_v3_111 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1910894770");
    l0:SetConnections({
        -- OnEnter,
        [0] = self.f_box_NoWeaponMode_v3_111_OnEnter,
    });
    self.box_MultipleOR_115 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1941987086");
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
        [0] = self.f_box_MultipleOR_115_Out,
    });
    self.box_ProximityTrigger_v2_142 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1948208928");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_142_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_142_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_142_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_142_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_142_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_142_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_142_Use,
    });
    self.box_NarrativeFade_52 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|2014529067");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_52_FadedIn,
    });
    self.box_CoopActivePlayers_113 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|2043812030");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_113_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_113_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_113_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_113_TwoPlayers,
    });
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|2065191328");
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
        [0] = self.f_box_MultipleOR_30_Out,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_75 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|2135380773");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_46 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|2138263381");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_69 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|2140079842");
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
        [0] = self.f_box_MultipleAND_v2_69_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|301506890", "301506890", "UNI11_020_DEBRIEF_Quest", "In", "box_OutputOrder_v2_11.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|668886853", "668886853", "UNI11_020_DEBRIEF_Quest", "OnLeaveZone", "box_ActivityRetry_3.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|332825848", "332825848", "UNI11_020_DEBRIEF_Quest", "box_Simple_Node_28.Out", "box_MultipleOR_27.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_13_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_72();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1265368138", "1265368138", "UNI11_020_DEBRIEF_Quest", "box_Simple_Node_13.Out", "box_OutputOrder_v2_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_RestrictedItemModifier_18();
    l0 = self.box_RestrictedItemModifier_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|92868103", "92868103", "UNI11_020_DEBRIEF_Quest", "box_Simple_Node_13.Out", "box_RestrictedItemModifier_18.Clear", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clear
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|619471261", "619471261", "UNI11_020_DEBRIEF_Quest", "box_Simple_Node_13.Out", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1739830527", "1739830527", "UNI11_020_DEBRIEF_Quest", "box_Simple_Node_13.Out", "box_OutputOrder_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_PlayerSpeedModifier_v3_32();
    l0 = self.box_PlayerSpeedModifier_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|749616668", "749616668", "UNI11_020_DEBRIEF_Quest", "box_Simple_Node_13.Out", "box_PlayerSpeedModifier_v3_32.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1386937153", "1386937153", "UNI11_020_DEBRIEF_Quest", "box_Simple_Node_13.Out", "box_OutputOrder_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ProximityTrigger_v2_142();
    l0 = self.box_ProximityTrigger_v2_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|2099537862", "2099537862", "UNI11_020_DEBRIEF_Quest", "box_Simple_Node_13.Out", "box_ProximityTrigger_v2_142.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_103_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_56();
    l0 = self.box_ProximityTrigger_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1842712304", "1842712304", "UNI11_020_DEBRIEF_Quest", "box_Simple_Node_103.Out", "box_ProximityTrigger_v2_56.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_104_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|380935009", "380935009", "UNI11_020_DEBRIEF_Quest", "box_Simple_Node_104.Out", "box_MultipleOR_48.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_51_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_43();
    l0 = self.box_IgnoreSignal_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|446517291", "446517291", "UNI11_020_DEBRIEF_Quest", "box_Simple_Node_51.Out", "box_IgnoreSignal_v2_43.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_92_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_91();
    l0 = self.box_MultipleAND_v2_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|413465642", "413465642", "UNI11_020_DEBRIEF_Quest", "box_Simple_Node_92.Out", "box_MultipleAND_v2_91.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Simple_Node_136_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_57();
    l0 = self.box_LookAtTrigger_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1039591323", "1039591323", "UNI11_020_DEBRIEF_Quest", "box_Simple_Node_136.Out", "box_LookAtTrigger_v2_57.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MultipleAND_v2_69();
    l0 = self.box_MultipleAND_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|2128469246", "2128469246", "UNI11_020_DEBRIEF_Quest", "box_Simple_Node_136.Out", "box_MultipleAND_v2_69.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_NoWeaponMode_v3_111();
    l0 = self.box_NoWeaponMode_v3_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|386184415", "386184415", "UNI11_020_DEBRIEF_Quest", "box_Simple_Node_136.Out", "box_NoWeaponMode_v3_111.Off", clone:GetLuaBox(), l0:GetLuaBox());
    -- Off
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_86_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_100();
    l0 = self.box_GunsForHireSystemModifier_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|424390251", "424390251", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_86.Out", "box_GunsForHireSystemModifier_100.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_86_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|402253256", "402253256", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_86.Out", "box_OutputOrder_v2_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AgentGroupModifier_79_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_84();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|840623384", "840623384", "UNI11_020_DEBRIEF_Quest", "box_AgentGroupModifier_79.Out", "box_SetContextualStrategy_84.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_57_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_106();
    l0 = self.box_LookAtTrigger_v2_57;
    l1 = self.box_NoWeaponMode_v3_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1021314199", "1021314199", "UNI11_020_DEBRIEF_Quest", "box_LookAtTrigger_v2_57.EnterFOV", "box_NoWeaponMode_v3_106.Off", l0:GetLuaBox(), l1:GetLuaBox());
    -- Off
    l1:Exec(0, params);
end;

function export:f_box_LookAtTrigger_v2_57_LeaveFOV()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_106();
    l0 = self.box_LookAtTrigger_v2_57;
    l1 = self.box_NoWeaponMode_v3_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|281385047", "281385047", "UNI11_020_DEBRIEF_Quest", "box_LookAtTrigger_v2_57.LeaveFOV", "box_NoWeaponMode_v3_106.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_116_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_26();
    l0 = self.box_Delay_v5_116;
    l1 = self.box_NarrativeFade_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|14020834", "14020834", "UNI11_020_DEBRIEF_Quest", "box_Delay_v5_116.TimeElapsed", "box_NarrativeFade_26.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlayerSpeedModifier_v3_102_ApplySpeedFactorOut()
    local params, l0, l1;
    params = self:OnEnter_box_VisionModeModifier_v2_101();
    l0 = self.box_PlayerSpeedModifier_v3_102;
    l1 = self.box_VisionModeModifier_v2_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1030335944", "1030335944", "UNI11_020_DEBRIEF_Quest", "box_PlayerSpeedModifier_v3_102.ApplySpeedFactorOut", "box_VisionModeModifier_v2_101.StartDrunk", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartDrunk
    l1:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_31_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_65();
    l0 = self.box_UniversalInteractionModifier_v2_31;
    l1 = self.box_UniversalInteractionModifier_v2_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|18450726", "18450726", "UNI11_020_DEBRIEF_Quest", "box_UniversalInteractionModifier_v2_31.Disabled", "box_UniversalInteractionModifier_v2_65.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_AlternateInventoryModifier_v2_10_Switched()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryPackModifier_12();
    l0 = self.box_AlternateInventoryModifier_v2_10;
    l1 = self.box_InventoryPackModifier_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1995992847", "1995992847", "UNI11_020_DEBRIEF_Quest", "box_AlternateInventoryModifier_v2_10.Switched", "box_InventoryPackModifier_12.Load", l0:GetLuaBox(), l1:GetLuaBox());
    -- Load
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_38_Disabled()
    local l0, l1;
    l0 = self.box_IgnoreSignal_v2_38;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1491266564", "1491266564", "UNI11_020_DEBRIEF_Quest", "box_IgnoreSignal_v2_38.Disabled", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IgnoreSignal_v2_38_Enabled()
    local l0, l1;
    l0 = self.box_IgnoreSignal_v2_38;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1554293218", "1554293218", "UNI11_020_DEBRIEF_Quest", "box_IgnoreSignal_v2_38.Enabled", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntityOutRange_138_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_142();
    l0 = self.box_ProximityTrigger_v2_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|310348926", "310348926", "UNI11_020_DEBRIEF_Quest", "box_RemoveEntityOutRange_138.Out", "box_ProximityTrigger_v2_142.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PostFx_v3_58_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_104();
    l0 = self.box_PostFx_v3_58;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1626784718", "1626784718", "UNI11_020_DEBRIEF_Quest", "box_PostFx_v3_58.Enabled", "box_Simple_Node_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_43_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_18();
    l0 = self.box_IgnoreSignal_v2_43;
    l1 = self.box_RestrictedItemModifier_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|570069798", "570069798", "UNI11_020_DEBRIEF_Quest", "box_IgnoreSignal_v2_43.Enabled", "box_RestrictedItemModifier_18.AddItem", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItem
    l1:Exec(0, params);
end;

function export:f_box_TeleportPawns_124_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = self.box_TeleportPawns_124;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|647446957", "647446957", "UNI11_020_DEBRIEF_Quest", "box_TeleportPawns_124.Out", "box_OutputOrder_v2_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_99_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_110();
    l0 = self.box_LookAtTrigger_v2_99;
    l1 = self.box_NoWeaponMode_v3_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1794245284", "1794245284", "UNI11_020_DEBRIEF_Quest", "box_LookAtTrigger_v2_99.EnterFOV", "box_NoWeaponMode_v3_110.Off", l0:GetLuaBox(), l1:GetLuaBox());
    -- Off
    l1:Exec(0, params);
end;

function export:f_box_LookAtTrigger_v2_99_LeaveFOV()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_110();
    l0 = self.box_LookAtTrigger_v2_99;
    l1 = self.box_NoWeaponMode_v3_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1749800868", "1749800868", "UNI11_020_DEBRIEF_Quest", "box_LookAtTrigger_v2_99.LeaveFOV", "box_NoWeaponMode_v3_110.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|390037929", "390037929", "UNI11_020_DEBRIEF_Quest", "box_MultipleOR_4.Out", "box_ActivityInitialized_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PostFx_v3_60_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_69();
    l0 = self.box_PostFx_v3_60;
    l1 = self.box_MultipleAND_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1839844061", "1839844061", "UNI11_020_DEBRIEF_Quest", "box_PostFx_v3_60.Disabled", "box_MultipleAND_v2_69.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_NarrativeFade_26_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_AlternateInventoryModifier_v2_7();
    l0 = self.box_NarrativeFade_26;
    l1 = self.box_AlternateInventoryModifier_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1764421484", "1764421484", "UNI11_020_DEBRIEF_Quest", "box_NarrativeFade_26.FadedOut", "box_AlternateInventoryModifier_v2_7.Main", l0:GetLuaBox(), l1:GetLuaBox());
    -- Main
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_44();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|658281508", "658281508", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_34.Out", "box_OverrideDisabledLogicId_44.Compass", clone:GetLuaBox(), l0:GetLuaBox());
    -- Compass
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_44();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1278973883", "1278973883", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_34.Out", "box_OverrideDisabledLogicId_44.Tag", clone:GetLuaBox(), l0:GetLuaBox());
    -- Tag
    l0:Exec(38, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_44();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1392929013", "1392929013", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_34.Out", "box_OverrideDisabledLogicId_44.HudGunsForHire", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudGunsForHire
    l0:Exec(12, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_WieldInventory_v5_36_Drawn()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_51();
    l0 = self.box_WieldInventory_v5_36;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|915587646", "915587646", "UNI11_020_DEBRIEF_Quest", "box_WieldInventory_v5_36.Drawn", "box_Simple_Node_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_40_Disabled()
    local l0, l1;
    l0 = self.box_IgnoreSignal_v2_40;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|912746988", "912746988", "UNI11_020_DEBRIEF_Quest", "box_IgnoreSignal_v2_40.Disabled", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_IgnoreSignal_v2_40_Enabled()
    local l0, l1;
    l0 = self.box_IgnoreSignal_v2_40;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1390361194", "1390361194", "UNI11_020_DEBRIEF_Quest", "box_IgnoreSignal_v2_40.Enabled", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ActivityObjectiveTimerListener_95_OnTime()
    local params, l0, l1;
    params = self:OnEnter_box_VisionModeModifier_v2_78();
    l0 = self.box_ActivityObjectiveTimerListener_95;
    l1 = self.box_VisionModeModifier_v2_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|793331888", "793331888", "UNI11_020_DEBRIEF_Quest", "box_ActivityObjectiveTimerListener_95.OnTime", "box_VisionModeModifier_v2_78.StartDrunk", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartDrunk
    l1:Exec(2, params);
end;

function export:f_box_AddActivityObjective_v2_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_96();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1427959804", "1427959804", "UNI11_020_DEBRIEF_Quest", "box_AddActivityObjective_v2_23.Out", "box_OutputOrder_v2_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_84_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntityOutRange_138();
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1075183590", "1075183590", "UNI11_020_DEBRIEF_Quest", "box_SetContextualStrategy_84.Out", "box_RemoveEntityOutRange_138.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_63_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_63_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_61();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1955334276", "1955334276", "UNI11_020_DEBRIEF_Quest", "box_SetEntity_v2_63.Out", "box_IsValueNil_v3_61.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisionModeModifier_v2_93_StartedDrunk()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_88();
    l0 = self.box_VisionModeModifier_v2_93;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|593659721", "593659721", "UNI11_020_DEBRIEF_Quest", "box_VisionModeModifier_v2_93.StartedDrunk", "box_MissionBlockLayer_88.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_70_NextMarker()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_77();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_70;
    l1 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|386626810", "386626810", "UNI11_020_DEBRIEF_Quest", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_70.NextMarker", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_77.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_96_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveTimerListener_95();
    l0 = self.box_ActivityObjectiveTimerListener_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1287040962", "1287040962", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_96.Out", "box_ActivityObjectiveTimerListener_95.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_96_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveTimerListener_94();
    l0 = self.box_ActivityObjectiveTimerListener_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|701063566", "701063566", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_96.Out", "box_ActivityObjectiveTimerListener_94.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_96_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveTimerListener_24();
    l0 = self.box_ActivityObjectiveTimerListener_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1422777367", "1422777367", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_96.Out", "box_ActivityObjectiveTimerListener_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_96_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_92();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|731667487", "731667487", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_96.Out", "box_Simple_Node_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_89_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_89_OnePlayer();
    l0 = self.box_CoopActivePlayers_89;
    l1 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|278369911", "278369911", "UNI11_020_DEBRIEF_Quest", "box_CoopActivePlayers_89.OnePlayer", "box_MultipleOR_117.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_89_PlayerAdded()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_89_PlayerAdded();
    params = self:OnEnter_box_PostFx_v3_58();
    l0 = self.box_CoopActivePlayers_89;
    l1 = self.box_PostFx_v3_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1679067408", "1679067408", "UNI11_020_DEBRIEF_Quest", "box_CoopActivePlayers_89.PlayerAdded", "box_PostFx_v3_58.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CoopActivePlayers_89_PlayerRemoved()
    self:OnExit_box_CoopActivePlayers_89_PlayerRemoved();
end;

function export:f_box_CoopActivePlayers_89_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_89_TwoPlayers();
    params = self:OnEnter_box_OutputOrder_v2_120();
    l0 = self.box_CoopActivePlayers_89;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1759264368", "1759264368", "UNI11_020_DEBRIEF_Quest", "box_CoopActivePlayers_89.TwoPlayers", "box_OutputOrder_v2_120.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_56_Enabled()
    self:OnExit_box_ProximityTrigger_v2_56_Enabled();
end;

function export:f_box_ProximityTrigger_v2_56_Enter()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_56_Enter();
    l0 = self.box_ProximityTrigger_v2_56;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1962057817", "1962057817", "UNI11_020_DEBRIEF_Quest", "box_ProximityTrigger_v2_56.Enter", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_56_Leave()
    self:OnExit_box_ProximityTrigger_v2_56_Leave();
end;

function export:f_box_ProximityTrigger_v2_56_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_56_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_56_OnOccupied()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_56_OnOccupied();
    l0 = self.box_ProximityTrigger_v2_56;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|683316907", "683316907", "UNI11_020_DEBRIEF_Quest", "box_ProximityTrigger_v2_56.OnOccupied", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_56_Use()
    self:OnExit_box_ProximityTrigger_v2_56_Use();
end;

function export:f_box_VisionModeModifier_v2_78_StartedDrunk()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_87();
    l0 = self.box_VisionModeModifier_v2_78;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1461187967", "1461187967", "UNI11_020_DEBRIEF_Quest", "box_VisionModeModifier_v2_78.StartedDrunk", "box_MissionBlockLayer_87.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_117_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_117;
    l1 = self.box_OnceOnly_v3_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|334879687", "334879687", "UNI11_020_DEBRIEF_Quest", "box_MultipleOR_117.Out", "box_OnceOnly_v3_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_61_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_118();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|207148315", "207148315", "UNI11_020_DEBRIEF_Quest", "box_IsValueNil_v3_61.No", "box_UseContextualActionModifier_v3_118.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_61_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1326903935", "1326903935", "UNI11_020_DEBRIEF_Quest", "box_IsValueNil_v3_61.Yes", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_2_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_116();
    l0 = self.box_Delay_v5_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|172665762", "172665762", "UNI11_020_DEBRIEF_Quest", "box_EndActivityObjective_v2_2.Out", "box_Delay_v5_116.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|323800983", "323800983", "UNI11_020_DEBRIEF_Quest", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|255582375", "255582375", "UNI11_020_DEBRIEF_Quest", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RestrictedItemModifier_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_71();
    l0 = self.box_RestrictedItemModifier_18;
    l1 = self.box_Brick_Interact_With_Object_V5_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|811373105", "811373105", "UNI11_020_DEBRIEF_Quest", "box_RestrictedItemModifier_18.Out", "box_Brick_Interact_With_Object_V5_71.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_38();
    l0 = self.box_IgnoreSignal_v2_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|386545915", "386545915", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_41.Out", "box_IgnoreSignal_v2_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_40();
    l0 = self.box_IgnoreSignal_v2_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1893696362", "1893696362", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_41.Out", "box_IgnoreSignal_v2_40.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_41_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_53();
    l0 = self.box_IgnoreSignal_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|449789253", "449789253", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_41.Out", "box_IgnoreSignal_v2_53.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_41_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_112();
    l0 = self.box_IgnoreSignal_v2_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1410510058", "1410510058", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_41.Out", "box_IgnoreSignal_v2_112.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_VisionModeModifier_v2_101_StartedDrunk()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_123();
    l0 = self.box_VisionModeModifier_v2_101;
    l1 = self.box_TeleportPawns_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|306209438", "306209438", "UNI11_020_DEBRIEF_Quest", "box_VisionModeModifier_v2_101.StartedDrunk", "box_TeleportPawns_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityObjectiveTimerListener_94_OnTime()
    local params, l0, l1;
    params = self:OnEnter_box_VisionModeModifier_v2_93();
    l0 = self.box_ActivityObjectiveTimerListener_94;
    l1 = self.box_VisionModeModifier_v2_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|568370425", "568370425", "UNI11_020_DEBRIEF_Quest", "box_ActivityObjectiveTimerListener_94.OnTime", "box_VisionModeModifier_v2_93.StartDrunk", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartDrunk
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|976535651", "976535651", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_39.Out", "box_OutputOrder_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_43();
    l0 = self.box_IgnoreSignal_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|615384857", "615384857", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_39.Out", "box_IgnoreSignal_v2_43.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OverrideMenuAccessibility_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_111();
    l0 = self.box_OverrideMenuAccessibility_33;
    l1 = self.box_NoWeaponMode_v3_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|721898831", "721898831", "UNI11_020_DEBRIEF_Quest", "box_OverrideMenuAccessibility_33.Out", "box_NoWeaponMode_v3_111.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_112_Disabled()
    local l0, l1;
    l0 = self.box_IgnoreSignal_v2_112;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1801806702", "1801806702", "UNI11_020_DEBRIEF_Quest", "box_IgnoreSignal_v2_112.Disabled", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_IgnoreSignal_v2_112_Enabled()
    local l0, l1;
    l0 = self.box_IgnoreSignal_v2_112;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|199889520", "199889520", "UNI11_020_DEBRIEF_Quest", "box_IgnoreSignal_v2_112.Enabled", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_OnceOnly_v3_20_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_2();
    l0 = self.box_OnceOnly_v3_20;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1788428584", "1788428584", "UNI11_020_DEBRIEF_Quest", "box_OnceOnly_v3_20.Out", "box_EndActivityObjective_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_68_NextMarker()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_16();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_68;
    l1 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1083605175", "1083605175", "UNI11_020_DEBRIEF_Quest", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_68.NextMarker", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_16.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_59_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_124();
    l0 = self.box_OnceOnly_v3_59;
    l1 = self.box_TeleportPawns_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1361280272", "1361280272", "UNI11_020_DEBRIEF_Quest", "box_OnceOnly_v3_59.Out", "box_TeleportPawns_124.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_70();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|272005308", "272005308", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_47.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_70.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_47_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_77();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|611311839", "611311839", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_47.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_77.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_47_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_68();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1144673904", "1144673904", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_47.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_68.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_47_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_16();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1962049405", "1962049405", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_47.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_16.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_97_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_97;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|645931957", "645931957", "UNI11_020_DEBRIEF_Quest", "box_OnceOnly_v3_97.Out", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_21();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|439083551", "439083551", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_22.Out", "box_OverrideDisabledLogicId_21.Compass", clone:GetLuaBox(), l0:GetLuaBox());
    -- Compass
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_21();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1477355616", "1477355616", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_22.Out", "box_OverrideDisabledLogicId_21.Tag", clone:GetLuaBox(), l0:GetLuaBox());
    -- Tag
    l0:Exec(38, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_21();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|990702084", "990702084", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_22.Out", "box_OverrideDisabledLogicId_21.HudGunsForHire", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudGunsForHire
    l0:Exec(12, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_82_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_63();
    l0 = self.box_EntityStatusListener_82;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|854741426", "854741426", "UNI11_020_DEBRIEF_Quest", "box_EntityStatusListener_82.Loaded", "box_SetEntity_v2_63.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V5_71_Success()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_73();
    l0 = self.box_Brick_Interact_With_Object_V5_71;
    l1 = self.box_PositionModifier_v2_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|792785178", "792785178", "UNI11_020_DEBRIEF_Quest", "box_Brick_Interact_With_Object_V5_71.Success", "box_PositionModifier_v2_73.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_114_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_37();
    l0 = self.box_OnceOnly_v3_114;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1361151186", "1361151186", "UNI11_020_DEBRIEF_Quest", "box_OnceOnly_v3_114.Out", "box_GetPlayerGroup_v2_37.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_118_UseCalled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|243566503", "243566503", "UNI11_020_DEBRIEF_Quest", "box_UseContextualActionModifier_v3_118.UseCalled", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetTimeOfDay_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|602275143", "602275143", "UNI11_020_DEBRIEF_Quest", "box_SetTimeOfDay_17.Out", "box_OutputOrder_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_53_Disabled()
    local l0, l1;
    l0 = self.box_IgnoreSignal_v2_53;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1358792969", "1358792969", "UNI11_020_DEBRIEF_Quest", "box_IgnoreSignal_v2_53.Disabled", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_IgnoreSignal_v2_53_Enabled()
    local l0, l1;
    l0 = self.box_IgnoreSignal_v2_53;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1904359434", "1904359434", "UNI11_020_DEBRIEF_Quest", "box_IgnoreSignal_v2_53.Enabled", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_ActivityObjectiveTimerListener_24_OnTime()
    local l0, l1;
    l0 = self.box_ActivityObjectiveTimerListener_24;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1090372578", "1090372578", "UNI11_020_DEBRIEF_Quest", "box_ActivityObjectiveTimerListener_24.OnTime", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_54_NextMarker()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_70();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_54;
    l1 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|445085493", "445085493", "UNI11_020_DEBRIEF_Quest", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_54.NextMarker", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_70.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_91_Out()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_020_ShotNShoot_15();
    l0 = self.box_MultipleAND_v2_91;
    l1 = self.box__UNI11_020_ShotNShoot_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1627944190", "1627944190", "UNI11_020_DEBRIEF_Quest", "box_MultipleAND_v2_91.Out", "box__UNI11_020_ShotNShoot_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_73_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_PositionModifier_v2_73;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1543779729", "1543779729", "UNI11_020_DEBRIEF_Quest", "box_PositionModifier_v2_73.StartOut", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_123_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_60();
    l0 = self.box_TeleportPawns_123;
    l1 = self.box_PostFx_v3_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1214590277", "1214590277", "UNI11_020_DEBRIEF_Quest", "box_TeleportPawns_123.Out", "box_PostFx_v3_60.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_AlternateInventoryModifier_v2_7_Switched()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = self.box_AlternateInventoryModifier_v2_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1807266240", "1807266240", "UNI11_020_DEBRIEF_Quest", "box_AlternateInventoryModifier_v2_7.Switched", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_80();
    l0 = self.box_MultipleOR_62;
    l1 = self.box_RemoveEntity_v2_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1445363592", "1445363592", "UNI11_020_DEBRIEF_Quest", "box_MultipleOR_62.Out", "box_RemoveEntity_v2_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_VisionModeModifier_v2_35_StartedDrunk()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = self.box_VisionModeModifier_v2_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|5521227", "5521227", "UNI11_020_DEBRIEF_Quest", "box_VisionModeModifier_v2_35.StartedDrunk", "box_OutputOrder_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|883770767", "883770767", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_11.Out", "box_ActivityAcknowledgeGate_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1706830147", "1706830147", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_11.Out", "box_Print_v2_9.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1864569216", "1864569216", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_14.Out", "box_Simple_Node_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1813684339", "1813684339", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_14.Out", "box_OutputOrder_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_85_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_85;
    l1 = self.box_CoopActivePlayers_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|314783929", "314783929", "UNI11_020_DEBRIEF_Quest", "box_Delay_v5_85.TimeElapsed", "box_CoopActivePlayers_89.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_38();
    l0 = self.box_IgnoreSignal_v2_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1441780215", "1441780215", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_45.Out", "box_IgnoreSignal_v2_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_40();
    l0 = self.box_IgnoreSignal_v2_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|664329467", "664329467", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_45.Out", "box_IgnoreSignal_v2_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_53();
    l0 = self.box_IgnoreSignal_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1667500724", "1667500724", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_45.Out", "box_IgnoreSignal_v2_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_112();
    l0 = self.box_IgnoreSignal_v2_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|466724129", "466724129", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_45.Out", "box_IgnoreSignal_v2_112.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_17();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|108890960", "108890960", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_76.Out", "box_SetTimeOfDay_17.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_56();
    l0 = self.box_ProximityTrigger_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|399490226", "399490226", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_76.Out", "box_ProximityTrigger_v2_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1126349612", "1126349612", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_1.Out", "box_Simple_Node_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_105();
    l0 = self.box_RemoveEntity_v2_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|560475640", "560475640", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_1.Out", "box_RemoveEntity_v2_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_98();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|2012474551", "2012474551", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_1.Out", "box_SetContextualStrategy_98.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|2080426810", "2080426810", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_1.Out", "box_ActivityEnd_6.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_77_NextMarker()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_68();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_77;
    l1 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|665527293", "665527293", "UNI11_020_DEBRIEF_Quest", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_77.NextMarker", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_68.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_102();
    l0 = self.box_MultipleOR_48;
    l1 = self.box_PlayerSpeedModifier_v3_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|552107474", "552107474", "UNI11_020_DEBRIEF_Quest", "box_MultipleOR_48.Out", "box_PlayerSpeedModifier_v3_102.ApplySpeedFactor", l0:GetLuaBox(), l1:GetLuaBox());
    -- ApplySpeedFactor
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_37_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_37_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AlternateInventoryModifier_v2_10();
    l0 = self.box_AlternateInventoryModifier_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|2023154712", "2023154712", "UNI11_020_DEBRIEF_Quest", "box_GetPlayerGroup_v2_37.Out", "box_AlternateInventoryModifier_v2_10.Mission", clone:GetLuaBox(), l0:GetLuaBox());
    -- Mission
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_140_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_140;
    l1 = self.box_CoopActivePlayers_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|294054307", "294054307", "UNI11_020_DEBRIEF_Quest", "box_OnceOnly_v3_140.Out", "box_CoopActivePlayers_113.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_74_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_46();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1074119092", "1074119092", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_74.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_67();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|289577411", "289577411", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_74.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_67.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_64();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1697131906", "1697131906", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_74.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_66();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|383440670", "383440670", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_74.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_75();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|324982501", "324982501", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_74.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_54();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1313380959", "1313380959", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_74.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_81_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_90();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|630466289", "630466289", "UNI11_020_DEBRIEF_Quest", "box_MissionBlockLayer_81.Activated", "box_MissionBlockLayer_90.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__UNI11_020_ShotNShoot_15_AllTargetsDestroyed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_28();
    l0 = self.box__UNI11_020_ShotNShoot_15;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1534560434", "1534560434", "UNI11_020_DEBRIEF_Quest", "box__UNI11_020_ShotNShoot_15.AllTargetsDestroyed", "box_Simple_Node_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__UNI11_020_ShotNShoot_15_NextMarker()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = self.box__UNI11_020_ShotNShoot_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1643808784", "1643808784", "UNI11_020_DEBRIEF_Quest", "box__UNI11_020_ShotNShoot_15.NextMarker", "box_OutputOrder_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_120_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|38069179", "38069179", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_120.Out", "box_MultipleOR_117.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_120_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1114220186", "1114220186", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_120.Out", "box_OnceOnly_v3_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_103();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|416169629", "416169629", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_55.Out", "box_Simple_Node_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_31();
    l0 = self.box_UniversalInteractionModifier_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|681356813", "681356813", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_55.Out", "box_UniversalInteractionModifier_v2_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_InventoryPackModifier_12_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_81();
    l0 = self.box_InventoryPackModifier_12;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|777651709", "777651709", "UNI11_020_DEBRIEF_Quest", "box_InventoryPackModifier_12.Loaded", "box_MissionBlockLayer_81.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_72_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_46();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|59186757", "59186757", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_72.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_46.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_72_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_67();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1930509818", "1930509818", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_72.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_67.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_72_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_64();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1155462227", "1155462227", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_72.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_64.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_72_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_66();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1141448474", "1141448474", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_72.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_66.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_72_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_75();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|50315544", "50315544", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_72.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_75.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_72_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_54();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|343061153", "343061153", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_72.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_54.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_27_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_27;
    l1 = self.box_OnceOnly_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1005973798", "1005973798", "UNI11_020_DEBRIEF_Quest", "box_MultipleOR_27.Out", "box_OnceOnly_v3_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityInitialized_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_86();
    l0 = self.box_ActivityInitialized_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|899139723", "899139723", "UNI11_020_DEBRIEF_Quest", "box_ActivityInitialized_8.Out", "box_OutputOrder_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_65_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_33();
    l0 = self.box_UniversalInteractionModifier_v2_65;
    l1 = self.box_OverrideMenuAccessibility_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1976251137", "1976251137", "UNI11_020_DEBRIEF_Quest", "box_UniversalInteractionModifier_v2_65.Disabled", "box_OverrideMenuAccessibility_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|523036732", "523036732", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_29.Out", "box_OutputOrder_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|758438615", "758438615", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_29.Out", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayerSpeedModifier_v3_32_Done()
    local params, l0, l1;
    params = self:OnEnter_box_VisionModeModifier_v2_35();
    l0 = self.box_PlayerSpeedModifier_v3_32;
    l1 = self.box_VisionModeModifier_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|661908257", "661908257", "UNI11_020_DEBRIEF_Quest", "box_PlayerSpeedModifier_v3_32.Done", "box_VisionModeModifier_v2_35.StartDrunk", l0:GetLuaBox(), l1:GetLuaBox());
    -- StartDrunk
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayWorldLocationUI_19();
    l0 = self.box_DisplayWorldLocationUI_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|103213593", "103213593", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_42.Out", "box_DisplayWorldLocationUI_19.Show", clone:GetLuaBox(), l0:GetLuaBox());
    -- Show
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_50();
    l0 = self.box_RemoveEntity_v2_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1009646039", "1009646039", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_42.Out", "box_RemoveEntity_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_42_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentGroupModifier_79();
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1077598298", "1077598298", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_42.Out", "box_AgentGroupModifier_79.AddGroup", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddGroup
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NoWeaponMode_v3_111_OnEnter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_32();
    l0 = self.box_NoWeaponMode_v3_111;
    l1 = self.box_PlayerSpeedModifier_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|347584078", "347584078", "UNI11_020_DEBRIEF_Quest", "box_NoWeaponMode_v3_111.OnEnter", "box_PlayerSpeedModifier_v3_32.ApplySpeedFactor", l0:GetLuaBox(), l1:GetLuaBox());
    -- ApplySpeedFactor
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_115_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_115;
    l1 = self.box_OnceOnly_v3_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|724124619", "724124619", "UNI11_020_DEBRIEF_Quest", "box_MultipleOR_115.Out", "box_OnceOnly_v3_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_142_Enabled()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_142_Enabled();
    l0 = self.box_ProximityTrigger_v2_142;
    l1 = self.box_OnceOnly_v3_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|31487733", "31487733", "UNI11_020_DEBRIEF_Quest", "box_ProximityTrigger_v2_142.Enabled", "box_OnceOnly_v3_140.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_142_Enter()
    self:OnExit_box_ProximityTrigger_v2_142_Enter();
end;

function export:f_box_ProximityTrigger_v2_142_Leave()
    self:OnExit_box_ProximityTrigger_v2_142_Leave();
end;

function export:f_box_ProximityTrigger_v2_142_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_142_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_142_OnOccupied()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_142_OnOccupied();
    params = self:OnEnter_box_RemoveEntity_v2_139();
    l0 = self.box_ProximityTrigger_v2_142;
    l1 = self.box_RemoveEntity_v2_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|737505424", "737505424", "UNI11_020_DEBRIEF_Quest", "box_ProximityTrigger_v2_142.OnOccupied", "box_RemoveEntity_v2_139.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_142_Use()
    self:OnExit_box_ProximityTrigger_v2_142_Use();
end;

function export:f_box_MissionBlockLayer_90_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_82();
    l0 = self.box_EntityStatusListener_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|2060185254", "2060185254", "UNI11_020_DEBRIEF_Quest", "box_MissionBlockLayer_90.Activated", "box_EntityStatusListener_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_NarrativeFade_52_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = self.box_NarrativeFade_52;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1115814210", "1115814210", "UNI11_020_DEBRIEF_Quest", "box_NarrativeFade_52.FadedIn", "box_OutputOrder_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_113_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_113_OnePlayer();
    l0 = self.box_CoopActivePlayers_113;
    l1 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|213659476", "213659476", "UNI11_020_DEBRIEF_Quest", "box_CoopActivePlayers_113.OnePlayer", "box_MultipleOR_115.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_113_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_113;
    l1 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1675607241", "1675607241", "UNI11_020_DEBRIEF_Quest", "box_CoopActivePlayers_113.PlayerAdded", "box_MultipleOR_115.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_CoopActivePlayers_113_TwoPlayers()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_113_TwoPlayers();
    l0 = self.box_CoopActivePlayers_113;
    l1 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1652184275", "1652184275", "UNI11_020_DEBRIEF_Quest", "box_CoopActivePlayers_113.TwoPlayers", "box_MultipleOR_115.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_85();
    l0 = self.box_MultipleOR_30;
    l1 = self.box_Delay_v5_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1861925781", "1861925781", "UNI11_020_DEBRIEF_Quest", "box_MultipleOR_30.Out", "box_Delay_v5_85.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_WieldInventory_v5_36();
    l0 = self.box_WieldInventory_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|930257799", "930257799", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_25.Out", "box_WieldInventory_v5_36.LuaDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- LuaDraw
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_23();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1172099929", "1172099929", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_25.Out", "box_AddActivityObjective_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_91();
    l0 = self.box_MultipleAND_v2_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1845475005", "1845475005", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_25.Out", "box_MultipleAND_v2_91.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_52();
    l0 = self.box_NarrativeFade_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|65144833", "65144833", "UNI11_020_DEBRIEF_Quest", "box_OutputOrder_v2_83.Out", "box_NarrativeFade_52.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_69_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_99();
    l0 = self.box_MultipleAND_v2_69;
    l1 = self.box_LookAtTrigger_v2_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|464010183", "464010183", "UNI11_020_DEBRIEF_Quest", "box_MultipleAND_v2_69.Out", "box_LookAtTrigger_v2_99.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|@n_AllTargetsDestroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|@n_CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|@n_FadeIn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_103_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|@n_NewClient");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_104_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|@n_SlingshotEquipped");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_51_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|@n_TimerStarted");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_92_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|@n_WeaponsAvailable");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_136_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|5234214");
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
                [0] = self.f_box_OutputOrder_v2_86_Out_0,
                [1] = self.f_box_OutputOrder_v2_86_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|28911064");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_79_Out,
    });
    params = {
        -- PawnGroup,
        [1] = "#83DCEFB7",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_57()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- pawns,
        [1] = self.e_Host,
        -- triggerId,
        [2] = "2104521013548046578",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_116()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_105()
    local params;
    params = {
        -- Group,
        [0] = "2105805086184711331",
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_102()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0,
        -- Players,
        [2] = self.e_Client,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_31()
    local params;
    params = {
        -- usableEntity,
        [4] = "2103871213116877038",
    };
    return params;
end;

function export:OnEnter_box_DisplayWorldLocationUI_19()
    local params;
    params = {
        -- activityTypeCategory,
        [0] = 9,
        -- titleId,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_DEBRIEF_Later",
            id = "880132",
        },
    };
    return params;
end;

function export:OnEnter_box_AlternateInventoryModifier_v2_10()
    local params;
    params = {
        -- clearAfterSwitch,
        [0] = false,
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_38()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "jump",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntityOutRange_138()
    local params, l0;
    DrawTextToScreen("Comment: Remove stuff within 20 m", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RemoveEntityOutRange')-- Comment: Remove stuff within 20 m");
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntityOutRange_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|168707972");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntityOutRange_138_Out,
    });
    params = {
        -- Range,
        [0] = 20,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_58()
    local params;
    params = {
        -- Pawns,
        [0] = self.e_Client,
        -- PostFxName,
        [1] = "blackscreennowfx",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_43()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "fire",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_124()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2103858623552726458",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.e_Host,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_99()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- pawns,
        [1] = self.e_Client,
        -- triggerId,
        [2] = "2104521013548046578",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_60()
    local params;
    params = {
        -- Pawns,
        [0] = self.e_Client,
        -- PostFxName,
        [1] = "blackscreennowfx",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_26()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreennowfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|344372613");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
                [2] = self.f_box_OutputOrder_v2_34_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_36()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015213192686195",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_40()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "crouch",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveTimerListener_95()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI11_020_B10_OBJ_Emptied_Killed",
            id = "426324",
        },
        -- Time,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|442213798");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_23_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI11_020_DEBRIEF_Quest_OBJ_Timer",
            id = "426324",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 40,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|445139945");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_84_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104520708448115338",
        -- Group,
        [1] = "#83DCEFB7",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|457125490");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_63_Out,
    });
    params = {
        -- Entity,
        [0] = "2103898544233540017",
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_93()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = 100,
        -- players,
        [1] = "#ED455357",
        -- useAsPercent,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_70()
    local params;
    params = {
        -- Entity,
        [0] = "2103899788182319539",
        -- fMarkerHeight,
        [1] = 0,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_DEBRIEF_Quest_OBJ_Timer",
            id = "426324",
        },
        -- Mobile_Marker,
        [3] = "2103871339298318661",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|516513034");
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
                [0] = self.f_box_OutputOrder_v2_96_Out_0,
                [1] = self.f_box_OutputOrder_v2_96_Out_1,
                [2] = self.f_box_OutputOrder_v2_96_Out_2,
                [3] = self.f_box_OutputOrder_v2_96_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_56()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105293433854793179",
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_110()
    local params;
    params = {
        -- pawns,
        [0] = self.e_Client,
        -- useAnims,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_78()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = 75,
        -- players,
        [1] = "#ED455357",
        -- useAsPercent,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|631078989");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_61_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_61_Yes,
    });
    params = {
        -- ent,
        [4] = self.e_Kenny,
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_16()
    local params;
    params = {
        -- Entity,
        [0] = "2104175944125139163",
        -- fMarkerHeight,
        [1] = 0,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_DEBRIEF_Quest_OBJ_Timer",
            id = "426324",
        },
        -- Mobile_Marker,
        [3] = "2104175938544617688",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|665058755");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_2_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI11_020_B10_OBJ_Emptied_Killed",
            id = "426324",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|708282541");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_66()
    local params;
    params = {
        -- Entity,
        [0] = "2103941360376637899",
        -- fMarkerHeight,
        [1] = 0,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_DEBRIEF_Quest_OBJ_Timer",
            id = "426324",
        },
        -- Mobile_Marker,
        [3] = "2103941580724398705",
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_18()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015213192686195",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|737917806");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
                [2] = self.f_box_OutputOrder_v2_41_Out_2,
                [3] = self.f_box_OutputOrder_v2_41_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_101()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = 50,
        -- players,
        [1] = self.e_Client,
        -- useAsPercent,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveTimerListener_94()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI11_020_B10_OBJ_Emptied_Killed",
            id = "426324",
        },
        -- Time,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|795401653");
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

function export:OnEnter_box_OverrideMenuAccessibility_33()
    local params;
    DrawTextToScreen("Comment: Disable all menus", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OverrideMenuAccessibility')-- Comment: Disable all menus");
    params = {
        -- ActivityLogMenuEnabled,
        [0] = false,
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

function export:OnEnter_box_IgnoreSignal_v2_112()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "open_inventory",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_68()
    local params;
    params = {
        -- Entity,
        [0] = "2104175883085433037",
        -- fMarkerHeight,
        [1] = 0,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_DEBRIEF_Quest_OBJ_Timer",
            id = "426324",
        },
        -- Mobile_Marker,
        [3] = "2104175929086462160",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|991460591");
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
                [0] = self.f_box_OutputOrder_v2_47_Out_0,
                [2] = self.f_box_OutputOrder_v2_47_Out_2,
                [3] = self.f_box_OutputOrder_v2_47_Out_3,
                [5] = self.f_box_OutputOrder_v2_47_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_80()
    local params, l0;
    l0 = self.box_ProximityTrigger_v2_56;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1045511342");
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

function export:OnEnter_box_EntityStatusListener_82()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103898544233540017",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_50()
    local params;
    params = {
        -- Group,
        [0] = "#2B85DC2A",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_71()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- b_SkipObjectiveFlow,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2103871213116877038",
        -- e_ObjectiveMarker,
        [4] = "2103885224225106926",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "UNI11_020_DEBRIEF_Quest_OBJ_Shot",
            id = "426353",
        },
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1115464611");
    l0:SetConnections({
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_118_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103898970649553443",
        -- Entity,
        [1] = self.e_Kenny,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1116047341");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_17_Out,
    });
    params = {
        -- Hour,
        [0] = 23,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_53()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "sprint",
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1132757211");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_67()
    local params;
    params = {
        -- Entity,
        [0] = "2103899830830002619",
        -- fMarkerHeight,
        [1] = 0,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_DEBRIEF_Quest_OBJ_Timer",
            id = "426324",
        },
        -- Mobile_Marker,
        [3] = "2103941580311259753",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveTimerListener_24()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI11_020_B10_OBJ_Emptied_Killed",
            id = "426324",
        },
        -- Time,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_54()
    local params;
    params = {
        -- Entity,
        [0] = "2103899825870238137",
        -- fMarkerHeight,
        [1] = 0,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_DEBRIEF_Quest_OBJ_Timer",
            id = "426324",
        },
        -- Mobile_Marker,
        [3] = "2103941581189966457",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_64()
    local params;
    params = {
        -- Entity,
        [0] = "2103899600447368624",
        -- fMarkerHeight,
        [1] = 0,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_DEBRIEF_Quest_OBJ_Timer",
            id = "426324",
        },
        -- Mobile_Marker,
        [3] = "2103941580722301549",
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

function export:OnEnter_box_PositionModifier_v2_73()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2103883720938252553",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103871213116877038",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_106()
    local params;
    params = {
        -- pawns,
        [0] = self.e_Host,
        -- useAnims,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_123()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2103883285191989776",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.e_Client,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_AlternateInventoryModifier_v2_7()
    local params;
    params = {
        -- clearAfterSwitch,
        [0] = false,
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_35()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = 50,
        -- players,
        [1] = self.e_Host,
        -- useAsPercent,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1409780878");
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

function export:OnEnter_box_MissionBlockLayer_88()
    local params, l0;
    DrawTextToScreen("Comment: Drunk level 3", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Drunk level 3");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1417027475");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160244362310774",
        -- missionLayerId,
        [1] = "45174642994201442",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1445413179");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 2,
        },
    });
    params = {
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

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1453422688");
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

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1485846679");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1495400732");
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

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_77()
    local params;
    params = {
        -- Entity,
        [0] = "2103941350283045307",
        -- fMarkerHeight,
        [1] = 0,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_DEBRIEF_Quest_OBJ_Timer",
            id = "426324",
        },
        -- Mobile_Marker,
        [3] = "2103871349438048589",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1577069188");
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

function export:OnEnter_box_GetPlayerGroup_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1714100710");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1738095524");
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
                [2] = self.f_box_OutputOrder_v2_74_Out_2,
                [3] = self.f_box_OutputOrder_v2_74_Out_3,
                [4] = self.f_box_OutputOrder_v2_74_Out_4,
                [5] = self.f_box_OutputOrder_v2_74_Out_5,
                [6] = self.f_box_OutputOrder_v2_74_Out_6,
                [7] = self.f_box_OutputOrder_v2_74_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1739581372");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_81_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160244362310774",
        -- missionLayerId,
        [1] = "27160244484691303",
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_ShotNShoot_15()
    local params;
    params = {
        -- Target_Group,
        [0] = "#788B99A2",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1763037769");
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
        [8] = "UNI11_020_DEBRIEF_Quest script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1766396789");
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
                [0] = self.f_box_OutputOrder_v2_120_Out_0,
                [1] = self.f_box_OutputOrder_v2_120_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_100()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1793125348");
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
                [0] = self.f_box_OutputOrder_v2_55_Out_0,
                [1] = self.f_box_OutputOrder_v2_55_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InventoryPackModifier_12()
    local params;
    params = {
        -- inventoryPackId,
        [0] = "9015282828213442",
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1838204911");
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
                [2] = self.f_box_OutputOrder_v2_72_Out_2,
                [3] = self.f_box_OutputOrder_v2_72_Out_3,
                [4] = self.f_box_OutputOrder_v2_72_Out_4,
                [5] = self.f_box_OutputOrder_v2_72_Out_5,
                [6] = self.f_box_OutputOrder_v2_72_Out_6,
                [7] = self.f_box_OutputOrder_v2_72_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_65()
    local params;
    params = {
        -- usableEntity,
        [4] = "2103871310053534012",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_139()
    local params, l0;
    l0 = self.box_ProximityTrigger_v2_142;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1899992451");
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

function export:OnEnter_box_PlayerSpeedModifier_v3_32()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0,
        -- Players,
        [2] = self.e_Host,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1910694927");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
                [2] = self.f_box_OutputOrder_v2_42_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_111()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_142()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104175968443713758",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_98()
    local params, l0;
    DrawTextToScreen("Comment: ReEnable NPC brains", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetContextualStrategy')-- Comment: ReEnable NPC brains");
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1955605027");
    l0:SetConnections({
    });
    params = {
        -- Group,
        [1] = "#83DCEFB7",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|1960219802");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_90_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160244362310774",
        -- missionLayerId,
        [1] = "81203440013430142",
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

function export:OnEnter_box_MissionBlockLayer_87()
    local params, l0;
    DrawTextToScreen("Comment: Drunk level 2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: Drunk level 2");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|2084608149");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160244362310774",
        -- missionLayerId,
        [1] = "36167443739456291",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|2088159408");
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
                [2] = self.f_box_OutputOrder_v2_25_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|2089407310");
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
                [1] = self.f_box_OutputOrder_v2_83_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_75()
    local params;
    params = {
        -- Entity,
        [0] = "2103941356075379145",
        -- fMarkerHeight,
        [1] = 0,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_DEBRIEF_Quest_OBJ_Timer",
            id = "426324",
        },
        -- Mobile_Marker,
        [3] = "2103941581187869301",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_46()
    local params;
    params = {
        -- Entity,
        [0] = "2103941276054350265",
        -- fMarkerHeight,
        [1] = 0,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI11_020_DEBRIEF_Quest_OBJ_Timer",
            id = "426324",
        },
        -- Mobile_Marker,
        [3] = "2103941580309162597",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_69()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_DEBRIEF_Quest.domino|@UNI11_020_DEBRIEF_Quest|2143905415");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_63_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Kenny = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_89_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_89;
    self.e_Host = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_89_PlayerAdded()
    local l0;
    l0 = self.box_CoopActivePlayers_89;
    self.e_Client = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_89_PlayerRemoved()
    local l0;
    l0 = self.box_CoopActivePlayers_89;
    self.e_Client = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_89_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_89;
    self.e_Host = l0:GetDataOutValue(0);
    self.e_Client = l0:GetDataOutValue(1);
end;

function export:OnExit_box_ProximityTrigger_v2_56_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_56;
    l1 = self.box_RemoveEntity_v2_80;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_56_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_56;
    l1 = self.box_RemoveEntity_v2_80;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_56_Leave()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_56;
    l1 = self.box_RemoveEntity_v2_80;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_56_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_56;
    l1 = self.box_RemoveEntity_v2_80;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_56_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_56;
    l1 = self.box_RemoveEntity_v2_80;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_56_Use()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_56;
    l1 = self.box_RemoveEntity_v2_80;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.g_FriendlyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_142_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_142;
    l1 = self.box_RemoveEntity_v2_139;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_142_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_142;
    l1 = self.box_RemoveEntity_v2_139;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_142_Leave()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_142;
    l1 = self.box_RemoveEntity_v2_139;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_142_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_142;
    l1 = self.box_RemoveEntity_v2_139;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_142_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_142;
    l1 = self.box_RemoveEntity_v2_139;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_142_Use()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_142;
    l1 = self.box_RemoveEntity_v2_139;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_113_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_113;
    self.e_Host = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_113_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_113;
    self.e_Host = l0:GetDataOutValue(0);
    self.e_Client = l0:GetDataOutValue(1);
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
