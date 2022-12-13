LUACҡ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_320/mis_320_b40.domino
-- User graph: MIS_320_B40
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoAway.Reach_GoAway_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryLoadoutModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/RestrictedItemModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
        cboxRes:RegisterBox("Domino/System/UnlockDoor.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_DoorManager.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b40.MIS_320_B40_Exfiltration.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b40.MIS_320_B40_SpawnLogic.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3408696666.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1982792409.bnk]], "CSoundResource");
        cboxRes:LoadResource([[226713140.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3607026267.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b40.MIS_320_B40.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Reach_GoAway.Reach_GoAway_v3.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "PlayerDetected",
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
                name = "TimerExpired",
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
                name = "bIsTrigger",
                type = "bool",
            },
            [2] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "bUseDetectionModifier",
                type = "bool",
            },
            [4] = {
                name = "eMarker",
                type = "entity",
            },
            [5] = {
                name = "eRadiusTarget",
                type = "entity",
            },
            [6] = {
                name = "eTrigger",
                type = "entity",
            },
            [7] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [8] = {
                name = "fObjectiveTimer",
                type = "float",
            },
            [9] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [10] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 11,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Female",
                delayed = false,
            },
            [1] = {
                name = "Male",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PlayerID",
                type = "entity",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua")] = {
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
                name = "Detected",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "group",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityFact.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetFact",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FactNotSet",
                delayed = false,
            },
            [1] = {
                name = "FactSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ActivityIDOrEncounterPrefabID",
                type = "genericdb",
            },
            [1] = {
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/InventoryLoadoutModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Backup",
            },
            [1] = {
                name = "Restore",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "BackedUp",
                delayed = false,
            },
            [1] = {
                name = "Failed",
                delayed = false,
            },
            [2] = {
                name = "Restored",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "discardPreviousBackup",
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
    metadataTable[GetPathID("Domino/System/RestrictedItemModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "AddItemRestriction",
            },
            [1] = {
                name = "ClearRestrictions",
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
                name = "allowedItemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "allowedItemFilterID",
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
    metadataTable[GetPathID("Domino/System/TriggerState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsUnusable",
            },
            [1] = {
                name = "SetAsUsable",
            },
            [2] = {
                name = "SetDisabled",
            },
            [3] = {
                name = "SetEnabled",
            },
        },
        controlInCount = 4,
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
                name = "OnSetUnusable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUsable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "CheckAngle",
                type = "bool",
            },
            [1] = {
                name = "CheckLookAt",
                type = "bool",
            },
            [2] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/UI/OverrideMenuAccessibility_v2.lua")] = {
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
                name = "HomebaseMenuEnabled",
                type = "bool",
            },
            [5] = {
                name = "LootMenuEnabled",
                type = "bool",
            },
            [6] = {
                name = "OnlineMenuEnabled",
                type = "bool",
            },
            [7] = {
                name = "PerksMenuEnabled",
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
    metadataTable[GetPathID("Domino/System/UnlockDoor.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Unlock",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "door",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_DoorManager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Opened_Door",
                delayed = false,
            },
            [1] = {
                name = "Out",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Female_Outfit",
            },
            [1] = {
                name = "Male_Outfit",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Equipped",
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
                name = "PlayerID",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b40.MIS_320_B40_Exfiltration.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "PlayerDetected",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EnteredTruck",
                delayed = false,
            },
            [1] = {
                name = "Out",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b40.MIS_320_B40_SpawnLogic.debug.lua")] = {
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
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_320_B40";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40";
    self.g_FrienglyPlayers = nil;
    self.e_LilFucker = nil;
    self.e_ladderLock = nil;
    self.box_OverrideMenuAccessibility_v2_81 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|27633973");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_v2_81_Out,
    });
    self.box_MIS_320_GivePrisonerOutfit_61 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua");
    l0 = self.box_MIS_320_GivePrisonerOutfit_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_GivePrisonerOutfit_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|33098174");
    l0:SetConnections({
    });
    self.box_PlayerFullyDetected_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|37260881");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_11_Detected,
        -- Enabled,
        [2] = self.f_box_PlayerFullyDetected_11_Enabled,
    });
    self.box_InventoryItemModifier_47 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|67754438");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_47_Out,
    });
    self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|79172587");
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
        [0] = self.f_box_MultipleOR_44_Out,
    });
    self.box_OverrideMenuAccessibility_v2_50 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|125313547");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_v2_50_Out,
    });
    self.box_SoundModifier_v2_87 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|137496697");
    l0:SetConnections({
    });
    self.box_RequestTutorial_v3_46 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|180951364");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_RequestTutorial_v3_46_Out,
    });
    self.box_CoopActivePlayers_59 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|234529829");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_59_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_59_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_59_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_59_TwoPlayers,
    });
    self.box_MIS_320_B40_Exfiltration_12 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b40.MIS_320_B40_Exfiltration.debug.lua");
    l0 = self.box_MIS_320_B40_Exfiltration_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B40_Exfiltration_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|286317355");
    l0:SetConnections({
        -- EnteredTruck,
        [0] = self.f_box_MIS_320_B40_Exfiltration_12_EnteredTruck,
    });
    self.box_GunsForHireSystemModifier_20 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|361497077");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GunsForHireSystemModifier_20_Enabled,
    });
    self.box_SoundModifier_v2_82 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|433579709");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_82_Started,
    });
    self.box_MIS_320_B40_SpawnLogic_14 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b40.MIS_320_B40_SpawnLogic.debug.lua");
    l0 = self.box_MIS_320_B40_SpawnLogic_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B40_SpawnLogic_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|511933939");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_320_B40_SpawnLogic_14_Out,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|515816614");
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
    self.box_GetPlayerGender_58 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|611578110");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_58_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_58_Male,
    });
    self.box_Music_Quest_v2_76 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|622255579");
    l0:SetConnections({
    });
    self.box_MIS_320_GivePrisonerOutfit_57 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua");
    l0 = self.box_MIS_320_GivePrisonerOutfit_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_GivePrisonerOutfit_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|668981398");
    l0:SetConnections({
    });
    self.box_Delay_v5_85 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|696844880");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_85_TimeElapsed,
    });
    self.box_PositionModifier_v2_28 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|733452531");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_28_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_28_StartOut,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|737453506");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_OnceOnly_v3_33 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|762704027");
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
                [0] = self.f_box_OnceOnly_v3_33_Out_0,
            },
            count = 2,
        },
    });
    self.box_GunsForHireSystemModifier_21 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|776896048");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_21_Disabled,
    });
    self.box_SpawnAI_71 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|797232081");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_71_Out,
    });
    self.box_RemoveEntity_v2_69 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|829776287");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_69_Out,
    });
    self.box_RemoveEntity_v2_22 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|930378632");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_22_Out,
    });
    self.box_RemoveEntity_v2_68 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|994172651");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_68_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_37 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1028735469");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_37_Out,
    });
    self.box_CoopActivePlayers_49 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1061940076");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_49_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_49_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_49_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_49_TwoPlayers,
    });
    self.box_GetPlayerGender_51 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1093961336");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_51_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_51_Male,
    });
    self.box_MultipleAND_v2_65 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1137247177");
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
    self.box_InventoryLoadoutModifier_74 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1187512624");
    l0:SetConnections({
    });
    self.box_RestrictedItemModifier_v2_53 = cbox:CreateBox("Domino/System/RestrictedItemModifier_v2.lua");
    l0 = self.box_RestrictedItemModifier_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1217829167");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_v2_53_Out,
    });
    self.box_MIS_320_GivePrisonerOutfit_52 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua");
    l0 = self.box_MIS_320_GivePrisonerOutfit_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_GivePrisonerOutfit_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1288606301");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_320_GivePrisonerOutfit_52_Out,
    });
    self.box_Delay_v5_86 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1292188584");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_86_TimeElapsed,
    });
    self.box_Brick_Interact_With_Object_V6_29 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1296391273");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Brick_Interact_With_Object_V6_29_Started,
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_29_Success,
    });
    self.box_PositionModifier_v2_26 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1332298854");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_26_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_26_StartOut,
    });
    self.box_Reach_GoAway_v3_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoAway.Reach_GoAway_v3.debug.lua");
    l0 = self.box_Reach_GoAway_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoAway_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1387499257");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Reach_GoAway_v3_8_Started,
        -- Success,
        [2] = self.f_box_Reach_GoAway_v3_8_Success,
    });
    self.box_GetPlayerGender_60 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1396447441");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_60_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_60_Male,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1513652889");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_ProximityTrigger_v3_64 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1543883090");
    l0:SetConnections({
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_64_Leave,
    });
    self.box_PositionModifier_v2_15 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1612896104");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_15_StartOut,
    });
    self.box_NavLinkModifier_30 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1621803387");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_23 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1686892807");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_23_Out,
    });
    self.box_SpawnAI_73 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1701374074");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_73_Out,
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1724999597");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_Bind_v4_16 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1725498021");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_16_Bound,
    });
    self.box_RemoveEntity_v2_67 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1868917396");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_67_Out,
    });
    self.box_ProximityTrigger_v3_24 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1883954007");
    l0:SetConnections({
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_24_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_24_OnOccupied,
    });
    self.box_Music_Quest_v2_80 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1966909766");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_27 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1993273306");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_70 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2016383687");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_70_Out,
    });
    self.box_Music_Quest_v2_78 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2028371558");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_84 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2062194741");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_84_Started,
    });
    self.box_MIS_320_DoorManager_54 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_DoorManager.debug.lua");
    l0 = self.box_MIS_320_DoorManager_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_DoorManager_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2101728380");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_320_DoorManager_54_Out,
    });
    self.box_SoundModifier_v2_83 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2111440860");
    l0:SetConnections({
    });
    self.box_SpawnAI_72 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2119519333");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_72_Out,
    });
    self.box_InventoryLoadoutModifier_75 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2136761966");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1201644483", "1201644483", "MIS_320_B40", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_91_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_82();
    l0 = self.box_SoundModifier_v2_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1566427760", "1566427760", "MIS_320_B40", "box_Simple_Node_91.Out", "box_SoundModifier_v2_82.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OverrideMenuAccessibility_v2_81_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_93();
    l0 = self.box_OverrideMenuAccessibility_v2_81;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1772689199", "1772689199", "MIS_320_B40", "box_OverrideMenuAccessibility_v2_81.Out", "box_ActivityForceAndLockTracking_93.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_65();
    l0 = self.box_MultipleAND_v2_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1781364677", "1781364677", "MIS_320_B40", "box_SetActivityFact_38.Out", "box_MultipleAND_v2_65.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_PlayerFullyDetected_11_Detected()
    local l0, l1;
    l0 = self.box_PlayerFullyDetected_11;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1340233560", "1340233560", "MIS_320_B40", "box_PlayerFullyDetected_11.Detected", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayerFullyDetected_11_Enabled()
    local l0, l1;
    l0 = self.box_PlayerFullyDetected_11;
    l1 = self.box_MIS_320_B40_Exfiltration_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|303532676", "303532676", "MIS_320_B40", "box_PlayerFullyDetected_11.Enabled", "box_MIS_320_B40_Exfiltration_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_InventoryItemModifier_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_v2_53();
    l0 = self.box_InventoryItemModifier_47;
    l1 = self.box_RestrictedItemModifier_v2_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1212364095", "1212364095", "MIS_320_B40", "box_InventoryItemModifier_47.Out", "box_RestrictedItemModifier_v2_53.AddItemRestriction", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItemRestriction
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGender_58();
    l0 = self.box_MultipleOR_44;
    l1 = self.box_GetPlayerGender_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2062850544", "2062850544", "MIS_320_B40", "box_MultipleOR_44.Out", "box_GetPlayerGender_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_78();
    l0 = self.box_Music_Quest_v2_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|885536460", "885536460", "MIS_320_B40", "box_OutputOrder_v2_77.Out", "box_Music_Quest_v2_78.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|497913238", "497913238", "MIS_320_B40", "box_OutputOrder_v2_77.Out", "box_EndActivityObjective_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OverrideMenuAccessibility_v2_50_Out()
    local l0, l1;
    l0 = self.box_OverrideMenuAccessibility_v2_50;
    l1 = self.box_CoopActivePlayers_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|378124995", "378124995", "MIS_320_B40", "box_OverrideMenuAccessibility_v2_50.Out", "box_CoopActivePlayers_49.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_TriggerState_v2_63_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_64();
    l0 = self.box_ProximityTrigger_v3_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|970763374", "970763374", "MIS_320_B40", "box_TriggerState_v2_63.Enabled", "box_ProximityTrigger_v3_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RequestTutorial_v3_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_22();
    l0 = self.box_RequestTutorial_v3_46;
    l1 = self.box_RemoveEntity_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1729843594", "1729843594", "MIS_320_B40", "box_RequestTutorial_v3_46.Out", "box_RemoveEntity_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1641306033", "1641306033", "MIS_320_B40", "box_OutputOrder_v2_25.Out", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGender_60();
    l0 = self.box_GetPlayerGender_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|467559259", "467559259", "MIS_320_B40", "box_OutputOrder_v2_25.Out", "box_GetPlayerGender_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_CoopActivePlayers_59_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_59_OnePlayer();
    l0 = self.box_CoopActivePlayers_59;
    l1 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|519748272", "519748272", "MIS_320_B40", "box_CoopActivePlayers_59.OnePlayer", "box_MultipleOR_44.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_59_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_62();
    l0 = self.box_CoopActivePlayers_59;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1037029963", "1037029963", "MIS_320_B40", "box_CoopActivePlayers_59.PlayerAdded", "box_Simple_Node_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_59_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_59_TwoPlayers();
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_CoopActivePlayers_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|807784442", "807784442", "MIS_320_B40", "box_CoopActivePlayers_59.TwoPlayers", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_93_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|402656300", "402656300", "MIS_320_B40", "box_ActivityForceAndLockTracking_93.Disabled", "box_ActivityEnd_7.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_320_B40_Exfiltration_12_EnteredTruck()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = self.box_MIS_320_B40_Exfiltration_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1791433841", "1791433841", "MIS_320_B40", "box_MIS_320_B40_Exfiltration_12.EnteredTruck", "box_OutputOrder_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_20_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestTutorial_v3_46();
    l0 = self.box_GunsForHireSystemModifier_20;
    l1 = self.box_RequestTutorial_v3_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|651962358", "651962358", "MIS_320_B40", "box_GunsForHireSystemModifier_20.Enabled", "box_RequestTutorial_v3_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_88_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_85();
    l0 = self.box_Delay_v5_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1641162687", "1641162687", "MIS_320_B40", "box_OutputOrder_v2_88.Out", "box_Delay_v5_85.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_88_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_84();
    l0 = self.box_SoundModifier_v2_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|103719018", "103719018", "MIS_320_B40", "box_OutputOrder_v2_88.Out", "box_SoundModifier_v2_84.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_82_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_88();
    l0 = self.box_SoundModifier_v2_82;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2100016782", "2100016782", "MIS_320_B40", "box_SoundModifier_v2_82.Started", "box_OutputOrder_v2_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_41_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|993039642", "993039642", "MIS_320_B40", "box_GetActivityFact_41.FactSet", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MIS_320_B40_SpawnLogic_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_16();
    l0 = self.box_MIS_320_B40_SpawnLogic_14;
    l1 = self.box_Bind_v4_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|133780296", "133780296", "MIS_320_B40", "box_MIS_320_B40_SpawnLogic_14.Out", "box_Bind_v4_16.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|287507776", "287507776", "MIS_320_B40", "box_MultipleOR_2.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetBoolean_v2_55_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_56();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1774388930", "1774388930", "MIS_320_B40", "box_SetBoolean_v2_55.Out", "box_SetBoolean_v2_56.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_56_Out()
    self:OnExit_box_SetBoolean_v2_56_Out();
