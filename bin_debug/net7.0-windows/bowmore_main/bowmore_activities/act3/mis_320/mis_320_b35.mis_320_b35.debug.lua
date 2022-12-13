LUACr� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_320/mis_320_b35.domino
-- User graph: MIS_320_B35
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="ItemFilterDBID" Type="Nomad|genericdb" />
</InputReflection> 
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_ExtraMaker_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryLoadoutModifier.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RestrictedItemModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
        cboxRes:RegisterBox("Domino/System/UnlockDoor.lua");
        cboxRes:RegisterBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_DoorManager.debug.lua");
        cboxRes:RegisterBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua");
        cboxRes:RegisterBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_WallGuards.debug.lua");
        cboxRes:RegisterBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35_BackAlley.debug.lua");
        cboxRes:RegisterBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35_BBQTrap.debug.lua");
        cboxRes:RegisterBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35_PlayerDetection.debug.lua");
        cboxRes:RegisterBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35_ReturnToFactory.debug.lua");
        cboxRes:RegisterBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35_StartingSetup.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3408696666.bnk]], "CSoundResource");
        cboxRes:LoadResource([[107884832.bnk]], "CSoundResource");
        cboxRes:LoadResource([[711040186.bnk]], "CSoundResource");
        cboxRes:LoadResource([[226713140.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1135927399.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "extraMarker",
                delayed = false,
            },
            [1] = {
                name = "Failed",
                delayed = false,
            },
            [2] = {
                name = "PlayerDetected",
                delayed = true,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bPlayerDetection",
                type = "bool",
            },
            [2] = {
                name = "eGuardsCS",
                type = "entity",
            },
            [3] = {
                name = "eTargetCS",
                type = "entity",
            },
            [4] = {
                name = "Objective",
                type = "oasis",
            },
            [5] = {
                name = "sDamageType",
                type = "string",
            },
            [6] = {
                name = "TargetGroup",
                type = "group",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "eNumberOfEscaped",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_ExtraMaker_v2.debug.lua")] = {
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
                name = "Damaged",
                delayed = false,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Killed",
                delayed = false,
            },
            [3] = {
                name = "NextMarker",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "MobileObjectiveMarker",
                type = "entity",
            },
            [2] = {
                name = "Objective",
                type = "oasis",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "sDamageSourceType",
                type = "string",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/AI/SpawnAIRequestGroup_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "SpawnByCount",
            },
            [2] = {
                name = "SpawnByPercentage",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "AtLeastOneRequestSucceeded",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "RequestsFailed",
                delayed = false,
            },
            [3] = {
                name = "RequestSpawned",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "RequestGroupName",
                type = "string",
            },
            [1] = {
                name = "SpawnerCount",
                type = "int",
            },
            [2] = {
                name = "SpawnerPercentage",
                type = "int",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v6.lua")] = {
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
                name = "MemberDied",
                delayed = true,
            },
            [4] = {
                name = "MemberRemoved",
                delayed = true,
            },
            [5] = {
                name = "MemberSpawned",
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
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Alive",
                delayed = false,
            },
            [1] = {
                name = "DeadOrDown",
                delayed = false,
            },
            [2] = {
                name = "NotLoaded",
                delayed = false,
            },
        },
        controlOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/SetInteger_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromFloat",
            },
            [1] = {
                name = "FromInteger",
            },
            [2] = {
                name = "FromString",
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
            [0] = {
                name = "Float",
                type = "float",
            },
            [1] = {
                name = "Integer",
                type = "int",
            },
            [2] = {
                name = "String",
                type = "string",
            },
            [3] = {
                name = "UseFloor",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "Target",
                type = "int",
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
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_DoorManager.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_WallGuards.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35_BackAlley.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35_BBQTrap.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35_PlayerDetection.debug.lua")] = {
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
            [1] = {
                name = "Player_Detected",
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
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35_ReturnToFactory.debug.lua")] = {
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
            [1] = {
                name = "Players_Entered",
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
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35_StartingSetup.debug.lua")] = {
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
    self._name = "MIS_320_B35";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35";
    self.g_FrienglyPlayers = nil;
    self.i_eliteCountdown = 0;
    self.e_ladderLock = nil;
    self.b_frankDead = false;
    self.b_gearTaken = false;
    self.box_Delay_v5_93 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|40971911");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_93_TimeElapsed,
    });
    self.box_GetPlayerGender_146 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|48487499");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_146_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_146_Male,
    });
    self.box_TeleportPawns_89 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|58199339");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_89_Out,
    });
    self.box_OverrideMenuAccessibility_v2_100 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|88038879");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_v2_100_Out,
    });
    self.box_MIS_320_GivePrisonerOutfit_142 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua");
    l0 = self.box_MIS_320_GivePrisonerOutfit_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_GivePrisonerOutfit_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|96042108");
    l0:SetConnections({
    });
    self.box_Delay_v5_136 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|100543492");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_136_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_136_TimeElapsed,
    });
    self.box_GetPlayerGender_143 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|122558017");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_143_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_143_Male,
    });
    self.box_ProximityRadiusListener_v3_63 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|145050700");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_63_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_63_SomeoneNear,
    });
    self.box_MIS_320_B20_WallGuards_91 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_WallGuards.debug.lua");
    l0 = self.box_MIS_320_B20_WallGuards_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B20_WallGuards_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|149222370");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_320_B20_WallGuards_91_Out,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|195092904");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_MultipleOR_105 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|205517357");
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
    self.box_MIS_320_B35_BackAlley_58 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35_BackAlley.debug.lua");
    l0 = self.box_MIS_320_B35_BackAlley_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B35_BackAlley_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|212173896");
    l0:SetConnections({
    });
    self.box_SpawnAI_111 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|287641323");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_111_Out,
    });
    self.box_NavLinkModifier_67 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|424075476");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_67_Activated,
    });
    self.box_SpawnAI_56 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|458416071");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_56_Out,
    });
    self.box_SpawnAI_114 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|504263773");
    l0:SetConnections({
    });
    self.box_CoopActivePlayers_97 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|518731115");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_97_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_97_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_97_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_97_TwoPlayers,
    });
    self.box_OnceOnly_v3_30 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|541103693");
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
                [0] = self.f_box_OnceOnly_v3_30_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_69 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|587226737");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_69_Out,
    });
    self.box_SpawnAI_68 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|600670991");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_68_Out,
    });
    self.box_GroupSizeListener_v6_9 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|675222413");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_9_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_9_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_9_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_9_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_9_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_9_MemberSpawned,
    });
    self.box_SpawnAI_113 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|683356909");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_113_Out,
    });
    self.box_MIS_320_B35_PlayerDetection_15 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35_PlayerDetection.debug.lua");
    l0 = self.box_MIS_320_B35_PlayerDetection_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B35_PlayerDetection_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|699077729");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_320_B35_PlayerDetection_15_Out,
        -- Player Detected,
        [1] = self.f_box_MIS_320_B35_PlayerDetection_15_Player_Detected,
    });
    self.box_MIS_320_DoorManager_125 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_DoorManager.debug.lua");
    l0 = self.box_MIS_320_DoorManager_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_DoorManager_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|746325867");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_320_DoorManager_125_Out,
    });
    self.box_SoundModifier_v2_79 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|747582649");
    l0:SetConnections({
    });
    self.box_MIS_320_GivePrisonerOutfit_147 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua");
    l0 = self.box_MIS_320_GivePrisonerOutfit_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_GivePrisonerOutfit_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|761138058");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_v2_41 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|804550876");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_41_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_41_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_41_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_41_LoadedIdReceived,
    });
    self.box_SpawnAI_46 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|809414643");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_46_Out,
    });
    self.box_SpawnAIRequestGroup_v2_106 = cbox:CreateBox("Domino/System/AI/SpawnAIRequestGroup_v2.lua");
    l0 = self.box_SpawnAIRequestGroup_v2_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAIRequestGroup_v2_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|818001252");
    l0:SetConnections({
        -- AtLeastOneRequestSucceeded,
        [0] = self.f_box_SpawnAIRequestGroup_v2_106_AtLeastOneRequestSucceeded,
        -- Out,
        [1] = self.f_box_SpawnAIRequestGroup_v2_106_Out,
    });
    self.box_SoundModifier_v2_52 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|824663884");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_53 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|829899339");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_53_Activated,
    });
    self.box_ExitZoneWarningListener_v3_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|872679528");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_26_FailingZoneEntered,
    });
    self.box_Gate_v3_101 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|887918814");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_101_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_101_Out,
    });
    self.box_SpawnAI_112 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|971977925");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_112_Out,
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|998047290");
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
    self.box_Reach_GoTo_v3_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|998661437");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_Reach_GoTo_v3_24_Started,
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_24_Success,
    });
    self.box_SoundModifier_v2_131 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1038436175");
    l0:SetConnections({
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1047355696");
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
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1125131920");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_SoundModifier_v2_151 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1133069364");
    l0:SetConnections({
    });
    self.box_SpawnAI_103 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1153133361");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_59 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1172811943");
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
    self.box_SpawnAI_55 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1174111292");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_55_Out,
    });
    self.box_SpawnAI_75 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1181996350");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_75_Out,
    });
    self.box_ManagePlayerInventory_86 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1213582741");
    l0:SetConnections({
        -- Restricted,
        [2] = self.f_box_ManagePlayerInventory_86_Restricted,
    });
    self.box_ActivityInitialized_8 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1226789354");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_8_Out,
    });
    self.box_SpawnAI_80 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1238662989");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_80_Out,
    });
    self.box_EntityStatusListener_50 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1309303978");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_50_Loaded,
    });
    self.box_SoundModifier_v2_60 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1352266085");
    l0:SetConnections({
    });
    self.box_Brick_Interact_With_Object_V6_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1358032013");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_12_Success,
    });
    self.box_MIS_320_B35_StartingSetup_16 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35_StartingSetup.debug.lua");
    l0 = self.box_MIS_320_B35_StartingSetup_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B35_StartingSetup_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1377596527");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_320_B35_StartingSetup_16_Out,
    });
    self.box_GroupSizeListener_v6_11 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1381278880");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_11_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_11_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_11_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_11_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_11_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_11_MemberSpawned,
    });
    self.box_HealthListener_v6_66 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1428806134");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_66_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_66_Killed,
    });
    self.box_MultipleOR_71 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1449578252");
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
    self.box_Music_Quest_v2_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1454558983");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_57 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1476698600");
    l0:SetConnections({
    });
    self.box_MIS_320_B35_BBQTrap_14 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35_BBQTrap.debug.lua");
    l0 = self.box_MIS_320_B35_BBQTrap_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B35_BBQTrap_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1580148062");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_320_B35_BBQTrap_14_Out,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1593535804");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_Music_Quest_v2_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1640996733");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_51 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1643009676");
    l0:SetConnections({
    });
    self.box_GunsForHireSystemModifier_116 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1661223719");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_116_Disabled,
    });
    self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1682359333");
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
        [0] = self.f_box_MultipleOR_104_Out,
    });
    self.box_InventoryLoadoutModifier_19 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1730324077");
    l0:SetConnections({
    });
    self.box_InventoryLoadoutModifier_18 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1735264290");
    l0:SetConnections({
        -- BackedUp,
        [0] = self.f_box_InventoryLoadoutModifier_18_BackedUp,
    });
    self.box_Delay_v5_95 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1737591322");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_95_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_95_TimeElapsed,
    });
    self.box_MIS_320_GivePrisonerOutfit_122 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua");
    l0 = self.box_MIS_320_GivePrisonerOutfit_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_GivePrisonerOutfit_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1742285579");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_320_GivePrisonerOutfit_122_Out,
    });
    self.box_OnceOnly_v3_96 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1799615515");
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
                [0] = self.f_box_OnceOnly_v3_96_Out_0,
            },
            count = 2,
        },
    });
    self.box_MIS_320_B35_ReturnToFactory_49 = cbox:CreateBox("Domino/User/Bowmore_main/Bowmore_Activities/act3/mis_320/MIS_320_B35.MIS_320_B35_ReturnToFactory.debug.lua");
    l0 = self.box_MIS_320_B35_ReturnToFactory_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B35_ReturnToFactory_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1837226773");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_320_B35_ReturnToFactory_49_Out,
        -- Players Entered,
        [1] = self.f_box_MIS_320_B35_ReturnToFactory_49_Players_Entered,
    });
    self.box_MultipleOR_141 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1873215596");
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
        [0] = self.f_box_MultipleOR_141_Out,
    });
    self.box_Brick_Kill_Target_ExtraMaker_v2_37 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_ExtraMaker_v2.debug.lua");
    l0 = self.box_Brick_Kill_Target_ExtraMaker_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Kill_Target_ExtraMaker_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1888201250");
    l0:SetConnections({
    });
    self.box_Brick_Interact_With_Object_V6_137 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1892435353");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_137_Success,
    });
    self.box_GetPlayerGender_121 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1911878383");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_121_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_121_Male,
    });
    self.box_MultipleAND_v2_138 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1932644439");
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
        [0] = self.f_box_MultipleAND_v2_138_Out,
    });
    self.box_ManagePlayerInventory_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1982186841");
    l0:SetConnections({
        -- Cleared,
        [0] = self.f_box_ManagePlayerInventory_2_Cleared,
    });
    self.box_CoopActivePlayers_145 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1982851328");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_145_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_145_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_145_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_145_TwoPlayers,
    });
    self.box_MultipleOR_149 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1990178680");
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
        [0] = self.f_box_MultipleOR_149_Out,
    });
    self.box_SpawnAI_28 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2023056328");
    l0:SetConnections({
    });
    self.box_Brick_Kill_Target_CORE_v2_47 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua");
    l0 = self.box_Brick_Kill_Target_CORE_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Kill_Target_CORE_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2029194006");
    l0:SetConnections({
        -- extraMarker,
        [0] = self.f_box_Brick_Kill_Target_CORE_v2_47_extraMarker,
        -- Success,
        [4] = self.f_box_Brick_Kill_Target_CORE_v2_47_Success,
    });
    self.box_InventoryItemModifier_38 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2039310632");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_38_Out,
    });
    self.box_SoundModifier_v2_130 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2039376942");
    l0:SetConnections({
    });
    self.box_Reach_GoTo_v3_119 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2094396400");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_Reach_GoTo_v3_119_Started,
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_119_Success,
    });
    self.box_RestrictedItemModifier_v2_123 = cbox:CreateBox("Domino/System/RestrictedItemModifier_v2.lua");
    l0 = self.box_RestrictedItemModifier_v2_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_v2_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2103950096");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_v2_123_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|808422858", "808422858", "MIS_320_B35", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_88_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_111();
    l0 = self.box_SpawnAI_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|98380292", "98380292", "MIS_320_B35", "box_Simple_Node_88.Out", "box_SpawnAI_111.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_63();
    l0 = self.box_ProximityRadiusListener_v3_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1467197161", "1467197161", "MIS_320_B35", "box_Simple_Node_88.Out", "box_ProximityRadiusListener_v3_63.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_GroupSizeListener_v6_9();
    l0 = self.box_GroupSizeListener_v6_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1472116105", "1472116105", "MIS_320_B35", "box_Simple_Node_88.Out", "box_GroupSizeListener_v6_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_Delay_v5_93();
    l0 = self.box_Delay_v5_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1123688392", "1123688392", "MIS_320_B35", "box_Simple_Node_88.Out", "box_Delay_v5_93.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_29();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|639267666", "639267666", "MIS_320_B35", "box_Simple_Node_88.Out", "box_ActivityObjectiveMarkerModifier_v3_29.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Reach_GoTo_v3_119();
    l0 = self.box_Reach_GoTo_v3_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1734356420", "1734356420", "MIS_320_B35", "box_Simple_Node_88.Out", "box_Reach_GoTo_v3_119.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_EndActivityObjective_v2_48();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1594481396", "1594481396", "MIS_320_B35", "box_Simple_Node_88.Out", "box_EndActivityObjective_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_12();
    l0 = self.box_Brick_Interact_With_Object_V6_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1580970218", "1580970218", "MIS_320_B35", "box_Simple_Node_88.Out", "box_Brick_Interact_With_Object_V6_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Reach_GoTo_v3_24();
    l0 = self.box_Reach_GoTo_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1689626510", "1689626510", "MIS_320_B35", "box_Simple_Node_88.Out", "box_Reach_GoTo_v3_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_115_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_100();
    l0 = self.box_OverrideMenuAccessibility_v2_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1366076492", "1366076492", "MIS_320_B35", "box_Simple_Node_115.Out", "box_OverrideMenuAccessibility_v2_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1830571408", "1830571408", "MIS_320_B35", "box_OutputOrder_v2_54.Out", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_55();
    l0 = self.box_SpawnAI_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1251963765", "1251963765", "MIS_320_B35", "box_OutputOrder_v2_54.Out", "box_SpawnAI_55.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_93_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_85();
    l0 = self.box_Delay_v5_93;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|578121927", "578121927", "MIS_320_B35", "box_Delay_v5_93.TimeElapsed", "box_OutputOrder_v2_85.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_146_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_142();
    l0 = self.box_GetPlayerGender_146;
    l1 = self.box_MIS_320_GivePrisonerOutfit_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|477407105", "477407105", "MIS_320_B35", "box_GetPlayerGender_146.Female", "box_MIS_320_GivePrisonerOutfit_142.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_146_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_142();
    l0 = self.box_GetPlayerGender_146;
    l1 = self.box_MIS_320_GivePrisonerOutfit_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|189074219", "189074219", "MIS_320_B35", "box_GetPlayerGender_146.Male", "box_MIS_320_GivePrisonerOutfit_142.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_TeleportPawns_89_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_116();
    l0 = self.box_TeleportPawns_89;
    l1 = self.box_GunsForHireSystemModifier_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2021921587", "2021921587", "MIS_320_B35", "box_TeleportPawns_89.Out", "box_GunsForHireSystemModifier_116.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_OverrideMenuAccessibility_v2_100_Out()
    local l0, l1;
    l0 = self.box_OverrideMenuAccessibility_v2_100;
    l1 = self.box_CoopActivePlayers_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|378124995", "378124995", "MIS_320_B35", "box_OverrideMenuAccessibility_v2_100.Out", "box_CoopActivePlayers_97.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Delay_v5_136_Started()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_117();
    l0 = self.box_Delay_v5_136;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2085743351", "2085743351", "MIS_320_B35", "box_Delay_v5_136.Started", "box_UseContextualActionModifier_v3_117.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_136_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_137();
    l0 = self.box_Delay_v5_136;
    l1 = self.box_Brick_Interact_With_Object_V6_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|739973216", "739973216", "MIS_320_B35", "box_Delay_v5_136.TimeElapsed", "box_Brick_Interact_With_Object_V6_137.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGender_143_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_147();
    l0 = self.box_GetPlayerGender_143;
    l1 = self.box_MIS_320_GivePrisonerOutfit_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|776547524", "776547524", "MIS_320_B35", "box_GetPlayerGender_143.Female", "box_MIS_320_GivePrisonerOutfit_147.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_143_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_147();
    l0 = self.box_GetPlayerGender_143;
    l1 = self.box_MIS_320_GivePrisonerOutfit_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|679931316", "679931316", "MIS_320_B35", "box_GetPlayerGender_143.Male", "box_MIS_320_GivePrisonerOutfit_147.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_63_Enabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_63;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1966370817", "1966370817", "MIS_320_B35", "box_ProximityRadiusListener_v3_63.Enabled", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_63_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_57();
    l0 = self.box_ProximityRadiusListener_v3_63;
    l1 = self.box_PlayDialog_v6_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1833908321", "1833908321", "MIS_320_B35", "box_ProximityRadiusListener_v3_63.SomeoneNear", "box_PlayDialog_v6_57.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MIS_320_B20_WallGuards_91_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_50();
    l0 = self.box_MIS_320_B20_WallGuards_91;
    l1 = self.box_EntityStatusListener_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|734972840", "734972840", "MIS_320_B35", "box_MIS_320_B20_WallGuards_91.Out", "box_EntityStatusListener_50.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UnlockDoor_72_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_74();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2097631314", "2097631314", "MIS_320_B35", "box_UnlockDoor_72.Unlocked", "box_UnlockDoor_74.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1139432870", "1139432870", "MIS_320_B35", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_5();
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2138915596", "2138915596", "MIS_320_B35", "box_ActivityAcknowledgeGate_4.Reloaded", "box_SetTimeOfDay_5.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_105_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_107();
    l0 = self.box_MultipleOR_105;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|87715195", "87715195", "MIS_320_B35", "box_MultipleOR_105.Out", "box_Compare_Integers_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_111_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_112();
    l0 = self.box_SpawnAI_111;
    l1 = self.box_SpawnAI_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2059046949", "2059046949", "MIS_320_B35", "box_SpawnAI_111.Out", "box_SpawnAI_112.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B35_BBQTrap_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|650908202", "650908202", "MIS_320_B35", "box_OutputOrder_v2_21.Out", "box_MIS_320_B35_BBQTrap_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_12();
    l0 = self.box_Brick_Interact_With_Object_V6_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|70681251", "70681251", "MIS_320_B35", "box_OutputOrder_v2_21.Out", "box_Brick_Interact_With_Object_V6_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B20_WallGuards_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1201053424", "1201053424", "MIS_320_B35", "box_OutputOrder_v2_21.Out", "box_MIS_320_B20_WallGuards_91.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_21_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B35_PlayerDetection_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1553974826", "1553974826", "MIS_320_B35", "box_OutputOrder_v2_21.Out", "box_MIS_320_B35_PlayerDetection_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_21_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_20();
    l0 = self.box_Music_Quest_v2_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2068202422", "2068202422", "MIS_320_B35", "box_OutputOrder_v2_21.Out", "box_Music_Quest_v2_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_22();
    l0 = self.box_Music_Quest_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|974606163", "974606163", "MIS_320_B35", "box_OutputOrder_v2_23.Out", "box_Music_Quest_v2_22.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_27();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1191249451", "1191249451", "MIS_320_B35", "box_OutputOrder_v2_23.Out", "box_ActivityRetry_v2_27.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_119();
    l0 = self.box_Reach_GoTo_v3_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|825533684", "825533684", "MIS_320_B35", "box_OutputOrder_v2_10.Out", "box_Reach_GoTo_v3_119.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B35_ReturnToFactory_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|464088513", "464088513", "MIS_320_B35", "box_OutputOrder_v2_10.Out", "box_MIS_320_B35_ReturnToFactory_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_85_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_51();
    l0 = self.box_SoundModifier_v2_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2025452697", "2025452697", "MIS_320_B35", "box_OutputOrder_v2_85.Out", "box_SoundModifier_v2_51.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_85_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_60();
    l0 = self.box_SoundModifier_v2_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1914602050", "1914602050", "MIS_320_B35", "box_OutputOrder_v2_85.Out", "box_SoundModifier_v2_60.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_85_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_79();
    l0 = self.box_SoundModifier_v2_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|936024329", "936024329", "MIS_320_B35", "box_OutputOrder_v2_85.Out", "box_SoundModifier_v2_79.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_85_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_52();
    l0 = self.box_SoundModifier_v2_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|322539148", "322539148", "MIS_320_B35", "box_OutputOrder_v2_85.Out", "box_SoundModifier_v2_52.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_85_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_131();
    l0 = self.box_SoundModifier_v2_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|255376177", "255376177", "MIS_320_B35", "box_OutputOrder_v2_85.Out", "box_SoundModifier_v2_131.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_85_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_130();
    l0 = self.box_SoundModifier_v2_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1154717690", "1154717690", "MIS_320_B35", "box_OutputOrder_v2_85.Out", "box_SoundModifier_v2_130.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_NavLinkModifier_67_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_81();
    l0 = self.box_NavLinkModifier_67;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1144364486", "1144364486", "MIS_320_B35", "box_NavLinkModifier_67.Activated", "box_SetContextualStrategy_81.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_SpawnAI_56;
    l1 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|668569942", "668569942", "MIS_320_B35", "box_SpawnAI_56.Out", "box_Delay_v5_17.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IntegerArithmetics_v2_98_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_98_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_94();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|550549336", "550549336", "MIS_320_B35", "box_IntegerArithmetics_v2_98.Out", "box_Compare_Integers_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_107_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|415226011", "415226011", "MIS_320_B35", "box_Compare_Integers_107.A_le_B", "box_OutputOrder_v2_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_97_PlayerAdded()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_97_PlayerAdded();
    l0 = self.box_CoopActivePlayers_97;
    l1 = self.box_MIS_320_DoorManager_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1973080363", "1973080363", "MIS_320_B35", "box_CoopActivePlayers_97.PlayerAdded", "box_MIS_320_DoorManager_125.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, {
    });
