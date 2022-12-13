LUAC+� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_330/mis_330_b40.domino
-- User graph: MIS_330_B40
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/ColorRemapTextureModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryLoadoutModifier.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_DoorManager.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_GiveDriverOutfit.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b40.MIS_330_B40_CarEscape.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2845456904.bnk]], "CSoundResource");
        cboxRes:LoadResource([[280813679.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1390892821.bnk]], "CSoundResource");
        cboxRes:LoadResource([[452876004.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3932088769.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4215135172.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3525461561.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b40.MIS_330_B40.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ClearRestriction",
            },
            [1] = {
                name = "DisableListeners",
            },
            [2] = {
                name = "RemoveItems",
            },
            [3] = {
                name = "RestrictItems",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Cleared",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
            [2] = {
                name = "Restricted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "ItemFilterDBID",
                type = "genericdb",
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
    metadataTable[GetPathID("Domino/System/ColorRemapTextureModifier_v3.lua")] = {
        stateless = false,
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
                name = "colorRemapSettings",
                type = "genericdb",
            },
            [1] = {
                name = "playerGroup",
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
    metadataTable[GetPathID("Domino/System/RadioModifier_v3.lua")] = {
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
                name = "Enable",
                type = "bool",
            },
            [1] = {
                name = "ImmediateOverride",
                type = "bool",
            },
            [2] = {
                name = "LockOnOff",
                type = "bool",
            },
            [3] = {
                name = "LockStationSwitching",
                type = "bool",
            },
            [4] = {
                name = "StationOverride",
                type = "genericdb",
            },
            [5] = {
                name = "TargetRadio",
                type = "entity",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_DoorManager.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_GiveDriverOutfit.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b40.MIS_330_B40_CarEscape.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "CarEntered",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_330_B40";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40";
    self.gp_FriendlyPlayers = nil;
    self.i_driverleft = 0;
    self.box_SpawnAI_26 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|10887346");
    l0:SetConnections({
    });
    self.box_Delay_v5_22 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|21876801");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_22_TimeElapsed,
    });
    self.box_MultipleOR_55 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|103339651");
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
        [0] = self.f_box_MultipleOR_55_Out,
    });
    self.box_NavLinkModifier_58 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|156936347");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_58_Activated,
    });
    self.box_NavLinkModifier_40 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|171728118");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_40_Activated,
    });
    self.box_GunsForHireSystemModifier_80 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|202806110");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_80_Disabled,
    });
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|246809422");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_21_Spawned,
    });
    self.box_PlayDialog_v6_54 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|250686652");
    l0:SetConnections({
    });
    self.box_VehicleListener_v3_19 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|313674106");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_19_OnSit,
    });
    self.box_SoundModifier_v2_97 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|318079259");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_97_Finished,
    });
    self.box_Delay_v5_47 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|350214819");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_47_TimeElapsed,
    });
    self.box_Music_Quest_v2_100 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|351723346");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_57 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|399432826");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_57_StartOut,
    });
    self.box_Delay_v5_104 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|462897893");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_104_TimeElapsed,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|515816614");
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
    self.box_MIS_330_B40_CarEscape_11 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b40.MIS_330_B40_CarEscape.debug.lua");
    l0 = self.box_MIS_330_B40_CarEscape_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_B40_CarEscape_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|520163129");
    l0:SetConnections({
        -- CarEntered,
        [0] = self.f_box_MIS_330_B40_CarEscape_11_CarEntered,
    });
    self.box_GetPlayerGender_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|538494033");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_24_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_24_Male,
    });
    self.box_Brick_Interact_With_Object_V6_96 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|589971593");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_96_Success,
    });
    self.box_PositionModifier_v2_27 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|592933058");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_27_StartOut,
    });
    self.box_PhoneCallExclusivityModifier_48 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|668768011");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_48_Enabled,
    });
    self.box_InventoryLoadoutModifier_95 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|679481526");
    l0:SetConnections({
        -- Restored,
        [2] = self.f_box_InventoryLoadoutModifier_95_Restored,
    });
    self.box_Bind_v4_59 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|698167137");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_59_Bound,
    });
    self.box_MIS_330_GiveDriverOutfit_88 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_GiveDriverOutfit.debug.lua");
    l0 = self.box_MIS_330_GiveDriverOutfit_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_GiveDriverOutfit_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|726876091");
    l0:SetConnections({
    });
    self.box_GunsForHireSystemModifier_85 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|733892935");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GunsForHireSystemModifier_85_Enabled,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|737453506");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_Bind_v4_44 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|749758101");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_44_Bound,
    });
    self.box_PositionModifier_v2_37 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|752244897");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_37_StartOut,
    });
    self.box_OverrideMenuAccessibility_v2_86 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|795296778");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_v2_86_Out,
    });
    self.box_MIS_330_GiveDriverOutfit_32 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_GiveDriverOutfit.debug.lua");
    l0 = self.box_MIS_330_GiveDriverOutfit_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_GiveDriverOutfit_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|856993539");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_53 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|866468038");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_53_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_53_FinishedInterrupted,
    });
    self.box_PositionModifier_v2_56 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|888648106");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_56_StartOut,
    });
    self.box_RemoveEntity_v2_17 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|944898934");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_17_Out,
    });
    self.box_Music_Quest_v2_99 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|946519725");
    l0:SetConnections({
    });
    self.box_ManagePlayerInventory_35 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|955236022");
    l0:SetConnections({
        -- Cleared,
        [0] = self.f_box_ManagePlayerInventory_35_Cleared,
    });
    self.box_ColorRemapTextureModifier_v3_72 = cbox:CreateBox("Domino/System/ColorRemapTextureModifier_v3.lua");
    l0 = self.box_ColorRemapTextureModifier_v3_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ColorRemapTextureModifier_v3_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1006571421");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ColorRemapTextureModifier_v3_72_Removed,
    });
    self.box_ProximityTrigger_v3_12 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1106570293");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_12_Enter,
    });
    self.box_SpawnAI_52 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1171328200");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_52_Out,
    });
    self.box_Reach_GoAway_v3_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoAway.Reach_GoAway_v3.debug.lua");
    l0 = self.box_Reach_GoAway_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoAway_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1193531522");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Reach_GoAway_v3_1_Started,
        -- Success,
        [2] = self.f_box_Reach_GoAway_v3_1_Success,
    });
    self.box_MultipleOR_89 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1249488999");
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
    self.box_GetPlayerGender_25 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1258744709");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_25_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_25_Male,
    });
    self.box_SpawnAI_28 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1339511451");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_28_Out,
    });
    self.box_InventoryLoadoutModifier_103 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1348550532");
    l0:SetConnections({
    });
    self.box_InventoryLoadoutModifier_94 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1368453405");
    l0:SetConnections({
    });
    self.box_CoopActivePlayers_81 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1427170387");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_81_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_81_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_81_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_81_TwoPlayers,
    });
    self.box_RemoveEntity_v2_51 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1474984555");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_73 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1511442298");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_73_SomeoneFar,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1513652889");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_PositionModifier_v2_75 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1518287084");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_75_StartOut,
    });
    self.box_EntityStatusListener_9 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1532846884");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_9_Unloaded,
    });
    self.box_InventoryLoadoutModifier_92 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1556499133");
    l0:SetConnections({
    });
    self.box_SpawnAI_20 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1564095389");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_20_Out,
    });
    self.box_SoundModifier_v2_46 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1673982723");
    l0:SetConnections({
    });
    self.box_Delay_v5_91 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1681138424");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_91_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_91_TimeElapsed,
    });
    self.box_EntityStatusListener_45 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1695446796");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_45_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_45_Loaded,
    });
    self.box_PositionModifier_v2_76 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1700375845");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_76_StartOut,
    });
    self.box_NavLinkModifier_30 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1726607153");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_30_Activated,
    });
    self.box_SpawnAI_50 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1820064927");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_18 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1835094035");
    l0:SetConnections({
    });
    self.box_MIS_330_GiveDriverOutfit_61 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_GiveDriverOutfit.debug.lua");
    l0 = self.box_MIS_330_GiveDriverOutfit_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_GiveDriverOutfit_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1850752300");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_64 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1860600017");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_64_Loaded,
    });
    self.box_NavLinkModifier_79 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1870614189");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_79_Activated,
    });
    self.box_RemoveEntity_v2_49 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1899303573");
    l0:SetConnections({
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1918130236");
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
    self.box_MIS_330_DoorManager_82 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_DoorManager.debug.lua");
    l0 = self.box_MIS_330_DoorManager_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_DoorManager_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1919292757");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_330_DoorManager_82_Out,
    });
    self.box_CoopActivePlayers_90 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1930390086");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_90_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_90_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_90_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_90_TwoPlayers,
    });
    self.box_PositionModifier_v2_38 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1974661248");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_38_StartOut,
    });
    self.box_GetPlayerGender_83 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1983444664");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_83_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_83_Male,
    });
    self.box_RequestTutorial_v3_10 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1995310752");
    l0:SetConnections({
    });
    self.box_CHEAT_SetEnvironmentTimeScale_43 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|2093146886");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_43_Out,
    });
    self.box_RemoveEntity_v2_102 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|2093189245");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_23 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|2097577457");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_23_StartOut,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1201644483", "1201644483", "MIS_330_B40", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_71_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_46();
    l0 = self.box_SoundModifier_v2_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1852609462", "1852609462", "MIS_330_B40", "box_Simple_Node_71.Out", "box_SoundModifier_v2_46.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_66_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_18();
    l0 = self.box_SoundModifier_v2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1867381906", "1867381906", "MIS_330_B40", "box_Simple_Node_66.Out", "box_SoundModifier_v2_18.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_22_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_20();
    l0 = self.box_Delay_v5_22;
    l1 = self.box_SpawnAI_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|719932807", "719932807", "MIS_330_B40", "box_Delay_v5_22.TimeElapsed", "box_SpawnAI_20.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_14_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_43();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1866405143", "1866405143", "MIS_330_B40", "box_GetPlayerGroup_v2_14.Out", "box_CHEAT_SetEnvironmentTimeScale_43.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ManagePlayerInventory_35();
    l0 = self.box_ManagePlayerInventory_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|859736627", "859736627", "MIS_330_B40", "box_OutputOrder_v2_60.Out", "box_ManagePlayerInventory_35.ClearRestriction", clone:GetLuaBox(), l0:GetLuaBox());
    -- ClearRestriction
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_72();
    l0 = self.box_ColorRemapTextureModifier_v3_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|810831100", "810831100", "MIS_330_B40", "box_OutputOrder_v2_60.Out", "box_ColorRemapTextureModifier_v3_72.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_86();
    l0 = self.box_OverrideMenuAccessibility_v2_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|244159949", "244159949", "MIS_330_B40", "box_OutputOrder_v2_60.Out", "box_OverrideMenuAccessibility_v2_86.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_99();
    l0 = self.box_Music_Quest_v2_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1381760193", "1381760193", "MIS_330_B40", "box_OutputOrder_v2_60.Out", "box_Music_Quest_v2_99.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_98();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1317357897", "1317357897", "MIS_330_B40", "box_OutputOrder_v2_60.Out", "box_RadioModifier_v3_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_54();
    l0 = self.box_MultipleOR_55;
    l1 = self.box_PlayDialog_v6_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|2144741302", "2144741302", "MIS_330_B40", "box_MultipleOR_55.Out", "box_PlayDialog_v6_54.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_27();
    l0 = self.box_PositionModifier_v2_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|237842036", "237842036", "MIS_330_B40", "box_OutputOrder_v2_39.Out", "box_PositionModifier_v2_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_59();
    l0 = self.box_Bind_v4_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|912807696", "912807696", "MIS_330_B40", "box_OutputOrder_v2_39.Out", "box_Bind_v4_59.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_39_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_71();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|504590777", "504590777", "MIS_330_B40", "box_OutputOrder_v2_39.Out", "box_Simple_Node_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_65_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_65_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|2140399912", "2140399912", "MIS_330_B40", "box_SetBoolean_v2_65.Out", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_NavLinkModifier_58_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_65();
    l0 = self.box_NavLinkModifier_58;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|702414754", "702414754", "MIS_330_B40", "box_NavLinkModifier_58.Activated", "box_SetBoolean_v2_65.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_40_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_62();
    l0 = self.box_NavLinkModifier_40;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1762675266", "1762675266", "MIS_330_B40", "box_NavLinkModifier_40.Activated", "box_SetBoolean_v2_62.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_80_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryLoadoutModifier_92();
    l0 = self.box_GunsForHireSystemModifier_80;
    l1 = self.box_InventoryLoadoutModifier_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|886859149", "886859149", "MIS_330_B40", "box_GunsForHireSystemModifier_80.Disabled", "box_InventoryLoadoutModifier_92.Backup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Backup
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_21_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = self.box_SpawnAI_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1932486377", "1932486377", "MIS_330_B40", "box_SpawnAI_21.Spawned", "box_OutputOrder_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_93_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_97();
    l0 = self.box_SoundModifier_v2_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1578156762", "1578156762", "MIS_330_B40", "box_EndActivityObjective_v2_93.Out", "box_SoundModifier_v2_97.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_19_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_22();
    l0 = self.box_VehicleListener_v3_19;
    l1 = self.box_Delay_v5_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1707238263", "1707238263", "MIS_330_B40", "box_VehicleListener_v3_19.OnSit", "box_Delay_v5_22.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SoundModifier_v2_97_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_104();
    l0 = self.box_SoundModifier_v2_97;
    l1 = self.box_Delay_v5_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|568658399", "568658399", "MIS_330_B40", "box_SoundModifier_v2_97.Finished", "box_Delay_v5_104.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_47_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_53();
    l0 = self.box_Delay_v5_47;
    l1 = self.box_PlayDialog_v6_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1873598222", "1873598222", "MIS_330_B40", "box_Delay_v5_47.TimeElapsed", "box_PlayDialog_v6_53.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_57_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_58();
    l0 = self.box_PositionModifier_v2_57;
    l1 = self.box_NavLinkModifier_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|641781387", "641781387", "MIS_330_B40", "box_PositionModifier_v2_57.StartOut", "box_NavLinkModifier_58.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_104_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryLoadoutModifier_103();
    l0 = self.box_Delay_v5_104;
    l1 = self.box_InventoryLoadoutModifier_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|653195681", "653195681", "MIS_330_B40", "box_Delay_v5_104.TimeElapsed", "box_InventoryLoadoutModifier_103.Backup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Backup
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|287507776", "287507776", "MIS_330_B40", "box_MultipleOR_2.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MIS_330_B40_CarEscape_11_CarEntered()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_66();
    l0 = self.box_MIS_330_B40_CarEscape_11;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|112359014", "112359014", "MIS_330_B40", "box_MIS_330_B40_CarEscape_11.CarEntered", "box_Simple_Node_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_24_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_32();
    l0 = self.box_GetPlayerGender_24;
    l1 = self.box_MIS_330_GiveDriverOutfit_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|803508931", "803508931", "MIS_330_B40", "box_GetPlayerGender_24.Female", "box_MIS_330_GiveDriverOutfit_32.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_24_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_32();
    l0 = self.box_GetPlayerGender_24;
    l1 = self.box_MIS_330_GiveDriverOutfit_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1722815519", "1722815519", "MIS_330_B40", "box_GetPlayerGender_24.Male", "box_MIS_330_GiveDriverOutfit_32.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_Brick_Interact_With_Object_V6_96_Success()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryLoadoutModifier_95();
    l0 = self.box_Brick_Interact_With_Object_V6_96;
    l1 = self.box_InventoryLoadoutModifier_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|16332446", "16332446", "MIS_330_B40", "box_Brick_Interact_With_Object_V6_96.Success", "box_InventoryLoadoutModifier_95.Restore", l0:GetLuaBox(), l1:GetLuaBox());
    -- Restore
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_27_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_30();
    l0 = self.box_PositionModifier_v2_27;
    l1 = self.box_NavLinkModifier_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1962054608", "1962054608", "MIS_330_B40", "box_PositionModifier_v2_27.StartOut", "box_NavLinkModifier_30.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_63_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_63_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_26();
    l0 = self.box_SpawnAI_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1456902984", "1456902984", "MIS_330_B40", "box_SetBoolean_v2_63.Out", "box_SpawnAI_26.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_48_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_14();
    l0 = self.box_PhoneCallExclusivityModifier_48;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|2003850584", "2003850584", "MIS_330_B40", "box_PhoneCallExclusivityModifier_48.Enabled", "box_GetPlayerGroup_v2_14.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryLoadoutModifier_95_Restored()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_93();
    l0 = self.box_InventoryLoadoutModifier_95;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|645649984", "645649984", "MIS_330_B40", "box_InventoryLoadoutModifier_95.Restored", "box_EndActivityObjective_v2_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_59_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_44();
    l0 = self.box_Bind_v4_59;
    l1 = self.box_Bind_v4_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1253343115", "1253343115", "MIS_330_B40", "box_Bind_v4_59.Bound", "box_Bind_v4_44.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_SetTimeOfDay_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_28();
    l0 = self.box_SpawnAI_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|731423483", "731423483", "MIS_330_B40", "box_SetTimeOfDay_42.Out", "box_SpawnAI_28.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_GunsForHireSystemModifier_85_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_101();
    l0 = self.box_GunsForHireSystemModifier_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|66983570", "66983570", "MIS_330_B40", "box_GunsForHireSystemModifier_85.Enabled", "box_OutputOrder_v2_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|575761846", "575761846", "MIS_330_B40", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_42();
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|642582510", "642582510", "MIS_330_B40", "box_ActivityAcknowledgeGate_4.Reloaded", "box_SetTimeOfDay_42.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_44_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_23();
    l0 = self.box_Bind_v4_44;
    l1 = self.box_PositionModifier_v2_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|2088477908", "2088477908", "MIS_330_B40", "box_Bind_v4_44.Bound", "box_PositionModifier_v2_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_37_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_38();
    l0 = self.box_PositionModifier_v2_37;
    l1 = self.box_PositionModifier_v2_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|89406031", "89406031", "MIS_330_B40", "box_PositionModifier_v2_37.StartOut", "box_PositionModifier_v2_38.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OverrideMenuAccessibility_v2_86_Out()
    local l0, l1;
    l0 = self.box_OverrideMenuAccessibility_v2_86;
    l1 = self.box_CoopActivePlayers_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1694886246", "1694886246", "MIS_330_B40", "box_OverrideMenuAccessibility_v2_86.Out", "box_CoopActivePlayers_81.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_PlayDialog_v6_53_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_53;
    l1 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|522495688", "522495688", "MIS_330_B40", "box_PlayDialog_v6_53.Finished", "box_MultipleOR_55.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_53_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_53;
    l1 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1548327375", "1548327375", "MIS_330_B40", "box_PlayDialog_v6_53.FinishedInterrupted", "box_MultipleOR_55.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PositionModifier_v2_56_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_57();
    l0 = self.box_PositionModifier_v2_56;
    l1 = self.box_PositionModifier_v2_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|466211680", "466211680", "MIS_330_B40", "box_PositionModifier_v2_56.StartOut", "box_PositionModifier_v2_57.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_85();
    l0 = self.box_RemoveEntity_v2_17;
    l1 = self.box_GunsForHireSystemModifier_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1936601687", "1936601687", "MIS_330_B40", "box_RemoveEntity_v2_17.Out", "box_GunsForHireSystemModifier_85.EnableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableGFHSystem
    l1:Exec(1, params);