end;

function export:f_box_GetPlayerGender_58_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_61();
    l0 = self.box_GetPlayerGender_58;
    l1 = self.box_MIS_320_GivePrisonerOutfit_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|999246468", "999246468", "MIS_320_B40", "box_GetPlayerGender_58.Female", "box_MIS_320_GivePrisonerOutfit_61.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_58_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_61();
    l0 = self.box_GetPlayerGender_58;
    l1 = self.box_MIS_320_GivePrisonerOutfit_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1813631212", "1813631212", "MIS_320_B40", "box_GetPlayerGender_58.Male", "box_MIS_320_GivePrisonerOutfit_61.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_85_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_87();
    l0 = self.box_Delay_v5_85;
    l1 = self.box_SoundModifier_v2_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|568528672", "568528672", "MIS_320_B40", "box_Delay_v5_85.TimeElapsed", "box_SoundModifier_v2_87.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_28_Done()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_27();
    l0 = self.box_PositionModifier_v2_28;
    l1 = self.box_NavLinkModifier_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1786477239", "1786477239", "MIS_320_B40", "box_PositionModifier_v2_28.Done", "box_NavLinkModifier_27.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_28_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_26();
    l0 = self.box_PositionModifier_v2_28;
    l1 = self.box_PositionModifier_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1032628301", "1032628301", "MIS_320_B40", "box_PositionModifier_v2_28.StartOut", "box_PositionModifier_v2_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|575761846", "575761846", "MIS_320_B40", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|27067881", "27067881", "MIS_320_B40", "box_ActivityAcknowledgeGate_4.Reloaded", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_33_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_OnceOnly_v3_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|339854722", "339854722", "MIS_320_B40", "box_OnceOnly_v3_33.Out", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_21_Disabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_21;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1707122988", "1707122988", "MIS_320_B40", "box_GunsForHireSystemModifier_21.Disabled", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_71_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_72();
    l0 = self.box_SpawnAI_71;
    l1 = self.box_SpawnAI_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2127794991", "2127794991", "MIS_320_B40", "box_SpawnAI_71.Out", "box_SpawnAI_72.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_69_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_66();
    l0 = self.box_RemoveEntity_v2_69;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1602875485", "1602875485", "MIS_320_B40", "box_RemoveEntity_v2_69.Out", "box_SetActivityFact_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B40_Exfiltration_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1686043669", "1686043669", "MIS_320_B40", "box_OutputOrder_v2_40.Out", "box_MIS_320_B40_Exfiltration_12.PlayerDetected", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayerDetected
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_39();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1334671778", "1334671778", "MIS_320_B40", "box_OutputOrder_v2_40.Out", "box_GetActivityFact_39.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_63();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1258683178", "1258683178", "MIS_320_B40", "box_OutputOrder_v2_40.Out", "box_TriggerState_v2_63.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_68();
    l0 = self.box_RemoveEntity_v2_22;
    l1 = self.box_RemoveEntity_v2_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|679644295", "679644295", "MIS_320_B40", "box_RemoveEntity_v2_22.Out", "box_RemoveEntity_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_68_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_81();
    l0 = self.box_RemoveEntity_v2_68;
    l1 = self.box_OverrideMenuAccessibility_v2_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1980087256", "1980087256", "MIS_320_B40", "box_RemoveEntity_v2_68.Out", "box_OverrideMenuAccessibility_v2_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UnlockDoor_31_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_32();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1514699500", "1514699500", "MIS_320_B40", "box_UnlockDoor_31.Unlocked", "box_UnlockDoor_32.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerFullyDetected_11();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_37;
    l1 = self.box_PlayerFullyDetected_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|787252165", "787252165", "MIS_320_B40", "box_CHEAT_SetEnvironmentTimeScale_37.Out", "box_PlayerFullyDetected_11.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CoopActivePlayers_49_PlayerAdded()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_49_PlayerAdded();
    l0 = self.box_CoopActivePlayers_49;
    l1 = self.box_MIS_320_DoorManager_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|851803421", "851803421", "MIS_320_B40", "box_CoopActivePlayers_49.PlayerAdded", "box_MIS_320_DoorManager_54.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, {
    });