end;

function export:f_box_CoopActivePlayers_97_PlayerRemoved()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_97_PlayerRemoved();
    params = self:OnEnter_box_Simple_Node_31();
    l0 = self.box_CoopActivePlayers_97;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|500041928", "500041928", "MIS_320_B35", "box_CoopActivePlayers_97.PlayerRemoved", "box_Simple_Node_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_132_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|383825092", "383825092", "MIS_320_B35", "box_OutputOrder_v2_132.Out", "box_MultipleOR_141.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_132_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGender_146();
    l0 = self.box_GetPlayerGender_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1572385404", "1572385404", "MIS_320_B35", "box_OutputOrder_v2_132.Out", "box_GetPlayerGender_146.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_30_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = self.box_OnceOnly_v3_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|487165187", "487165187", "MIS_320_B35", "box_OnceOnly_v3_30.Out", "box_OutputOrder_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_69_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_75();
    l0 = self.box_SpawnAI_69;
    l1 = self.box_SpawnAI_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|186436073", "186436073", "MIS_320_B35", "box_SpawnAI_69.Out", "box_SpawnAI_75.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_99_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAIRequestGroup_v2_106();
    l0 = self.box_SpawnAIRequestGroup_v2_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|596400894", "596400894", "MIS_320_B35", "box_Compare_Integers_99.A_le_B", "box_SpawnAIRequestGroup_v2_106.SpawnByCount", clone:GetLuaBox(), l0:GetLuaBox());
    -- SpawnByCount
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_68_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_69();
    l0 = self.box_SpawnAI_68;
    l1 = self.box_SpawnAI_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2041174111", "2041174111", "MIS_320_B35", "box_SpawnAI_68.Out", "box_SpawnAI_69.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_136();
    l0 = self.box_Delay_v5_136;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|37994475", "37994475", "MIS_320_B35", "box_OutputOrder_v2_87.Out", "box_Delay_v5_136.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_87_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Kill_Target_CORE_v2_47();
    l0 = self.box_Brick_Kill_Target_CORE_v2_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1625729791", "1625729791", "MIS_320_B35", "box_OutputOrder_v2_87.Out", "box_Brick_Kill_Target_CORE_v2_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_87_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_66();
    l0 = self.box_HealthListener_v6_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|896904686", "896904686", "MIS_320_B35", "box_OutputOrder_v2_87.Out", "box_HealthListener_v6_66.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_139_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_138();
    l0 = self.box_MultipleAND_v2_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|258681620", "258681620", "MIS_320_B35", "box_EndActivityObjective_v2_139.Out", "box_MultipleAND_v2_138.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ManagePlayerInventory_86();
    l0 = self.box_ManagePlayerInventory_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1055836807", "1055836807", "MIS_320_B35", "box_OutputOrder_v2_33.Out", "box_ManagePlayerInventory_86.RestrictItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- RestrictItems
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_41();
    l0 = self.box_CharacterLoadedIdListener_v2_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1553251290", "1553251290", "MIS_320_B35", "box_OutputOrder_v2_33.Out", "box_CharacterLoadedIdListener_v2_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v3_90_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|694418351", "694418351", "MIS_320_B35", "box_IsPawnAlive_v3_90.DeadOrDown", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IsPawnAlive_v3_90_NotLoaded()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1985056508", "1985056508", "MIS_320_B35", "box_IsPawnAlive_v3_90.NotLoaded", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GroupSizeListener_v6_9_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_9;
    l1 = self.box_MultipleOR_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1012867202", "1012867202", "MIS_320_B35", "box_GroupSizeListener_v6_9.Enabled", "box_MultipleOR_105.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_9_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_9;
    l1 = self.box_MultipleOR_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2076140739", "2076140739", "MIS_320_B35", "box_GroupSizeListener_v6_9.MemberRemoved", "box_MultipleOR_105.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_113_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_114();
    l0 = self.box_SpawnAI_113;
    l1 = self.box_SpawnAI_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1167929322", "1167929322", "MIS_320_B35", "box_SpawnAI_113.Out", "box_SpawnAI_114.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ActivityForceAndLockTracking_36_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|493622862", "493622862", "MIS_320_B35", "box_ActivityForceAndLockTracking_36.Enabled", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_320_B35_PlayerDetection_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_26();
    l0 = self.box_MIS_320_B35_PlayerDetection_15;
    l1 = self.box_ExitZoneWarningListener_v3_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1821718963", "1821718963", "MIS_320_B35", "box_MIS_320_B35_PlayerDetection_15.Out", "box_ExitZoneWarningListener_v3_26.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MIS_320_B35_PlayerDetection_15_Player_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_88();
    l0 = self.box_MIS_320_B35_PlayerDetection_15;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2051031976", "2051031976", "MIS_320_B35", "box_MIS_320_B35_PlayerDetection_15.Player Detected", "box_Simple_Node_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_320_DoorManager_125_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGender_121();
    l0 = self.box_MIS_320_DoorManager_125;
    l1 = self.box_GetPlayerGender_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2033941689", "2033941689", "MIS_320_B35", "box_MIS_320_DoorManager_125.Out", "box_GetPlayerGender_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|469189983", "469189983", "MIS_320_B35", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1388045778", "1388045778", "MIS_320_B35", "box_OutputOrder_v2_3.Out", "box_Print_v2_7.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_41_LoadedIdReceived()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_43();
    l0 = self.box_CharacterLoadedIdListener_v2_41;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2132061840", "2132061840", "MIS_320_B35", "box_CharacterLoadedIdListener_v2_41.LoadedIdReceived", "box_SetContextualStrategy_43.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_89();
    l0 = self.box_SpawnAI_46;
    l1 = self.box_TeleportPawns_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1536732127", "1536732127", "MIS_320_B35", "box_SpawnAI_46.Out", "box_TeleportPawns_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAIRequestGroup_v2_106_AtLeastOneRequestSucceeded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_95();
    l0 = self.box_SpawnAIRequestGroup_v2_106;
    l1 = self.box_Delay_v5_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1530554509", "1530554509", "MIS_320_B35", "box_SpawnAIRequestGroup_v2_106.AtLeastOneRequestSucceeded", "box_Delay_v5_95.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAIRequestGroup_v2_106_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_101();
    l0 = self.box_SpawnAIRequestGroup_v2_106;
    l1 = self.box_Gate_v3_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1255670725", "1255670725", "MIS_320_B35", "box_SpawnAIRequestGroup_v2_106.Out", "box_Gate_v3_101.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_NavLinkModifier_53_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_67();
    l0 = self.box_NavLinkModifier_53;
    l1 = self.box_NavLinkModifier_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|53304933", "53304933", "MIS_320_B35", "box_NavLinkModifier_53.Activated", "box_NavLinkModifier_67.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_ExitZoneWarningListener_v3_26_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_ExitZoneWarningListener_v3_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|97376399", "97376399", "MIS_320_B35", "box_ExitZoneWarningListener_v3_26.FailingZoneEntered", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_101_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_101;
    l1 = self.box_MultipleOR_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|113290714", "113290714", "MIS_320_B35", "box_Gate_v3_101.Opened", "box_MultipleOR_149.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_101_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_101;
    l1 = self.box_MultipleOR_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|261851070", "261851070", "MIS_320_B35", "box_Gate_v3_101.Out", "box_MultipleOR_149.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_29_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_35();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|253371085", "253371085", "MIS_320_B35", "box_ActivityObjectiveMarkerModifier_v3_29.Enabled", "box_ActivityObjectiveMarkerModifier_v3_35.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_94_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|618823155", "618823155", "MIS_320_B35", "box_Compare_Integers_94.A_ge_B", "box_OnceOnly_v3_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_112_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_113();
    l0 = self.box_SpawnAI_112;
    l1 = self.box_SpawnAI_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|416735596", "416735596", "MIS_320_B35", "box_SpawnAI_112.Out", "box_SpawnAI_113.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_34_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_34;
    l1 = self.box_OnceOnly_v3_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|702288670", "702288670", "MIS_320_B35", "box_MultipleOR_34.Out", "box_OnceOnly_v3_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Reach_GoTo_v3_24_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_Reach_GoTo_v3_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|591402647", "591402647", "MIS_320_B35", "box_Reach_GoTo_v3_24.Started", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_24_Success()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_63();
    l0 = self.box_Reach_GoTo_v3_24;
    l1 = self.box_ProximityRadiusListener_v3_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1554137600", "1554137600", "MIS_320_B35", "box_Reach_GoTo_v3_24.Success", "box_ProximityRadiusListener_v3_63.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_6_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_36();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1168002912", "1168002912", "MIS_320_B35", "box_GetPlayerGroup_v2_6.Out", "box_ActivityForceAndLockTracking_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_ActivityInitialized_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1197918274", "1197918274", "MIS_320_B35", "box_MultipleOR_1.Out", "box_ActivityInitialized_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_29();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|720591089", "720591089", "MIS_320_B35", "box_OutputOrder_v2_61.Out", "box_ActivityObjectiveMarkerModifier_v3_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B35_BackAlley_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1615312047", "1615312047", "MIS_320_B35", "box_OutputOrder_v2_61.Out", "box_MIS_320_B35_BackAlley_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_25();
    l0 = self.box_Delay_v5_13;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1659255902", "1659255902", "MIS_320_B35", "box_Delay_v5_13.TimeElapsed", "box_ActivityEnd_25.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_59_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = self.box_OnceOnly_v3_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2034715122", "2034715122", "MIS_320_B35", "box_OnceOnly_v3_59.Out", "box_OutputOrder_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_56();
    l0 = self.box_SpawnAI_55;
    l1 = self.box_SpawnAI_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|544469619", "544469619", "MIS_320_B35", "box_SpawnAI_55.Out", "box_SpawnAI_56.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_80();
    l0 = self.box_SpawnAI_75;
    l1 = self.box_SpawnAI_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1373470861", "1373470861", "MIS_320_B35", "box_SpawnAI_75.Out", "box_SpawnAI_80.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ManagePlayerInventory_86_Restricted()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_46();
    l0 = self.box_ManagePlayerInventory_86;
    l1 = self.box_SpawnAI_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1719075564", "1719075564", "MIS_320_B35", "box_ManagePlayerInventory_86.Restricted", "box_SpawnAI_46.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_9();
    l0 = self.box_GroupSizeListener_v6_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|67132880", "67132880", "MIS_320_B35", "box_OutputOrder_v2_102.Out", "box_GroupSizeListener_v6_9.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_108();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1925181061", "1925181061", "MIS_320_B35", "box_OutputOrder_v2_102.Out", "box_SetInteger_v2_108.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_6();
    l0 = self.box_ActivityInitialized_8;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|518890040", "518890040", "MIS_320_B35", "box_ActivityInitialized_8.Out", "box_GetPlayerGroup_v2_6.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_80_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_28();
    l0 = self.box_SpawnAI_80;
    l1 = self.box_SpawnAI_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|121757368", "121757368", "MIS_320_B35", "box_SpawnAI_80.Out", "box_SpawnAI_28.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_48_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|390783678", "390783678", "MIS_320_B35", "box_EndActivityObjective_v2_48.Out", "box_MultipleOR_71.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_50_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_66();
    l0 = self.box_EntityStatusListener_50;
    l1 = self.box_HealthListener_v6_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1056536446", "1056536446", "MIS_320_B35", "box_EntityStatusListener_50.Loaded", "box_HealthListener_v6_66.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_140_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_138();
    l0 = self.box_MultipleAND_v2_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1535308554", "1535308554", "MIS_320_B35", "box_EndActivityObjective_v2_140.Out", "box_MultipleAND_v2_138.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Brick_Interact_With_Object_V6_12_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_Brick_Interact_With_Object_V6_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|265695627", "265695627", "MIS_320_B35", "box_Brick_Interact_With_Object_V6_12.Success", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_320_B35_StartingSetup_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_115();
    l0 = self.box_MIS_320_B35_StartingSetup_16;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1656496496", "1656496496", "MIS_320_B35", "box_MIS_320_B35_StartingSetup_16.Out", "box_Simple_Node_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_11_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_11;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|721199234", "721199234", "MIS_320_B35", "box_GroupSizeListener_v6_11.Enabled", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_11_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_11;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1086416765", "1086416765", "MIS_320_B35", "box_GroupSizeListener_v6_11.MemberRemoved", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UnlockDoor_74_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_53();
    l0 = self.box_NavLinkModifier_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|217068844", "217068844", "MIS_320_B35", "box_UnlockDoor_74.Unlocked", "box_NavLinkModifier_53.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_66_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v3_90();
    l0 = self.box_HealthListener_v6_66;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1605825224", "1605825224", "MIS_320_B35", "box_HealthListener_v6_66.Enabled", "box_IsPawnAlive_v3_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_66_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_66;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1415247145", "1415247145", "MIS_320_B35", "box_HealthListener_v6_66.Killed", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_71_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_71;
    l1 = self.box_OnceOnly_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1932073165", "1932073165", "MIS_320_B35", "box_MultipleOR_71.Out", "box_OnceOnly_v3_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_108_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_108_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_11();
    l0 = self.box_GroupSizeListener_v6_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1067883349", "1067883349", "MIS_320_B35", "box_SetInteger_v2_108.Out", "box_GroupSizeListener_v6_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_118_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_120();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1443544466", "1443544466", "MIS_320_B35", "box_ActivityObjectiveMarkerModifier_v3_118.Enabled", "box_ActivityObjectiveMarkerModifier_v3_120.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryLoadoutModifier_18();
    l0 = self.box_InventoryLoadoutModifier_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|608900021", "608900021", "MIS_320_B35", "box_SetContextualStrategy_43.Out", "box_InventoryLoadoutModifier_18.Backup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Backup
    l0:Exec(0, params);