end;

function export:f_box_ManagePlayerInventory_35_Cleared()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = self.box_ManagePlayerInventory_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1001331985", "1001331985", "MIS_330_B40", "box_ManagePlayerInventory_35.Cleared", "box_OutputOrder_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_62_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_62_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_12();
    l0 = self.box_ProximityTrigger_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|2038142019", "2038142019", "MIS_330_B40", "box_SetBoolean_v2_62.Out", "box_ProximityTrigger_v3_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ColorRemapTextureModifier_v3_72_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_91();
    l0 = self.box_ColorRemapTextureModifier_v3_72;
    l1 = self.box_Delay_v5_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|613513337", "613513337", "MIS_330_B40", "box_ColorRemapTextureModifier_v3_72.Removed", "box_Delay_v5_91.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_36();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|621026852", "621026852", "MIS_330_B40", "box_OutputOrder_v2_13.Out", "box_MissionBlockLayer_36.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_330_B40_CarEscape_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|191921869", "191921869", "MIS_330_B40", "box_OutputOrder_v2_13.Out", "box_MIS_330_B40_CarEscape_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_19();
    l0 = self.box_VehicleListener_v3_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|177908116", "177908116", "MIS_330_B40", "box_OutputOrder_v2_13.Out", "box_VehicleListener_v3_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_73();
    l0 = self.box_ProximityRadiusListener_v3_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1657295670", "1657295670", "MIS_330_B40", "box_OutputOrder_v2_13.Out", "box_ProximityRadiusListener_v3_73.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_36_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_9();
    l0 = self.box_EntityStatusListener_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|814931946", "814931946", "MIS_330_B40", "box_MissionBlockLayer_36.Activated", "box_EntityStatusListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_12_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_ProximityTrigger_v3_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1068622810", "1068622810", "MIS_330_B40", "box_ProximityTrigger_v3_12.Enter", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_50();
    l0 = self.box_SpawnAI_52;
    l1 = self.box_SpawnAI_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|588252917", "588252917", "MIS_330_B40", "box_SpawnAI_52.Out", "box_SpawnAI_50.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Reach_GoAway_v3_1_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_Reach_GoAway_v3_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1187597575", "1187597575", "MIS_330_B40", "box_Reach_GoAway_v3_1.Started", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoAway_v3_1_Success()
    local l0, l1;
    l0 = self.box_Reach_GoAway_v3_1;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|189802626", "189802626", "MIS_330_B40", "box_Reach_GoAway_v3_1.Success", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_78_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_78_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_33();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|198840028", "198840028", "MIS_330_B40", "box_SetBoolean_v2_78.Out", "box_MissionBlockLayer_33.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_89_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGender_25();
    l0 = self.box_MultipleOR_89;
    l1 = self.box_GetPlayerGender_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|952009391", "952009391", "MIS_330_B40", "box_MultipleOR_89.Out", "box_GetPlayerGender_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_25_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_88();
    l0 = self.box_GetPlayerGender_25;
    l1 = self.box_MIS_330_GiveDriverOutfit_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|922294167", "922294167", "MIS_330_B40", "box_GetPlayerGender_25.Female", "box_MIS_330_GiveDriverOutfit_88.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_25_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_88();
    l0 = self.box_GetPlayerGender_25;
    l1 = self.box_MIS_330_GiveDriverOutfit_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|848643480", "848643480", "MIS_330_B40", "box_GetPlayerGender_25.Male", "box_MIS_330_GiveDriverOutfit_88.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = self.box_SpawnAI_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1477741550", "1477741550", "MIS_330_B40", "box_SpawnAI_28.Out", "box_OutputOrder_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_81_PlayerAdded()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_81_PlayerAdded();
    params = self:OnEnter_box_OutputOrder_v2_84();
    l0 = self.box_CoopActivePlayers_81;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|965950045", "965950045", "MIS_330_B40", "box_CoopActivePlayers_81.PlayerAdded", "box_OutputOrder_v2_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_81_PlayerRemoved()
    self:OnExit_box_CoopActivePlayers_81_PlayerRemoved();
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|433679086", "433679086", "MIS_330_B40", "box_OutputOrder_v2_87.Out", "box_MultipleOR_89.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_87_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGender_24();
    l0 = self.box_GetPlayerGender_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|405055932", "405055932", "MIS_330_B40", "box_OutputOrder_v2_87.Out", "box_GetPlayerGender_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_52();
    l0 = self.box_SpawnAI_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|119920773", "119920773", "MIS_330_B40", "box_OutputOrder_v2_16.Out", "box_SpawnAI_52.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|2140864066", "2140864066", "MIS_330_B40", "box_OutputOrder_v2_16.Out", "box_ActivityObjectiveMarkerModifier_v3_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_73_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_74();
    l0 = self.box_ProximityRadiusListener_v3_73;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1231839439", "1231839439", "MIS_330_B40", "box_ProximityRadiusListener_v3_73.SomeoneFar", "box_ActivityObjectiveMarkerModifier_v3_74.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_5_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_5;
    l1 = self.box_PhoneCallExclusivityModifier_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|746214360", "746214360", "MIS_330_B40", "box_ActivityInitialized_5.Out", "box_PhoneCallExclusivityModifier_48.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_PositionModifier_v2_75_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_79();
    l0 = self.box_PositionModifier_v2_75;
    l1 = self.box_NavLinkModifier_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|528551264", "528551264", "MIS_330_B40", "box_PositionModifier_v2_75.StartOut", "box_NavLinkModifier_79.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_9_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|714502008", "714502008", "MIS_330_B40", "box_EntityStatusListener_9.Unloaded", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_33_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_80();
    l0 = self.box_GunsForHireSystemModifier_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1073249365", "1073249365", "MIS_330_B40", "box_MissionBlockLayer_33.Activated", "box_GunsForHireSystemModifier_80.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_56();
    l0 = self.box_PositionModifier_v2_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1980972975", "1980972975", "MIS_330_B40", "box_OutputOrder_v2_77.Out", "box_PositionModifier_v2_56.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_76();
    l0 = self.box_PositionModifier_v2_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|40989646", "40989646", "MIS_330_B40", "box_OutputOrder_v2_77.Out", "box_PositionModifier_v2_76.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1516290457", "1516290457", "MIS_330_B40", "box_OutputOrder_v2_77.Out", "box_CoopActivePlayers_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_SpawnAI_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_SpawnAI_20;
    l1 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|9979554", "9979554", "MIS_330_B40", "box_SpawnAI_20.Out", "box_SpawnAI_21.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_84_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGender_83();
    l0 = self.box_GetPlayerGender_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|2062621826", "2062621826", "MIS_330_B40", "box_OutputOrder_v2_84.Out", "box_GetPlayerGender_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_84_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_330_DoorManager_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1932337732", "1932337732", "MIS_330_B40", "box_OutputOrder_v2_84.Out", "box_MIS_330_DoorManager_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, {
    });
