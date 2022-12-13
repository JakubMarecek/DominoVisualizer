LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_220/mis_220_master.domino
-- User graph: MIS_220_MASTER
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="e_Bonfire" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GetPlayersID.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GetPlayersVehicleID.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/ColorRemapTextureModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/SetVehicleAsLeashAnchor.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MoonModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PawnIsInWater.lua");
        cboxRes:RegisterBox("Domino/System/PawnWaterListener.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/SendGSFGenericEvent.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisionModeModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.FogMoving_Function.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1306830282.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2286701320.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3506395759.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1605456259.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1146445970.bnk]], "CSoundResource");
        cboxRes:LoadResource([[277917814.bnk]], "CSoundResource");
        cboxRes:LoadResource([[668142038.bnk]], "CSoundResource");
        cboxRes:LoadResource([[275419404.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3935677728.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3408140816.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3501749690.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3290137351.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_220_MASTER = nil;
    Globals.MIS_220_MASTER = {
        e_SmokeOnWater = nil,
        e_globalVehicleID = nil,
        e_globalMarkerID = nil,
        g_currentTorchGroup = nil,
        e_global_StratPoint_2 = nil,
        e_global_StratPointStart = nil,
        e_global_StratPoint_1 = nil,
        e_global_StratPoint_3 = nil,
        f_BlendTime = 20,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.MIS_220_MASTER.debug.lua")] = {
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
                name = "e_Bonfire",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.GetPlayersID.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
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
                name = "ClientID",
                type = "entity",
            },
            [1] = {
                name = "HostID",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Active",
                delayed = false,
            },
            [1] = {
                name = "Canceled",
                delayed = false,
            },
            [2] = {
                name = "Completed",
                delayed = false,
            },
            [3] = {
                name = "Failed",
                delayed = false,
            },
            [4] = {
                name = "Inactive",
                delayed = false,
            },
            [5] = {
                name = "Out",
                delayed = false,
            },
            [6] = {
                name = "Unavailable",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "activityDescriptorID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/MoonModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ResetMoonDirection",
            },
            [1] = {
                name = "ResetMoonHDRMultiplier",
            },
            [2] = {
                name = "ResetMoonPhase",
            },
            [3] = {
                name = "ResetMoonSize",
            },
            [4] = {
                name = "SetMoonDirection",
            },
            [5] = {
                name = "SetMoonHDRMultiplier",
            },
            [6] = {
                name = "SetMoonPhase",
            },
            [7] = {
                name = "SetMoonSize",
            },
        },
        controlInCount = 8,
        controlOut = {
            [0] = {
                name = "OnResetMoonDirection",
                delayed = false,
            },
            [1] = {
                name = "OnResetMoonHDRMultiplier",
                delayed = false,
            },
            [2] = {
                name = "OnResetMoonPhase",
                delayed = false,
            },
            [3] = {
                name = "OnResetMoonSize",
                delayed = false,
            },
            [4] = {
                name = "OnSetMoonDirection",
                delayed = false,
            },
            [5] = {
                name = "OnSetMoonHDRMultiplier",
                delayed = false,
            },
            [6] = {
                name = "OnSetMoonPhase",
                delayed = false,
            },
            [7] = {
                name = "OnSetMoonSize",
                delayed = false,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "Azimuth",
                type = "float",
            },
            [1] = {
                name = "Elevation",
                type = "float",
            },
            [2] = {
                name = "HDRMultiplier",
                type = "float",
            },
            [3] = {
                name = "Phase",
                type = "float",
            },
            [4] = {
                name = "ResetAfterBeat",
                type = "bool",
            },
            [5] = {
                name = "Size",
                type = "float",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/Narrative/StopMetaSequence_v5.lua")] = {
        stateless = false,
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
                delayed = true,
            },
            [1] = {
                name = "Stopped",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ID",
                type = "int",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/OverrideEnvironment_v3.lua")] = {
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
                name = "adaptiveBloom",
                type = "string",
            },
            [1] = {
                name = "atmosphericScattering",
                type = "string",
            },
            [2] = {
                name = "characterVisibility",
                type = "string",
            },
            [3] = {
                name = "cloud",
                type = "string",
            },
            [4] = {
                name = "depthOfField",
                type = "string",
            },
            [5] = {
                name = "exposure",
                type = "string",
            },
            [6] = {
                name = "fog",
                type = "string",
            },
            [7] = {
                name = "lighting",
                type = "string",
            },
            [8] = {
                name = "motionBlur",
                type = "string",
            },
            [9] = {
                name = "ratio",
                type = "float",
            },
            [10] = {
                name = "shadow",
                type = "string",
            },
            [11] = {
                name = "sky",
                type = "string",
            },
            [12] = {
                name = "stormFactor",
                type = "float",
            },
            [13] = {
                name = "transitionTime",
                type = "float",
            },
            [14] = {
                name = "wind",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/PawnIsInWater.lua")] = {
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
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PawnWaterListener.lua")] = {
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
                name = "EnteredWater",
                delayed = true,
            },
            [3] = {
                name = "ExitedWater",
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
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/SendGSFGenericEvent.lua")] = {
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
                name = "entity",
                type = "entity",
            },
            [1] = {
                name = "eventName",
                type = "string",
            },
            [2] = {
                name = "param1",
                type = "string",
            },
            [3] = {
                name = "param2",
                type = "string",
            },
            [4] = {
                name = "param3",
                type = "string",
            },
            [5] = {
                name = "param4",
                type = "string",
            },
            [6] = {
                name = "param5",
                type = "string",
            },
        },
        dataInCount = 7,
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
                name = "StartSuppression",
            },
            [8] = {
                name = "Stop",
            },
        },
        controlInCount = 9,
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
                name = "StartedSuppression",
                delayed = false,
            },
            [8] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 9,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.FogMoving_Function.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
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
                name = "e_stratPoint_1",
                type = "entity",
            },
            [1] = {
                name = "e_stratPoint_2",
                type = "entity",
            },
            [2] = {
                name = "e_stratPoint_3",
                type = "entity",
            },
            [3] = {
                name = "e_StratPointStart",
                type = "entity",
            },
            [4] = {
                name = "f_BlendTime",
                type = "float",
            },
            [5] = {
                name = "g_torchGroup",
                type = "group",
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
    self._name = "MIS_220_MASTER";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER";
    self.Hour = 0;
    self.currentHour = 0;
    self.currentMinute = 0;
    self.iObjectiveProgress = 0;
    self.iProgressID = 0;
    self.o_OasisObject = {
        section = "",
        item = "",
        id = "",
    };
    self.totalProgress = 3;
    self.gPlayer = nil;
    self.eVehicleID = nil;
    self.eVehicleMarkerID = nil;
    self.b_InVehicle = false;
    self.f_warningdistance = 105;
    self.MetaSequenceID_Wheel = 0;
    self.MetaSequenceID_Wheel_1 = 0;
    self.MetaSequenceID_FireRotation = 0;
    self.eFog = nil;
    self.b_ArrowRefill_onCD = false;
    self.e_currentTorch = nil;
    self.e_currentGroupTorch = nil;
    self.i_numberOfFire = 0;
    self.b_isDelayDone = false;
    self.eHostPlayer = nil;
    self.eClientPlayer = nil;
    self.b_BlissWallActive = false;
    self.b_isCoop = false;
    self.b_isDelayDone_Client = false;
    self.b_isNearFire_Client = false;
    self.b_isNearSmallFire_Client = false;
    self.b_IsNearSmallFire_2 = false;
    self.b_IsNearSmallFire = false;
    self.b_IsNearFire = false;
    self.b_IsInFog = false;
    self.b_isInFog_Client = false;
    self.LocalPlayer = nil;
    self.PlayerVehicle = nil;
    self.goodTime = false;
    self.b_isHostMale = false;
    self.b_isClientMale = false;
    self.box_OnceOnly_v3_118 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|12995830");
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
                [0] = self.f_box_OnceOnly_v3_118_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_168 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|27211315");
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
        [0] = self.f_box_MultipleOR_168_Out,
    });
    self.box_ProximityTrigger_v3_30 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|27453340");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_30_Enter,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_30_OnOccupied,
    });
    self.box_MultipleOR_237 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|28432088");
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
        [0] = self.f_box_MultipleOR_237_Out,
    });
    self.box_MultipleAND_v2_91 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|39595350");
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
    self.box_SoundModifier_v2_76 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|43466228");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_96 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|65866287");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_244 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_244");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|92413902");
    l0:SetConnections({
    });
    self.box_ExitZoneWarningListener_v3_114 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|122998539");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_114_FailingZoneEntered,
    });
    self.box_ProximityRadiusListener_v3_161 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|143295989");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_161_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_161_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_161_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_161_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_161_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_161_SomeoneNear,
    });
    self.box_Delay_v5_122 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|143925921");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_122_TimeElapsed,
    });
    self.box_Bind_v4_135 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|200441249");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_203 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|208895061");
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
                [0] = self.f_box_OnceOnly_v3_203_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v3_36 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|233423720");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_36_Enter,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_36_OnOccupied,
    });
    self.box_StopMetaSequence_v5_3 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|234870099");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_3_Stopped,
    });
    self.box_Delay_v5_181 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|270087506");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_181_TimeElapsed,
    });
    self.box_Delay_v5_172 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|270863252");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_172_TimeElapsed,
    });
    self.box_PlaySequence_v8_187 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|278750547");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 0,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_187_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_187_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_187_Started,
    });
    self.box_MessageListener_v3_10 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|278826381");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_10_Received,
    });
    self.box_OnceOnly_v3_195 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|289090800");
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
                [0] = self.f_box_OnceOnly_v3_195_Out_0,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_74 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|316191728");
    l0:SetConnections({
    });
    self.box_MultipleOR_204 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|326594704");
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
        [0] = self.f_box_MultipleOR_204_Out,
    });
    self.box_PhoneCallExclusivityModifier_207 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|345346775");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhoneCallExclusivityModifier_207_Disabled,
    });
    self.box_MessageListener_v3_127 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|369436771");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_127_Received,
    });
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|381553164");
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
    self.box_MultipleAND_v2_251 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|403395578");
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
        [0] = self.f_box_MultipleAND_v2_251_Out,
    });
    self.box_MultipleOR_186 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|436428883");
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
        [0] = self.f_box_MultipleOR_186_Out,
    });
    self.box_MultipleAND_v2_129 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|452938544");
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
        [0] = self.f_box_MultipleAND_v2_129_Out,
    });
    self.box_VehicleListener_v3_152 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|453785953");
    l0:SetConnections({
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_152_OnAllStanding,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_152_OnSit,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|461656024");
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
    self.box_ProximityRadiusListener_v3_217 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|463621149");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_217_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_217_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_217_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_217_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_217_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_217_SomeoneNear,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|487504207");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_SoundModifier_v2_67 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|487529957");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_179 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|536984137");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_179_Unloaded,
    });
    self.box_Delay_v5_238 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|541322333");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_238_TimeElapsed,
    });
    self.box_MultipleOR_276 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_276;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_276");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|584093594");
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
        [0] = self.f_box_MultipleOR_276_Out,
    });
    self.box_EntityStatusListener_136 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|617615058");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_136_Loaded,
    });
    self.box_SoundModifier_v2_263 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_263;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_263");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|656104057");
    l0:SetConnections({
    });
    self.box_SetVehicleAsLeashAnchor_133 = cbox:CreateBox("Domino/System/Coop/SetVehicleAsLeashAnchor.lua");
    l0 = self.box_SetVehicleAsLeashAnchor_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetVehicleAsLeashAnchor_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|671315932");
    l0:SetConnections({
        -- OnMissionVehicleSet,
        [1] = self.f_box_SetVehicleAsLeashAnchor_133_OnMissionVehicleSet,
    });
    self.box_DisplayCustomUIMsg_v5_182 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|684292112");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_165 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|685563018");
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
        [0] = self.f_box_MultipleAND_v2_165_Out,
    });
    self.box_Delay_v5_93 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|692192563");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_93_TimeElapsed,
    });
    self.box_OnceOnly_v3_261 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_261");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|699685200");
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
                [0] = self.f_box_OnceOnly_v3_261_Out_0,
            },
            count = 2,
        },
    });
    self.box_ActivityAcknowledgeGate_104 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|709152182");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_104_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_104_Reloaded,
    });
    self.box_MultipleOR_277 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_277");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|719998112");
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
        [0] = self.f_box_MultipleOR_277_Out,
    });
    self.box_SoundModifier_v2_90 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|724515248");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_269 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_269;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_269");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|734904617");
    l0:SetConnections({
    });
    self.box_GetPlayersID_59 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayersID.debug.lua");
    l0 = self.box_GetPlayersID_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayersID_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|756331012");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_GetPlayersID_59_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_GetPlayersID_59_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_GetPlayersID_59_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_GetPlayersID_59_TwoPlayers,
    });
    self.box_MultipleOR_128 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|780719531");
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
    self.box_ProximityTrigger_v3_75 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|798183773");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_75_Enter,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_75_OnOccupied,
    });
    self.box_MessageListener_v3_15 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|822283276");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_15_Received,
    });
    self.box_WaterListener_271 = cbox:CreateBox("Domino/System/PawnWaterListener.lua");
    l0 = self.box_WaterListener_271;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WaterListener_271");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|844811592");
    l0:SetConnections({
        -- EnteredWater,
        [2] = self.f_box_WaterListener_271_EnteredWater,
        -- ExitedWater,
        [3] = self.f_box_WaterListener_271_ExitedWater,
    });
    self.box_OnceOnly_v3_268 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_268;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_268");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|848366930");
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
                [0] = self.f_box_OnceOnly_v3_268_Out_0,
            },
            count = 2,
        },
    });
    self.box_FogMoving_Function_27 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/mis_220/MIS_220_MASTER.FogMoving_Function.debug.lua");
    l0 = self.box_FogMoving_Function_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FogMoving_Function_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|849332078");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_169 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|856239281");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_169_Loaded,
    });
    self.box_Delay_v5_248 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_248");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|862184991");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_248_TimeElapsed,
    });
    self.box_SoundModifier_v2_206 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|896620665");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_26 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|906021295");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_71 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|909250590");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_71_Enter,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_71_OnOccupied,
    });
    self.box_MultipleOR_160 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|917835609");
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
        [0] = self.f_box_MultipleOR_160_Out,
    });
    self.box_MoonModifier_134 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|920695510");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_131 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|923706943");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_131_Loaded,
    });
    self.box_EntityStatusListener_9 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|938412487");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_9_Loaded,
    });
    self.box_MessageListener_v3_88 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|938473461");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_88_Received,
    });
    self.box_SoundModifier_v2_249 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|949325448");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_69 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|959083082");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_208 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|977648914");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_208_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_208_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_208_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_208_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_208_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_208_SomeoneNear,
    });
    self.box_MultipleOR_177 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|986879939");
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
        [0] = self.f_box_MultipleOR_177_Out,
    });
    self.box_Bind_v4_215 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|987178854");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_215_Bound,
    });
    self.box_MultipleOR_166 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1006573349");
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
        [0] = self.f_box_MultipleOR_166_Out,
    });
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1007768286");
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
    self.box_MultipleOR_194 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1021903252");
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
        [0] = self.f_box_MultipleOR_194_Out,
    });
    self.box_SoundModifier_v2_260 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_260");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1028710367");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_253 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_253;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_253");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1067543152");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_253_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_253_SomeoneNear,
    });
    self.box_MultipleOR_193 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1080529534");
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
        [0] = self.f_box_MultipleOR_193_Out,
    });
    self.box_MultipleOR_110 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1086300191");
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
    self.box_SoundModifier_v2_256 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_256;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_256");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1103971742");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_250 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1112276097");
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
        [0] = self.f_box_MultipleAND_v2_250_Out,
    });
    self.box_VisionModeModifier_v2_247 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_247");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1123063445");
    l0:SetConnections({
        -- StartedScopolamineMedium,
        [6] = self.f_box_VisionModeModifier_v2_247_StartedScopolamineMedium,
        -- Stopped,
        [8] = self.f_box_VisionModeModifier_v2_247_Stopped,
    });
    self.box_Delay_v5_243 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1149628013");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_243_TimeElapsed,
    });
    self.box_GetPlayersVehicleID_146 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayersVehicleID.debug.lua");
    l0 = self.box_GetPlayersVehicleID_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayersVehicleID_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1185282876");
    l0:SetConnections({
        -- NotInVehicle,
        [0] = self.f_box_GetPlayersVehicleID_146_NotInVehicle,
    });
    self.box_StartMetaSequence_188 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1208682097");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_188_Out,
    });
    self.box_OnceOnly_v3_218 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1247811854");
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
                [0] = self.f_box_OnceOnly_v3_218_Out_0,
            },
            count = 2,
        },
    });
    self.box_GunsForHireSystemModifier_216 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1287380878");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_216_Disabled,
        -- Enabled,
        [1] = self.f_box_GunsForHireSystemModifier_216_Enabled,
    });
    self.box_RequestTutorial_v3_35 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1293806581");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_100 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1309741016");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_100_Out,
    });
    self.box_MultipleOR_212 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1332126169");
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
        [0] = self.f_box_MultipleOR_212_Out,
    });
    self.box_SoundModifier_v2_18 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1357431163");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_18_Started,
    });
    self.box_MultipleOR_119 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1364122519");
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
        [0] = self.f_box_MultipleOR_119_Out,
    });
    self.box_SoundModifier_v2_22 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1404446849");
    l0:SetConnections({
    });
    self.box_MultipleOR_79 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1417838404");
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
        [0] = self.f_box_MultipleOR_79_Out,
    });
    self.box_ProximityRadiusListener_v3_211 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1422733745");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_211_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_211_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_211_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_211_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_211_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_211_SomeoneNear,
    });
    self.box_MultipleOR_92 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1438403275");
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
        [0] = self.f_box_MultipleOR_92_Out,
    });
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1440626259");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_SoundModifier_v2_130 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1459320851");
    l0:SetConnections({
    });
    self.box_CHEAT_SetEnvironmentTimeScale_17 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1460681267");
    l0:SetConnections({
    });
    self.box_MultipleOR_278 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_278;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_278");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1485422276");
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
        [0] = self.f_box_MultipleOR_278_Out,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1485928557");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_MultipleOR_214 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1486274958");
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
        [0] = self.f_box_MultipleOR_214_Out,
    });
    self.box_ProximityRadiusListener_v3_44 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1490051584");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_44_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_44_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_44_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_44_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_44_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_44_SomeoneNear,
    });
    self.box_MultipleOR_85 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1515909232");
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
        [0] = self.f_box_MultipleOR_85_Out,
    });
    self.box_GetPlayerGender_219 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1523022434");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_219_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_219_Male,
    });
    self.box_VehicleDamageListener_v2_72 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1545560531");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_72_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_72_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_72_Disabled,
        -- Enabled,
        [4] = self.f_box_VehicleDamageListener_v2_72_Enabled,
        -- OnFire,
        [8] = self.f_box_VehicleDamageListener_v2_72_OnFire,
    });
    self.box_GetPlayerGender_116 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1550493308");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_116_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_116_Male,
    });
    self.box_MultipleOR_78 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1569392974");
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
        [0] = self.f_box_MultipleOR_78_Out,
    });
    self.box_SoundModifier_v2_68 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1571202389");
    l0:SetConnections({
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1584957699");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_MultipleOR_80 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1609317727");
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
        [0] = self.f_box_MultipleOR_80_Out,
    });
    self.box_MultipleOR_101 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1624897056");
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
        [0] = self.f_box_MultipleOR_101_Out,
    });
    self.box_MultipleOR_89 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1630061411");
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
    self.box_MultipleOR_77 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1634773963");
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
        [0] = self.f_box_MultipleOR_77_Out,
    });
    self.box_MultipleOR_279 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_279;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_279");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1651757457");
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
        [0] = self.f_box_MultipleOR_279_Out,
    });
    self.box_MultipleOR_197 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1681613914");
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
        [0] = self.f_box_MultipleOR_197_Out,
    });
    self.box_MultipleOR_175 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1689176096");
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
        [0] = self.f_box_MultipleOR_175_Out,
    });
    self.box_MultipleOR_51 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1693651848");
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
        [0] = self.f_box_MultipleOR_51_Out,
    });
    self.box_SoundModifier_v2_24 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1748666671");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_24_Started,
    });
    self.box_ColorRemapTextureModifier_v3_86 = cbox:CreateBox("Domino/System/ColorRemapTextureModifier_v3.lua");
    l0 = self.box_ColorRemapTextureModifier_v3_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ColorRemapTextureModifier_v3_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1757403088");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ColorRemapTextureModifier_v3_86_Added,
        -- Removed,
        [1] = self.f_box_ColorRemapTextureModifier_v3_86_Removed,
    });
    self.box_MultipleAND_v2_38 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1772650180");
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
        [0] = self.f_box_MultipleAND_v2_38_Out,
    });
    self.box_DisplayCustomUIMsg_v5_163 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1803692273");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_185 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1813137652");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_185_Received,
    });
    self.box_ProximityTrigger_v3_55 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1813271140");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_55_Enter,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_55_OnOccupied,
    });
    self.box_MessageListener_v3_84 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1829685427");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_84_Received,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1835033865");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_PlaySequence_v8_4 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1840905977");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 0,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_4_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_4_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_4_Started,
    });
    self.box_OnceOnly_v3_120 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1856291720");
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
                [0] = self.f_box_OnceOnly_v3_120_Out_0,
            },
            count = 2,
        },
    });
    self.box_InventoryItemModifier_43 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1859852006");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_43_Out,
    });
    self.box_StopMetaSequence_v5_171 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1863004078");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_171_Stopped,
    });
    self.box_OnceOnly_v3_167 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1880318758");
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
                [0] = self.f_box_OnceOnly_v3_167_Out_0,
            },
            count = 2,
        },
    });
    self.box_MessageListener_v3_230 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1880987000");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_230_Received,
    });
    self.box_DisplayCustomUIMsg_v5_170 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1889663344");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_81 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1918424182");
    l0:SetConnections({
    });
    self.box_StartMetaSequence_5 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1929436093");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_5_Out,
    });
    self.box_SoundModifier_v2_109 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1957803883");
    l0:SetConnections({
    });
    self.box_MultipleOR_83 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1970183708");
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
        [0] = self.f_box_MultipleOR_83_Out,
    });
    self.box_SoundModifier_v2_112 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1978285692");
    l0:SetConnections({
    });
    self.box_VisionModeModifier_v2_37 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2046604201");
    l0:SetConnections({
        -- StartedScopolamineMedium,
        [6] = self.f_box_VisionModeModifier_v2_37_StartedScopolamineMedium,
        -- Stopped,
        [8] = self.f_box_VisionModeModifier_v2_37_Stopped,
    });
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2058617776");
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
    self.box_MultipleOR_225 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2064193699");
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
        [0] = self.f_box_MultipleOR_225_Out,
    });
    self.box_ProximityRadiusListener_v3_220 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2075758366");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_220_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_220_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_220_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_220_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_220_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_220_SomeoneNear,
    });
    self.box_SoundModifier_v2_259 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_259;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_259");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2078214449");
    l0:SetConnections({
    });
    self.box_MultipleOR_190 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2102970352");
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
        [0] = self.f_box_MultipleOR_190_Out,
    });
    self.box_ProximityTrigger_v3_2 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2127869784");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_2_Enter,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_2_OnOccupied,
    });
    self.box_VehicleListener_v3_180 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2137648224");
    l0:SetConnections({
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_180_OnAllStanding,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_180_OnSit,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1923823750", "1923823750", "MIS_220_MASTER", "In", "box_OutputOrder_v2_102.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_39_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_165();
    l0 = self.box_MultipleAND_v2_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1632764311", "1632764311", "MIS_220_MASTER", "box_Simple_Node_39.Out", "box_MultipleAND_v2_165.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
    params = self:OnEnter_box_MultipleAND_v2_38();
    l0 = self.box_MultipleAND_v2_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1423849559", "1423849559", "MIS_220_MASTER", "box_Simple_Node_39.Out", "box_MultipleAND_v2_38.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
    params = self:OnEnter_box_MultipleAND_v2_129();
    l0 = self.box_MultipleAND_v2_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|856132435", "856132435", "MIS_220_MASTER", "box_Simple_Node_39.Out", "box_MultipleAND_v2_129.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
    params = self:OnEnter_box_MultipleAND_v2_250();
    l0 = self.box_MultipleAND_v2_250;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|575313856", "575313856", "MIS_220_MASTER", "box_Simple_Node_39.Out", "box_MultipleAND_v2_250.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
    params = self:OnEnter_box_RequestTutorial_v3_35();
    l0 = self.box_RequestTutorial_v3_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1615987757", "1615987757", "MIS_220_MASTER", "box_Simple_Node_39.Out", "box_RequestTutorial_v3_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    params = self:OnEnter_box_MultipleAND_v2_251();
    l0 = self.box_MultipleAND_v2_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1165037623", "1165037623", "MIS_220_MASTER", "box_Simple_Node_39.Out", "box_MultipleAND_v2_251.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Simple_Node_158_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_174();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|147241829", "147241829", "MIS_220_MASTER", "box_Simple_Node_158.Out", "box_OutputOrder_v2_174.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_95_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|700421105", "700421105", "MIS_220_MASTER", "box_Simple_Node_95.Out", "box_MultipleOR_237.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_OutputOrder_v2_137();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|339408058", "339408058", "MIS_220_MASTER", "box_Simple_Node_95.Out", "box_OutputOrder_v2_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_86();
    l0 = self.box_ColorRemapTextureModifier_v3_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|890710638", "890710638", "MIS_220_MASTER", "box_Simple_Node_95.Out", "box_ColorRemapTextureModifier_v3_86.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_220();
    l0 = self.box_ProximityRadiusListener_v3_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1744374143", "1744374143", "MIS_220_MASTER", "box_Simple_Node_95.Out", "box_ProximityRadiusListener_v3_220.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_IsValueNil_v3_97();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1897595346", "1897595346", "MIS_220_MASTER", "box_Simple_Node_95.Out", "box_IsValueNil_v3_97.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_WaterListener_271();
    l0 = self.box_WaterListener_271;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1218703995", "1218703995", "MIS_220_MASTER", "box_Simple_Node_95.Out", "box_WaterListener_271.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_217();
    l0 = self.box_ProximityRadiusListener_v3_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1419081365", "1419081365", "MIS_220_MASTER", "box_Simple_Node_95.Out", "box_ProximityRadiusListener_v3_217.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_214;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2133857073", "2133857073", "MIS_220_MASTER", "box_Simple_Node_95.Out", "box_MultipleOR_214.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_GunsForHireSystemModifier_216();
    l0 = self.box_GunsForHireSystemModifier_216;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1695896315", "1695896315", "MIS_220_MASTER", "box_Simple_Node_95.Out", "box_GunsForHireSystemModifier_216.EnableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- EnableGFHSystem
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_229_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_250();
    l0 = self.box_MultipleAND_v2_250;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|254540741", "254540741", "MIS_220_MASTER", "box_Simple_Node_229.Out", "box_MultipleAND_v2_250.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_MultipleAND_v2_165();
    l0 = self.box_MultipleAND_v2_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|888697206", "888697206", "MIS_220_MASTER", "box_Simple_Node_229.Out", "box_MultipleAND_v2_165.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_SoundMixing_283();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|952182083", "952182083", "MIS_220_MASTER", "box_Simple_Node_229.Out", "box_SoundMixing_283.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_GetActivityState_v2_87();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|475641072", "475641072", "MIS_220_MASTER", "box_Simple_Node_229.Out", "box_GetActivityState_v2_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_MultipleAND_v2_251();
    l0 = self.box_MultipleAND_v2_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1710984667", "1710984667", "MIS_220_MASTER", "box_Simple_Node_229.Out", "box_MultipleAND_v2_251.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_IsValueNil_v3_231();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1166606145", "1166606145", "MIS_220_MASTER", "box_Simple_Node_229.Out", "box_IsValueNil_v3_231.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_VehicleDamageListener_v2_72();
    l0 = self.box_VehicleDamageListener_v2_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1714289116", "1714289116", "MIS_220_MASTER", "box_Simple_Node_229.Out", "box_VehicleDamageListener_v2_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|27384418", "27384418", "MIS_220_MASTER", "box_Simple_Node_229.Out", "box_OutputOrder_v2_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_MultipleAND_v2_38();
    l0 = self.box_MultipleAND_v2_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1872207848", "1872207848", "MIS_220_MASTER", "box_Simple_Node_229.Out", "box_MultipleAND_v2_38.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_ProximityRadiusListener_v3_44();
    l0 = self.box_ProximityRadiusListener_v3_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|930370312", "930370312", "MIS_220_MASTER", "box_Simple_Node_229.Out", "box_ProximityRadiusListener_v3_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_58_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_49();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2113327798", "2113327798", "MIS_220_MASTER", "box_Simple_Node_58.Out", "box_ActivityRetry_v2_49.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_54_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_73();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|260706266", "260706266", "MIS_220_MASTER", "box_Simple_Node_54.Out", "box_ActivityRetry_v2_73.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_15();
    l0 = self.box_MessageListener_v3_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1789064177", "1789064177", "MIS_220_MASTER", "box_Simple_Node_47.Out", "box_MessageListener_v3_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_189();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1099108901", "1099108901", "MIS_220_MASTER", "box_Simple_Node_47.Out", "box_OutputOrder_v2_189.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_IsValueNil_v3_272();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1914630737", "1914630737", "MIS_220_MASTER", "box_Simple_Node_47.Out", "box_IsValueNil_v3_272.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_GunsForHireSystemModifier_216();
    l0 = self.box_GunsForHireSystemModifier_216;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|944657958", "944657958", "MIS_220_MASTER", "box_Simple_Node_47.Out", "box_GunsForHireSystemModifier_216.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
    params = self:OnEnter_box_MessageListener_v3_84();
    l0 = self.box_MessageListener_v3_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|717761111", "717761111", "MIS_220_MASTER", "box_Simple_Node_47.Out", "box_MessageListener_v3_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MessageListener_v3_230();
    l0 = self.box_MessageListener_v3_230;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2115353743", "2115353743", "MIS_220_MASTER", "box_Simple_Node_47.Out", "box_MessageListener_v3_230.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ExitZoneWarningListener_v3_114();
    l0 = self.box_ExitZoneWarningListener_v3_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1786425691", "1786425691", "MIS_220_MASTER", "box_Simple_Node_47.Out", "box_ExitZoneWarningListener_v3_114.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|679784751", "679784751", "MIS_220_MASTER", "box_Simple_Node_47.Out", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2133409340", "2133409340", "MIS_220_MASTER", "box_Simple_Node_47.Out", "box_OutputOrder_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|953697284", "953697284", "MIS_220_MASTER", "box_Simple_Node_47.Out", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_140_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_154();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|169360808", "169360808", "MIS_220_MASTER", "box_Simple_Node_140.Out", "box_SetBoolean_v2_154.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_141_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_154();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1272699584", "1272699584", "MIS_220_MASTER", "box_Simple_Node_141.Out", "box_SetBoolean_v2_154.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_198_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2574467", "2574467", "MIS_220_MASTER", "box_Simple_Node_198.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_201_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_211();
    l0 = self.box_ProximityRadiusListener_v3_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1067608353", "1067608353", "MIS_220_MASTER", "box_Simple_Node_201.Out", "box_ProximityRadiusListener_v3_211.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_208();
    l0 = self.box_ProximityRadiusListener_v3_208;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|84352435", "84352435", "MIS_220_MASTER", "box_Simple_Node_201.Out", "box_ProximityRadiusListener_v3_208.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SetBoolean_v2_234();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1384939446", "1384939446", "MIS_220_MASTER", "box_Simple_Node_201.Out", "box_SetBoolean_v2_234.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_151_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1634575289", "1634575289", "MIS_220_MASTER", "box_Simple_Node_151.Out", "box_MultipleOR_168.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_184_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1581434652", "1581434652", "MIS_220_MASTER", "box_Simple_Node_184.Out", "box_MultipleOR_166.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_183_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1135967849", "1135967849", "MIS_220_MASTER", "box_Simple_Node_183.Out", "box_MultipleOR_177.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_118_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_122();
    l0 = self.box_OnceOnly_v3_118;
    l1 = self.box_Delay_v5_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1790742283", "1790742283", "MIS_220_MASTER", "box_OnceOnly_v3_118.Out", "box_Delay_v5_122.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_137_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoonModifier_134();
    l0 = self.box_MoonModifier_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|437365474", "437365474", "MIS_220_MASTER", "box_OutputOrder_v2_137.Out", "box_MoonModifier_134.ResetMoonSize", clone:GetLuaBox(), l0:GetLuaBox());
    -- ResetMoonSize
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_137_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoonModifier_134();
    l0 = self.box_MoonModifier_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1319719688", "1319719688", "MIS_220_MASTER", "box_OutputOrder_v2_137.Out", "box_MoonModifier_134.ResetMoonDirection", clone:GetLuaBox(), l0:GetLuaBox());
    -- ResetMoonDirection
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_168_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_161();
    l0 = self.box_MultipleOR_168;
    l1 = self.box_ProximityRadiusListener_v3_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|882383446", "882383446", "MIS_220_MASTER", "box_MultipleOR_168.Out", "box_ProximityRadiusListener_v3_161.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_30_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_30;
    l1 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|212386519", "212386519", "MIS_220_MASTER", "box_ProximityTrigger_v3_30.Enter", "box_MultipleOR_77.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_30_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_30;
    l1 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1157038528", "1157038528", "MIS_220_MASTER", "box_ProximityTrigger_v3_30.OnOccupied", "box_MultipleOR_77.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_237_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_108();
    l0 = self.box_MultipleOR_237;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|526562358", "526562358", "MIS_220_MASTER", "box_MultipleOR_237.Out", "box_IsValueNil_v3_108.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_91_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_91;
    l1 = self.box_OnceOnly_v3_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|884356821", "884356821", "MIS_220_MASTER", "box_MultipleAND_v2_91.Out", "box_OnceOnly_v3_120.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_19_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_19_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_229();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|530540891", "530540891", "MIS_220_MASTER", "box_SetEntity_v2_19.Out", "box_Simple_Node_229.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_262_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_212;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|590355012", "590355012", "MIS_220_MASTER", "box_OutputOrder_v2_262.Out", "box_MultipleOR_212.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_262_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_261;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1351886607", "1351886607", "MIS_220_MASTER", "box_OutputOrder_v2_262.Out", "box_OnceOnly_v3_261.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_262_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_268;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1143373034", "1143373034", "MIS_220_MASTER", "box_OutputOrder_v2_262.Out", "box_OnceOnly_v3_268.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_ExitZoneWarningListener_v3_114_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_284();
    l0 = self.box_ExitZoneWarningListener_v3_114;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|143077118", "143077118", "MIS_220_MASTER", "box_ExitZoneWarningListener_v3_114.FailingZoneEntered", "box_ActivityRetry_v2_284.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_161_AllFar()
    self:OnExit_box_ProximityRadiusListener_v3_161_AllFar();
end;

function export:f_box_ProximityRadiusListener_v3_161_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_161_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_161_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_253();
    l0 = self.box_ProximityRadiusListener_v3_161;
    l1 = self.box_ProximityRadiusListener_v3_253;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|810061447", "810061447", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_161.Disabled", "box_ProximityRadiusListener_v3_253.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_161_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_253();
    l0 = self.box_ProximityRadiusListener_v3_161;
    l1 = self.box_ProximityRadiusListener_v3_253;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|547578388", "547578388", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_161.Enabled", "box_ProximityRadiusListener_v3_253.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_161_SomeoneFar()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_161_SomeoneFar();
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_170();
    l0 = self.box_ProximityRadiusListener_v3_161;
    l1 = self.box_DisplayCustomUIMsg_v5_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1784788511", "1784788511", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_161.SomeoneFar", "box_DisplayCustomUIMsg_v5_170.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_161_SomeoneNear()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_161_SomeoneNear();
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_163();
    l0 = self.box_ProximityRadiusListener_v3_161;
    l1 = self.box_DisplayCustomUIMsg_v5_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1352809232", "1352809232", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_161.SomeoneNear", "box_DisplayCustomUIMsg_v5_163.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_122_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_123();
    l0 = self.box_Delay_v5_122;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1858694542", "1858694542", "MIS_220_MASTER", "box_Delay_v5_122.TimeElapsed", "box_SetBoolean_v2_123.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_60_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_62();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|728383770", "728383770", "MIS_220_MASTER", "box_Compare_Boolean_60.A_is_False", "box_Compare_Boolean_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_60_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_61();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|255289227", "255289227", "MIS_220_MASTER", "box_Compare_Boolean_60.A_is_True", "box_Compare_Boolean_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_203_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_248();
    l0 = self.box_OnceOnly_v3_203;
    l1 = self.box_Delay_v5_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|155325579", "155325579", "MIS_220_MASTER", "box_OnceOnly_v3_203.Out", "box_Delay_v5_248.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetPlayerGroup_v2_99_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_99_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_13();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|770297242", "770297242", "MIS_220_MASTER", "box_GetPlayerGroup_v2_99.Out", "box_GetLocalPlayer_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_10();
    l0 = self.box_MessageListener_v3_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1421533436", "1421533436", "MIS_220_MASTER", "box_OutputOrder_v2_12.Out", "box_MessageListener_v3_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1463533833", "1463533833", "MIS_220_MASTER", "box_OutputOrder_v2_12.Out", "box_GetActivityState_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_36_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_36;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|135946320", "135946320", "MIS_220_MASTER", "box_ProximityTrigger_v3_36.Enter", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_36_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_36;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1395561487", "1395561487", "MIS_220_MASTER", "box_ProximityTrigger_v3_36.OnOccupied", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StopMetaSequence_v5_3_Stopped()
    local l0, l1;
    l0 = self.box_StopMetaSequence_v5_3;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|47908352", "47908352", "MIS_220_MASTER", "box_StopMetaSequence_v5_3.Stopped", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_57_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_57_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_222();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1827187338", "1827187338", "MIS_220_MASTER", "box_SetBoolean_v2_57.Out", "box_SetBoolean_v2_222.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_14_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_19();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|817190391", "817190391", "MIS_220_MASTER", "box_SetEntity_v2_14.Out", "box_SetEntity_v2_19.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_221_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_221_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_240();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|167748380", "167748380", "MIS_220_MASTER", "box_SetBoolean_v2_221.Out", "box_OutputOrder_v2_240.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_181_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_164();
    l0 = self.box_Delay_v5_181;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|390232812", "390232812", "MIS_220_MASTER", "box_Delay_v5_181.TimeElapsed", "box_OutputOrder_v2_164.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_172_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_184();
    l0 = self.box_Delay_v5_172;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|712132816", "712132816", "MIS_220_MASTER", "box_Delay_v5_172.TimeElapsed", "box_Simple_Node_184.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_53_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_214;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|528475276", "528475276", "MIS_220_MASTER", "box_Compare_Boolean_53.A_is_False", "box_MultipleOR_214.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_53_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_254();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|447004642", "447004642", "MIS_220_MASTER", "box_Compare_Boolean_53.A_is_True", "box_IsValueNil_v3_254.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_187_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_187;
    l1 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|517374336", "517374336", "MIS_220_MASTER", "box_PlaySequence_v8_187.Finished", "box_MultipleOR_190.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_187_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_187;
    l1 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|502088086", "502088086", "MIS_220_MASTER", "box_PlaySequence_v8_187.Skipped", "box_MultipleOR_190.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_187_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_24();
    l0 = self.box_PlaySequence_v8_187;
    l1 = self.box_SoundModifier_v2_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|549640062", "549640062", "MIS_220_MASTER", "box_PlaySequence_v8_187.Started", "box_SoundModifier_v2_24.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MessageListener_v3_10_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_10;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2002711880", "2002711880", "MIS_220_MASTER", "box_MessageListener_v3_10.Received", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_195_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGender_116();
    l0 = self.box_OnceOnly_v3_195;
    l1 = self.box_GetPlayerGender_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2113099560", "2113099560", "MIS_220_MASTER", "box_OnceOnly_v3_195.Out", "box_GetPlayerGender_116.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoonModifier_134();
    l0 = self.box_MoonModifier_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|527916048", "527916048", "MIS_220_MASTER", "box_OutputOrder_v2_41.Out", "box_MoonModifier_134.SetMoonSize", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetMoonSize
    l0:Exec(7, params);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MoonModifier_134();
    l0 = self.box_MoonModifier_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1750433833", "1750433833", "MIS_220_MASTER", "box_OutputOrder_v2_41.Out", "box_MoonModifier_134.SetMoonDirection", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetMoonDirection
    l0:Exec(4, params);
end;

function export:f_box_Compare_Boolean_257_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_263();
    l0 = self.box_SoundModifier_v2_263;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1914296455", "1914296455", "MIS_220_MASTER", "box_Compare_Boolean_257.A_is_False", "box_SoundModifier_v2_263.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_257_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_260();
    l0 = self.box_SoundModifier_v2_260;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1654029685", "1654029685", "MIS_220_MASTER", "box_Compare_Boolean_257.A_is_True", "box_SoundModifier_v2_260.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_32_Out()
    self:OnExit_box_SetBoolean_v2_32_Out();
end;

function export:f_box_MultipleOR_204_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_246();
    l0 = self.box_MultipleOR_204;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1436691386", "1436691386", "MIS_220_MASTER", "box_MultipleOR_204.Out", "box_SetBoolean_v2_246.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_52_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_52_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_53();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1660229280", "1660229280", "MIS_220_MASTER", "box_SetBoolean_v2_52.Out", "box_Compare_Boolean_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_207_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_17();
    l0 = self.box_PhoneCallExclusivityModifier_207;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1719147215", "1719147215", "MIS_220_MASTER", "box_PhoneCallExclusivityModifier_207.Disabled", "box_CHEAT_SetEnvironmentTimeScale_17.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_MessageListener_v3_127_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_127;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|582400167", "582400167", "MIS_220_MASTER", "box_MessageListener_v3_127.Received", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthModifier_v2_202_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_238();
    l0 = self.box_Delay_v5_238;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|620877292", "620877292", "MIS_220_MASTER", "box_HealthModifier_v2_202.Damaged", "box_Delay_v5_238.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_191_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|800303798", "800303798", "MIS_220_MASTER", "box_OutputOrder_v2_191.Out", "box_MultipleOR_193.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_191_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_66();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|531576438", "531576438", "MIS_220_MASTER", "box_OutputOrder_v2_191.Out", "box_GetPlayerGroup_v2_66.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_48();
    l0 = self.box_MultipleOR_82;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|528494532", "528494532", "MIS_220_MASTER", "box_MultipleOR_82.Out", "box_Compare_Boolean_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_176_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_181();
    l0 = self.box_Delay_v5_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1326914463", "1326914463", "MIS_220_MASTER", "box_OutputOrder_v2_176.Out", "box_Delay_v5_181.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_176_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_162();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|957118720", "957118720", "MIS_220_MASTER", "box_OutputOrder_v2_176.Out", "box_Print_v2_162.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_176_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_54();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|413521234", "413521234", "MIS_220_MASTER", "box_OutputOrder_v2_176.Out", "box_Simple_Node_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_115_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_218;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|216046621", "216046621", "MIS_220_MASTER", "box_OutputOrder_v2_115.Out", "box_OnceOnly_v3_218.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_115_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_279;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|693957775", "693957775", "MIS_220_MASTER", "box_OutputOrder_v2_115.Out", "box_MultipleOR_279.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_255_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisionModeModifier_v2_247();
    l0 = self.box_VisionModeModifier_v2_247;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|485603879", "485603879", "MIS_220_MASTER", "box_IsValueNil_v3_255.No", "box_VisionModeModifier_v2_247.StartScopolamineMedium", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartScopolamineMedium
    l0:Exec(6, params);
end;

function export:f_box_MultipleAND_v2_251_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_252();
    l0 = self.box_MultipleAND_v2_251;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|264528371", "264528371", "MIS_220_MASTER", "box_MultipleAND_v2_251.Out", "box_SetBoolean_v2_252.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_272_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_WaterListener_271();
    l0 = self.box_WaterListener_271;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1781129376", "1781129376", "MIS_220_MASTER", "box_IsValueNil_v3_272.No", "box_WaterListener_271.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_223_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_223_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_198();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1066904586", "1066904586", "MIS_220_MASTER", "box_SetBoolean_v2_223.Out", "box_Simple_Node_198.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_192_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_192_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_195;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1045669518", "1045669518", "MIS_220_MASTER", "box_SetBoolean_v2_192.Out", "box_OnceOnly_v3_195.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_126();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1942220432", "1942220432", "MIS_220_MASTER", "box_OutputOrder_v2_1.Out", "box_GetActivityState_v2_126.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_127();
    l0 = self.box_MessageListener_v3_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1928206679", "1928206679", "MIS_220_MASTER", "box_OutputOrder_v2_1.Out", "box_MessageListener_v3_127.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_186_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_169();
    l0 = self.box_MultipleOR_186;
    l1 = self.box_EntityStatusListener_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1929328724", "1929328724", "MIS_220_MASTER", "box_MultipleOR_186.Out", "box_EntityStatusListener_169.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_129_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_209();
    l0 = self.box_MultipleAND_v2_129;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|331086555", "331086555", "MIS_220_MASTER", "box_MultipleAND_v2_129.Out", "box_ParticleSystem_v3_209.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_152_OnAllStanding()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_141();
    l0 = self.box_VehicleListener_v3_152;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1594241741", "1594241741", "MIS_220_MASTER", "box_VehicleListener_v3_152.OnAllStanding", "box_Simple_Node_141.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_152_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_140();
    l0 = self.box_VehicleListener_v3_152;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|404725889", "404725889", "MIS_220_MASTER", "box_VehicleListener_v3_152.OnSit", "box_Simple_Node_140.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_9();
    l0 = self.box_MultipleOR_8;
    l1 = self.box_EntityStatusListener_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|562699431", "562699431", "MIS_220_MASTER", "box_MultipleOR_8.Out", "box_EntityStatusListener_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_213_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_213_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_225;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|485747649", "485747649", "MIS_220_MASTER", "box_SetBoolean_v2_213.Out", "box_MultipleOR_225.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_217_AllFar()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_217_AllFar();
    params = self:OnEnter_box_SetBoolean_v2_50();
    l0 = self.box_ProximityRadiusListener_v3_217;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|798992364", "798992364", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_217.AllFar", "box_SetBoolean_v2_50.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_217_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_217_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_217_SomeoneFar()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_217_SomeoneFar();
    params = self:OnEnter_box_SoundModifier_v2_67();
    l0 = self.box_ProximityRadiusListener_v3_217;
    l1 = self.box_SoundModifier_v2_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|560495419", "560495419", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_217.SomeoneFar", "box_SoundModifier_v2_67.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_217_SomeoneNear()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_217_SomeoneNear();
    params = self:OnEnter_box_OutputOrder_v2_125();
    l0 = self.box_ProximityRadiusListener_v3_217;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1819427519", "1819427519", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_217.SomeoneNear", "box_OutputOrder_v2_125.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_11_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1777946512", "1777946512", "MIS_220_MASTER", "box_GetActivityState_v2_11.Completed", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v5_3();
    l0 = self.box_MultipleOR_6;
    l1 = self.box_StopMetaSequence_v5_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1836344138", "1836344138", "MIS_220_MASTER", "box_MultipleOR_6.Out", "box_StopMetaSequence_v5_3.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_106_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisionModeModifier_v2_37();
    l0 = self.box_VisionModeModifier_v2_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|987304890", "987304890", "MIS_220_MASTER", "box_IsValueNil_v3_106.No", "box_VisionModeModifier_v2_37.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(8, params);
end;

function export:f_box_IsInWater_274_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnIsInWater.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_249();
    l0 = self.box_SoundModifier_v2_249;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1644718309", "1644718309", "MIS_220_MASTER", "box_IsInWater_274.False", "box_SoundModifier_v2_249.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_IsInWater_274_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnIsInWater.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_277;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1386666077", "1386666077", "MIS_220_MASTER", "box_IsInWater_274.True", "box_MultipleOR_277.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_123_Out()
    self:OnExit_box_SetBoolean_v2_123_Out();
end;

function export:f_box_EntityStatusListener_179_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_176();
    l0 = self.box_EntityStatusListener_179;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1851056181", "1851056181", "MIS_220_MASTER", "box_EntityStatusListener_179.Unloaded", "box_OutputOrder_v2_176.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_238_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_238;
    l1 = self.box_MultipleOR_212;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1495716307", "1495716307", "MIS_220_MASTER", "box_Delay_v5_238.TimeElapsed", "box_MultipleOR_212.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_276_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_109();
    l0 = self.box_MultipleOR_276;
    l1 = self.box_SoundModifier_v2_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|724761555", "724761555", "MIS_220_MASTER", "box_MultipleOR_276.Out", "box_SoundModifier_v2_109.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_125_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_50();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1778206890", "1778206890", "MIS_220_MASTER", "box_OutputOrder_v2_125.Out", "box_SetBoolean_v2_50.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_67();
    l0 = self.box_SoundModifier_v2_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|964001046", "964001046", "MIS_220_MASTER", "box_OutputOrder_v2_125.Out", "box_SoundModifier_v2_67.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_258_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_259();
    l0 = self.box_SoundModifier_v2_259;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|142423494", "142423494", "MIS_220_MASTER", "box_Compare_Boolean_258.A_is_False", "box_SoundModifier_v2_259.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_258_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_269();
    l0 = self.box_SoundModifier_v2_269;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1717704335", "1717704335", "MIS_220_MASTER", "box_Compare_Boolean_258.A_is_True", "box_SoundModifier_v2_269.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_62_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_52();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1779390361", "1779390361", "MIS_220_MASTER", "box_Compare_Boolean_62.A_is_False", "box_SetBoolean_v2_52.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_62_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|76973751", "76973751", "MIS_220_MASTER", "box_Compare_Boolean_62.A_is_True", "box_MultipleOR_197.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetBoolean_v2_28_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|737650077", "737650077", "MIS_220_MASTER", "box_SetBoolean_v2_28.Out", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_136_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_EntityStatusListener_136;
    l1 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1685911891", "1685911891", "MIS_220_MASTER", "box_EntityStatusListener_136.Loaded", "box_Delay_v5_40.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_234_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_234_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_241();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|904337982", "904337982", "MIS_220_MASTER", "box_SetBoolean_v2_234.Out", "box_SetBoolean_v2_241.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetVehicleAsLeashAnchor_133_OnMissionVehicleSet()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_150();
    l0 = self.box_SetVehicleAsLeashAnchor_133;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1245148590", "1245148590", "MIS_220_MASTER", "box_SetVehicleAsLeashAnchor_133.OnMissionVehicleSet", "box_OutputOrder_v2_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_165_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_86();
    l0 = self.box_MultipleAND_v2_165;
    l1 = self.box_ColorRemapTextureModifier_v3_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|920737917", "920737917", "MIS_220_MASTER", "box_MultipleAND_v2_165.Out", "box_ColorRemapTextureModifier_v3_86.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_93_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_21();
    l0 = self.box_Delay_v5_93;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1831214894", "1831214894", "MIS_220_MASTER", "box_Delay_v5_93.TimeElapsed", "box_ActivityEnd_21.EndNoSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndNoSave
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_261_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_258();
    l0 = self.box_OnceOnly_v3_261;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|122880254", "122880254", "MIS_220_MASTER", "box_OnceOnly_v3_261.Out", "box_Compare_Boolean_258.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_104_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_104;
    l1 = self.box_MultipleOR_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1462688207", "1462688207", "MIS_220_MASTER", "box_ActivityAcknowledgeGate_104.Acknowledged", "box_MultipleOR_101.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_104_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_104;
    l1 = self.box_MultipleOR_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|712988133", "712988133", "MIS_220_MASTER", "box_ActivityAcknowledgeGate_104.Reloaded", "box_MultipleOR_101.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_277_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_256();
    l0 = self.box_MultipleOR_277;
    l1 = self.box_SoundModifier_v2_256;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1734027752", "1734027752", "MIS_220_MASTER", "box_MultipleOR_277.Out", "box_SoundModifier_v2_256.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_GetPlayersID_59_OnePlayer()
    local l0, l1;
    self:OnExit_box_GetPlayersID_59_OnePlayer();
    l0 = self.box_GetPlayersID_59;
    l1 = self.box_MultipleOR_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|115901199", "115901199", "MIS_220_MASTER", "box_GetPlayersID_59.OnePlayer", "box_MultipleOR_194.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayersID_59_PlayerAdded()
    local params, l0, l1;
    self:OnExit_box_GetPlayersID_59_PlayerAdded();
    params = self:OnEnter_box_OutputOrder_v2_191();
    l0 = self.box_GetPlayersID_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1147043555", "1147043555", "MIS_220_MASTER", "box_GetPlayersID_59.PlayerAdded", "box_OutputOrder_v2_191.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayersID_59_PlayerRemoved()
    local params, l0, l1;
    self:OnExit_box_GetPlayersID_59_PlayerRemoved();
    params = self:OnEnter_box_OutputOrder_v2_196();
    l0 = self.box_GetPlayersID_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1252517410", "1252517410", "MIS_220_MASTER", "box_GetPlayersID_59.PlayerRemoved", "box_OutputOrder_v2_196.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayersID_59_TwoPlayers()
    local l0, l1;
    self:OnExit_box_GetPlayersID_59_TwoPlayers();
    l0 = self.box_GetPlayersID_59;
    l1 = self.box_MultipleOR_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1591239840", "1591239840", "MIS_220_MASTER", "box_GetPlayersID_59.TwoPlayers", "box_MultipleOR_193.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_128_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_39();
    l0 = self.box_MultipleOR_128;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2018019640", "2018019640", "MIS_220_MASTER", "box_MultipleOR_128.Out", "box_Simple_Node_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_75_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_75;
    l1 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2142966286", "2142966286", "MIS_220_MASTER", "box_ProximityTrigger_v3_75.Enter", "box_MultipleOR_85.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_75_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_75;
    l1 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1301809944", "1301809944", "MIS_220_MASTER", "box_ProximityTrigger_v3_75.OnOccupied", "box_MultipleOR_85.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MessageListener_v3_15_Received()
    local params, l0, l1;
    params = self:OnEnter_box_FogMoving_Function_27();
    l0 = self.box_MessageListener_v3_15;
    l1 = self.box_FogMoving_Function_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1627535310", "1627535310", "MIS_220_MASTER", "box_MessageListener_v3_15.Received", "box_FogMoving_Function_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetActivityState_v2_87_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|923267473", "923267473", "MIS_220_MASTER", "box_GetActivityState_v2_87.Active", "box_MultipleOR_92.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_87_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|356141558", "356141558", "MIS_220_MASTER", "box_GetActivityState_v2_87.Completed", "box_MultipleOR_89.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_87_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1883268321", "1883268321", "MIS_220_MASTER", "box_GetActivityState_v2_87.Inactive", "box_MultipleOR_92.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_87_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1857559312", "1857559312", "MIS_220_MASTER", "box_GetActivityState_v2_87.Unavailable", "box_MultipleOR_92.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_WaterListener_271_EnteredWater()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_273();
    l0 = self.box_WaterListener_271;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|475593705", "475593705", "MIS_220_MASTER", "box_WaterListener_271.EnteredWater", "box_Compare_Boolean_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_WaterListener_271_ExitedWater()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_275();
    l0 = self.box_WaterListener_271;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2145463146", "2145463146", "MIS_220_MASTER", "box_WaterListener_271.ExitedWater", "box_Compare_Boolean_275.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_268_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_257();
    l0 = self.box_OnceOnly_v3_268;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1547356603", "1547356603", "MIS_220_MASTER", "box_OnceOnly_v3_268.Out", "box_Compare_Boolean_257.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_169_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_169;
    l1 = self.box_StartMetaSequence_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|564522503", "564522503", "MIS_220_MASTER", "box_EntityStatusListener_169.Loaded", "box_StartMetaSequence_188.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_248_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_239();
    l0 = self.box_Delay_v5_248;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1207558898", "1207558898", "MIS_220_MASTER", "box_Delay_v5_248.TimeElapsed", "box_SetBoolean_v2_239.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_174_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_180();
    l0 = self.box_VehicleListener_v3_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1884297151", "1884297151", "MIS_220_MASTER", "box_OutputOrder_v2_174.Out", "box_VehicleListener_v3_180.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_174_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1392618081", "1392618081", "MIS_220_MASTER", "box_OutputOrder_v2_174.Out", "box_MultipleOR_160.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_254_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisionModeModifier_v2_37();
    l0 = self.box_VisionModeModifier_v2_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1278393896", "1278393896", "MIS_220_MASTER", "box_IsValueNil_v3_254.No", "box_VisionModeModifier_v2_37.StartScopolamineMedium", clone:GetLuaBox(), l0:GetLuaBox());
    -- StartScopolamineMedium
    l0:Exec(6, params);
end;

function export:f_box_IsValueNil_v3_231_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_215();
    l0 = self.box_Bind_v4_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1479855118", "1479855118", "MIS_220_MASTER", "box_IsValueNil_v3_231.No", "box_Bind_v4_215.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_71_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_71;
    l1 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1813588125", "1813588125", "MIS_220_MASTER", "box_ProximityTrigger_v3_71.Enter", "box_MultipleOR_83.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_71_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_71;
    l1 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|119010711", "119010711", "MIS_220_MASTER", "box_ProximityTrigger_v3_71.OnOccupied", "box_MultipleOR_83.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_242_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_277;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1909682077", "1909682077", "MIS_220_MASTER", "box_Compare_Boolean_242.A_is_False", "box_MultipleOR_277.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_242_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_276;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1773777559", "1773777559", "MIS_220_MASTER", "box_Compare_Boolean_242.A_is_True", "box_MultipleOR_276.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_160_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_179();
    l0 = self.box_MultipleOR_160;
    l1 = self.box_EntityStatusListener_179;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1499430532", "1499430532", "MIS_220_MASTER", "box_MultipleOR_160.Out", "box_EntityStatusListener_179.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_131_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_132();
    l0 = self.box_EntityStatusListener_131;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|967151270", "967151270", "MIS_220_MASTER", "box_EntityStatusListener_131.Loaded", "box_VehicleModifier_v2_132.SetCommandeerEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetCommandeerEnabled
    l1:Exec(10, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsInWater_270_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnIsInWater.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_112();
    l0 = self.box_SoundModifier_v2_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|906737550", "906737550", "MIS_220_MASTER", "box_IsInWater_270.False", "box_SoundModifier_v2_112.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_IsInWater_270_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnIsInWater.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_276;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|212971828", "212971828", "MIS_220_MASTER", "box_IsInWater_270.True", "box_MultipleOR_276.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_9_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_StartMetaSequence_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|337737968", "337737968", "MIS_220_MASTER", "box_EntityStatusListener_9.Loaded", "box_StartMetaSequence_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MessageListener_v3_88_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_88;
    l1 = self.box_MultipleOR_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1889240301", "1889240301", "MIS_220_MASTER", "box_MessageListener_v3_88.Received", "box_MultipleOR_89.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetInventoryItemQuantity_107_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_107_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_111();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1524073886", "1524073886", "MIS_220_MASTER", "box_GetInventoryItemQuantity_107.Out", "box_Compare_Integers_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_150_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_158();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|219390952", "219390952", "MIS_220_MASTER", "box_OutputOrder_v2_150.Out", "box_Simple_Node_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_150_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_136();
    l0 = self.box_EntityStatusListener_136;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|123579300", "123579300", "MIS_220_MASTER", "box_OutputOrder_v2_150.Out", "box_EntityStatusListener_136.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_150_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_GetPlayersVehicleID_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|72043951", "72043951", "MIS_220_MASTER", "box_OutputOrder_v2_150.Out", "box_GetPlayersVehicleID_146.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_150_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_152();
    l0 = self.box_VehicleListener_v3_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|828558126", "828558126", "MIS_220_MASTER", "box_OutputOrder_v2_150.Out", "box_VehicleListener_v3_152.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_VehicleModifier_v2_132_OnSetCommandeerEnabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetVehicleAsLeashAnchor_133();
    l0 = self.box_SetVehicleAsLeashAnchor_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|784853943", "784853943", "MIS_220_MASTER", "box_VehicleModifier_v2_132.OnSetCommandeerEnabled", "box_SetVehicleAsLeashAnchor_133.SetMissionVehicle", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetMissionVehicle
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_208_AllFar()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_208_AllFar();
    params = self:OnEnter_box_SetBoolean_v2_213();
    l0 = self.box_ProximityRadiusListener_v3_208;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2036124412", "2036124412", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_208.AllFar", "box_SetBoolean_v2_213.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_208_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_208_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_208_SomeoneFar()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_208_SomeoneFar();
    params = self:OnEnter_box_SoundModifier_v2_244();
    l0 = self.box_ProximityRadiusListener_v3_208;
    l1 = self.box_SoundModifier_v2_244;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1778618283", "1778618283", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_208.SomeoneFar", "box_SoundModifier_v2_244.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_208_SomeoneNear()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_208_SomeoneNear();
    params = self:OnEnter_box_OutputOrder_v2_236();
    l0 = self.box_ProximityRadiusListener_v3_208;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1680403320", "1680403320", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_208.SomeoneNear", "box_OutputOrder_v2_236.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_177_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_161();
    l0 = self.box_MultipleOR_177;
    l1 = self.box_ProximityRadiusListener_v3_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1131276337", "1131276337", "MIS_220_MASTER", "box_MultipleOR_177.Out", "box_ProximityRadiusListener_v3_161.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_215_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_129();
    l0 = self.box_Bind_v4_215;
    l1 = self.box_MultipleAND_v2_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|78798015", "78798015", "MIS_220_MASTER", "box_Bind_v4_215.Bound", "box_MultipleAND_v2_129.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_124_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_28();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1422276560", "1422276560", "MIS_220_MASTER", "box_OutputOrder_v2_124.Out", "box_SetBoolean_v2_28.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_124_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_81();
    l0 = self.box_SoundModifier_v2_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|481692357", "481692357", "MIS_220_MASTER", "box_OutputOrder_v2_124.Out", "box_SoundModifier_v2_81.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_166_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_182();
    l0 = self.box_MultipleOR_166;
    l1 = self.box_DisplayCustomUIMsg_v5_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2122485065", "2122485065", "MIS_220_MASTER", "box_MultipleOR_166.Out", "box_DisplayCustomUIMsg_v5_182.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_25();
    l0 = self.box_MultipleOR_42;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1267550905", "1267550905", "MIS_220_MASTER", "box_MultipleOR_42.Out", "box_Compare_Boolean_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_194_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_192();
    l0 = self.box_MultipleOR_194;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|782285969", "782285969", "MIS_220_MASTER", "box_MultipleOR_194.Out", "box_SetBoolean_v2_192.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_246_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_246_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_233();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2114503756", "2114503756", "MIS_220_MASTER", "box_SetBoolean_v2_246.Out", "box_Compare_Boolean_233.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_236_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_213();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|904599071", "904599071", "MIS_220_MASTER", "box_OutputOrder_v2_236.Out", "box_SetBoolean_v2_213.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_236_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_244();
    l0 = self.box_SoundModifier_v2_244;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1935690765", "1935690765", "MIS_220_MASTER", "box_OutputOrder_v2_236.Out", "box_SoundModifier_v2_244.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_253_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_243();
    l0 = self.box_ProximityRadiusListener_v3_253;
    l1 = self.box_Delay_v5_243;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1845567513", "1845567513", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_253.SomeoneFar", "box_Delay_v5_243.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_253_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_243();
    l0 = self.box_ProximityRadiusListener_v3_253;
    l1 = self.box_Delay_v5_243;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|716912987", "716912987", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_253.SomeoneNear", "box_Delay_v5_243.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_193_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_192();
    l0 = self.box_MultipleOR_193;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1409522824", "1409522824", "MIS_220_MASTER", "box_MultipleOR_193.Out", "box_SetBoolean_v2_192.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_110_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = self.box_MultipleOR_110;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2003502393", "2003502393", "MIS_220_MASTER", "box_MultipleOR_110.Out", "box_Simple_Node_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_250_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_281();
    l0 = self.box_MultipleAND_v2_250;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|396745992", "396745992", "MIS_220_MASTER", "box_MultipleAND_v2_250.Out", "box_SetBoolean_v2_281.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisionModeModifier_v2_247_StartedScopolamineMedium()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_262();
    l0 = self.box_VisionModeModifier_v2_247;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1555077514", "1555077514", "MIS_220_MASTER", "box_VisionModeModifier_v2_247.StartedScopolamineMedium", "box_OutputOrder_v2_262.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisionModeModifier_v2_247_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_267();
    l0 = self.box_VisionModeModifier_v2_247;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1462291896", "1462291896", "MIS_220_MASTER", "box_VisionModeModifier_v2_247.Stopped", "box_OutputOrder_v2_267.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_196_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1549727040", "1549727040", "MIS_220_MASTER", "box_OutputOrder_v2_196.Out", "box_MultipleOR_194.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_196_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_63();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|309641009", "309641009", "MIS_220_MASTER", "box_OutputOrder_v2_196.Out", "box_GetPlayerGroup_v2_63.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_50_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_50_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|409786029", "409786029", "MIS_220_MASTER", "box_SetBoolean_v2_50.Out", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_33_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_43();
    l0 = self.box_InventoryItemModifier_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1296369835", "1296369835", "MIS_220_MASTER", "box_Compare_Boolean_33.A_is_False", "box_InventoryItemModifier_43.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_200_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_200_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_47();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|169056702", "169056702", "MIS_220_MASTER", "box_SetBoolean_v2_200.Out", "box_Simple_Node_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_108_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisionModeModifier_v2_247();
    l0 = self.box_VisionModeModifier_v2_247;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|287755255", "287755255", "MIS_220_MASTER", "box_IsValueNil_v3_108.No", "box_VisionModeModifier_v2_247.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(8, params);
end;

function export:f_box_Delay_v5_243_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_54();
    l0 = self.box_Delay_v5_243;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1477401500", "1477401500", "MIS_220_MASTER", "box_Delay_v5_243.TimeElapsed", "box_Simple_Node_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayersVehicleID_146_NotInVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_144();
    l0 = self.box_GetPlayersVehicleID_146;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2076728846", "2076728846", "MIS_220_MASTER", "box_GetPlayersVehicleID_146.NotInVehicle", "box_OutputOrder_v2_144.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_241_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_241_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_57();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1340079042", "1340079042", "MIS_220_MASTER", "box_SetBoolean_v2_241.Out", "box_SetBoolean_v2_57.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_267_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_261;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|789652595", "789652595", "MIS_220_MASTER", "box_OutputOrder_v2_267.Out", "box_OnceOnly_v3_261.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_267_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_268;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1373797354", "1373797354", "MIS_220_MASTER", "box_OutputOrder_v2_267.Out", "box_OnceOnly_v3_268.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StartMetaSequence_188_Out()
    local l0, l1;
    self:OnExit_box_StartMetaSequence_188_Out();
    l0 = self.box_StartMetaSequence_188;
    l1 = self.box_MultipleOR_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|237627014", "237627014", "MIS_220_MASTER", "box_StartMetaSequence_188.Out", "box_MultipleOR_175.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_154_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_154_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_153();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1400763093", "1400763093", "MIS_220_MASTER", "box_SetBoolean_v2_154.Out", "box_Print_v2_153.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_121_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1542441090", "1542441090", "MIS_220_MASTER", "box_Compare_Boolean_121.A_is_False", "box_OnceOnly_v3_118.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_121_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_60();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|229956832", "229956832", "MIS_220_MASTER", "box_Compare_Boolean_121.A_is_True", "box_Compare_Boolean_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_2();
    l0 = self.box_ProximityTrigger_v3_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1267614091", "1267614091", "MIS_220_MASTER", "box_OutputOrder_v2_56.Out", "box_ProximityTrigger_v3_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_30();
    l0 = self.box_ProximityTrigger_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1567906519", "1567906519", "MIS_220_MASTER", "box_OutputOrder_v2_56.Out", "box_ProximityTrigger_v3_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_56_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_36();
    l0 = self.box_ProximityTrigger_v3_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1777390730", "1777390730", "MIS_220_MASTER", "box_OutputOrder_v2_56.Out", "box_ProximityTrigger_v3_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_56_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_55();
    l0 = self.box_ProximityTrigger_v3_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1067271398", "1067271398", "MIS_220_MASTER", "box_OutputOrder_v2_56.Out", "box_ProximityTrigger_v3_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_56_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_71();
    l0 = self.box_ProximityTrigger_v3_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|138527839", "138527839", "MIS_220_MASTER", "box_OutputOrder_v2_56.Out", "box_ProximityTrigger_v3_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_56_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_75();
    l0 = self.box_ProximityTrigger_v3_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1833157422", "1833157422", "MIS_220_MASTER", "box_OutputOrder_v2_56.Out", "box_ProximityTrigger_v3_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_218_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_227();
    l0 = self.box_OnceOnly_v3_218;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|456124994", "456124994", "MIS_220_MASTER", "box_OnceOnly_v3_218.Out", "box_Compare_Boolean_227.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_63_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_63_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_201();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1463919884", "1463919884", "MIS_220_MASTER", "box_GetPlayerGroup_v2_63.Out", "box_Simple_Node_201.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_32();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1690108412", "1690108412", "MIS_220_MASTER", "box_OutputOrder_v2_45.Out", "box_SetBoolean_v2_32.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|539923526", "539923526", "MIS_220_MASTER", "box_OutputOrder_v2_45.Out", "box_Delay_v5_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Boolean_227_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsInWater_274();
    l0 = Boxes[GetPathID("Domino/System/PawnIsInWater.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|857773471", "857773471", "MIS_220_MASTER", "box_Compare_Boolean_227.A_is_False", "box_IsInWater_274.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_227_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsInWater_270();
    l0 = Boxes[GetPathID("Domino/System/PawnIsInWater.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1077592394", "1077592394", "MIS_220_MASTER", "box_Compare_Boolean_227.A_is_True", "box_IsInWater_270.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_216_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_FastTravelModifier_v2_20();
    l0 = self.box_GunsForHireSystemModifier_216;
    l1 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|733122206", "733122206", "MIS_220_MASTER", "box_GunsForHireSystemModifier_216.Disabled", "box_FastTravelModifier_v2_20.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_216_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_FastTravelModifier_v2_20();
    l0 = self.box_GunsForHireSystemModifier_216;
    l1 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1607007483", "1607007483", "MIS_220_MASTER", "box_GunsForHireSystemModifier_216.Enabled", "box_FastTravelModifier_v2_20.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_281_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_281_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1647291283", "1647291283", "MIS_220_MASTER", "box_SetBoolean_v2_281.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_189_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_185();
    l0 = self.box_MessageListener_v3_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1239349112", "1239349112", "MIS_220_MASTER", "box_OutputOrder_v2_189.Out", "box_MessageListener_v3_185.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_189_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_178();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1063430067", "1063430067", "MIS_220_MASTER", "box_OutputOrder_v2_189.Out", "box_GetActivityState_v2_178.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_100_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_99();
    l0 = self.box_ActivityInitialized_100;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2026581927", "2026581927", "MIS_220_MASTER", "box_ActivityInitialized_100.Out", "box_GetPlayerGroup_v2_99.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_212_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_235();
    l0 = self.box_MultipleOR_212;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|478774621", "478774621", "MIS_220_MASTER", "box_MultipleOR_212.Out", "box_Compare_Boolean_235.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_18_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_22();
    l0 = self.box_SoundModifier_v2_18;
    l1 = self.box_SoundModifier_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|67247770", "67247770", "MIS_220_MASTER", "box_SoundModifier_v2_18.Started", "box_SoundModifier_v2_22.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_119_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_119;
    l1 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1505456228", "1505456228", "MIS_220_MASTER", "box_MultipleOR_119.Out", "box_MultipleOR_110.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_224_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_203;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1040159536", "1040159536", "MIS_220_MASTER", "box_Compare_Boolean_224.A_is_False", "box_OnceOnly_v3_203.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_224_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_245();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1598093356", "1598093356", "MIS_220_MASTER", "box_Compare_Boolean_224.A_is_True", "box_Compare_Boolean_245.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_61_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1467943223", "1467943223", "MIS_220_MASTER", "box_Compare_Boolean_61.A_is_False", "box_MultipleOR_197.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_61_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|224320752", "224320752", "MIS_220_MASTER", "box_Compare_Boolean_61.A_is_True", "box_MultipleOR_197.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_79_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetInventoryItemQuantity_107();
    l0 = self.box_MultipleOR_79;
    l1 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|255659010", "255659010", "MIS_220_MASTER", "box_MultipleOR_79.Out", "box_GetInventoryItemQuantity_107.GetNumberOfItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetNumberOfItems
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_13_Out()
    local l0;
    self:OnExit_box_GetLocalPlayer_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    l0 = self.box_GetPlayersID_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1877062629", "1877062629", "MIS_220_MASTER", "box_GetLocalPlayer_v2_13.Out", "box_GetPlayersID_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, {
    });
end;

function export:f_box_ProximityRadiusListener_v3_211_AllFar()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_211_AllFar();
    params = self:OnEnter_box_SetBoolean_v2_210();
    l0 = self.box_ProximityRadiusListener_v3_211;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|3309312", "3309312", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_211.AllFar", "box_SetBoolean_v2_210.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_211_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_211_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_211_SomeoneFar()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_211_SomeoneFar();
    params = self:OnEnter_box_SoundModifier_v2_206();
    l0 = self.box_ProximityRadiusListener_v3_211;
    l1 = self.box_SoundModifier_v2_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1161518534", "1161518534", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_211.SomeoneFar", "box_SoundModifier_v2_206.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_211_SomeoneNear()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_211_SomeoneNear();
    params = self:OnEnter_box_OutputOrder_v2_226();
    l0 = self.box_ProximityRadiusListener_v3_211;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1363750844", "1363750844", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_211.SomeoneNear", "box_OutputOrder_v2_226.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_92_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_88();
    l0 = self.box_MultipleOR_92;
    l1 = self.box_MessageListener_v3_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|541510975", "541510975", "MIS_220_MASTER", "box_MultipleOR_92.Out", "box_MessageListener_v3_88.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_32();
    l0 = self.box_Delay_v5_31;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1706525322", "1706525322", "MIS_220_MASTER", "box_Delay_v5_31.TimeElapsed", "box_SetBoolean_v2_32.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_252_Out()
    self:OnExit_box_SetBoolean_v2_252_Out();
end;

function export:f_box_OutputOrder_v2_240_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_211();
    l0 = self.box_ProximityRadiusListener_v3_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2035420927", "2035420927", "MIS_220_MASTER", "box_OutputOrder_v2_240.Out", "box_ProximityRadiusListener_v3_211.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_240_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_208();
    l0 = self.box_ProximityRadiusListener_v3_208;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|992919186", "992919186", "MIS_220_MASTER", "box_OutputOrder_v2_240.Out", "box_ProximityRadiusListener_v3_208.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_97_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_209();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|471507435", "471507435", "MIS_220_MASTER", "box_IsValueNil_v3_97.No", "box_ParticleSystem_v3_209.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_245_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_232();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1517836108", "1517836108", "MIS_220_MASTER", "box_Compare_Boolean_245.A_is_False", "box_Compare_Boolean_232.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_245_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_205();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1409079263", "1409079263", "MIS_220_MASTER", "box_Compare_Boolean_245.A_is_True", "box_Compare_Boolean_205.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_278_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_278;
    l1 = self.box_OnceOnly_v3_218;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1208973999", "1208973999", "MIS_220_MASTER", "box_MultipleOR_278.Out", "box_OnceOnly_v3_218.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_4();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_PlaySequence_v8_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2144946876", "2144946876", "MIS_220_MASTER", "box_MultipleOR_7.Out", "box_PlaySequence_v8_4.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_214_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_106();
    l0 = self.box_MultipleOR_214;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1832539784", "1832539784", "MIS_220_MASTER", "box_MultipleOR_214.Out", "box_IsValueNil_v3_106.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_44_AllFar()
    self:OnExit_box_ProximityRadiusListener_v3_44_AllFar();
end;

function export:f_box_ProximityRadiusListener_v3_44_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_44_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_44_SomeoneFar()
    self:OnExit_box_ProximityRadiusListener_v3_44_SomeoneFar();
end;

function export:f_box_ProximityRadiusListener_v3_44_SomeoneNear()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_44_SomeoneNear();
    params = self:OnEnter_box_Compare_Boolean_33();
    l0 = self.box_ProximityRadiusListener_v3_44;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|931087761", "931087761", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_44.SomeoneNear", "box_Compare_Boolean_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_273_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_279;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|96545532", "96545532", "MIS_220_MASTER", "box_Compare_Boolean_273.A_is_False", "box_MultipleOR_279.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_273_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_278;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|726865670", "726865670", "MIS_220_MASTER", "box_Compare_Boolean_273.A_is_True", "box_MultipleOR_278.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_74();
    l0 = self.box_MultipleOR_85;
    l1 = self.box_SoundModifier_v2_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|834979178", "834979178", "MIS_220_MASTER", "box_MultipleOR_85.Out", "box_SoundModifier_v2_74.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_219_Female()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_223();
    l0 = self.box_GetPlayerGender_219;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1523010170", "1523010170", "MIS_220_MASTER", "box_GetPlayerGender_219.Female", "box_SetBoolean_v2_223.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_219_Male()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_223();
    l0 = self.box_GetPlayerGender_219;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2073206732", "2073206732", "MIS_220_MASTER", "box_GetPlayerGender_219.Male", "box_SetBoolean_v2_223.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_25_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_23();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|689684177", "689684177", "MIS_220_MASTER", "box_Compare_Boolean_25.A_is_True", "box_HealthModifier_v2_23.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_72_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_72;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1565862790", "1565862790", "MIS_220_MASTER", "box_VehicleDamageListener_v2_72.Broken", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_72_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_72;
    l1 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1783278556", "1783278556", "MIS_220_MASTER", "box_VehicleDamageListener_v2_72.Destroyed", "box_MultipleOR_119.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_72_Disabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_72;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|92927306", "92927306", "MIS_220_MASTER", "box_VehicleDamageListener_v2_72.Disabled", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleDamageListener_v2_72_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_91();
    l0 = self.box_VehicleDamageListener_v2_72;
    l1 = self.box_MultipleAND_v2_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1748916121", "1748916121", "MIS_220_MASTER", "box_VehicleDamageListener_v2_72.Enabled", "box_MultipleAND_v2_91.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_VehicleDamageListener_v2_72_OnFire()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_72;
    l1 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1512746389", "1512746389", "MIS_220_MASTER", "box_VehicleDamageListener_v2_72.OnFire", "box_MultipleOR_119.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGender_116_Female()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_200();
    l0 = self.box_GetPlayerGender_116;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1524621084", "1524621084", "MIS_220_MASTER", "box_GetPlayerGender_116.Female", "box_SetBoolean_v2_200.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_116_Male()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_200();
    l0 = self.box_GetPlayerGender_116;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2107709145", "2107709145", "MIS_220_MASTER", "box_GetPlayerGender_116.Male", "box_SetBoolean_v2_200.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_66_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_66_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGender_219();
    l0 = self.box_GetPlayerGender_219;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2127606853", "2127606853", "MIS_220_MASTER", "box_GetPlayerGroup_v2_66.Out", "box_GetPlayerGender_219.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_78_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_69();
    l0 = self.box_MultipleOR_78;
    l1 = self.box_SoundModifier_v2_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1759776927", "1759776927", "MIS_220_MASTER", "box_MultipleOR_78.Out", "box_SoundModifier_v2_69.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_220();
    l0 = self.box_ProximityRadiusListener_v3_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1430066417", "1430066417", "MIS_220_MASTER", "box_OutputOrder_v2_46.Out", "box_ProximityRadiusListener_v3_220.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_217();
    l0 = self.box_ProximityRadiusListener_v3_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1146646785", "1146646785", "MIS_220_MASTER", "box_OutputOrder_v2_46.Out", "box_ProximityRadiusListener_v3_217.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SendGSFGenericEvent_147();
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|982327031", "982327031", "MIS_220_MASTER", "box_OutputOrder_v2_46.Out", "box_SendGSFGenericEvent_147.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_135();
    l0 = self.box_Delay_v5_40;
    l1 = self.box_Bind_v4_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|908461143", "908461143", "MIS_220_MASTER", "box_Delay_v5_40.TimeElapsed", "box_Bind_v4_135.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_80_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_68();
    l0 = self.box_MultipleOR_80;
    l1 = self.box_SoundModifier_v2_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1244641125", "1244641125", "MIS_220_MASTER", "box_MultipleOR_80.Out", "box_SoundModifier_v2_68.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_101_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_101;
    l1 = self.box_ActivityInitialized_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1767819073", "1767819073", "MIS_220_MASTER", "box_MultipleOR_101.Out", "box_ActivityInitialized_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_89_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_91();
    l0 = self.box_MultipleOR_89;
    l1 = self.box_MultipleAND_v2_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|214615829", "214615829", "MIS_220_MASTER", "box_MultipleOR_89.Out", "box_MultipleAND_v2_91.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_96();
    l0 = self.box_MultipleOR_77;
    l1 = self.box_SoundModifier_v2_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|890866077", "890866077", "MIS_220_MASTER", "box_MultipleOR_77.Out", "box_SoundModifier_v2_96.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_279_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_279;
    l1 = self.box_OnceOnly_v3_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2024151827", "2024151827", "MIS_220_MASTER", "box_MultipleOR_279.Out", "box_OnceOnly_v3_167.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_210_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_210_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_225;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|167109054", "167109054", "MIS_220_MASTER", "box_SetBoolean_v2_210.Out", "box_MultipleOR_225.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_197_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_52();
    l0 = self.box_MultipleOR_197;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|58512033", "58512033", "MIS_220_MASTER", "box_MultipleOR_197.Out", "box_SetBoolean_v2_52.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_175_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_187();
    l0 = self.box_MultipleOR_175;
    l1 = self.box_PlaySequence_v8_187;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1100284713", "1100284713", "MIS_220_MASTER", "box_MultipleOR_175.Out", "box_PlaySequence_v8_187.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_121();
    l0 = self.box_MultipleOR_51;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|856411668", "856411668", "MIS_220_MASTER", "box_MultipleOR_51.Out", "box_Compare_Boolean_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_24_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_26();
    l0 = self.box_SoundModifier_v2_24;
    l1 = self.box_SoundModifier_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1263990935", "1263990935", "MIS_220_MASTER", "box_SoundModifier_v2_24.Started", "box_SoundModifier_v2_26.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ColorRemapTextureModifier_v3_86_Added()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_199();
    l0 = self.box_ColorRemapTextureModifier_v3_86;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2001810689", "2001810689", "MIS_220_MASTER", "box_ColorRemapTextureModifier_v3_86.Added", "box_OverrideEnvironment_v3_199.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ColorRemapTextureModifier_v3_86_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_199();
    l0 = self.box_ColorRemapTextureModifier_v3_86;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1868477441", "1868477441", "MIS_220_MASTER", "box_ColorRemapTextureModifier_v3_86.Removed", "box_OverrideEnvironment_v3_199.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_113();
    l0 = self.box_MultipleAND_v2_38;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1789341927", "1789341927", "MIS_220_MASTER", "box_MultipleAND_v2_38.Out", "box_SetBoolean_v2_113.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_178_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2049556285", "2049556285", "MIS_220_MASTER", "box_GetActivityState_v2_178.Completed", "box_MultipleOR_186.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_232_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_246();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|875984995", "875984995", "MIS_220_MASTER", "box_Compare_Boolean_232.A_is_False", "box_SetBoolean_v2_246.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_232_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|233948392", "233948392", "MIS_220_MASTER", "box_Compare_Boolean_232.A_is_True", "box_MultipleOR_204.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MessageListener_v3_185_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_185;
    l1 = self.box_MultipleOR_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1580396532", "1580396532", "MIS_220_MASTER", "box_MessageListener_v3_185.Received", "box_MultipleOR_186.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_55_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_55;
    l1 = self.box_MultipleOR_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|570832245", "570832245", "MIS_220_MASTER", "box_ProximityTrigger_v3_55.Enter", "box_MultipleOR_80.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_55_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_55;
    l1 = self.box_MultipleOR_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1676012157", "1676012157", "MIS_220_MASTER", "box_ProximityTrigger_v3_55.OnOccupied", "box_MultipleOR_80.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_226_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_210();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1585437651", "1585437651", "MIS_220_MASTER", "box_OutputOrder_v2_226.Out", "box_SetBoolean_v2_210.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_226_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_206();
    l0 = self.box_SoundModifier_v2_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|517725752", "517725752", "MIS_220_MASTER", "box_OutputOrder_v2_226.Out", "box_SoundModifier_v2_206.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MessageListener_v3_84_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_94();
    l0 = self.box_MessageListener_v3_84;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1912808086", "1912808086", "MIS_220_MASTER", "box_MessageListener_v3_84.Received", "box_OutputOrder_v2_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_164_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_183();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2121270608", "2121270608", "MIS_220_MASTER", "box_OutputOrder_v2_164.Out", "box_Simple_Node_183.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_164_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_172();
    l0 = self.box_Delay_v5_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2032878396", "2032878396", "MIS_220_MASTER", "box_OutputOrder_v2_164.Out", "box_Delay_v5_172.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_29;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1803295343", "1803295343", "MIS_220_MASTER", "box_Delay_v5_29.TimeElapsed", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_4_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_4;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|249904441", "249904441", "MIS_220_MASTER", "box_PlaySequence_v8_4.Finished", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_4_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_4;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|113037953", "113037953", "MIS_220_MASTER", "box_PlaySequence_v8_4.Skipped", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_4_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_18();
    l0 = self.box_PlaySequence_v8_4;
    l1 = self.box_SoundModifier_v2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1104610307", "1104610307", "MIS_220_MASTER", "box_PlaySequence_v8_4.Started", "box_SoundModifier_v2_18.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_48_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_221();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1962104776", "1962104776", "MIS_220_MASTER", "box_Compare_Boolean_48.A_is_True", "box_SetBoolean_v2_221.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_120_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_131();
    l0 = self.box_OnceOnly_v3_120;
    l1 = self.box_EntityStatusListener_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1423763260", "1423763260", "MIS_220_MASTER", "box_OnceOnly_v3_120.Out", "box_EntityStatusListener_131.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_InventoryItemModifier_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_InventoryItemModifier_43;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1502847892", "1502847892", "MIS_220_MASTER", "box_InventoryItemModifier_43.Out", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_239_Out()
    self:OnExit_box_SetBoolean_v2_239_Out();
end;

function export:f_box_StopMetaSequence_v5_171_Stopped()
    local l0, l1;
    l0 = self.box_StopMetaSequence_v5_171;
    l1 = self.box_MultipleOR_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|399158311", "399158311", "MIS_220_MASTER", "box_StopMetaSequence_v5_171.Stopped", "box_MultipleOR_175.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthModifier_v2_23_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1582213009", "1582213009", "MIS_220_MASTER", "box_HealthModifier_v2_23.Damaged", "box_Delay_v5_29.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_167_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_242();
    l0 = self.box_OnceOnly_v3_167;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|126183467", "126183467", "MIS_220_MASTER", "box_OnceOnly_v3_167.Out", "box_Compare_Boolean_242.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_230_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_14();
    l0 = self.box_MessageListener_v3_230;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2062009292", "2062009292", "MIS_220_MASTER", "box_MessageListener_v3_230.Received", "box_SetEntity_v2_14.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_233_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1384717146", "1384717146", "MIS_220_MASTER", "box_Compare_Boolean_233.A_is_False", "box_MultipleOR_237.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_233_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_255();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|354050911", "354050911", "MIS_220_MASTER", "box_Compare_Boolean_233.A_is_True", "box_IsValueNil_v3_255.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|367907123", "367907123", "MIS_220_MASTER", "box_OutputOrder_v2_102.Out", "box_ActivityAcknowledgeGate_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_103();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|208038210", "208038210", "MIS_220_MASTER", "box_OutputOrder_v2_102.Out", "box_Print_v2_103.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_5_Out()
    local l0, l1;
    self:OnExit_box_StartMetaSequence_5_Out();
    l0 = self.box_StartMetaSequence_5;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1905084594", "1905084594", "MIS_220_MASTER", "box_StartMetaSequence_5.Out", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_275_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_279;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2076056034", "2076056034", "MIS_220_MASTER", "box_Compare_Boolean_275.A_is_False", "box_MultipleOR_279.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Boolean_275_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_278;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|474138852", "474138852", "MIS_220_MASTER", "box_Compare_Boolean_275.A_is_True", "box_MultipleOR_278.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_94_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_93();
    l0 = self.box_Delay_v5_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1344310524", "1344310524", "MIS_220_MASTER", "box_OutputOrder_v2_94.Out", "box_Delay_v5_93.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_94_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SendGSFGenericEvent_228();
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1835387642", "1835387642", "MIS_220_MASTER", "box_OutputOrder_v2_94.Out", "box_SendGSFGenericEvent_228.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_94_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_130();
    l0 = self.box_SoundModifier_v2_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1095458490", "1095458490", "MIS_220_MASTER", "box_OutputOrder_v2_94.Out", "box_SoundModifier_v2_130.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|662288700", "662288700", "MIS_220_MASTER", "box_OutputOrder_v2_94.Out", "box_Simple_Node_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_94_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_280();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1164674258", "1164674258", "MIS_220_MASTER", "box_OutputOrder_v2_94.Out", "box_SetBoolean_v2_280.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_94_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_282();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1772583618", "1772583618", "MIS_220_MASTER", "box_OutputOrder_v2_94.Out", "box_SoundMixing_282.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_83_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_76();
    l0 = self.box_MultipleOR_83;
    l1 = self.box_SoundModifier_v2_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2113551975", "2113551975", "MIS_220_MASTER", "box_MultipleOR_83.Out", "box_SoundModifier_v2_76.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_111_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|46559421", "46559421", "MIS_220_MASTER", "box_Compare_Integers_111.A_eq_B", "box_MultipleOR_110.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_FastTravelModifier_v2_20_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|107904056", "107904056", "MIS_220_MASTER", "box_FastTravelModifier_v2_20.Disabled", "box_PhoneCallExclusivityModifier_207.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_FastTravelModifier_v2_20_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1428349999", "1428349999", "MIS_220_MASTER", "box_FastTravelModifier_v2_20.Enabled", "box_PhoneCallExclusivityModifier_207.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_Compare_Boolean_205_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1217942803", "1217942803", "MIS_220_MASTER", "box_Compare_Boolean_205.A_is_False", "box_MultipleOR_204.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_205_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1056509922", "1056509922", "MIS_220_MASTER", "box_Compare_Boolean_205.A_is_True", "box_MultipleOR_204.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_280_Out()
    self:OnExit_box_SetBoolean_v2_280_Out();
end;

function export:f_box_SetBoolean_v2_222_Out()
    self:OnExit_box_SetBoolean_v2_222_Out();
end;

function export:f_box_VisionModeModifier_v2_37_StartedScopolamineMedium()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_117();
    l0 = self.box_VisionModeModifier_v2_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1675556563", "1675556563", "MIS_220_MASTER", "box_VisionModeModifier_v2_37.StartedScopolamineMedium", "box_OutputOrder_v2_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisionModeModifier_v2_37_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_115();
    l0 = self.box_VisionModeModifier_v2_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1774293347", "1774293347", "MIS_220_MASTER", "box_VisionModeModifier_v2_37.Stopped", "box_OutputOrder_v2_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_235_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_202();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|361052750", "361052750", "MIS_220_MASTER", "box_Compare_Boolean_235.A_is_True", "box_HealthModifier_v2_202.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_90();
    l0 = self.box_MultipleOR_70;
    l1 = self.box_SoundModifier_v2_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1750282837", "1750282837", "MIS_220_MASTER", "box_MultipleOR_70.Out", "box_SoundModifier_v2_90.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_225_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_224();
    l0 = self.box_MultipleOR_225;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|643230903", "643230903", "MIS_220_MASTER", "box_MultipleOR_225.Out", "box_Compare_Boolean_224.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_220_AllFar()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_220_AllFar();
    params = self:OnEnter_box_SetBoolean_v2_28();
    l0 = self.box_ProximityRadiusListener_v3_220;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|241282987", "241282987", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_220.AllFar", "box_SetBoolean_v2_28.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_220_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_220_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_220_SomeoneFar()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_220_SomeoneFar();
    params = self:OnEnter_box_SoundModifier_v2_81();
    l0 = self.box_ProximityRadiusListener_v3_220;
    l1 = self.box_SoundModifier_v2_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1670745866", "1670745866", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_220.SomeoneFar", "box_SoundModifier_v2_81.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_220_SomeoneNear()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_220_SomeoneNear();
    params = self:OnEnter_box_OutputOrder_v2_124();
    l0 = self.box_ProximityRadiusListener_v3_220;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1832577965", "1832577965", "MIS_220_MASTER", "box_ProximityRadiusListener_v3_220.SomeoneNear", "box_OutputOrder_v2_124.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_117_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1130895516", "1130895516", "MIS_220_MASTER", "box_OutputOrder_v2_117.Out", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_117_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_278;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|527622594", "527622594", "MIS_220_MASTER", "box_OutputOrder_v2_117.Out", "box_MultipleOR_278.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_117_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2091553119", "2091553119", "MIS_220_MASTER", "box_OutputOrder_v2_117.Out", "box_OnceOnly_v3_167.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_GetActivityState_v2_126_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|286864228", "286864228", "MIS_220_MASTER", "box_GetActivityState_v2_126.Completed", "box_MultipleOR_128.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_190_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v5_171();
    l0 = self.box_MultipleOR_190;
    l1 = self.box_StopMetaSequence_v5_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1859220523", "1859220523", "MIS_220_MASTER", "box_MultipleOR_190.Out", "box_StopMetaSequence_v5_171.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_113_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_113_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1752443208", "1752443208", "MIS_220_MASTER", "box_SetBoolean_v2_113.Out", "box_OutputOrder_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_144_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_151();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1763383242", "1763383242", "MIS_220_MASTER", "box_OutputOrder_v2_144.Out", "box_Simple_Node_151.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_144_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_141();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|340129324", "340129324", "MIS_220_MASTER", "box_OutputOrder_v2_144.Out", "box_Simple_Node_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_2_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_2;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|177230503", "177230503", "MIS_220_MASTER", "box_ProximityTrigger_v3_2.Enter", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_2_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_2;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|744852953", "744852953", "MIS_220_MASTER", "box_ProximityTrigger_v3_2.OnOccupied", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleListener_v3_180_OnAllStanding()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_180;
    l1 = self.box_MultipleOR_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|677473103", "677473103", "MIS_220_MASTER", "box_VehicleListener_v3_180.OnAllStanding", "box_MultipleOR_168.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleListener_v3_180_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_183();
    l0 = self.box_VehicleListener_v3_180;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2071258184", "2071258184", "MIS_220_MASTER", "box_VehicleListener_v3_180.OnSit", "box_Simple_Node_183.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|@BlissWall_Active");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_39_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|@BodyStart");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_158_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|@cleanup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_95_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|@entity_set");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_229_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|@FAIL_DESTROY");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_58_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|@FAIL_DISTANCE");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_54_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|@MASTER_START");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_47_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|@n_Player_EnterVehicle");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_140_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|@n_Player_ExitVehicle");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_141_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|@n_PlayerAdded");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_198_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|@n_PlayerRemoved");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_201_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|@PlayerNotInVehicle");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_151_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|@RemoveMsgWarning");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_184_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|@RemoveWarningListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_183_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|18209437");
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
                [0] = self.f_box_OutputOrder_v2_137_Out_0,
                [1] = self.f_box_OutputOrder_v2_137_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.gPlayer,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109855679438161293",
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