end;

function export:f_box_MIS_320_B35_BBQTrap_14_Out()
    local l0, l1;
    l0 = self.box_MIS_320_B35_BBQTrap_14;
    l1 = self.box_MIS_320_B35_StartingSetup_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1476147562", "1476147562", "MIS_320_B35", "box_MIS_320_B35_BBQTrap_14.Out", "box_MIS_320_B35_StartingSetup_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_68();
    l0 = self.box_Delay_v5_17;
    l1 = self.box_SpawnAI_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|348173684", "348173684", "MIS_320_B35", "box_Delay_v5_17.TimeElapsed", "box_SpawnAI_68.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_GunsForHireSystemModifier_116_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = self.box_GunsForHireSystemModifier_116;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1595842730", "1595842730", "MIS_320_B35", "box_GunsForHireSystemModifier_116.Disabled", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_101();
    l0 = self.box_MultipleOR_104;
    l1 = self.box_Gate_v3_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1627404221", "1627404221", "MIS_320_B35", "box_MultipleOR_104.Out", "box_Gate_v3_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_InventoryLoadoutModifier_18_BackedUp()
    local l0, l1;
    l0 = self.box_InventoryLoadoutModifier_18;
    l1 = self.box_CoopActivePlayers_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1777479300", "1777479300", "MIS_320_B35", "box_InventoryLoadoutModifier_18.BackedUp", "box_CoopActivePlayers_145.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Delay_v5_95_Started()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_98();
    l0 = self.box_Delay_v5_95;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|417060032", "417060032", "MIS_320_B35", "box_Delay_v5_95.Started", "box_IntegerArithmetics_v2_98.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_95_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_101();
    l0 = self.box_Delay_v5_95;
    l1 = self.box_Gate_v3_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|39055321", "39055321", "MIS_320_B35", "box_Delay_v5_95.TimeElapsed", "box_Gate_v3_101.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_MIS_320_GivePrisonerOutfit_122_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_38();
    l0 = self.box_MIS_320_GivePrisonerOutfit_122;
    l1 = self.box_InventoryItemModifier_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2024421223", "2024421223", "MIS_320_B35", "box_MIS_320_GivePrisonerOutfit_122.Out", "box_InventoryItemModifier_38.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_72();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1434525634", "1434525634", "MIS_320_B35", "box_OutputOrder_v2_73.Out", "box_UnlockDoor_72.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ManagePlayerInventory_2();
    l0 = self.box_ManagePlayerInventory_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1451827858", "1451827858", "MIS_320_B35", "box_OutputOrder_v2_73.Out", "box_ManagePlayerInventory_2.ClearRestriction", clone:GetLuaBox(), l0:GetLuaBox());
    -- ClearRestriction
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_96_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_103();
    l0 = self.box_OnceOnly_v3_96;
    l1 = self.box_SpawnAI_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|694455488", "694455488", "MIS_320_B35", "box_OnceOnly_v3_96.Out", "box_SpawnAI_103.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MIS_320_B35_ReturnToFactory_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_151();
    l0 = self.box_MIS_320_B35_ReturnToFactory_49;
    l1 = self.box_SoundModifier_v2_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|398202322", "398202322", "MIS_320_B35", "box_MIS_320_B35_ReturnToFactory_49.Out", "box_SoundModifier_v2_151.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MIS_320_B35_ReturnToFactory_49_Players_Entered()
    local l0, l1;
    l0 = self.box_MIS_320_B35_ReturnToFactory_49;
    l1 = self.box_MIS_320_B20_WallGuards_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1772737778", "1772737778", "MIS_320_B35", "box_MIS_320_B35_ReturnToFactory_49.Players Entered", "box_MIS_320_B20_WallGuards_91.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_141_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGender_143();
    l0 = self.box_MultipleOR_141;
    l1 = self.box_GetPlayerGender_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|757744719", "757744719", "MIS_320_B35", "box_MultipleOR_141.Out", "box_GetPlayerGender_143.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Interact_With_Object_V6_137_Success()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_139();
    l0 = self.box_Brick_Interact_With_Object_V6_137;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2125487548", "2125487548", "MIS_320_B35", "box_Brick_Interact_With_Object_V6_137.Success", "box_EndActivityObjective_v2_139.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_81_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_82();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|225241342", "225241342", "MIS_320_B35", "box_SetContextualStrategy_81.Out", "box_SetContextualStrategy_82.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_121_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_122();
    l0 = self.box_GetPlayerGender_121;
    l1 = self.box_MIS_320_GivePrisonerOutfit_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1626754076", "1626754076", "MIS_320_B35", "box_GetPlayerGender_121.Female", "box_MIS_320_GivePrisonerOutfit_122.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_121_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_122();
    l0 = self.box_GetPlayerGender_121;
    l1 = self.box_MIS_320_GivePrisonerOutfit_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1111617627", "1111617627", "MIS_320_B35", "box_GetPlayerGender_121.Male", "box_MIS_320_GivePrisonerOutfit_122.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_138_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_138;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|439227146", "439227146", "MIS_320_B35", "box_MultipleAND_v2_138.Out", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ManagePlayerInventory_2_Cleared()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_ManagePlayerInventory_2;
    l1 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1912076758", "1912076758", "MIS_320_B35", "box_ManagePlayerInventory_2.Cleared", "box_Delay_v5_13.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CoopActivePlayers_145_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_145_OnePlayer();
    l0 = self.box_CoopActivePlayers_145;
    l1 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2020095458", "2020095458", "MIS_320_B35", "box_CoopActivePlayers_145.OnePlayer", "box_MultipleOR_141.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_145_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_148();
    l0 = self.box_CoopActivePlayers_145;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|103494786", "103494786", "MIS_320_B35", "box_CoopActivePlayers_145.PlayerAdded", "box_Simple_Node_148.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_145_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_145_TwoPlayers();
    params = self:OnEnter_box_OutputOrder_v2_132();
    l0 = self.box_CoopActivePlayers_145;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|580727297", "580727297", "MIS_320_B35", "box_CoopActivePlayers_145.TwoPlayers", "box_OutputOrder_v2_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_149_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_99();
    l0 = self.box_MultipleOR_149;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1585281414", "1585281414", "MIS_320_B35", "box_MultipleOR_149.Out", "box_Compare_Integers_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Kill_Target_CORE_v2_47_extraMarker()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Kill_Target_ExtraMaker_v2_37();
    l0 = self.box_Brick_Kill_Target_CORE_v2_47;
    l1 = self.box_Brick_Kill_Target_ExtraMaker_v2_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1070360368", "1070360368", "MIS_320_B35", "box_Brick_Kill_Target_CORE_v2_47.extraMarker", "box_Brick_Kill_Target_ExtraMaker_v2_37.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Brick_Kill_Target_CORE_v2_47_Success()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_140();
    l0 = self.box_Brick_Kill_Target_CORE_v2_47;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|111334619", "111334619", "MIS_320_B35", "box_Brick_Kill_Target_CORE_v2_47.Success", "box_EndActivityObjective_v2_140.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_v2_123();
    l0 = self.box_InventoryItemModifier_38;
    l1 = self.box_RestrictedItemModifier_v2_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|942668603", "942668603", "MIS_320_B35", "box_InventoryItemModifier_38.Out", "box_RestrictedItemModifier_v2_123.AddItemRestriction", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItemRestriction
    l1:Exec(0, params);