end;

function export:f_box_CoopActivePlayers_49_PlayerRemoved()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_49_PlayerRemoved();
    params = self:OnEnter_box_Simple_Node_48();
    l0 = self.box_CoopActivePlayers_49;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1553542855", "1553542855", "MIS_320_B40", "box_CoopActivePlayers_49.PlayerRemoved", "box_Simple_Node_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_51_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_52();
    l0 = self.box_GetPlayerGender_51;
    l1 = self.box_MIS_320_GivePrisonerOutfit_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|210425705", "210425705", "MIS_320_B40", "box_GetPlayerGender_51.Female", "box_MIS_320_GivePrisonerOutfit_52.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_51_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_52();
    l0 = self.box_GetPlayerGender_51;
    l1 = self.box_MIS_320_GivePrisonerOutfit_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2099162080", "2099162080", "MIS_320_B40", "box_GetPlayerGender_51.Male", "box_MIS_320_GivePrisonerOutfit_52.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_65_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_70();
    l0 = self.box_MultipleAND_v2_65;
    l1 = self.box_RemoveEntity_v2_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|958757985", "958757985", "MIS_320_B40", "box_MultipleAND_v2_65.Out", "box_RemoveEntity_v2_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RestrictedItemModifier_v2_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryLoadoutModifier_75();
    l0 = self.box_RestrictedItemModifier_v2_53;
    l1 = self.box_InventoryLoadoutModifier_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1386844309", "1386844309", "MIS_320_B40", "box_RestrictedItemModifier_v2_53.Out", "box_InventoryLoadoutModifier_75.Backup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Backup
    l1:Exec(0, params);