function export:OnEnter_box_SoundModifier_v2_76()
    local params;
    params = {
        -- Pawns,
        [0] = "2109858533601216263",
        -- SoundId,
        [1] = "3506395759",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|52687417");
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
        [8] = "MIS_220_MASTER script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|53871599");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_19_Out,
    });
    params = {
        -- Entity,
        [0] = Globals.MIS_220_MASTER.e_globalMarkerID,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_96()
    local params;
    params = {
        -- Pawns,
        [0] = "2109858397986784609",
        -- SoundId,
        [1] = "2286701320",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_244()
    local params, l0;
    l0 = self.box_ProximityRadiusListener_v3_208;
    params = {
        -- Pawns,
        [0] = l0:GetDataOutValue(0),
        -- SoundId,
        [1] = "1146445970",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_262()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_262");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|109305430");
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
                [0] = self.f_box_OutputOrder_v2_262_Out_0,
                [1] = self.f_box_OutputOrder_v2_262_Out_1,
                [2] = self.f_box_OutputOrder_v2_262_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_114()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2110260502467749303",
        -- WarningZoneTrigger,
        [3] = "2110260431787435444",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_161()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- farZone,
        [2] = self.f_warningdistance,
        -- id2,
        [3] = self.eVehicleID,
        -- nearZone,
        [4] = self.f_warningdistance,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_122()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|168790794");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_60_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_60_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_IsNearSmallFire,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_135()
    local params;
    params = {
        -- BoneName,
        [0] = "DRIVER_SITPOINT_00",
        -- EntityA,
        [1] = self.eVehicleID,
        -- EntityB,
        [2] = self.eVehicleMarkerID,
        -- IsMultiBeatBind,
        [3] = true,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|224872633");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_99_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|231849471");
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

function export:OnEnter_box_ProximityTrigger_v3_36()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.eVehicleID,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109855728110962065",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_3()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID_Wheel,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|246206729");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_57_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|264819895");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_14_Out,
    });
    params = {
        -- Entity,
        [0] = Globals.MIS_220_MASTER.e_globalVehicleID,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|266971942");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_221_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_181()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_172()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|271644557");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_53_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_53_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_IsInFog,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_187()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID_Wheel_1,
        -- SceneEntity,
        [3] = "2108350709083686852",
        -- SequenceFile,
        [4] = "Sequences/bowmore_proto/waterwheel_proto.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "MIS_220_WHEEL_1",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|293048096");
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
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_257()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_257");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|302129066");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_257_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_257_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_isClientMale,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_74()
    local params;
    params = {
        -- Pawns,
        [0] = "2109858543313127177",
        -- SoundId,
        [1] = "3290137351",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|316946160");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_32_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|329025085");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_52_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_283()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_283");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|333012923");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/MIS_MIS220_Boat_Ducker",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_127()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "MIS_220_B20_COMPLETED",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|380074109");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_202_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 21,
        -- origin,
        [1] = self.eClientPlayer,
        -- pawns,
        [2] = self.eClientPlayer,
        -- value,
        [3] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|381147761");
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
                [0] = self.f_box_OutputOrder_v2_191_Out_0,
                [1] = self.f_box_OutputOrder_v2_191_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|386044732");
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
                [0] = self.f_box_OutputOrder_v2_176_Out_0,
                [1] = self.f_box_OutputOrder_v2_176_Out_1,
                [2] = self.f_box_OutputOrder_v2_176_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|393824285");
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
                [0] = self.f_box_OutputOrder_v2_115_Out_0,
                [1] = self.f_box_OutputOrder_v2_115_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_255()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_255");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|398701742");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_255_No,
    });
    params = {
        -- ent,
        [4] = self.eClientPlayer,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_251()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_272()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_272");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|414395175");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_272_No,
    });
    params = {
        -- ent,
        [4] = self.eHostPlayer,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|416462222");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_223_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|427295156");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_192_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|427387783");
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