end;

function export:f_box_Reach_GoTo_v3_119_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_118();
    l0 = self.box_Reach_GoTo_v3_119;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|289795710", "289795710", "MIS_320_B35", "box_Reach_GoTo_v3_119.Started", "box_ActivityObjectiveMarkerModifier_v3_118.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_119_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v3_24();
    l0 = self.box_Reach_GoTo_v3_119;
    l1 = self.box_Reach_GoTo_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1107330350", "1107330350", "MIS_320_B35", "box_Reach_GoTo_v3_119.Success", "box_Reach_GoTo_v3_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_RestrictedItemModifier_v2_123_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryLoadoutModifier_19();
    l0 = self.box_RestrictedItemModifier_v2_123;
    l1 = self.box_InventoryLoadoutModifier_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1692071266", "1692071266", "MIS_320_B35", "box_RestrictedItemModifier_v2_123.Out", "box_InventoryLoadoutModifier_19.Backup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Backup
    l1:Exec(0, params);
end;

function export:f_box_SetTimeOfDay_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1854025487", "1854025487", "MIS_320_B35", "box_SetTimeOfDay_5.Out", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|@n_PlayerDetected");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_88_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|@n_startingSetup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_115_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|34459652");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_93()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_146()
    local params, l0;
    l0 = self.box_CoopActivePlayers_145;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_89()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2108295657186930180",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_v2_100()
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