end;

function export:f_box_MIS_320_GivePrisonerOutfit_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_47();
    l0 = self.box_MIS_320_GivePrisonerOutfit_52;
    l1 = self.box_InventoryItemModifier_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|540808152", "540808152", "MIS_320_B40", "box_MIS_320_GivePrisonerOutfit_52.Out", "box_InventoryItemModifier_47.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_Delay_v5_86_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_83();
    l0 = self.box_Delay_v5_86;
    l1 = self.box_SoundModifier_v2_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2114690636", "2114690636", "MIS_320_B40", "box_Delay_v5_86.TimeElapsed", "box_SoundModifier_v2_83.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Brick_Interact_With_Object_V6_29_Started()
    local params, l0, l1;
    params = self:OnEnter_box_UnlockDoor_42();
    l0 = self.box_Brick_Interact_With_Object_V6_29;
    l1 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1172841215", "1172841215", "MIS_320_B40", "box_Brick_Interact_With_Object_V6_29.Started", "box_UnlockDoor_42.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V6_29_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_89();
    l0 = self.box_Brick_Interact_With_Object_V6_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|877904291", "877904291", "MIS_320_B40", "box_Brick_Interact_With_Object_V6_29.Success", "box_OutputOrder_v2_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_26_Done()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_30();
    l0 = self.box_PositionModifier_v2_26;
    l1 = self.box_NavLinkModifier_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2066572549", "2066572549", "MIS_320_B40", "box_PositionModifier_v2_26.Done", "box_NavLinkModifier_30.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_26_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_UnlockDoor_36();
    l0 = self.box_PositionModifier_v2_26;
    l1 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|948628640", "948628640", "MIS_320_B40", "box_PositionModifier_v2_26.StartOut", "box_UnlockDoor_36.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoAway_v3_8_Started()
    local l0, l1;
    l0 = self.box_Reach_GoAway_v3_8;
    l1 = self.box_MIS_320_B40_SpawnLogic_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|3889070", "3889070", "MIS_320_B40", "box_Reach_GoAway_v3_8.Started", "box_MIS_320_B40_SpawnLogic_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Reach_GoAway_v3_8_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = self.box_Reach_GoAway_v3_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1197851888", "1197851888", "MIS_320_B40", "box_Reach_GoAway_v3_8.Success", "box_OutputOrder_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_60_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_57();
    l0 = self.box_GetPlayerGender_60;
    l1 = self.box_MIS_320_GivePrisonerOutfit_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1045425293", "1045425293", "MIS_320_B40", "box_GetPlayerGender_60.Female", "box_MIS_320_GivePrisonerOutfit_57.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_60_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_57();
    l0 = self.box_GetPlayerGender_60;
    l1 = self.box_MIS_320_GivePrisonerOutfit_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|604739414", "604739414", "MIS_320_B40", "box_GetPlayerGender_60.Male", "box_MIS_320_GivePrisonerOutfit_57.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_9_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_92();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1776169997", "1776169997", "MIS_320_B40", "box_GetPlayerGroup_v2_9.Out", "box_ActivityForceAndLockTracking_92.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_23();
    l0 = self.box_RemoveEntity_v2_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|781792923", "781792923", "MIS_320_B40", "box_EndActivityObjective_v2_35.Out", "box_RemoveEntity_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_9();
    l0 = self.box_ActivityInitialized_5;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1684309765", "1684309765", "MIS_320_B40", "box_ActivityInitialized_5.Out", "box_GetPlayerGroup_v2_9.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_64_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_65();
    l0 = self.box_ProximityTrigger_v3_64;
    l1 = self.box_MultipleAND_v2_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|72759526", "72759526", "MIS_320_B40", "box_ProximityTrigger_v3_64.Leave", "box_MultipleAND_v2_65.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_13_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_24();
    l0 = self.box_ProximityTrigger_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|684393452", "684393452", "MIS_320_B40", "box_ActivityObjectiveMarkerModifier_v3_13.Disabled", "box_ProximityTrigger_v3_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_15_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_24();
    l0 = self.box_PositionModifier_v2_15;
    l1 = self.box_ProximityTrigger_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|678017765", "678017765", "MIS_320_B40", "box_PositionModifier_v2_15.StartOut", "box_ProximityTrigger_v3_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetActivityFact_39_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_38();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1068005282", "1068005282", "MIS_320_B40", "box_GetActivityFact_39.FactNotSet", "box_SetActivityFact_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_67();
    l0 = self.box_RemoveEntity_v2_23;
    l1 = self.box_RemoveEntity_v2_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|197342313", "197342313", "MIS_320_B40", "box_RemoveEntity_v2_23.Out", "box_RemoveEntity_v2_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityForceAndLockTracking_92_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1588730130", "1588730130", "MIS_320_B40", "box_ActivityForceAndLockTracking_92.Enabled", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_73_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryLoadoutModifier_74();
    l0 = self.box_SpawnAI_73;
    l1 = self.box_InventoryLoadoutModifier_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1624573771", "1624573771", "MIS_320_B40", "box_SpawnAI_73.Out", "box_InventoryLoadoutModifier_74.Backup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Backup
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoAway_v3_8();
    l0 = self.box_Reach_GoAway_v3_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1350352295", "1350352295", "MIS_320_B40", "box_OutputOrder_v2_1.Out", "box_Reach_GoAway_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_37();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2035394299", "2035394299", "MIS_320_B40", "box_OutputOrder_v2_1.Out", "box_CHEAT_SetEnvironmentTimeScale_37.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|546688843", "546688843", "MIS_320_B40", "box_OutputOrder_v2_1.Out", "box_OutputOrder_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_29();
    l0 = self.box_Brick_Interact_With_Object_V6_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1434587873", "1434587873", "MIS_320_B40", "box_OutputOrder_v2_1.Out", "box_Brick_Interact_With_Object_V6_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_50();
    l0 = self.box_OverrideMenuAccessibility_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1090196287", "1090196287", "MIS_320_B40", "box_OutputOrder_v2_1.Out", "box_OverrideMenuAccessibility_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_76();
    l0 = self.box_Music_Quest_v2_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|549783657", "549783657", "MIS_320_B40", "box_OutputOrder_v2_1.Out", "box_Music_Quest_v2_76.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2064068743", "2064068743", "MIS_320_B40", "box_OutputOrder_v2_45.Out", "box_GetActivityFact_10.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_41();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1174221320", "1174221320", "MIS_320_B40", "box_OutputOrder_v2_45.Out", "box_GetActivityFact_41.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_34_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_34;
    l1 = self.box_OnceOnly_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|199116332", "199116332", "MIS_320_B40", "box_MultipleOR_34.Out", "box_OnceOnly_v3_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Bind_v4_16_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_15();
    l0 = self.box_Bind_v4_16;
    l1 = self.box_PositionModifier_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1452277846", "1452277846", "MIS_320_B40", "box_Bind_v4_16.Bound", "box_PositionModifier_v2_15.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|969869904", "969869904", "MIS_320_B40", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2055222636", "2055222636", "MIS_320_B40", "box_OutputOrder_v2_3.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_67_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_17();
    l0 = self.box_RemoveEntity_v2_67;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|78022818", "78022818", "MIS_320_B40", "box_RemoveEntity_v2_67.Out", "box_ActivityEnd_17.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_24_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_13();
    l0 = self.box_ProximityTrigger_v3_24;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|496200167", "496200167", "MIS_320_B40", "box_ProximityTrigger_v3_24.OnEmpty", "box_ActivityObjectiveMarkerModifier_v3_13.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_24_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_13();
    l0 = self.box_ProximityTrigger_v3_24;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|763066285", "763066285", "MIS_320_B40", "box_ProximityTrigger_v3_24.OnOccupied", "box_ActivityObjectiveMarkerModifier_v3_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_10_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1680978681", "1680978681", "MIS_320_B40", "box_GetActivityFact_10.FactSet", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EndActivityObjective_v2_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_35();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|231972907", "231972907", "MIS_320_B40", "box_EndActivityObjective_v2_19.Out", "box_EndActivityObjective_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UnlockDoor_36_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_55();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1541478791", "1541478791", "MIS_320_B40", "box_UnlockDoor_36.Unlocked", "box_SetBoolean_v2_55.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_69();
    l0 = self.box_RemoveEntity_v2_70;
    l1 = self.box_RemoveEntity_v2_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1885529551", "1885529551", "MIS_320_B40", "box_RemoveEntity_v2_70.Out", "box_RemoveEntity_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_89_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_28();
    l0 = self.box_PositionModifier_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|120026153", "120026153", "MIS_320_B40", "box_OutputOrder_v2_89.Out", "box_PositionModifier_v2_28.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_89_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_91();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|55660570", "55660570", "MIS_320_B40", "box_OutputOrder_v2_89.Out", "box_Simple_Node_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UnlockDoor_32_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_21();
    l0 = self.box_GunsForHireSystemModifier_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1278472861", "1278472861", "MIS_320_B40", "box_UnlockDoor_32.Unlocked", "box_GunsForHireSystemModifier_21.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_84_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_86();
    l0 = self.box_SoundModifier_v2_84;
    l1 = self.box_Delay_v5_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|751840266", "751840266", "MIS_320_B40", "box_SoundModifier_v2_84.Started", "box_Delay_v5_86.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_79_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_80();
    l0 = self.box_Music_Quest_v2_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1719494021", "1719494021", "MIS_320_B40", "box_OutputOrder_v2_79.Out", "box_Music_Quest_v2_80.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_20();
    l0 = self.box_GunsForHireSystemModifier_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|568625098", "568625098", "MIS_320_B40", "box_OutputOrder_v2_79.Out", "box_GunsForHireSystemModifier_20.EnableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- EnableGFHSystem
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_31();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|357611188", "357611188", "MIS_320_B40", "box_OutputOrder_v2_43.Out", "box_UnlockDoor_31.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1921040367", "1921040367", "MIS_320_B40", "box_OutputOrder_v2_43.Out", "box_CoopActivePlayers_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_43_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_71();
    l0 = self.box_SpawnAI_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1453246828", "1453246828", "MIS_320_B40", "box_OutputOrder_v2_43.Out", "box_SpawnAI_71.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MIS_320_DoorManager_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGender_51();
    l0 = self.box_MIS_320_DoorManager_54;
    l1 = self.box_GetPlayerGender_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1271127571", "1271127571", "MIS_320_B40", "box_MIS_320_DoorManager_54.Out", "box_GetPlayerGender_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_73();
    l0 = self.box_SpawnAI_72;
    l1 = self.box_SpawnAI_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1694625201", "1694625201", "MIS_320_B40", "box_SpawnAI_72.Out", "box_SpawnAI_73.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|@Door_Open_B40");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_91_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_v2_81()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = true,
        -- AvatarCustomizationMenuEnabled,
        [2] = true,
        -- ChallengeMenuEnabled,
        [3] = true,
        -- HomebaseMenuEnabled,
        [4] = true,
        -- LootMenuEnabled,
        [5] = true,
        -- OnlineMenuEnabled,
        [6] = true,
        -- PerksMenuEnabled,
        [7] = true,
        -- SquadMenuEnabled,
        [8] = true,
        -- WorldmapMenuEnabled,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|30187981");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_38_Out,
    });
    params = {
        -- Fact,
        [0] = "mis320_b40_playerdetected",
    };
    return params;