function export:OnEnter_box_MultipleAND_v2_129()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_152()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = self.gPlayer,
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = self.eVehicleID,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|462745580");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_213_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_217()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "#1D250136",
        -- farZone,
        [2] = 64,
        -- id2,
        [3] = self.eHostPlayer,
        -- nearZone,
        [4] = 64,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|464641721");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_11_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015336408551491",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_67()
    local params, l0;
    l0 = self.box_ProximityRadiusListener_v3_217;
    params = {
        -- Pawns,
        [0] = l0:GetDataOutValue(0),
        -- SoundId,
        [1] = "1146445970",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_284()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_284");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|502410694");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|504548144");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_106_No,
    });
    params = {
        -- ent,
        [4] = self.eHostPlayer,
    };
    return params;
end;

function export:OnEnter_box_IsInWater_274()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnIsInWater.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsInWater_274");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|508084643");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsInWater_274_False,
        -- True,
        [1] = self.f_box_IsInWater_274_True,
    });
    params = {
        -- pawn,
        [0] = self.eHostPlayer,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|509272789");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_123_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_179()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eVehicleID,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_238()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|547215844");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|559808617");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_220_BOAT_LOST",
            id = "1030532",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|588522925");
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

function export:OnEnter_box_Compare_Boolean_258()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_258");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|596225383");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_258_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_258_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_isClientMale,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|601479802");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_62_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_62_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_IsNearFire,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|610815562");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_136()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eVehicleMarkerID,
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|648184883");
    l0:SetConnections({
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Overgrown.Overgrown_Boatride_Fog",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 5,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|652665603");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_234_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_263()
    local params;
    params = {
        -- Pawns,
        [0] = self.eClientPlayer,
        -- SoundId,
        [1] = "1605456259",
        -- SoundType,
        [2] = 6,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetVehicleAsLeashAnchor_133()
    local params;
    params = {
        -- targetVehicleEntity,
        [0] = self.eVehicleID,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_182()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "MIS_220_Boat-Warning",
            id = "1018012",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_165()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_93()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_90()
    local params;
    params = {
        -- Pawns,
        [0] = "2109858384244147551",
        -- SoundId,
        [1] = "2286701320",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|726734749");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = Globals.MIS_220_MASTER.e_SmokeOnWater,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_269()
    local params;
    params = {
        -- Pawns,
        [0] = self.eClientPlayer,
        -- SoundId,
        [1] = "3935677728",
        -- SoundType,
        [2] = 6,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_75()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.eVehicleID,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109855975807681957",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "CHAIN_REACTION START_B20",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|832090078");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_87_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_87_Completed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_87_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_87_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015332786964282",
    };
    return params;
end;

function export:OnEnter_box_WaterListener_271()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- pawn,
        [1] = self.eHostPlayer,
    };
    return params;
end;

function export:OnEnter_box_FogMoving_Function_27()
    local params;
    params = {
        -- e_stratPoint_1,
        [0] = "2109468353427958938",
        -- e_stratPoint_2,
        [1] = "2109470116881128139",
        -- e_stratPoint_3,
        [2] = "2109484573124491259",
        -- e_StratPointStart,
        [3] = "2109468334805249168",
        -- f_BlendTime,
        [4] = 12,
        -- g_torchGroup,
        [5] = "#70FA4EB9",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_169()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108350709083686852",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_248()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|866334061");
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

function export:OnEnter_box_IsValueNil_v3_254()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_254");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|868277185");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_254_No,
    });
    params = {
        -- ent,
        [4] = self.eHostPlayer,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|891792630");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_231_No,
    });
    params = {
        -- ent,
        [4] = Globals.MIS_220_MASTER.e_SmokeOnWater,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_206()
    local params, l0;
    l0 = self.box_ProximityRadiusListener_v3_211;
    params = {
        -- Pawns,
        [0] = l0:GetDataOutValue(0),
        -- SoundId,
        [1] = "275419404",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_26()
    local params;
    params = {
        -- Pawns,
        [0] = "2109221672277003126",
        -- SoundId,
        [1] = "1306830282",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_71()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.eVehicleID,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109855968421512609",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_242");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|912514287");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_242_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_242_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_isHostMale,
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_134()
    local params;
    params = {
        -- Azimuth,
        [0] = 200,
        -- Elevation,
        [1] = 20,
        -- HDRMultiplier,
        [2] = 1,
        -- Phase,
        [3] = -2,
        -- ResetAfterBeat,
        [4] = true,
        -- Size,
        [5] = 8,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_131()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eVehicleID,
    };
    return params;
end;

function export:OnEnter_box_IsInWater_270()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnIsInWater.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsInWater_270");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|933700424");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsInWater_270_False,
        -- True,
        [1] = self.f_box_IsInWater_270_True,
    });
    params = {
        -- pawn,
        [0] = self.eHostPlayer,
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
        [2] = "2108326817359225770",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_88()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "MIS_220_B10_COMPLETED",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_249()
    local params;
    params = {
        -- Pawns,
        [0] = self.eHostPlayer,
        -- SoundId,
        [1] = "3501749690",
        -- SoundType,
        [2] = 6,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|957257960");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_107_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015247148748112",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_69()
    local params;
    params = {
        -- Pawns,
        [0] = "2109858404504733027",
        -- SoundId,
        [1] = "2286701320",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|968254678");
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
                [0] = self.f_box_OutputOrder_v2_150_Out_0,
                [1] = self.f_box_OutputOrder_v2_150_Out_1,
                [2] = self.f_box_OutputOrder_v2_150_Out_2,
                [3] = self.f_box_OutputOrder_v2_150_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|974381485");
    l0:SetConnections({
        -- OnSetCommandeerEnabled,
        [10] = self.f_box_VehicleModifier_v2_132_OnSetCommandeerEnabled,
    });
    params = {
        -- targets,
        [0] = self.eVehicleID,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_208()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "#1D250136",
        -- farZone,
        [2] = 64,
        -- id2,
        [3] = self.eClientPlayer,
        -- nearZone,
        [4] = 64,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_215()
    local params;
    params = {
        -- EntityA,
        [1] = self.eHostPlayer,
        -- EntityB,
        [2] = Globals.MIS_220_MASTER.e_SmokeOnWater,
        -- IsMultiBeatBind,
        [3] = true,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1003120523");
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
                [0] = self.f_box_OutputOrder_v2_124_Out_0,
                [1] = self.f_box_OutputOrder_v2_124_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_260()
    local params;
    params = {
        -- Pawns,
        [0] = self.eClientPlayer,
        -- SoundId,
        [1] = "3408140816",
        -- SoundType,
        [2] = 6,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_246");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1034732713");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_246_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1042944853");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_220_Boat-FAIL",
            id = "1018013",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1054898360");
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
                [0] = self.f_box_OutputOrder_v2_236_Out_0,
                [1] = self.f_box_OutputOrder_v2_236_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_253()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- farZone,
        [2] = 120,
        -- id2,
        [3] = self.eVehicleID,
        -- nearZone,
        [4] = 120,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_256()
    local params;
    params = {
        -- Pawns,
        [0] = self.eHostPlayer,
        -- SoundId,
        [1] = "1605456259",
        -- SoundType,
        [2] = 6,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_250()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_247()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = 100,
        -- players,
        [1] = self.eClientPlayer,
        -- useAsPercent,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1130571003");
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
                [0] = self.f_box_OutputOrder_v2_196_Out_0,
                [1] = self.f_box_OutputOrder_v2_196_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1132122762");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_50_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1132373268");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_33_A_is_False,
    });
    params = {
        -- A,
        [0] = self.b_ArrowRefill_onCD,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1133324440");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_200_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1134744712");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_108_No,
    });
    params = {
        -- ent,
        [4] = self.eClientPlayer,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_243()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_241()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1187589501");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_241_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_267()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_267");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1195838241");
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
                [0] = self.f_box_OutputOrder_v2_267_Out_0,
                [1] = self.f_box_OutputOrder_v2_267_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1217098853");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_154_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1221174435");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_121_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_121_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_isDelayDone,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1234125575");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
                [2] = self.f_box_OutputOrder_v2_56_Out_2,
                [3] = self.f_box_OutputOrder_v2_56_Out_3,
                [4] = self.f_box_OutputOrder_v2_56_Out_4,
                [5] = self.f_box_OutputOrder_v2_56_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1258024215");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_63_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1270952375");
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