function export:OnEnter_box_MIS_320_GivePrisonerOutfit_142()
    local params, l0;
    l0 = self.box_CoopActivePlayers_145;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|97727412");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_136()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_143()
    local params, l0;
    l0 = self.box_CoopActivePlayers_145;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_63()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.g_FrienglyPlayers,
        -- id2,
        [3] = "2107370066476544113",
        -- nearZone,
        [4] = 16,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|171453141");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_72_Unlocked,
    });
    params = {
        -- door,
        [0] = "2108112902186610976",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|232708611");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|267183643");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108789874782906609",
        -- Group,
        [1] = "#DCFE728C",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_111()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107548889379773888",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|293180184");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
                [2] = self.f_box_OutputOrder_v2_21_Out_2,
                [3] = self.f_box_OutputOrder_v2_21_Out_3,
                [4] = self.f_box_OutputOrder_v2_21_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|307371041");
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

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|406377647");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|421320365");
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
                [0] = self.f_box_OutputOrder_v2_85_Out_0,
                [1] = self.f_box_OutputOrder_v2_85_Out_1,
                [2] = self.f_box_OutputOrder_v2_85_Out_2,
                [3] = self.f_box_OutputOrder_v2_85_Out_3,
                [4] = self.f_box_OutputOrder_v2_85_Out_4,
                [5] = self.f_box_OutputOrder_v2_85_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_67()
    local params;
    params = {
        -- Entity,
        [0] = "2108251072496676429",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_56()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107549799086573159",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|462486500");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_98_Out,
    });
    params = {
        -- A,
        [0] = self.i_eliteCountdown,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_114()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107730364553248348",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|505206642");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_107_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v6_9;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|518937198");
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
                [0] = self.f_box_OutputOrder_v2_132_Out_0,
                [1] = self.f_box_OutputOrder_v2_132_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|560834799");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2107951285083842076",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_320_B30_b_OBJ_Reach",
            id = "960708",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_69()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108780171017375991",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|590699848");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_99_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v6_11;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_68()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108779831654130914",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|626808678");
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
                [0] = self.f_box_OutputOrder_v2_87_Out_0,
                [1] = self.f_box_OutputOrder_v2_87_Out_1,
                [2] = self.f_box_OutputOrder_v2_87_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|634886870");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_139_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_320_B35_OBJ_Take",
            id = "1033125",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|636680770");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|663532924");
    l0:SetConnections({
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_90_DeadOrDown,
        -- NotLoaded,
        [2] = self.f_box_IsPawnAlive_v3_90_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = "2107370066476544113",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_9()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#4652D5FC",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_113()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107730357049638422",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|697479639");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_36_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_79()
    local params;
    params = {
        -- Pawns,
        [0] = "2109177327838576508",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MIS_320_GivePrisonerOutfit_147()
    local params, l0;
    l0 = self.box_CoopActivePlayers_145;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|803192925");
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

function export:OnEnter_box_CharacterLoadedIdListener_v2_41()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870438634",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_46()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107370066470252649",
    };
    return params;
end;

function export:OnEnter_box_SpawnAIRequestGroup_v2_106()
    local params;
    params = {
        -- RequestGroupName,
        [0] = "gp_b40_renf",
        -- SpawnerCount,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_52()
    local params;
    params = {
        -- Pawns,
        [0] = "2109177314928508794",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_53()
    local params;
    params = {
        -- Entity,
        [0] = "2108251069258673737",
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_26()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2108791157789087289",
        -- WarningZoneTrigger,
        [3] = "2108791124813469240",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_101()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|901588830");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_29_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2107951287764002336",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_320_B30_b_OBJ_Reach",
            id = "960708",
        },
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|954216837");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_94_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.i_eliteCountdown,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_112()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107549993830189742",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_24()
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
        [8] = "2109649090219373646",
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

function export:OnEnter_box_SoundModifier_v2_131()
    local params;
    params = {
        -- Pawns,
        [0] = "2109304797424258610",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1045933220");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1050273541");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1071962980");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_151()
    local params;
    params = {
        -- Pawns,
        [0] = "2109800468635988698",
        -- SoundId,
        [1] = "107884832",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_103()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108833796299184648",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1155551315");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_55()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107549581762905647",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_75()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108780349310947762",
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_86()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015353564726229",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1216676068");
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
                [0] = self.f_box_OutputOrder_v2_102_Out_0,
                [1] = self.f_box_OutputOrder_v2_102_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_80()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107549576239007230",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1245226011");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_48_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_320_B30_b_OBJ_Reach",
            id = "960708",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_50()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107370066476544113",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1332793908");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_140_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_320_B30_a_OBJ_Kill",
            id = "960706",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_60()
    local params;
    params = {
        -- Pawns,
        [0] = "2109177329117839230",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_12()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = true,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2108794099371910311",
        -- e_ObjectiveMarker,
        [4] = "2108817684574513616",
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "MIS_320_B30_b_OBJ_Reach",
            id = "960708",
        },
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_11()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#C746222C",
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1387957905");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_74_Unlocked,
    });
    params = {
        -- door,
        [0] = "2107729655978009150",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_66()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "2107370066476544113",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_22()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 1,
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
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_57()
    local params;
    params = {
        -- Group,
        [0] = "2107370066476544113",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "711040186",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1514744938");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_108_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1560820225");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_118_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2107951285083842076",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_320_B30_b_OBJ_Reach",
            id = "960708",
        },
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1563426912");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_43_Out,
    });
    l0 = self.box_CharacterLoadedIdListener_v2_41;
    params = {
        -- ContextualStrategy,
        [0] = "2109210351011650997",
        -- Group,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_20()
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

function export:OnEnter_box_SoundModifier_v2_51()
    local params;
    params = {
        -- Pawns,
        [0] = "2109177331217088384",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_116()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_InventoryLoadoutModifier_19()
    local params, l0;
    l0 = self.box_CoopActivePlayers_97;
    params = {
        -- discardPreviousBackup,
        [0] = false,
        -- players,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_InventoryLoadoutModifier_18()
    local params;
    params = {
        -- discardPreviousBackup,
        [0] = false,
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_95()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_MIS_320_GivePrisonerOutfit_122()
    local params, l0;
    l0 = self.box_CoopActivePlayers_97;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1785897525");
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
                [0] = self.f_box_OutputOrder_v2_73_Out_0,
                [1] = self.f_box_OutputOrder_v2_73_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Kill_Target_ExtraMaker_v2_37()
    local params;
    params = {
        -- Entity,
        [0] = "2107370066476544113",
        -- MobileObjectiveMarker,
        [1] = "2107370120692117649",
        -- Objective,
        [2] = {
            section = "Objectives",
            item = "MIS_320_B30_a_OBJ_Kill",
            id = "960706",
        },
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_137()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2109387071777956447",
        -- e_ObjectiveMarker,
        [4] = "2109387082446168696",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_TAKE_AMMO",
            id = "533247",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "MIS_320_B35_OBJ_Take",
            id = "1033125",
        },
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1899783175");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_81_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108832040645306981",
        -- Group,
        [1] = "#049D8810",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_121()
    local params, l0;
    l0 = self.box_CoopActivePlayers_97;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_138()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_2()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015342283729325",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1993870989");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2108817684574513616",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_320_B30_b_OBJ_Reach",
            id = "960708",
        },
    };
    return params;
end;

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|1993937594");
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
        [8] = "MIS_320_B35 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_28()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107549802515416726",
    };
    return params;