end;

function export:f_box_Delay_v5_91_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_96();
    l0 = self.box_Delay_v5_91;
    l1 = self.box_Brick_Interact_With_Object_V6_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|23584379", "23584379", "MIS_330_B40", "box_Delay_v5_91.Started", "box_Brick_Interact_With_Object_V6_96.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_91_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestTutorial_v3_10();
    l0 = self.box_Delay_v5_91;
    l1 = self.box_RequestTutorial_v3_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1700126604", "1700126604", "MIS_330_B40", "box_Delay_v5_91.TimeElapsed", "box_RequestTutorial_v3_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_45_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_64();
    l0 = self.box_EntityStatusListener_45;
    l1 = self.box_EntityStatusListener_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|808664183", "808664183", "MIS_330_B40", "box_EntityStatusListener_45.Enabled", "box_EntityStatusListener_64.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_45_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_49();
    l0 = self.box_EntityStatusListener_45;
    l1 = self.box_RemoveEntity_v2_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|986571184", "986571184", "MIS_330_B40", "box_EntityStatusListener_45.Loaded", "box_RemoveEntity_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_76_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_75();
    l0 = self.box_PositionModifier_v2_76;
    l1 = self.box_PositionModifier_v2_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1799572085", "1799572085", "MIS_330_B40", "box_PositionModifier_v2_76.StartOut", "box_PositionModifier_v2_75.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_30_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_63();
    l0 = self.box_NavLinkModifier_30;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|386538514", "386538514", "MIS_330_B40", "box_NavLinkModifier_30.Activated", "box_SetBoolean_v2_63.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|969869904", "969869904", "MIS_330_B40", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
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
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|2055222636", "2055222636", "MIS_330_B40", "box_OutputOrder_v2_3.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_64_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_51();
    l0 = self.box_EntityStatusListener_64;
    l1 = self.box_RemoveEntity_v2_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1365622296", "1365622296", "MIS_330_B40", "box_EntityStatusListener_64.Loaded", "box_RemoveEntity_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_NavLinkModifier_79_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_78();
    l0 = self.box_NavLinkModifier_79;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|987674508", "987674508", "MIS_330_B40", "box_NavLinkModifier_79.Activated", "box_SetBoolean_v2_78.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_100();
    l0 = self.box_Music_Quest_v2_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1555718623", "1555718623", "MIS_330_B40", "box_OutputOrder_v2_101.Out", "box_Music_Quest_v2_100.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_101_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_102();
    l0 = self.box_RemoveEntity_v2_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1500607094", "1500607094", "MIS_330_B40", "box_OutputOrder_v2_101.Out", "box_RemoveEntity_v2_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_101_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|37698016", "37698016", "MIS_330_B40", "box_OutputOrder_v2_101.Out", "box_ActivityEnd_7.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoAway_v3_1();
    l0 = self.box_Reach_GoAway_v3_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1566121998", "1566121998", "MIS_330_B40", "box_OutputOrder_v2_41.Out", "box_Reach_GoAway_v3_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1386983466", "1386983466", "MIS_330_B40", "box_OutputOrder_v2_41.Out", "box_Delay_v5_47.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_41_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_45();
    l0 = self.box_EntityStatusListener_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|972557431", "972557431", "MIS_330_B40", "box_OutputOrder_v2_41.Out", "box_EntityStatusListener_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_17();
    l0 = self.box_MultipleOR_8;
    l1 = self.box_RemoveEntity_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|64920838", "64920838", "MIS_330_B40", "box_MultipleOR_8.Out", "box_RemoveEntity_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MIS_330_DoorManager_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryLoadoutModifier_94();
    l0 = self.box_MIS_330_DoorManager_82;
    l1 = self.box_InventoryLoadoutModifier_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|169398975", "169398975", "MIS_330_B40", "box_MIS_330_DoorManager_82.Out", "box_InventoryLoadoutModifier_94.Backup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Backup
    l1:Exec(0, params);