end;

function export:OnEnter_box_MIS_320_GivePrisonerOutfit_61()
    local params, l0;
    l0 = self.box_CoopActivePlayers_59;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_11()
    local params;
    params = {
        -- group,
        [0] = "#112AD620",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_47()
    local params, l0;
    DrawTextToScreen("Comment: Remove Items on JIP", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'InventoryItemModifier')-- Comment: Remove Items on JIP");
    l0 = self.box_CoopActivePlayers_49;
    params = {
        -- itemFilterID,
        [1] = "9015342283729325",
        -- players,
        [2] = l0:GetDataOutValue(2),
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|115008532");
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

function export:OnEnter_box_OverrideMenuAccessibility_v2_50()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = true,
        -- AvatarCustomizationMenuEnabled,
        [2] = false,
        -- ChallengeMenuEnabled,
        [3] = true,
        -- HomebaseMenuEnabled,
        [4] = true,
        -- LootMenuEnabled,
        [5] = true,
        -- OnlineMenuEnabled,
        [6] = true,
        -- PerksMenuEnabled,
        [7] = true,
        -- SquadMenuEnabled,
        [8] = true,
        -- WorldmapMenuEnabled,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_87()
    local params;
    params = {
        -- Pawns,
        [0] = "2108336010025775721",
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

function export:OnEnter_box_TriggerState_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|161952944");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_63_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108250186837929399",
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_46()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015350241605462",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|197204850");
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

function export:OnEnter_box_ActivityForceAndLockTracking_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|262232119");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityForceAndLockTracking_93_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_20()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|414809777");
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
                [0] = self.f_box_OutputOrder_v2_88_Out_0,
                [1] = self.f_box_OutputOrder_v2_88_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_82()
    local params;
    params = {
        -- Pawns,
        [0] = "2108336010025775721",
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

function export:OnEnter_box_GetActivityFact_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|478786179");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_41_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015331683676450",
        -- Fact,
        [1] = "mis320_b40_playerdetected",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|552106809");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_55_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|568288055");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_56_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_58()
    local params, l0;
    l0 = self.box_CoopActivePlayers_59;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_76()
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
        [6] = "226713140",
        -- StopEvent,
        [7] = "3408696666",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|661869778");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MIS_320_GivePrisonerOutfit_57()
    local params, l0;
    l0 = self.box_CoopActivePlayers_59;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_85()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|723826903");
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
        [8] = "MIS_320_B40 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_28()
    local params;
    params = {
        -- blendTime,
        [1] = 6,
        -- endTarget,
        [4] = "2108250910909017599",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108250903306841592",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_21()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|787479593");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_71()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109844700459441864",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_69()
    local params;
    params = {
        -- Group,
        [0] = "2108211691568237140",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|878917110");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|915515741");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
                [2] = self.f_box_OutputOrder_v2_40_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_22()
    local params;
    params = {
        -- Group,
        [0] = "2108211685069163091",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_68()
    local params;
    params = {
        -- Group,
        [0] = "2108211691568237140",
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1018097114");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_31_Unlocked,
    });
    params = {
        -- door,
        [0] = "2107729655978009150",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_37()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1083001060");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_51()
    local params, l0;
    l0 = self.box_CoopActivePlayers_49;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(2),
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

function export:OnEnter_box_InventoryLoadoutModifier_74()
    local params;
    params = {
        -- discardPreviousBackup,
        [0] = false,
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_v2_53()
    local params, l0;
    l0 = self.box_CoopActivePlayers_49;
    params = {
        -- allowedItemFilterID,
        [1] = "9015342283729325",
        -- players,
        [2] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1232914462");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "mis320_b40_loosethedogs",
    };
    return params;
end;

function export:OnEnter_box_MIS_320_GivePrisonerOutfit_52()
    local params, l0;
    l0 = self.box_CoopActivePlayers_49;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_86()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_29()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2108794099371910311",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_26()
    local params;
    params = {
        -- blendTime,
        [1] = 6,
        -- endTarget,
        [4] = "2108250916118343179",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108250896444960246",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_Reach_GoAway_v3_8()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = true,
        -- bUseDetectionModifier,
        [3] = false,
        -- eMarker,
        [4] = "2109470879919391126",
        -- eRadiusTarget,
        [5] = "2108514468326551214",
        -- fDistanceFromTarget,
        [7] = 175,
        -- fObjectiveTimer,
        [8] = 0,
        -- opt_Objective,
        [10] = {
            section = "Objectives",
            item = "MIS_320_B40_OBJ_Escape",
            id = "960707",
        },
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_60()
    local params, l0;
    l0 = self.box_CoopActivePlayers_59;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1415144362");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1426176535");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_35_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_320_B40_OBJ_HIDE",
            id = "1012944",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1430347758");
    l0:SetConnections({
    });
    params = {
        -- door,
        [0] = "2108113745038291449",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_64()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.g_FrienglyPlayers,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108250186837929399",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1568778196");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_13_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2109748425571490240",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_320_B40_OBJ_Escape",
            id = "960707",
        },
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_15()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2108833759779379556",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107080565074168781",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1619242692");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_39_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015331683676450",
        -- Fact,
        [1] = "mis320_b40_playerdetected",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_30()
    local params;
    params = {
        -- Entity,
        [0] = "2108251072496676429",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_23()
    local params;
    params = {
        -- Group,
        [0] = "2108211685069163091",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1687281165");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_92_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_73()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109844779182334291",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1701724186");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
                [3] = self.f_box_OutputOrder_v2_1_Out_3,
                [4] = self.f_box_OutputOrder_v2_1_Out_4,
                [5] = self.f_box_OutputOrder_v2_1_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1717384628");
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

function export:OnEnter_box_Bind_v4_16()
    local params;
    params = {
        -- EntityA,
        [1] = "2107080565074168781",
        -- EntityB,
        [2] = "2109219152657927316",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1752910849");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_67()
    local params;
    params = {
        -- Group,
        [0] = "2108211691568237140",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_24()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.g_FrienglyPlayers,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109748378603674039",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1942205183");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_10_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015341346817546",
        -- Fact,
        [1] = "mis320_b35_playerdetected",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_80()
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
        [6] = "226713140",
        -- StopEvent,
        [7] = "3408696666",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = true,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_27()
    local params;
    params = {
        -- Entity,
        [0] = "2108251069258673737",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|1993691727");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_19_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_320_B40_OBJ_Escape",
            id = "960707",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2006424916");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_36_Unlocked,
    });
    params = {
        -- door,
        [0] = "2107564330334554007",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_70()
    local params;
    params = {
        -- Group,
        [0] = "2108211685069163091",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_78()
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
        [6] = "226713140",
        -- StopEvent,
        [7] = "3408696666",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = true,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2035625517");
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

function export:OnEnter_box_UnlockDoor_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2043849055");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_32_Unlocked,
    });
    params = {
        -- door,
        [0] = "2108112902186610976",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_84()
    local params;
    params = {
        -- Pawns,
        [0] = "2108336004543820391",
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

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2070865912");
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

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b40.domino|@MIS_320_B40|2085938798");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
                [2] = self.f_box_OutputOrder_v2_43_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_83()
    local params;
    params = {
        -- Pawns,
        [0] = "2108336004543820391",
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

function export:OnEnter_box_SpawnAI_72()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109844690900622942",
    };
    return params;
end;

function export:OnEnter_box_InventoryLoadoutModifier_75()
    local params, l0;
    l0 = self.box_CoopActivePlayers_49;
    params = {
        -- discardPreviousBackup,
        [0] = false,
        -- players,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnExit_box_CoopActivePlayers_59_OnePlayer()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_59;
    l1 = self.box_GetPlayerGender_58;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_MIS_320_GivePrisonerOutfit_61;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_59_TwoPlayers()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_59;
    l1 = self.box_GetPlayerGender_58;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_MIS_320_GivePrisonerOutfit_61;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_MIS_320_GivePrisonerOutfit_57;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(1);
    l1 = self.box_GetPlayerGender_60;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetBoolean_v2_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_320_b10.b_Prison_InsideCourtyardGate_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_56_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_320_b10.b_Prison_OutsideCourtyardGate_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_49_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_49;
    l1 = self.box_InventoryLoadoutModifier_75;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_RestrictedItemModifier_v2_53;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_InventoryItemModifier_47;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_MIS_320_GivePrisonerOutfit_52;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_GetPlayerGender_51;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_49_PlayerRemoved()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_49;
    l1 = self.box_InventoryLoadoutModifier_75;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_RestrictedItemModifier_v2_53;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_InventoryItemModifier_47;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_MIS_320_GivePrisonerOutfit_52;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_GetPlayerGender_51;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPlayerGroup_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.g_FrienglyPlayers = l0:GetDataOutValue(0);
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