end;

function export:OnEnter_box_Brick_Kill_Target_CORE_v2_47()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bPlayerDetection,
        [1] = false,
        -- Objective,
        [4] = {
            section = "Objectives",
            item = "MIS_320_B30_a_OBJ_Kill",
            id = "960706",
        },
        -- TargetGroup,
        [6] = "2107370066476544113",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_38()
    local params, l0;
    DrawTextToScreen("Comment: Remove Items on JIP", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'InventoryItemModifier')-- Comment: Remove Items on JIP");
    l0 = self.box_CoopActivePlayers_97;
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

function export:OnEnter_box_SoundModifier_v2_130()
    local params;
    params = {
        -- Pawns,
        [0] = "2109304803036237364",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2059832351");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2108970465019058097",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_119()
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
        [8] = "2109067208947686139",
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

function export:OnEnter_box_RestrictedItemModifier_v2_123()
    local params, l0;
    l0 = self.box_CoopActivePlayers_97;
    params = {
        -- allowedItemFilterID,
        [1] = "9015342283729325",
        -- players,
        [2] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\MIS_320_B35.domino|@MIS_320_B35|2124926541");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_5_Out,
    });
    params = {
        -- Hour,
        [0] = 3,
        -- Minute,
        [1] = 30,
    };
    return params;
end;

function export:OnExit_box_IntegerArithmetics_v2_98_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.i_eliteCountdown = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_97_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_97;
    l1 = self.box_InventoryItemModifier_38;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_RestrictedItemModifier_v2_123;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_MIS_320_GivePrisonerOutfit_122;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_GetPlayerGender_121;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_InventoryLoadoutModifier_19;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_97_PlayerRemoved()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_97;
    l1 = self.box_InventoryItemModifier_38;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_RestrictedItemModifier_v2_123;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_MIS_320_GivePrisonerOutfit_122;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_GetPlayerGender_121;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_InventoryLoadoutModifier_19;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPlayerGroup_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.g_FrienglyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_108_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.i_eliteCountdown = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_145_OnePlayer()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_145;
    l1 = self.box_MIS_320_GivePrisonerOutfit_147;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_GetPlayerGender_143;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_145_TwoPlayers()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_145;
    l1 = self.box_MIS_320_GivePrisonerOutfit_147;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_GetPlayerGender_143;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_GetPlayerGender_146;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(1);
    l1 = self.box_MIS_320_GivePrisonerOutfit_142;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(1);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="ItemFilterDBID" AnchorDynType="0" DataTypeID="genericdb" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