end;

function export:f_box_CoopActivePlayers_90_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_90_OnePlayer();
    l0 = self.box_CoopActivePlayers_90;
    l1 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1327348891", "1327348891", "MIS_330_B40", "box_CoopActivePlayers_90.OnePlayer", "box_MultipleOR_89.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_90_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_31();
    l0 = self.box_CoopActivePlayers_90;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|302474675", "302474675", "MIS_330_B40", "box_CoopActivePlayers_90.PlayerAdded", "box_Simple_Node_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_90_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_90_TwoPlayers();
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = self.box_CoopActivePlayers_90;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|305304060", "305304060", "MIS_330_B40", "box_CoopActivePlayers_90.TwoPlayers", "box_OutputOrder_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_38_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_40();
    l0 = self.box_PositionModifier_v2_38;
    l1 = self.box_NavLinkModifier_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|646414979", "646414979", "MIS_330_B40", "box_PositionModifier_v2_38.StartOut", "box_NavLinkModifier_40.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_83_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_61();
    l0 = self.box_GetPlayerGender_83;
    l1 = self.box_MIS_330_GiveDriverOutfit_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|831440640", "831440640", "MIS_330_B40", "box_GetPlayerGender_83.Female", "box_MIS_330_GiveDriverOutfit_61.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_83_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_61();
    l0 = self.box_GetPlayerGender_83;
    l1 = self.box_MIS_330_GiveDriverOutfit_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|276422579", "276422579", "MIS_330_B40", "box_GetPlayerGender_83.Male", "box_MIS_330_GiveDriverOutfit_61.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_43;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1975963604", "1975963604", "MIS_330_B40", "box_CHEAT_SetEnvironmentTimeScale_43.Out", "box_OutputOrder_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_23_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_37();
    l0 = self.box_PositionModifier_v2_23;
    l1 = self.box_PositionModifier_v2_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|79911941", "79911941", "MIS_330_B40", "box_PositionModifier_v2_23.StartOut", "box_PositionModifier_v2_37.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|@Gate_Open_Escape_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_71_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|@Open_DoorGrilled_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_66_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_26()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107825679004338988",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|16527731");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2108513294709964770",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_330_B40_OBJ_Escape",
            id = "1000686",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_22()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|35616509");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|77518023");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|89208699");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
                [2] = self.f_box_OutputOrder_v2_60_Out_2,
                [3] = self.f_box_OutputOrder_v2_60_Out_3,
                [4] = self.f_box_OutputOrder_v2_60_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|114452250");
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
                [0] = self.f_box_OutputOrder_v2_39_Out_0,
                [1] = self.f_box_OutputOrder_v2_39_Out_1,
                [2] = self.f_box_OutputOrder_v2_39_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|140263266");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_65_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_58()
    local params;
    params = {
        -- Entity,
        [0] = "2108695974183439886",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_40()
    local params;
    params = {
        -- Entity,
        [0] = "2107727925450119264",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_80()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107825676657625860",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_54()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "280813679",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|262001261");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_93_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_330_B40_OBJ_TakeGear",
            id = "1035929",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|306388736");
    l0:SetConnections({
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2109609153948314843",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_19()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicleTypeFilter,
        [5] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_97()
    local params;
    params = {
        -- Pawns,
        [0] = "2109994138502988005",
        -- SoundId,
        [1] = "452876004",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_47()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_100()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 6,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2845456904",
        -- StopEvent,
        [7] = "4215135172",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = true,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_57()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108503083483933760",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108488916423155111",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_104()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_24()
    local params, l0;
    l0 = self.box_CoopActivePlayers_90;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_96()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2109942577529626320",
        -- e_ObjectiveMarker,
        [4] = "2109942577527529165",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_USE",
            id = "533274",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "MIS_330_B40_OBJ_TakeGear",
            id = "1035929",
        },
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_27()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2108445606396561075",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108350971521282484",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|643879033");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_63_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|661869778");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_InventoryLoadoutModifier_95()
    local params;
    params = {
        -- discardPreviousBackup,
        [0] = true,
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_59()
    local params;
    params = {
        -- EntityA,
        [1] = "2109291430026425248",
        -- EntityB,
        [2] = "2109775390613454892",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|709984339");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_42_Out,
    });
    params = {
        -- Hour,
        [0] = 3,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|723826903");
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
        [8] = "MIS_330_B40 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MIS_330_GiveDriverOutfit_88()
    local params, l0;
    l0 = self.box_CoopActivePlayers_90;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_85()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_44()
    local params;
    params = {
        -- EntityA,
        [1] = "2109291425278473114",
        -- EntityB,
        [2] = "2109775384026300458",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_37()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2107825867450223621",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109291425278473114",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_v2_86()
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

function export:OnEnter_box_MIS_330_GiveDriverOutfit_32()
    local params, l0;
    l0 = self.box_CoopActivePlayers_90;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_53()
    local params;
    DrawTextToScreen("Comment: Announcer Call to arms", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Announcer Call to arms");
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3525461561",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_56()
    local params;
    params = {
        -- blendTime,
        [1] = 2.5,
        -- endTarget,
        [4] = "2108503088630344772",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108488866603212191",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_17()
    local params;
    params = {
        -- Group,
        [0] = "2108489953955559216",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_99()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 6,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2845456904",
        -- StopEvent,
        [7] = "4215135172",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_35()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015342283729325",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|966236338");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_62_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ColorRemapTextureModifier_v3_72()
    local params;
    params = {
        -- colorRemapSettings,
        [0] = "9015346330526944",
        -- playerGroup,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1069813267");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
                [2] = self.f_box_OutputOrder_v2_13_Out_2,
                [3] = self.f_box_OutputOrder_v2_13_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1093210658");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_36_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160300054696411",
        -- missionLayerId,
        [1] = "27160308491654982",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.gp_FriendlyPlayers,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108504036029257892",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_52()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108504000488822701",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoAway_v3_1()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = true,
        -- bUseDetectionModifier,
        [3] = false,
        -- eMarker,
        [4] = "2108513294709964770",
        -- eRadiusTarget,
        [5] = "2107770244920516337",
        -- fDistanceFromTarget,
        [7] = 135,
        -- fObjectiveTimer,
        [8] = 0,
        -- opt_Objective,
        [10] = {
            section = "Objectives",
            item = "MIS_330_B40_OBJ_Escape",
            id = "1000686",
        },
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1194365857");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_78_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_25()
    local params, l0;
    l0 = self.box_CoopActivePlayers_90;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_28()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107825891217247270",
    };
    return params;
end;

function export:OnEnter_box_InventoryLoadoutModifier_103()
    local params;
    params = {
        -- discardPreviousBackup,
        [0] = true,
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_InventoryLoadoutModifier_94()
    local params;
    params = {
        -- discardPreviousBackup,
        [0] = false,
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1451375061");
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
                [0] = self.f_box_OutputOrder_v2_87_Out_0,
                [1] = self.f_box_OutputOrder_v2_87_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_51()
    local params;
    params = {
        -- Group,
        [0] = "2109207711703930647",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1496876492");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_73()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gp_FriendlyPlayers,
        -- farZone,
        [2] = 80,
        -- id2,
        [3] = "2109665466998857149",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_75()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2108502598704178061",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108489879271775708",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107770244920516337",
    };
    return params;
end;

function export:OnEnter_box_InventoryLoadoutModifier_92()
    local params;
    params = {
        -- discardPreviousBackup,
        [0] = false,
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1561717451");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_33_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160300054696411",
        -- missionLayerId,
        [1] = "27160308491654982",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1561816938");
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
                [0] = self.f_box_OutputOrder_v2_77_Out_0,
                [1] = self.f_box_OutputOrder_v2_77_Out_1,
                [2] = self.f_box_OutputOrder_v2_77_Out_2,
            },
            count = 3,
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
        [0] = "2107825654763358870",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1669402572");
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
                [0] = self.f_box_OutputOrder_v2_84_Out_0,
                [1] = self.f_box_OutputOrder_v2_84_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_46()
    local params;
    params = {
        -- Pawns,
        [0] = "2108515804501773309",
        -- SoundId,
        [1] = "3932088769",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_91()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_45()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108499926569724810",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_76()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2108502584277869445",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108489879269678554",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_30()
    local params;
    params = {
        -- Entity,
        [0] = "2107727881225377880",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1752910849");
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

function export:OnEnter_box_SpawnAI_50()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108503995696830292",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_18()
    local params;
    params = {
        -- Pawns,
        [0] = "2108541136694941595",
        -- SoundId,
        [1] = "1390892821",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MIS_330_GiveDriverOutfit_61()
    local params, l0;
    l0 = self.box_CoopActivePlayers_81;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_64()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109207711703930647",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_79()
    local params;
    params = {
        -- Entity,
        [0] = "2108695971692023306",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_49()
    local params;
    params = {
        -- Group,
        [0] = "2108499926569724810",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1907090514");
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
                [0] = self.f_box_OutputOrder_v2_101_Out_0,
                [1] = self.f_box_OutputOrder_v2_101_Out_1,
                [2] = self.f_box_OutputOrder_v2_101_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1917493889");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
                [2] = self.f_box_OutputOrder_v2_41_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b40.domino|@MIS_330_B40|1970971124");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2108513294709964770",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_330_B40_OBJ_Escape",
            id = "1000686",
        },
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_38()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2108445587121637039",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109291430026425248",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_83()
    local params, l0;
    l0 = self.box_CoopActivePlayers_81;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_10()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015350241605462",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_43()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_102()
    local params;
    params = {
        -- Group,
        [0] = "2109942577529626320",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_23()
    local params;
    params = {
        -- blendTime,
        [1] = 4,
        -- endTarget,
        [4] = "2107743377159100843",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108350971519185330",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gp_FriendlyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_65_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_330_b10.b_Derby_VIPExit_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_63_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_330_b10.b_Derby_ArenaGates_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_62_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_330_b10.b_Derby_SasGates_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_78_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_330_b10.b_Derby_VIPEntrance_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_81_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_81;
    l1 = self.box_GetPlayerGender_83;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_MIS_330_GiveDriverOutfit_61;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_81_PlayerRemoved()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_81;
    l1 = self.box_GetPlayerGender_83;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_MIS_330_GiveDriverOutfit_61;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_90_OnePlayer()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_90;
    l1 = self.box_MIS_330_GiveDriverOutfit_88;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_GetPlayerGender_25;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_90_TwoPlayers()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_90;
    l1 = self.box_MIS_330_GiveDriverOutfit_88;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_GetPlayerGender_25;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_GetPlayerGender_24;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(1);
    l1 = self.box_MIS_330_GiveDriverOutfit_32;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(1);
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