function export:OnEnter_box_Compare_Boolean_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1280294229");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_227_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_227_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_isHostMale,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_216()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_281()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_281");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1290989047");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_281_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1292431291");
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
                [0] = self.f_box_OutputOrder_v2_189_Out_0,
                [1] = self.f_box_OutputOrder_v2_189_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_35()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015350639663634",
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_282()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_282");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1302067144");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/MIS_MIS220_Boat_Ducker",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1354600689");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 20,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Player is too FAR. Quest failed.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_18()
    local params;
    params = {
        -- Pawns,
        [0] = "2109220502097642686",
        -- SoundId,
        [1] = "668142038",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1383701292");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_224_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_224_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_isDelayDone_Client,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1398548926");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_61_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_61_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_IsNearFire,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_22()
    local params;
    params = {
        -- Pawns,
        [0] = "2109220508563162304",
        -- SoundId,
        [1] = "1306830282",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1419533896");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_211()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "#C38F63CE",
        -- farZone,
        [2] = 22,
        -- id2,
        [3] = self.eClientPlayer,
        -- nearZone,
        [4] = 22,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_31()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_252()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_252");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1442315089");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_252_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1448660672");
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
                [0] = self.f_box_OutputOrder_v2_240_Out_0,
                [1] = self.f_box_OutputOrder_v2_240_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1459283016");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_97_No,
    });
    params = {
        -- ent,
        [4] = Globals.MIS_220_MASTER.e_SmokeOnWater,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_130()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "277917814",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_17()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_245");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1468044215");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_245_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_245_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_isNearSmallFire_Client,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_44()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = self.eVehicleID,
        -- nearZone,
        [4] = 3,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_273()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_273");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1509306062");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_273_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_273_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_IsInFog,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_219()
    local params;
    params = {
        -- PlayerID,
        [0] = self.eClientPlayer,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1525542823");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_25_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_IsInFog,
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_72()
    local params;
    params = {
        -- Vehicle,
        [0] = self.eVehicleID,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_116()
    local params;
    params = {
        -- PlayerID,
        [0] = self.eHostPlayer,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1553189154");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_66_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1569998985");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
                [2] = self.f_box_OutputOrder_v2_46_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_68()
    local params;
    params = {
        -- Pawns,
        [0] = "2109858432380077413",
        -- SoundId,
        [1] = "2286701320",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1653714542");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_210_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SendGSFGenericEvent_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SendGSFGenericEvent_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1694482868");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = self.eVehicleID,
        -- eventName,
        [1] = "mis_220_fog_off",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_24()
    local params;
    params = {
        -- Pawns,
        [0] = "2109221668019784564",
        -- SoundId,
        [1] = "668142038",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ColorRemapTextureModifier_v3_86()
    local params;
    params = {
        -- colorRemapSettings,
        [0] = "9015348460973545",
        -- playerGroup,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_38()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1778528104");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_178_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015349417291081",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_232()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1793006392");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_232_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_232_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_isNearFire_Client,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_163()
    local params, l0;
    l0 = self.box_ProximityRadiusListener_v3_161;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "MIS_220_Boat-Warning",
            id = "1018012",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_185()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "MIS_220_WHEEL_2",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_55()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.eVehicleID,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109855964105573781",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1829487073");
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
                [0] = self.f_box_OutputOrder_v2_226_Out_0,
                [1] = self.f_box_OutputOrder_v2_226_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_84()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "MIS_220_COMPLETED",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1834322813");
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
                [0] = self.f_box_OutputOrder_v2_164_Out_0,
                [1] = self.f_box_OutputOrder_v2_164_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_4()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID_Wheel,
        -- SceneEntity,
        [3] = "2108326817359225770",
        -- SequenceFile,
        [4] = "Sequences/bowmore_proto/waterwheel_proto.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1851007850");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_48_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_BlissWallActive,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_43()
    local params, l0;
    l0 = self.box_ProximityRadiusListener_v3_44;
    params = {
        -- itemDescriptorID,
        [0] = "7928175705766",
        -- players,
        [2] = l0:GetDataOutValue(0),
        -- quantity,
        [3] = 20,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_239()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1862497181");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_239_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_171()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID_Wheel_1,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1874010314");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_23_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 21,
        -- origin,
        [1] = self.eHostPlayer,
        -- pawns,
        [2] = self.eHostPlayer,
        -- value,
        [3] = 3,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_230()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis_220_vehicle_set",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_233()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1882635630");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_233_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_233_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_isInFog_Client,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_170()
    local params, l0;
    l0 = self.box_ProximityRadiusListener_v3_161;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "MIS_220_Boat-Warning",
            id = "1018012",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1897685032");
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

function export:OnEnter_box_SoundModifier_v2_81()
    local params, l0;
    l0 = self.box_ProximityRadiusListener_v3_220;
    params = {
        -- Pawns,
        [0] = l0:GetDataOutValue(0),
        -- SoundId,
        [1] = "275419404",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_275()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_275");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1939205782");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_275_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_275_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_IsInFog,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1950738315");
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
                [0] = self.f_box_OutputOrder_v2_94_Out_0,
                [1] = self.f_box_OutputOrder_v2_94_Out_1,
                [2] = self.f_box_OutputOrder_v2_94_Out_2,
                [3] = self.f_box_OutputOrder_v2_94_Out_3,
                [4] = self.f_box_OutputOrder_v2_94_Out_4,
                [5] = self.f_box_OutputOrder_v2_94_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_109()
    local params;
    params = {
        -- Pawns,
        [0] = self.eHostPlayer,
        -- SoundId,
        [1] = "3408140816",
        -- SoundType,
        [2] = 6,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SendGSFGenericEvent_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SendGSFGenericEvent_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1975171965");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = self.eVehicleID,
        -- eventName,
        [1] = "mis_220_fog_on",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_112()
    local params;
    params = {
        -- Pawns,
        [0] = self.eHostPlayer,
        -- SoundId,
        [1] = "3935677728",
        -- SoundType,
        [2] = 6,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1987641212");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_111_A_eq_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_107,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|1988187160");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_20_Disabled,
        -- Enabled,
        [1] = self.f_box_FastTravelModifier_v2_20_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2009336364");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_205_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_205_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_isNearFire_Client,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_280()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_280");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2032622646");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_280_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2042486598");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_222_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_37()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = 100,
        -- players,
        [1] = self.eHostPlayer,
        -- useAsPercent,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2053402839");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_235_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_isInFog_Client,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_220()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "#C38F63CE",
        -- farZone,
        [2] = 22,
        -- id2,
        [3] = self.eHostPlayer,
        -- nearZone,
        [4] = 22,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_259()
    local params;
    params = {
        -- Pawns,
        [0] = self.eClientPlayer,
        -- SoundId,
        [1] = "3501749690",
        -- SoundType,
        [2] = 6,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2088695198");
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
                [0] = self.f_box_OutputOrder_v2_117_Out_0,
                [1] = self.f_box_OutputOrder_v2_117_Out_1,
                [2] = self.f_box_OutputOrder_v2_117_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2089876270");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_126_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015332786966697",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2105023929");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_113_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2113473743");
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
                [0] = self.f_box_OutputOrder_v2_144_Out_0,
                [1] = self.f_box_OutputOrder_v2_144_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.eVehicleID,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109855610079053133",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\mis_220\\MIS_220_MASTER.domino|@MIS_220_MASTER|2134440241");
    l0:SetConnections({
    });
    params = {
        -- bool,
        [0] = self.b_InVehicle,
        -- color,
        [1] = "magenta",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_180()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = self.gPlayer,
        -- vehicle,
        [4] = self.eVehicleID,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eVehicleMarkerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_161_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_161;
    l1 = self.box_DisplayCustomUIMsg_v5_170;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
    l1 = self.box_DisplayCustomUIMsg_v5_163;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_161_AllNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_161;
    l1 = self.box_DisplayCustomUIMsg_v5_170;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
    l1 = self.box_DisplayCustomUIMsg_v5_163;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_161_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_161;
    l1 = self.box_DisplayCustomUIMsg_v5_170;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
    l1 = self.box_DisplayCustomUIMsg_v5_163;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_161_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_161;
    l1 = self.box_DisplayCustomUIMsg_v5_170;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
    l1 = self.box_DisplayCustomUIMsg_v5_163;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_99_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_57_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_isDelayDone_Client = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eVehicleID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_221_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_isNearSmallFire_Client = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_32_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_ArrowRefill_onCD = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_52_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_IsInFog = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_223_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_isClientMale = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_192_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_isCoop = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_213_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_isNearFire_Client = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_217_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_217;
    l1 = self.box_SoundModifier_v2_67;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_217_AllNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_217;
    l1 = self.box_SoundModifier_v2_67;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_217_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_217;
    l1 = self.box_SoundModifier_v2_67;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_217_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_217;
    l1 = self.box_SoundModifier_v2_67;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_123_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_isDelayDone = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_IsNearSmallFire = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_234_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_isNearSmallFire_Client = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayersID_59_OnePlayer()
    local l0;
    l0 = self.box_GetPlayersID_59;
    self.eHostPlayer = l0:GetDataOutValue(1);
    self.eClientPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayersID_59_PlayerAdded()
    local l0;
    l0 = self.box_GetPlayersID_59;
    self.eHostPlayer = l0:GetDataOutValue(1);
    self.eClientPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayersID_59_PlayerRemoved()
    local l0;
    l0 = self.box_GetPlayersID_59;
    self.eHostPlayer = l0:GetDataOutValue(1);
    self.eClientPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayersID_59_TwoPlayers()
    local l0;
    l0 = self.box_GetPlayersID_59;
    self.eHostPlayer = l0:GetDataOutValue(1);
    self.eClientPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_107_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_107 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_208_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_208;
    l1 = self.box_SoundModifier_v2_244;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_208_AllNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_208;
    l1 = self.box_SoundModifier_v2_244;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_208_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_208;
    l1 = self.box_SoundModifier_v2_244;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_208_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_208;
    l1 = self.box_SoundModifier_v2_244;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_246_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_isInFog_Client = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_50_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_IsNearFire = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_200_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_isHostMale = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_241_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_isNearFire_Client = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_188_Out()
    local l0;
    l0 = self.box_StartMetaSequence_188;
    self.MetaSequenceID_Wheel_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_154_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_InVehicle = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_63_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_281_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_BlissWallActive = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eHostPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_211_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_211;
    l1 = self.box_SoundModifier_v2_206;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_211_AllNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_211;
    l1 = self.box_SoundModifier_v2_206;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_211_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_211;
    l1 = self.box_SoundModifier_v2_206;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_211_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_211;
    l1 = self.box_SoundModifier_v2_206;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_252_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_BlissWallActive = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_44_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_44;
    l1 = self.box_InventoryItemModifier_43;
    l1:GetLuaBox().players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_44_AllNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_44;
    l1 = self.box_InventoryItemModifier_43;
    l1:GetLuaBox().players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_44_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_44;
    l1 = self.box_InventoryItemModifier_43;
    l1:GetLuaBox().players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_44_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_44;
    l1 = self.box_InventoryItemModifier_43;
    l1:GetLuaBox().players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_66_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_210_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_isNearSmallFire_Client = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_239_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_isDelayDone_Client = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_5_Out()
    local l0;
    l0 = self.box_StartMetaSequence_5;
    self.MetaSequenceID_Wheel = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_280_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_IsInFog = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_222_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_isInFog_Client = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_220_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_220;
    l1 = self.box_SoundModifier_v2_81;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_220_AllNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_220;
    l1 = self.box_SoundModifier_v2_81;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_220_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_220;
    l1 = self.box_SoundModifier_v2_81;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_220_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_220;
    l1 = self.box_SoundModifier_v2_81;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_113_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_IsNearSmallFire = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="e_Bonfire" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
